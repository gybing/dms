using GuFun.WinCore;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace DMS
{
    public partial class ProjectManage : DMS.BaseListForm
    {
        public ProjectManage()
        {
            InitializeComponent();
            tsbFirst.Visible = false;
            tsbLast.Visible = false;
            tssNav.Visible = false;
            this.Text = "项目管理";
            this.mCode = "0401";
            tsbNext.Text = "下一天";
            tsbPrev.Text = "上一天";

            CoreCtrls.SetDataGridView(dgvList, "P_Search_BusProject", Program.ManInfo);
        }

        private void ProjectManage_Load(object sender, EventArgs e)
        {
            OnBindData();
        }

        protected override void OnBindData()
        {
            string sql = String.Empty;
            string projectname = String.Empty;

            if (!String.IsNullOrEmpty(txtProjectName.Text))
            {
                sql += " and a.ProjectName like '%" + txtProjectName.Text + "%' ";
            }

            dgvList.DataSource = SqlBaseProvider.SearchBusProject(sql);
        }

        protected override void OnAddData()
        {
            base.OnAddData();

            EditProject edit = new EditProject();
            edit.id = String.Empty;

            if (edit.ShowDialog() == DialogResult.OK)
            {

            }
        }
    }
}
