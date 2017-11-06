using GuFun.Utils;
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
    public partial class EditProject : DMS.BaseEditForm
    {
        private short ml = 0;
        public string id = String.Empty;
        public ManMan parentForm;

        public EditProject()
        {
            InitializeComponent();
        }

        private void EditProject_Load(object sender, EventArgs e)
        {
            CtrlHelper.SetDropDownList(ddlProjectType, CoreCtrls.GetComboBoxItems("Select * from T_Pmt_Project_Type order by ProjectType", SqlTextType.Text, "ProjectTypeName,ProjectType"), DropAddType.New, DropAddFlag.Select);
            CtrlHelper.SetDropDownList(ddlWorkUnit, CoreCtrls.GetComboBoxItems("Select * from T_Pmt_Work_Unit order by WorkUnit", SqlTextType.Text, "WorkUnitName,WorkUnit"), DropAddType.New, DropAddFlag.Select);
            CtrlHelper.SetDropDownList(ddlProjectManager, CoreCtrls.GetComboBoxItems("select b.Man_ID, b.Man_Name from T_Sys_Oper_Role a, T_Sys_Man b where a.Man_ID = b.Man_ID and  a.Role_ID = '1'", SqlTextType.Text, "Man_Name,Man_ID"), DropAddType.New, DropAddFlag.Select);
            
        }
        //BaseForm_KeyPress

        
    }
}
