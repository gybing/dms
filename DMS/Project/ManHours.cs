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
    public partial class ManHours : DMS.BaseListForm
    {
        public ManHours()
        {
            InitializeComponent();

            tsbFirst.Visible = false;
            tsbLast.Visible = false;
            tssNav.Visible = false;
            this.Text = "工时管理";
            this.mCode = "0403";

            CoreCtrls.SetDataGridView(dgvList, "P_Search_BusHours", Program.ManInfo);
        }

        private void ManHours_Load(object sender, EventArgs e)
        {
            OnBindData();
        }

        protected override void OnBindData()
        {
            PageBusHours page = new PageBusHours();
           
            page.Start = this.CurrentPage * this.PageRows + 1;
            page.End = (this.CurrentPage + 1) * this.PageRows;

            this.AllCount = 7;

            string sql = String.Empty;
            string projectname = String.Empty;

            if (!String.IsNullOrEmpty(txtProjectName.Text))
            {
                page.Search += " and a.ProjectName like '%" + txtProjectName.Text + "%' ";
            }

            DataTable dt = SqlBaseProvider.SearchBusHours(page);
            if ((dt != null) && (dt.Rows.Count > 0))
            {
                dgvList.DataSource = dt;
                this.AllCount = page.Total;
            }

        }
    }
}
