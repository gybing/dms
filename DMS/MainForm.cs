﻿using GuFun.Utils;
using GuFun.WinControls;
using GuFun.WinCore;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace DMS
{
    public partial class MainForm : Form
    {
        public MainForm()
        {
            InitializeComponent();
            msMain.Renderer = new Office2007Renderer();
            ssMain.Renderer = msMain.Renderer;
            sslMan.Text = " " + sslMan.Text + Program.ManInfo.Man.ManName;
            sslDept.Text = " " + sslMan.Text + Program.ManInfo.Man.DeptName;
            sslTime.Text = "当前时间：" + DateTime.Now.ToString("yyyy-MM-dd hh:mm:ss");

            ssMain.Items.Clear();
            CreateUserMenu();

            ToolStripMenuItem helpItem = new ToolStripMenuItem();
            helpItem.Text = "帮助";
            msMain.Items.Add(helpItem);

            ToolStripMenuItem hItem = new ToolStripMenuItem();
            hItem.Text = "联机帮助";
            helpItem.DropDownItems.Add(hItem);
            helpItem.DropDownItems.Add(new ToolStripSeparator());

            ToolStripMenuItem aItem = new ToolStripMenuItem();
            aItem.Text = "关于";
            helpItem.DropDownItems.Add(aItem);

            ToolStripMenuItem exitItem = new ToolStripMenuItem();
            exitItem.Text = "退出";
            msMain.Items.Add(exitItem);

            ToolStripMenuItem dItem = new ToolStripMenuItem();
            dItem.Text = "注销";
            dItem.Click += new EventHandler(Change_Click);
            exitItem.DropDownItems.Add(dItem);

            ToolStripMenuItem passwdItem = new ToolStripMenuItem();
            passwdItem.Text = "修改密码";
            passwdItem.Click += new EventHandler(Password_Click);
            exitItem.DropDownItems.Add(passwdItem);
            exitItem.DropDownItems.Add(new ToolStripSeparator());

            ToolStripMenuItem eItem = new ToolStripMenuItem();
            eItem.Text = "退出";
            eItem.Click += new EventHandler(Exit_Click);
            exitItem.DropDownItems.Add(eItem);
        }


        protected void CreateUserMenu()
        {
            SqlBaseProvider.GetManMenus(Program.ManInfo, Program.ManInfo.Man.ManID, "BI");
            SysMenuGroups mgs = Program.ManInfo.Menus;

            if ((mgs == null) || (mgs.Count <= 0))
            return;

            int i, j, k;

            msMain.Items.Clear();
            for (i = 0; i < mgs.Count; i++)
            {
            SysMenuGroup mgitem = mgs[i];

            if ((mgitem.Menus == null) || (mgitem.Menus.Count <= 0))
                continue;

            ToolStripMenuItem gi = new ToolStripMenuItem();
            gi.Name = "MenuGroup" + mgitem.MgID.ToString();
            gi.Text = mgitem.MgName;        

            for (j = 0; j < mgitem.Menus.Count; j++)
            {
          

                SysMenu mitem = mgitem.Menus[j];

                // modify by cloudy 20101022
                if ((Program.ManInfo.Dept.DeptFlow != (short)DeptFlow.JiangPuLiuHe) && ((mitem.MFunction == "ManEquipBackFee") || (mitem.MFunction == "ManReDeptBackFee")))
                continue;

                ToolStripMenuItem mi = new ToolStripMenuItem();
                mi.Name = mitem.MCode + "-" + mitem.MFunction;
                mi.Text = mitem.MName;

                if (!String.IsNullOrEmpty(mitem.MFunction))
                {
                MenuAuth ma = new MenuAuth();
                ma.MID = mitem.MID;
                ma.MCode = mitem.MCode;
                ma.MFunction = mitem.MFunction;
                ma.MShortcut = mitem.MShortcut;
                ma.Auth = mitem.MAuth;
                Program.ManInfo.Auths.Add(ma);
                }

                gi.DropDownItems.Add(mi);

                if (mitem.IsLine)
                gi.DropDownItems.Add(new ToolStripSeparator());

                if ((mitem.SubMenus != null) && (mitem.SubMenus.Count > 0))
                {
                AddSubMenu(mitem, mi);
                }
                else
                {
                if (!String.IsNullOrEmpty(mitem.MFunction))
                    mi.Click += new EventHandler(Menu_Click);
                }
            }

            msMain.Items.Add(gi);
            }

      

            RibTabs rts = Program.ManInfo.Ribbons;
            RibTab rt;
            bool isRibTab = false;

            ribMain.Tabs.Clear();

            for (i = 0; i < rts.Count; i++)
            {
                isRibTab = false;

                rt = rts[i];

                // Ribbon Tab's Panels Count为0，则不做处理
                if (rt.Panels.Count <= 0)
                    continue;
        
                // 判断该Tab下的所有Panel是否包含了按钮，如果没有，则不做处理
                for (j = 0; j < rt.Panels.Count; j++)
                {
                    if (rt.Panels[j].Buttons.Count <= 0)
                    continue;
                    else
                    {
                    isRibTab = true;            
                    break;
                    }
                }

                if (!isRibTab) continue;

                RibbonTab rTab = new RibbonTab();
                rTab.Text = rt.RibTabName;

                for (j = 0; j < rt.Panels.Count; j++)
                {
                    if (rt.Panels[j].Buttons.Count > 0)
                    {
                    RibbonPanel rPanel = new RibbonPanel();
                    rPanel.Text = rt.Panels[j].RibPanelName;

                    for (k = 0; k < rt.Panels[j].Buttons.Count; k++)
                    {
                        // modify by cloudy 20101022
                        if ((Program.ManInfo.Dept.DeptFlow != (short)DeptFlow.JiangPuLiuHe) && ((rt.Panels[j].Buttons[k].MFunction == "ManEquipBackFee") || (rt.Panels[j].Buttons[k].MFunction == "ManReDeptBackFee")))
                        continue;

                        RibbonButton rButton = new RibbonButton();
                        rButton.Text = rt.Panels[j].Buttons[k].RibBtnName;

                        if (!String.IsNullOrEmpty(rt.Panels[j].Buttons[k].MFunction))
                        {
                        rButton.Function = rt.Panels[j].Buttons[k].RibCode + "-" + rt.Panels[j].Buttons[k].MCode + "-" + rt.Panels[j].Buttons[k].MFunction;
                        rButton.Click += new EventHandler(Ribbon_Click);
                        }

                        if (rt.Panels[j].Buttons[k].RibImageIndex > -1)
                        {
                        if (ilRibbon.Images.Count > rt.Panels[j].Buttons[k].RibImageIndex)
                            rButton.Image = ilRibbon.Images[rt.Panels[j].Buttons[k].RibImageIndex];                  
                        }

                        rPanel.Items.Add(rButton);
                    }

                    rTab.Panels.Add(rPanel);
                    }
                }

                //ribMain.Tabs.Add(rTab);
            }
        }


        protected void AddSubMenu(SysMenu parent, ToolStripMenuItem add)
        {
            if ((parent.SubMenus == null) || (parent.SubMenus.Count <= 0) || (add == null))
                return;

            SysMenu mitem;
            for (int i = 0; i < parent.SubMenus.Count; i++)
            {
                mitem = parent.SubMenus[i];

                ToolStripMenuItem addmi = new ToolStripMenuItem();
                addmi.Name = mitem.MCode + "-" + mitem.MFunction;
                addmi.Text = mitem.MName;

                add.DropDownItems.Add(addmi);

                if (!String.IsNullOrEmpty(mitem.MFunction))
                {
                    MenuAuth ma = new MenuAuth();
                    ma.MID = mitem.MID;
                    ma.MCode = mitem.MCode;
                    ma.MFunction = mitem.MFunction;
                    ma.MShortcut = mitem.MShortcut;
                    ma.Auth = mitem.MAuth;
                    Program.ManInfo.Auths.Add(ma);
                }

                if (mitem.IsLine)
                    add.DropDownItems.Add(new ToolStripSeparator());

                if ((mitem.SubMenus != null) && (mitem.SubMenus.Count > 0))
                {
                    AddSubMenu(mitem, addmi);
                }
                else
                {
                    addmi.Click += new EventHandler(Menu_Click);
                }
            }
        }

        private void Menu_Click(object sender, EventArgs e)
        {
            try
            {
                string name = ((ToolStripMenuItem)sender).Name;

                if (String.IsNullOrEmpty(name))
                    return;

                string[] codes = name.Split('-');

                if (codes.Length < 2)
                    return;

                if (String.IsNullOrEmpty(codes[1]))
                    return;

                Form fm = Global.GetForm("GBill." + codes[1]);

                if (fm != null)
                {
                    if (fm.MinimizeBox)
                    {
                        fm.MdiParent = this;
                        fm.WindowState = FormWindowState.Maximized;
                        fm.Show();
                    }
                    else
                    {
                        fm.ShowDialog();
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("运行出错，请与系统管理员联系！" + StringHelper.WriteEnter() + ex.Message, PublicConsts.PC_Tip);
            }
        }


        private void Ribbon_Click(object sender, EventArgs e)
        {
            try
            {
                string name = ((RibbonButton)sender).Function;

                if (String.IsNullOrEmpty(name))
                    return;

                string[] codes = name.Split('-');

                if (codes.Length < 3)
                    return;

                Form fm = Global.GetForm("GBill." + codes[2]);

                if ((fm != null) && !fm.IsDisposed)
                {
                    if (fm.MinimizeBox)
                    {
                        fm.MdiParent = this;
                        fm.WindowState = FormWindowState.Maximized;
                        fm.Show();
                    }
                    else
                    {
                        fm.ShowDialog();
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("运行出错，请与系统管理员联系！" + StringHelper.WriteEnter() + ex.Message, PublicConsts.PC_Tip);
            }
        }



        private void Change_Click(object sender, EventArgs e)
        {
            Program.isCancel = false;

            string ManID = Program.ManInfo.Man.ManID;
            short RegID = Program.ManInfo.Register.RegID;

        FirstLogined:

            Login lg = new Login();
            DialogResult rtn = lg.ShowDialog();
            Program.NowLoginMan = lg.txtManID.Text;

            if (rtn == DialogResult.OK)
            {
                Program.isCancel = true;

                try
                {
                    SqlBaseProvider.LoginOutSysOnline(ManID, RegID);
                }
                catch (Exception)
                {

                }

                this.Close();
            }
            else if (rtn == DialogResult.Yes)
            {
                //FirstLogin first = new FirstLogin();

                //if (first.ShowDialog() == DialogResult.OK)
                //{
                //    goto FirstLogined;
                //}
            }
        }

        private void Password_Click(object sender, EventArgs e)
        {
            //FirstLogin first = new FirstLogin();
            //first.ShowDialog();
        }

        private void Exit_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }


        private void tmTime_Tick(object sender, EventArgs e)
        {
            sslTime.Text = " 当前时间：" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
        }

        private void tmOnline_Tick(object sender, EventArgs e)
        {
            try
            {
                SysOnline so = SqlBaseProvider.ContinueOnline(Program.ManInfo.Man.ManID, Program.ManInfo.Register.RegID);

                if (String.IsNullOrEmpty(so.ManID))
                {
                    Application.Exit();
                }
            }
            catch (Exception)
            {

            }
        }
    }
}
