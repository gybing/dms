using DMS.Update;
using GuFun.Utils;
using GuFun.WinControls;
using GuFun.WinCore;
using Microsoft.VisualBasic.Devices;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Linq;
using System.Runtime.InteropServices;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Xml;

namespace DMS
{
    public static class Global
    {
        public const short DisplayManDpetLevel = 4;
        public const string DefaultCustID = "";
        //public const string DefaultFooter = "IsFooter";
        //public const string DefaultSumText = "合计";
        //public const string DefaultDianFei = "电费";
        //public const string DefaultYeWuFei = "业务费";
        //public const string DefaultIdent = "身份证号：";
        //public const string DefaultBankName = "开户银行：";
        public const int DefaultHalfBackFee = 247;
        public const int DefaultFullBackFee = 362;

        public static Color DefaultLableColor()
        {
            return System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(64)))), ((int)(((byte)(0)))));
        }


        public static void Money_KeyPress(object sender, KeyPressEventArgs e)
        {
            e.Handled = Publics.ValidMMEnter(e.KeyChar, ((TextBox)sender).Text);
        }

        public static void Money_Leave(object sender, EventArgs e)
        {
            Publics.ValidMoneyLeave((TextBox)sender);
        }

        public static T CreateOrGetOpenForm<T>(params object[] createParams) where T : Form
        {
            Type formType = typeof(T);
            foreach (Form item in Application.OpenForms)
            {
                if (item.GetType() == formType)
                {
                    return (T)item;
                }
            }
            return (T)Activator.CreateInstance(typeof(T), createParams);
        }

        public static Form GetForm(string classname, params object[] createParams)
        {
            Type formType = Type.GetType(classname);
            foreach (Form item in Application.OpenForms)
            {
                if (item.GetType() == formType)
                {
                    return (Form)item;
                }
            }
            return (Form)Activator.CreateInstance(formType, createParams);
        }

        public static void ShowSysError(Exception ex)
        {
            if (ex is SqlException)
            {
                if ((((SqlException)ex).Number == 2601) || (((SqlException)ex).Number == 2627))
                {
                    MessageBox.Show("系统出错：存在重复数据，请核实！", PublicConsts.PC_Tip);
                    return;
                }
            }

            MessageBox.Show("系统出错：" + StringHelper.WriteEnter(1) + ex.Message, PublicConsts.PC_Tip);
        }

        public static void ShowSysInfo(string info)
        {
            MessageBox.Show(info, PublicConsts.PC_Tip);
        }

        public static void SetDropDownList(ComboBox ddl, string name, DropAddType type, DropAddFlag flag, string index)
        {
            CacheParameter cp = Program.ManInfo.Parameters[name];

            if ((cp != null) && !String.IsNullOrEmpty(cp.Name))
            {
                CtrlHelper.SetDropDownList(ddl, cp.Data, type, flag, index, cp.Display);
            }
        }

        public static void SetDropDownList(ComboBox ddl, string name, DropAddType type, DropAddFlag flag)
        {
            SetDropDownList(ddl, name, type, flag, String.Empty);
        }

        public static void DisableComboxTree(ExComboTree ect)
        {
            //ect.DisableBackColor = Color.FromArgb(255, 250, 205);
            ect.DisableBackColor = Color.FromArgb(225, 192, 116);
            ect.ForeColor = Color.FromArgb(0, 0, 0);
            ect.Enabled = false;
        }

        public static void EnableComboxTree(ExComboTree ect)
        {
            ect.DisableBackColor = Color.FromArgb(255, 255, 255);
            ect.ForeColor = Color.FromArgb(0, 0, 0);
            ect.Enabled = true;
        }

        public static string GetRelaDeptSql()
        {
            return GetRelaDeptSql(String.Empty);
        }

        public static string GetRelaDeptSql(string prefix)
        {
            if (!String.IsNullOrEmpty(prefix))
                prefix += ".";

            string rtn = String.Empty;

            if (Program.ManInfo.RelaDept.Count == 0)
            {
                rtn = " " + prefix + "Dept_ID = '" + Program.ManInfo.Man.DeptID + "' ";
            }
            else
            {
                rtn = " (" + prefix + "Dept_ID = '" + Program.ManInfo.Man.DeptID + "' ";

                for (int i = 0; i < Program.ManInfo.RelaDept.Count; i++)
                {
                    rtn += " or " + prefix + "Dept_ID = '" + Program.ManInfo.RelaDept[i].ToString() + "' ";
                }

                rtn += ") ";
            }

            return " and " + rtn;
        }

        public static string GetRelaDeptSqlSimple(string prefix)
        {
            if (!String.IsNullOrEmpty(prefix))
                prefix += ".";

            string rtn = String.Empty;

            if (Program.ManInfo.RelaDept.Count == 0)
            {
                rtn = " " + prefix + "Dept_ID = '" + Program.ManInfo.Man.DeptID + "' ";
            }
            else
            {
                rtn = " (" + prefix + "Dept_ID = '" + Program.ManInfo.Man.DeptID + "' ";

                for (int i = 0; i < Program.ManInfo.RelaDept.Count; i++)
                {
                    rtn += " or " + prefix + "Dept_ID = '" + Program.ManInfo.RelaDept[i].ToString() + "' ";
                }

                rtn += ") ";
            }

            return rtn;
        }

        //public static void PrintFormat(BillFormat format, Graphics g)
        //{
        //    //PictureBox pb = new PictureBox();
        //    //Graphics gpb = Graphics.FromHwnd(pb.Handle);

        //    //g.SmoothingMode = System.Drawing.Drawing2D.SmoothingMode.Default;
        //    //g.PixelOffsetMode = System.Drawing.Drawing2D.PixelOffsetMode.HighQuality;

        //    //FontStyle style = FontStyle.Regular;
        //    //foreach (BillLine line in format.Lines)
        //    //{
        //    //  if (line.IsPrint)
        //    //  {
        //    //    Pen linePen = new Pen(Color.Black, Convert.ToInt32(line.LineWidth));
        //    //    if (line.LineType == (short)DashStyle.Solid)
        //    //      linePen.DashStyle = DashStyle.Solid;
        //    //    else if (line.LineType == (short)DashStyle.Dash)
        //    //      linePen.DashStyle = DashStyle.Dash;
        //    //    else if (line.LineType == (short)DashStyle.Dot)
        //    //      linePen.DashStyle = DashStyle.Dot;

        //    //    Point P1 = new Point(Publics.GetMMToPixel((line.LineLeft + format.BillLeft) * 0.1f, gpb.DpiX), Publics.GetMMToPixel((line.LineTop + format.BillTop) * 0.1f, gpb.DpiY));
        //    //    Point P2 = new Point(Publics.GetMMToPixel((line.LineRight + format.BillLeft) * 0.1f, gpb.DpiX), Publics.GetMMToPixel((line.LineBottom + format.BillTop) * 0.1f, gpb.DpiY));
        //    //    g.DrawLine(linePen, P1, P2);
        //    //    linePen.Dispose();
        //    //  }
        //    //}

        //    //foreach (BillWord word in format.Words)
        //    //{
        //    //  if (word.IsPrint)
        //    //  {
        //    //    style = FontStyle.Regular;
        //    //    style |= (FontStyle)word.WordType & FontStyle.Bold;
        //    //    style |= (FontStyle)word.WordType & FontStyle.Italic;
        //    //    g.DrawString(word.WordContent, new Font(word.WordFont, float.Parse(word.WordSize.ToString()), style, GraphicsUnit.Point), new SolidBrush(Color.Black), new Point(Publics.GetMMToPixel((word.WordLeft + format.BillLeft) * 0.1f, gpb.DpiX), Publics.GetMMToPixel((word.WordTop + format.BillTop) * 0.1f, gpb.DpiX)), new StringFormat(StringFormat.GenericTypographic));
        //    //  }
        //    //}

        //    //foreach (BillMain main in format.Mains)
        //    //{
        //    //  if (!String.IsNullOrEmpty(main.PrintValue))
        //    //  {
        //    //    style = FontStyle.Regular;
        //    //    style |= (FontStyle)main.WordType & FontStyle.Bold;
        //    //    style |= (FontStyle)main.WordType & FontStyle.Italic;
        //    //    if (main.MainCode == "En_Amount")
        //    //      g.DrawString("￥" + main.PrintValue, new Font(main.MainFont, float.Parse(main.MainSize.ToString()), style, GraphicsUnit.Point), new SolidBrush(Color.Black), new Point(Publics.GetMMToPixel((main.MainLeft + format.BillLeft) * 0.1f, gpb.DpiX), Publics.GetMMToPixel((main.MainTop + format.BillTop) * 0.1f, gpb.DpiX)), new StringFormat(StringFormat.GenericTypographic));
        //    //    else
        //    //      g.DrawString(main.PrintValue, new Font(main.MainFont, float.Parse(main.MainSize.ToString()), style, GraphicsUnit.Point), new SolidBrush(Color.Black), new Point(Publics.GetMMToPixel((main.MainLeft + format.BillLeft) * 0.1f, gpb.DpiX), Publics.GetMMToPixel((main.MainTop + format.BillTop) * 0.1f, gpb.DpiX)), new StringFormat(StringFormat.GenericTypographic));
        //    //  }
        //    //}

        //    //gpb.Dispose();
        //    //pb.Dispose();

        //    PrintFormat(format, g, new PartPrint());
        //}

        //public static void PrintFormat(BillFormat format, Graphics g, PartPrint part)
        //{
        //    PictureBox pb = new PictureBox();
        //    Graphics gpb = Graphics.FromHwnd(pb.Handle);

        //    g.SmoothingMode = System.Drawing.Drawing2D.SmoothingMode.Default;
        //    g.PixelOffsetMode = System.Drawing.Drawing2D.PixelOffsetMode.HighQuality;

        //    FontStyle style = FontStyle.Regular;
        //    foreach (BillLine line in format.Lines)
        //    {
        //        if (line.IsPrint)
        //        {
        //            Pen linePen = new Pen(Color.Black, Convert.ToInt32(line.LineWidth));
        //            if (line.LineType == (short)DashStyle.Solid)
        //                linePen.DashStyle = DashStyle.Solid;
        //            else if (line.LineType == (short)DashStyle.Dash)
        //                linePen.DashStyle = DashStyle.Dash;
        //            else if (line.LineType == (short)DashStyle.Dot)
        //                linePen.DashStyle = DashStyle.Dot;

        //            Point P1 = new Point(Publics.GetMMToPixel((line.LineLeft + format.BillLeft) * 0.1f, gpb.DpiX), Publics.GetMMToPixel((line.LineTop + format.BillTop) * 0.1f, gpb.DpiY));
        //            Point P2 = new Point(Publics.GetMMToPixel((line.LineRight + format.BillLeft) * 0.1f, gpb.DpiX), Publics.GetMMToPixel((line.LineBottom + format.BillTop) * 0.1f, gpb.DpiY));
        //            g.DrawLine(linePen, P1, P2);
        //            linePen.Dispose();
        //        }
        //    }

        //    foreach (BillWord word in format.Words)
        //    {
        //        if (word.IsPrint)
        //        {
        //            style = FontStyle.Regular;
        //            style |= (FontStyle)word.WordType & FontStyle.Bold;
        //            style |= (FontStyle)word.WordType & FontStyle.Italic;
        //            g.DrawString(word.WordContent, new Font(word.WordFont, float.Parse(word.WordSize.ToString()), style, GraphicsUnit.Point), new SolidBrush(Color.Black), new Point(Publics.GetMMToPixel((word.WordLeft + format.BillLeft) * 0.1f, gpb.DpiX), Publics.GetMMToPixel((word.WordTop + format.BillTop) * 0.1f, gpb.DpiX)), new StringFormat(StringFormat.GenericTypographic));
        //        }
        //    }

        //    string[] Re18s;

        //    string Re19 = String.Empty;
        //    foreach (BillMain r19 in format.Mains)
        //    {
        //        if (r19.MainCode == "Re_19")
        //            Re19 = r19.PrintValue;
        //    }

        //    foreach (BillMain main in format.Mains)
        //    {
        //        if (!String.IsNullOrEmpty(main.PrintValue))
        //        {
        //            if ((main.MainCode == "Get_Name") && !part.IsFullName)
        //                continue;

        //            if ((main.MainCode == "Get_Short") && !part.IsShortName)
        //                continue;

        //            if ((main.MainCode == "Cn_Amount") && !part.IsCnAmount)
        //                continue;

        //            if ((main.MainCode == "En_Amount") && !part.IsEnAmount)
        //                continue;

        //            if ((main.MainCode == "Bill_Use") && !part.IsUse)
        //                continue;

        //            if ((main.MainCode == "Send_Account") && !part.IsAccount)
        //                continue;

        //            if (part.Position != 0)
        //            {
        //                if ((main.MainCode == "En_03") && (part.Position < 1))
        //                    continue;

        //                if ((main.MainCode == "En_04") && (part.Position < 2))
        //                    continue;

        //                if ((main.MainCode == "En_05") && (part.Position < 3))
        //                    continue;

        //                if ((main.MainCode == "En_06") && (part.Position < 4))
        //                    continue;

        //                if ((main.MainCode == "En_07") && (part.Position < 5))
        //                    continue;

        //                if ((main.MainCode == "En_08") && (part.Position < 6))
        //                    continue;

        //                if ((main.MainCode == "En_09") && (part.Position < 7))
        //                    continue;

        //                if ((main.MainCode == "En_10") && (part.Position < 8))
        //                    continue;

        //                if ((main.MainCode == "En_11") && (part.Position < 9))
        //                    continue;

        //                if ((main.MainCode == "En_12") && (part.Position < 10))
        //                    continue;
        //            }

        //            style = FontStyle.Regular;
        //            style |= (FontStyle)main.WordType & FontStyle.Bold;
        //            style |= (FontStyle)main.WordType & FontStyle.Italic;

        //            string disp = main.PrintValue;

        //            if (main.MainCode == "En_Amount")
        //                disp = "￥" + disp;

        //            if ((format.BillType == (short)BillType.XianJinJiaoKuan) || (format.BillType == (short)BillType.GongDianXianJin))
        //            {
        //                if (main.MainCode == "Re_18")
        //                {
        //                    Re18s = disp.Split('-');

        //                    if ((Re18s != null) && (Re18s.Length == 3))
        //                        disp = Re18s[0] + "-" + Re18s[2];
        //                }

        //                if (main.MainCode == "Re_19")
        //                    continue;

        //                if (main.MainCode == "Bill_Source")
        //                    disp += Re19;
        //            }

        //            Font sfont = new Font(main.MainFont, float.Parse(main.MainSize.ToString()), style, GraphicsUnit.Point);

        //            SizeF siF = g.MeasureString(disp, sfont);
        //            Size txtSize = siF.ToSize();

        //            if (main.IsWarp)
        //            {
        //                List<string> all = BasePrint.GetStringLine(g, sfont, Publics.GetMMToPixel(main.MainWidth * 0.1f, gpb.DpiX), Publics.GetMMToPixel(main.MainHeight * 0.1f, gpb.DpiX), disp);

        //                int i = 0;

        //                foreach (string idisp in all)
        //                {
        //                    if (!String.IsNullOrEmpty(idisp))
        //                    {
        //                        g.DrawString(idisp, sfont, new SolidBrush(Color.Black), new Point(Publics.GetMMToPixel((main.MainLeft + format.BillLeft) * 0.1f, gpb.DpiX), Publics.GetMMToPixel((main.MainTop + format.BillTop) * 0.1f, gpb.DpiX) + (txtSize.Height * i) + 1), new StringFormat(StringFormat.GenericTypographic));

        //                        i++;
        //                    }
        //                }
        //            }
        //            else
        //            {
        //                g.DrawString(disp, sfont, new SolidBrush(Color.Black), new Point(Publics.GetMMToPixel((main.MainLeft + format.BillLeft) * 0.1f, gpb.DpiX), Publics.GetMMToPixel((main.MainTop + format.BillTop) * 0.1f, gpb.DpiX)), new StringFormat(StringFormat.GenericTypographic));
        //            }
        //        }
        //    }

        //    gpb.Dispose();
        //    pb.Dispose();
        //}

        //public static void PrintFormat(BillFormat format, Graphics g, bool isprint)
        //{
        //    PrintFormat(format, g, new PartPrint(), isprint);
        //}

        //public static void PrintFormat(BillFormat format, Graphics g, PartPrint part, bool isprint)
        //{
        //    PictureBox pb = new PictureBox();
        //    Graphics gpb = Graphics.FromHwnd(pb.Handle);

        //    if (format.BillType == (short)BillType.JinZhangDan)
        //    {
        //        string left = ConfigurationManager.AppSettings["PrintLeft"];
        //        if (!String.IsNullOrEmpty(left))
        //        {
        //            try
        //            {
        //                format.BillLeft += Convert.ToInt16(left);
        //            }
        //            catch { }
        //        }

        //        string top = ConfigurationManager.AppSettings["PrintTop"];
        //        if (!String.IsNullOrEmpty(top))
        //        {
        //            try
        //            {
        //                format.BillTop += Convert.ToInt16(top);
        //            }
        //            catch { }
        //        }
        //    }

        //    // modify by cloudy 20160203 为了现金缴款单的格式进行调整
        //    if (format.BillType == (short)BillType.GongDianXianJin)
        //    {
        //        string cashleft = ConfigurationManager.AppSettings["PrintCashLeft"];
        //        if (!String.IsNullOrEmpty(cashleft))
        //        {
        //            try
        //            {
        //                format.BillLeft += Convert.ToInt16(cashleft);
        //            }
        //            catch { }
        //        }

        //        string cashtop = ConfigurationManager.AppSettings["PrintCashTop"];
        //        if (!String.IsNullOrEmpty(cashtop))
        //        {
        //            try
        //            {
        //                format.BillTop += Convert.ToInt16(cashtop);
        //            }
        //            catch { }
        //        }
        //    }

        //    g.SmoothingMode = System.Drawing.Drawing2D.SmoothingMode.Default;
        //    g.PixelOffsetMode = System.Drawing.Drawing2D.PixelOffsetMode.HighQuality;

        //    FontStyle style = FontStyle.Regular;
        //    foreach (BillLine line in format.Lines)
        //    {
        //        if ((isprint || line.IsPrint) && !part.IsBillNo)
        //        {
        //            Pen linePen = new Pen(Color.Black, Convert.ToInt32(line.LineWidth));
        //            if (line.LineType == (short)DashStyle.Solid)
        //                linePen.DashStyle = DashStyle.Solid;
        //            else if (line.LineType == (short)DashStyle.Dash)
        //                linePen.DashStyle = DashStyle.Dash;
        //            else if (line.LineType == (short)DashStyle.Dot)
        //                linePen.DashStyle = DashStyle.Dot;

        //            Point P1 = new Point(Publics.GetMMToPixel((line.LineLeft + (isprint ? (short)0 : format.BillLeft)) * 0.1f, gpb.DpiX), Publics.GetMMToPixel((line.LineTop + (isprint ? (short)0 : format.BillTop)) * 0.1f, gpb.DpiY));
        //            Point P2 = new Point(Publics.GetMMToPixel((line.LineRight + (isprint ? (short)0 : format.BillLeft)) * 0.1f, gpb.DpiX), Publics.GetMMToPixel((line.LineBottom + (isprint ? (short)0 : format.BillTop)) * 0.1f, gpb.DpiY));
        //            g.DrawLine(linePen, P1, P2);
        //            linePen.Dispose();
        //        }
        //    }

        //    foreach (BillWord word in format.Words)
        //    {
        //        if ((isprint || word.IsPrint) && !part.IsBillNo)
        //        {
        //            style = FontStyle.Regular;
        //            style |= (FontStyle)word.WordType & FontStyle.Bold;
        //            style |= (FontStyle)word.WordType & FontStyle.Italic;
        //            g.DrawString(word.WordContent, new Font(word.WordFont, float.Parse(word.WordSize.ToString()), style, GraphicsUnit.Point), new SolidBrush(Color.Black), new Point(Publics.GetMMToPixel((word.WordLeft + (isprint ? (short)0 : format.BillLeft)) * 0.1f, gpb.DpiX), Publics.GetMMToPixel((word.WordTop + (isprint ? (short)0 : format.BillTop)) * 0.1f, gpb.DpiX)), new StringFormat(StringFormat.GenericTypographic));
        //        }
        //    }

        //    string[] Re18s;

        //    string Re19 = String.Empty;
        //    string S_Cust = String.Empty;
        //    string S_Remark = String.Empty;
        //    string BillSource = String.Empty;

        //    foreach (BillMain r19 in format.Mains)
        //    {
        //        if (r19.MainCode == "Re_19")
        //            Re19 = r19.PrintValue;

        //        if (r19.MainCode == "Cust_ID")
        //            S_Cust = r19.PrintValue;

        //        if (r19.MainCode == "Re_20")
        //            S_Remark = r19.PrintValue;

        //        if (r19.MainCode == "Bill_Source")
        //            BillSource = r19.PrintValue;
        //    }

        //    foreach (BillMain main in format.Mains)
        //    {
        //        if ((part.IsBillNo) && (main.MainCode != "Act_Bill_No"))
        //            continue;

        //        if (Program.ManInfo.Dept.DeptPID == "01006")
        //        {
        //            if (main.MainCode == "Bill_Source")
        //                continue;
        //        }

        //        if (!String.IsNullOrEmpty(main.PrintValue))
        //        {
        //            if ((main.MainCode == "Get_Name") && !part.IsFullName)
        //                continue;

        //            if ((main.MainCode == "Get_Short") && !part.IsShortName)
        //                continue;

        //            if ((main.MainCode == "Cn_Amount") && !part.IsCnAmount)
        //                continue;

        //            if ((main.MainCode == "En_Amount") && !part.IsEnAmount)
        //                continue;

        //            if ((main.MainCode == "Bill_Use") && !part.IsUse)
        //                continue;

        //            if ((main.MainCode == "Send_Account") && !part.IsAccount)
        //                continue;


        //            if (!part.IsEnDate)
        //            {
        //                if (main.MainCode == "En_Year")
        //                    continue;

        //                if (main.MainCode == "En_Month")
        //                    continue;

        //                if (main.MainCode == "En_Day")
        //                    continue;
        //            }

        //            if (!part.IsCnDate)
        //            {
        //                if (main.MainCode == "Cn_Year")
        //                    continue;

        //                if (main.MainCode == "Cn_Month")
        //                    continue;

        //                if (main.MainCode == "Cn_Day")
        //                    continue;
        //            }

        //            if (!part.IsEnAmount)
        //            {
        //                if (main.MainCode == "En_01")
        //                    continue;

        //                if (main.MainCode == "En_02")
        //                    continue;

        //                if (main.MainCode == "En_03")
        //                    continue;

        //                if (main.MainCode == "En_04")
        //                    continue;

        //                if (main.MainCode == "En_05")
        //                    continue;

        //                if (main.MainCode == "En_06")
        //                    continue;

        //                if (main.MainCode == "En_07")
        //                    continue;

        //                if (main.MainCode == "En_08")
        //                    continue;

        //                if (main.MainCode == "En_09")
        //                    continue;

        //                if (main.MainCode == "En_10")
        //                    continue;

        //                if (main.MainCode == "En_11")
        //                    continue;

        //                if (main.MainCode == "En_12")
        //                    continue;
        //            }

        //            if (part.Position != 0)
        //            {
        //                if ((main.MainCode == "En_03") && (part.Position < 1))
        //                    continue;

        //                if ((main.MainCode == "En_04") && (part.Position < 2))
        //                    continue;

        //                if ((main.MainCode == "En_05") && (part.Position < 3))
        //                    continue;

        //                if ((main.MainCode == "En_06") && (part.Position < 4))
        //                    continue;

        //                if ((main.MainCode == "En_07") && (part.Position < 5))
        //                    continue;

        //                if ((main.MainCode == "En_08") && (part.Position < 6))
        //                    continue;

        //                if ((main.MainCode == "En_09") && (part.Position < 7))
        //                    continue;

        //                if ((main.MainCode == "En_10") && (part.Position < 8))
        //                    continue;

        //                if ((main.MainCode == "En_11") && (part.Position < 9))
        //                    continue;

        //                if ((main.MainCode == "En_12") && (part.Position < 10))
        //                    continue;
        //            }

        //            style = FontStyle.Regular;
        //            style |= (FontStyle)main.WordType & FontStyle.Bold;
        //            style |= (FontStyle)main.WordType & FontStyle.Italic;

        //            string disp = main.PrintValue;

        //            if (main.MainCode == "Oper_Type_Name")
        //            {
        //                if (disp.Contains("视同"))
        //                    disp = "视同现金";
        //                else
        //                    continue;
        //            }

        //            if (main.MainCode == "Re_18")
        //            {
        //                Re18s = disp.Split('-');

        //                if (Program.ManInfo.Dept.DeptPID == "01006")
        //                {
        //                    if ((Re18s != null) && (Re18s.Length == 3))
        //                        disp = BillSource + Re18s[0] + Re18s[2];
        //                }
        //                else
        //                {
        //                    if ((Re18s != null) && (Re18s.Length == 3))
        //                        disp = Re18s[0] + "-" + Re18s[2];
        //                }
        //            }

        //            if ((format.BillType == (short)BillType.XianJinJiaoKuan) || (format.BillType == (short)BillType.GongDianXianJin))
        //            {
        //                switch (format.BankID)
        //                {
        //                    case 1:
        //                    case 17:
        //                        if (main.MainCode == "Re_19")
        //                            continue;

        //                        if (main.MainCode == "Cust_ID")
        //                            continue;

        //                        if (main.MainCode == "Re_20")
        //                            continue;

        //                        if (main.MainCode == "Bill_Source")
        //                        {
        //                            if (!String.IsNullOrEmpty(Re19))
        //                                disp = Re19;

        //                            if (!String.IsNullOrEmpty(S_Cust))
        //                            {
        //                                disp += "|" + S_Cust + (part.IsCust ? "[多]" : "");
        //                            }
        //                        }

        //                        if ((main.MainCode == "Re_18") && !String.IsNullOrEmpty(S_Remark))
        //                            disp += "|" + S_Remark;

        //                        break;

        //                    case 2:
        //                        if (main.MainCode == "Re_19")
        //                            continue;

        //                        if (main.MainCode == "Re_20")
        //                            continue;

        //                        if (main.MainCode == "Bill_Source")
        //                        {
        //                            if (!String.IsNullOrEmpty(Re19))
        //                                disp = Re19;
        //                        }

        //                        if ((main.MainCode == "Cust_ID") && !String.IsNullOrEmpty(main.PrintValue))
        //                            disp += (part.IsCust ? "[多]" : "");

        //                        if ((main.MainCode == "Re_18") && !String.IsNullOrEmpty(S_Remark))
        //                            disp += "|" + S_Remark;

        //                        break;

        //                    case 3:
        //                        if (main.MainCode == "Re_19")
        //                            continue;

        //                        if (main.MainCode == "Bill_Source")
        //                        {
        //                            if (!String.IsNullOrEmpty(Re19))
        //                                disp = Re19;
        //                        }

        //                        if ((main.MainCode == "Cust_ID") && !String.IsNullOrEmpty(main.PrintValue))
        //                            disp += part.IsCust ? "[多]" : "";

        //                        break;
        //                }


        //            }
        //            else
        //            {
        //                if (main.MainCode == "Re_19")
        //                    continue;

        //                if (main.MainCode == "Bill_Source")
        //                    disp += Re19;

        //                if (main.MainCode == "Re_03")
        //                    disp += Re19;

        //                if ((main.MainCode == "Cust_ID") && !String.IsNullOrEmpty(main.PrintValue))
        //                    disp += part.IsCust ? "[多]" : "";
        //            }

        //            if (main.MainCode == "En_Amount")
        //                disp = "￥" + disp;


        //            double fontsize = main.MainSize;

        //            //if ((main.MainCode == "Cn_Amount") && (disp.Length >= 12))
        //            //  fontsize = 9.00;

        //            if ((main.MainCode == "Cn_Amount") && (disp.Length >= 12))
        //                fontsize = 12.00;

        //            if (format.BillType == (short)BillType.JinZhangDan)
        //            {
        //                if ((main.MainCode == "Cn_Amount") && (disp.Length >= 15))
        //                    fontsize = 9.00;

        //                if ((main.MainCode == "Cn_Amount") && (disp.Length >= 20))
        //                    fontsize = 8.00;
        //            }
        //            else
        //            {
        //                if ((main.MainCode == "Cn_Amount") && (disp.Length >= 15))
        //                    fontsize = 11.00;

        //                if ((main.MainCode == "Cn_Amount") && (disp.Length >= 20))
        //                    fontsize = 10.00;
        //            }

        //            Font sfont = new Font(main.MainFont, float.Parse(fontsize.ToString()), style, GraphicsUnit.Point);

        //            SizeF siF = g.MeasureString(disp, sfont);
        //            Size txtSize = siF.ToSize();

        //            if (main.IsWarp)
        //            {
        //                List<string> all = BasePrint.GetStringLine(g, sfont, Publics.GetMMToPixel(main.MainWidth * 0.1f, gpb.DpiX), Publics.GetMMToPixel(main.MainHeight * 0.1f, gpb.DpiX), disp);

        //                int i = 0;

        //                foreach (string idisp in all)
        //                {
        //                    if (!String.IsNullOrEmpty(idisp))
        //                    {
        //                        g.DrawString(idisp, sfont, new SolidBrush(Color.Black), new Point(Publics.GetMMToPixel((main.MainLeft + (isprint ? (short)0 : format.BillLeft)) * 0.1f, gpb.DpiX), Publics.GetMMToPixel((main.MainTop + (isprint ? (short)0 : format.BillTop)) * 0.1f, gpb.DpiX) + (txtSize.Height * i) + 1), new StringFormat(StringFormat.GenericTypographic));

        //                        i++;
        //                    }
        //                }
        //            }
        //            else
        //            {
        //                g.DrawString(disp, sfont, new SolidBrush(Color.Black), new Point(Publics.GetMMToPixel((main.MainLeft + (isprint ? (short)0 : format.BillLeft)) * 0.1f, gpb.DpiX), Publics.GetMMToPixel((main.MainTop + (isprint ? (short)0 : format.BillTop)) * 0.1f, gpb.DpiX)), new StringFormat(StringFormat.GenericTypographic));
        //            }
        //        }
        //    }

        //    gpb.Dispose();
        //    pb.Dispose();
        //}

        //public static void PrintFormatRotate(BillFormat format, Graphics g)
        //{
        //    PictureBox pb = new PictureBox();
        //    Graphics gpb = Graphics.FromHwnd(pb.Handle);

        //    g.SmoothingMode = System.Drawing.Drawing2D.SmoothingMode.Default;
        //    g.PixelOffsetMode = System.Drawing.Drawing2D.PixelOffsetMode.HighQuality;

        //    FontStyle style = FontStyle.Regular;
        //    foreach (BillLine line in format.Lines)
        //    {
        //        if (line.IsPrint)
        //        {
        //            Pen linePen = new Pen(Color.Black, Convert.ToInt32(line.LineWidth));
        //            if (line.LineType == (short)DashStyle.Solid)
        //                linePen.DashStyle = DashStyle.Solid;
        //            else if (line.LineType == (short)DashStyle.Dash)
        //                linePen.DashStyle = DashStyle.Dash;
        //            else if (line.LineType == (short)DashStyle.Dot)
        //                linePen.DashStyle = DashStyle.Dot;

        //            Point P1 = new Point(Publics.GetMMToPixel((line.LineLeft + format.BillLeft) * 0.1f, gpb.DpiX), Publics.GetMMToPixel((line.LineTop + format.BillTop) * 0.1f, gpb.DpiY));
        //            Point P2 = new Point(Publics.GetMMToPixel((line.LineRight + format.BillLeft) * 0.1f, gpb.DpiX), Publics.GetMMToPixel((line.LineBottom + format.BillTop) * 0.1f, gpb.DpiY));
        //            g.DrawLine(linePen, P1, P2);
        //            linePen.Dispose();
        //        }
        //    }

        //    foreach (BillWord word in format.Words)
        //    {
        //        if (word.IsPrint)
        //        {
        //            style = FontStyle.Regular;
        //            style |= (FontStyle)word.WordType & FontStyle.Bold;
        //            style |= (FontStyle)word.WordType & FontStyle.Italic;
        //            g.DrawString(word.WordContent, new Font(word.WordFont, float.Parse(word.WordSize.ToString()), style, GraphicsUnit.Point), new SolidBrush(Color.Black), new Point(Publics.GetMMToPixel((word.WordLeft + format.BillLeft) * 0.1f, gpb.DpiX), Publics.GetMMToPixel((word.WordTop + format.BillTop) * 0.1f, gpb.DpiX)), new StringFormat(StringFormat.GenericTypographic));
        //        }
        //    }

        //    foreach (BillMain main in format.Mains)
        //    {
        //        if (!String.IsNullOrEmpty(main.PrintValue))
        //        {
        //            style = FontStyle.Regular;
        //            style |= (FontStyle)main.WordType & FontStyle.Bold;
        //            style |= (FontStyle)main.WordType & FontStyle.Italic;
        //            if (main.MainCode == "En_Amount")
        //                g.DrawString("￥" + main.PrintValue, new Font(main.MainFont, float.Parse(main.MainSize.ToString()), style, GraphicsUnit.Point), new SolidBrush(Color.Black), new Point(Publics.GetMMToPixel((main.MainLeft + format.BillLeft) * 0.1f, gpb.DpiX), Publics.GetMMToPixel((main.MainTop + format.BillTop) * 0.1f, gpb.DpiX)), new StringFormat(StringFormat.GenericTypographic));
        //            else
        //                g.DrawString(main.PrintValue, new Font(main.MainFont, float.Parse(main.MainSize.ToString()), style, GraphicsUnit.Point), new SolidBrush(Color.Black), new Point(Publics.GetMMToPixel((main.MainLeft + format.BillLeft) * 0.1f, gpb.DpiX), Publics.GetMMToPixel((main.MainTop + format.BillTop) * 0.1f, gpb.DpiX)), new StringFormat(StringFormat.GenericTypographic));
        //        }
        //    }

        //    gpb.Dispose();
        //    pb.Dispose();
        //}

        public static DataTable GetSearchDept(string name)
        {
            string search = " and (a.Bill_Dept_Cn like '%" + name + "%' or a.Bill_Dept_Name like '%" + name + "%') ";
            return SqlBaseProvider.SelectBillDept(search, Program.ManInfo.Man.DeptID);
        }

        [DllImport("User32.dll", EntryPoint = "SendMessage")]
        public static extern int SendMessage(IntPtr hWnd, int Msg, int wParam, int lParam);


        public static void AudioBeep()
        {
            Computer cp = new Computer();

            cp.Audio.Play(Properties.Resources.ResourceManager.GetStream("notify"), Microsoft.VisualBasic.AudioPlayMode.Background);
        }

        //public static void PrintFormatBackFee(BillFormat format, Graphics g)
        //{
        //    PictureBox pb = new PictureBox();
        //    Graphics gpb = Graphics.FromHwnd(pb.Handle);

        //    g.SmoothingMode = System.Drawing.Drawing2D.SmoothingMode.Default;
        //    g.PixelOffsetMode = System.Drawing.Drawing2D.PixelOffsetMode.HighQuality;

        //    bool isprint = true;

        //    FontStyle style = FontStyle.Regular;
        //    foreach (BillLine line in format.Lines)
        //    {

        //        Pen linePen = new Pen(Color.Black, Convert.ToInt32(line.LineWidth));
        //        if (line.LineType == (short)DashStyle.Solid)
        //            linePen.DashStyle = DashStyle.Solid;
        //        else if (line.LineType == (short)DashStyle.Dash)
        //            linePen.DashStyle = DashStyle.Dash;
        //        else if (line.LineType == (short)DashStyle.Dot)
        //            linePen.DashStyle = DashStyle.Dot;

        //        Point P1 = new Point(Publics.GetMMToPixel((line.LineLeft + (isprint ? (short)0 : format.BillLeft)) * 0.1f, gpb.DpiX), Publics.GetMMToPixel((line.LineTop + (isprint ? (short)0 : format.BillTop)) * 0.1f, gpb.DpiY));
        //        Point P2 = new Point(Publics.GetMMToPixel((line.LineRight + (isprint ? (short)0 : format.BillLeft)) * 0.1f, gpb.DpiX), Publics.GetMMToPixel((line.LineBottom + (isprint ? (short)0 : format.BillTop)) * 0.1f, gpb.DpiY));
        //        g.DrawLine(linePen, P1, P2);
        //        linePen.Dispose();
        //    }

        //    foreach (BillWord word in format.Words)
        //    {
        //        style = FontStyle.Regular;
        //        style |= (FontStyle)word.WordType & FontStyle.Bold;
        //        style |= (FontStyle)word.WordType & FontStyle.Italic;
        //        g.DrawString(word.WordContent, new Font(word.WordFont, float.Parse(word.WordSize.ToString()), style, GraphicsUnit.Point), new SolidBrush(Color.Black), new Point(Publics.GetMMToPixel((word.WordLeft + (isprint ? (short)0 : format.BillLeft)) * 0.1f, gpb.DpiX), Publics.GetMMToPixel((word.WordTop + (isprint ? (short)0 : format.BillTop)) * 0.1f, gpb.DpiX)), new StringFormat(StringFormat.GenericTypographic));
        //    }

        //    foreach (BillMain main in format.Mains)
        //    {


        //        style = FontStyle.Regular;
        //        style |= (FontStyle)main.WordType & FontStyle.Bold;
        //        style |= (FontStyle)main.WordType & FontStyle.Italic;

        //        string disp = main.PrintValue;

        //        Font sfont = new Font(main.MainFont, float.Parse(main.MainSize.ToString()), style, GraphicsUnit.Point);

        //        SizeF siF = g.MeasureString(disp, sfont);
        //        Size txtSize = siF.ToSize();

        //        if (main.IsWarp)
        //        {
        //            List<string> all = BasePrint.GetStringLine(g, sfont, Publics.GetMMToPixel(main.MainWidth * 0.1f, gpb.DpiX), Publics.GetMMToPixel(main.MainHeight * 0.1f, gpb.DpiX), disp);

        //            int i = 0;

        //            foreach (string idisp in all)
        //            {
        //                if (!String.IsNullOrEmpty(idisp))
        //                {
        //                    g.DrawString(idisp, sfont, new SolidBrush(Color.Black), new Point(Publics.GetMMToPixel((main.MainLeft + (isprint ? (short)0 : format.BillLeft)) * 0.1f, gpb.DpiX), Publics.GetMMToPixel((main.MainTop + (isprint ? (short)0 : format.BillTop)) * 0.1f, gpb.DpiX) + (txtSize.Height * i) + 1), new StringFormat(StringFormat.GenericTypographic));

        //                    i++;
        //                }
        //            }
        //        }
        //        else
        //        {
        //            g.DrawString(disp, sfont, new SolidBrush(Color.Black), new Point(Publics.GetMMToPixel((main.MainLeft + (isprint ? (short)0 : format.BillLeft)) * 0.1f, gpb.DpiX), Publics.GetMMToPixel((main.MainTop + (isprint ? (short)0 : format.BillTop)) * 0.1f, gpb.DpiX)), new StringFormat(StringFormat.GenericTypographic));
        //        }
        //    }

        //    gpb.Dispose();
        //    pb.Dispose();
        //}

        public static Dictionary<string, RemoteFileUpdater> ParseRemoteXml(string xml)
        {
            XmlDocument document = new XmlDocument();
            document.LoadXml(xml);

            Dictionary<string, RemoteFileUpdater> list = new Dictionary<string, RemoteFileUpdater>();
            foreach (XmlNode node in document.DocumentElement.ChildNodes)
            {
                //System.Text.Encoding GB2312 = System.Text.Encoding.GetEncoding("GB2312");

                //string val = System.Text.Encoding.UTF8.GetString(GB2312.GetBytes(node.Attributes["Path"].Value));

                string val = node.Attributes["Path"].Value;

                list.Add(val, new RemoteFileUpdater(node));
            }

            return list;
        }
    }
}
