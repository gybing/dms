using System;
using System.Collections.Generic;
using System.Collections;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using System.Configuration;
using GuFun.Utils;

namespace GuFun.WinCore
{
  public class CoreCtrls
  {
    #region DataGridView

    public static void CreateDataGridView(DataGridView dgv, SetSql ss, bool isclear, UserCache pcs, bool isFooter)
    {
      if ((dgv == null) || (ss == null))
        return;

      if (isclear)
        dgv.Columns.Clear();

      foreach (SetSqlDetail item in ss.Items)
      {
        switch (item.ColType)
        {
          case (short)ListCellType.Bool:
            dgv.Columns.Add(new DataGridViewCheckBoxColumn());
            break;

          case (short)ListCellType.DropDown:
            if (!String.IsNullOrEmpty(item.RelaSql))
              dgv.Columns.Add(new DataGridViewComboBoxColumn());
            else
              dgv.Columns.Add(new DataGridViewTextBoxColumn());
            break;
          
          default:
            dgv.Columns.Add(new DataGridViewTextBoxColumn());
            break;
        }

        DataGridViewColumn dc = dgv.Columns[dgv.Columns.Count - 1];
        
        dc.HeaderText = item.ColName;
        dc.HeaderCell.Style.Alignment = DataGridViewContentAlignment.MiddleCenter;
        dc.Width = Convert.ToInt32(item.DispSize);
        dc.Visible = item.IsVisible;
        dc.Name = item.ColCode;
        dc.DataPropertyName = item.ColCode;

        switch (item.ColType)
        {
          case (short)ListCellType.Date:
            dc.DefaultCellStyle.Format = "yyyy年MM月dd日";
            break;

          case (short)ListCellType.DateTime:
            dc.DefaultCellStyle.Format = "yyyy年MM月dd日 HH:mm";
            break;

          case (short)ListCellType.Money:
            dc.DefaultCellStyle.Format = "0.00";
            break;
        }

        if (dc is DataGridViewComboBoxColumn)
        {
          //SetSql relaitem = SqlBaseProvider.GetSetSql(item.RelaSql);
          //((DataGridViewComboBoxColumn)dc).DataSource = GetPublicProcedure(relaitem.SqlText);
          //((DataGridViewComboBoxColumn)dc).DisplayMember = "Col_Type_Name";
          //((DataGridViewComboBoxColumn)dc).ValueMember = "Col_Type";
          //CtrlHelper.SetDropDownList((DataGridViewComboBoxColumn)dc, CoreCtrls.GetComboBoxItems(pcs, relaitem.SqlText, (SqlTextType)relaitem.SqlType, relaitem.SqlDropdown), DropAddType.New, DropAddFlag.Null); 
        }
      }

      // 为了解决合计排序的问题，增加一列强制排序列
      if (isFooter)
      {
        dgv.Columns.Add(new DataGridViewTextBoxColumn());

        DataGridViewColumn footer = dgv.Columns[dgv.Columns.Count - 1];

        footer.HeaderText = "默认排序";
        footer.HeaderCell.Style.Alignment = DataGridViewContentAlignment.MiddleCenter;
        footer.Width = 10;
        footer.Visible = false;
        footer.Name = "IsFooter";
        footer.DataPropertyName = "IsFooter";
      }
    }

    public static void CreateDataGridView(DataGridView dgv, SetSql ss, UserCache pcs, bool isFooter)
    {
      CreateDataGridView(dgv, ss, true, pcs, isFooter);
    }

    public static void SetDataGridView(DataGridView dgv, string setsql, UserCache pcs)
    {
      SetDataGridView(dgv, setsql, true, pcs, false);
    }

    public static void SetDataGridView(DataGridView dgv, string setsql, UserCache pcs, bool isFooter)
    {
      SetDataGridView(dgv, setsql, true, pcs, isFooter);
    }

    public static void SetDataGridView(DataGridView dgv, string setsql, bool disable, UserCache pcs, bool isFooter)
    {
      if (dgv == null)
        return;

      CtrlHelper.InitDataGridView(dgv, disable);
      CreateDataGridView(dgv, SqlBaseProvider.GetFullSetSql(setsql), pcs, isFooter);
    }

    public static void InitMergeDataGridView(DataGridView dgv)
    {
      if (dgv == null)
        return;

      dgv.BackgroundColor = StringHelper.GetColor("#FFFFE1");
      dgv.AlternatingRowsDefaultCellStyle.BackColor = StringHelper.GetColor("#A2E0D6");
      dgv.RowsDefaultCellStyle.BackColor = StringHelper.GetColor("#A2E0D6");
      dgv.SelectionMode = DataGridViewSelectionMode.CellSelect;
      dgv.DefaultCellStyle.SelectionBackColor = StringHelper.GetColor("#A9B4E7");
      dgv.DefaultCellStyle.Padding = new Padding(4, 0, 0, 0);
      dgv.MultiSelect = false;
      dgv.AutoGenerateColumns = false;

      dgv.ReadOnly = true;
      dgv.AllowUserToAddRows = false;
      dgv.AllowUserToDeleteRows = false;
    }

    #endregion DataGridView

    #region Public Data Operation Methods

    public static DataTable GetPublicText(string sql)
    {
      DataTable tblMain;

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Sql", SqlDbType.NVarChar, 1024, sql));

        tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_Public", paras);
        tblMain.TableName = "SelectMain";
      }
      catch { throw; }

      return tblMain;
    }

    public static DataTable GetPublicProcedure(string procedure)
    {
      DataTable tblMain;

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Get_Action", SqlDbType.NVarChar, 10, DataGetAction.Full.ToString().ToLower()));

        tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + "." + procedure, paras);
        tblMain.TableName = "SelectMain";
      }
      catch { throw; }

      return tblMain;
    }

    public static DataTable GetPublicDataTable(string sql, SqlTextType type)
    {
      switch (type)
      {
        case SqlTextType.Text:
          return GetPublicText(sql);

        default:
          return GetPublicProcedure(sql);
      }
    }

    #endregion Public Data Operation Methods

    #region ComboBox Items Methods

    public static ArrayList GetComboBoxItems(ParamCaches pcs, string sql, SqlTextType type, string colname)
    {
      string pt = ConfigurationManager.AppSettings[PublicConsts.PC_ParamType];

      if (!String.IsNullOrEmpty(pt) && (pt.ToLower() == "mem"))
      {
        if (pcs == null)
          return new ArrayList();

        return pcs[sql].Items;
      }
      else
        return CtrlHelper.DataTableToItems(GetPublicDataTable(sql, type), colname);
    }

    public static ArrayList GetComboBoxItems(ParamCaches pcs, string name)
    {
      if (pcs == null)
        return new ArrayList();

      return pcs[name].Items;
    }

    public static ArrayList GetComboBoxItems(string sql, SqlTextType type, string colname)
    {
      return CtrlHelper.DataTableToItems(GetPublicDataTable(sql, type), colname);
    }

    #endregion ComboBox Items Methods

    #region AuthType Methods

    public static bool CheckAuth(int auth, AuthType check)
    {
      return ((AuthType)auth & check) == check;
    }

    #endregion AuthType Methods

    public static void ToDetailMoney(BillDetail item)
    {
      // 金额转换
      item.CnAmount = StringHelper.ToCapMoneyNum(item.EnAmount.ToString());

      string[] amounts = item.EnAmount.ToString("0.00").Split('.');

      if (amounts.Length > 1)
      {
        if (amounts[1].Length > 0) item.En02 = amounts[1].Substring(0, 1);
        if (amounts[1].Length > 1) item.En01 = amounts[1].Substring(1, 1);
      }

      amounts[0] = "￥" + amounts[0];
      int len = amounts[0].Length;

      if (len > 0) item.En03 = amounts[0].Substring(len - 1, 1);
      if (len > 1) item.En04 = amounts[0].Substring(len - 2, 1);
      if (len > 2) item.En05 = amounts[0].Substring(len - 3, 1);
      if (len > 3) item.En06 = amounts[0].Substring(len - 4, 1);
      if (len > 4) item.En07 = amounts[0].Substring(len - 5, 1);
      if (len > 5) item.En08 = amounts[0].Substring(len - 6, 1);
      if (len > 6) item.En09 = amounts[0].Substring(len - 7, 1);
      if (len > 7) item.En10 = amounts[0].Substring(len - 8, 1);
      if (len > 8) item.En11 = amounts[0].Substring(len - 9, 1);
      if (len > 9) item.En12 = amounts[0].Substring(len - 10, 1);
    }

    public static void ToDetailDate(BillDetail item)
    {
      if (item.BillDate > DateTime.MinValue)
      {
        item.EnDate = item.BillDate.ToString("yyyyMMdd");
        item.EnYearMonth = item.BillDate.ToString("yyyyMM");
        item.EnYear = item.BillDate.ToString("yyyy");
        item.EnMonth = item.BillDate.ToString("MM");
        item.EnDay = item.BillDate.ToString("dd");

        item.CnYear = StringHelper.ToChinese(item.EnYear.Substring(0, 1)) + StringHelper.ToChinese(item.EnYear.Substring(1, 1)) + StringHelper.ToChinese(item.EnYear.Substring(2, 1)) + StringHelper.ToChinese(item.EnYear.Substring(3, 1));
        item.CnMonth = StringHelper.ToChinese(item.EnMonth.Substring(0, 1)) + (item.EnMonth.Substring(0, 1) == "0" ? String.Empty : "拾") + StringHelper.ToChinese(item.EnMonth.Substring(1, 1));
        item.CnMonth = item.CnMonth.Replace("拾零", "拾");
        item.CnDay = StringHelper.ToChinese(item.EnDay.Substring(0, 1)) + (item.EnDay.Substring(0, 1) == "0" ? String.Empty : "拾") + StringHelper.ToChinese(item.EnDay.Substring(1, 1));
        item.CnDay = item.CnDay.Replace("拾零", "拾");
      }
    }
  }
}
