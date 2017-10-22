using System;
using System.Text;
using System.Collections;
using System.Data;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using GuFun.Utils;

namespace GuFun.WinCore
{
  public partial class SqlBaseProvider
  {
    public static DataTable GetBillBackFeeList()
    {
      DataTable tblMain;

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Get_Action", SqlDbType.NVarChar, 10, DataGetAction.Full.ToString().ToLower()));

        tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_BillBackFee", paras);
        tblMain.TableName = "SelectMain";
      }
      catch { throw; }

      return tblMain;
    }

    public static DataTable GetBillBackFeeFault(string manid)
    {
      DataTable tblMain;

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Man_ID", SqlDbType.NVarChar, 6, manid));

        tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_BillBackFeeFault", paras);
        tblMain.TableName = "SelectMain";
      }
      catch { throw; }

      return tblMain;
    }

    public static DataTable GetBillBackFeeList(short status)
    {
      DataTable tblMain;

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@BackFee_Status", SqlDbType.SmallInt, status));

        tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_BillBackFeeByStatus", paras);
        tblMain.TableName = "SelectMain";
      }
      catch { throw; }

      return tblMain;
    }

    public static DataTable GetBillBackFeeByDept(string deptid)
    {
      DataTable tblMain;

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Dept_ID", SqlDbType.NVarChar, 8, deptid));

        tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_BillBackFeeByDept", paras);
        tblMain.TableName = "SelectMain";
      }
      catch { throw; }

      return tblMain;
    }

    public static DataTable GetBillBackFeeByDept2(string deptid)
    {
      DataTable tblMain;

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Dept_ID", SqlDbType.NVarChar, 8, deptid));

        tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_BillBackFeeByDept2", paras);
        tblMain.TableName = "SelectMain";
      }
      catch { throw; }

      return tblMain;
    }

    public static DataTable GetBillBackFeeByReDept(string deptid)
    {
      DataTable tblMain;

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Dept_ID", SqlDbType.NVarChar, 8, deptid));

        tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_BillBackFeeByReDept", paras);
        tblMain.TableName = "SelectMain";
      }
      catch { throw; }

      return tblMain;
    }

    public static DataTable GetBillBackFeeEquip(string deptid)
    {
      DataTable tblMain;

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Dept_ID", SqlDbType.NVarChar, 8, deptid));

        tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_BillBackFeeEquip", paras);
        tblMain.TableName = "SelectMain";
      }
      catch { throw; }

      return tblMain;
    }

    public static DataTable GetBillBackFeeByDeal()
    {
      DataTable tblMain;

      try
      {
        tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_BillBackFeeByDeal");
        tblMain.TableName = "SelectMain";
      }
      catch { throw; }

      return tblMain;
    }

    public static DataTable GetBillBackFeeByBack()
    {
      DataTable tblMain;

      try
      {
        tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_BillBackFeeByBack");
        tblMain.TableName = "SelectMain";
      }
      catch { throw; }

      return tblMain;
    }

    public static DataTable GetBillBackFeeByCheck(string manid)
    {
      DataTable tblMain;

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Man_ID", SqlDbType.NVarChar, 6, manid));

        tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_BillBackFeeByCheck", paras);
        tblMain.TableName = "SelectMain";
      }
      catch { throw; }

      return tblMain;
    }

    public static DataTable GetBillBackFeeByDirect(string manid)
    {
      DataTable tblMain;

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Man_ID", SqlDbType.NVarChar, 6, manid));

        tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_BillBackFeeByDirect", paras);
        tblMain.TableName = "SelectMain";
      }
      catch { throw; }

      return tblMain;
    }

    public static DataTable GetBillBackFeeByAudit()
    {
      DataTable tblMain;

      try
      {
        tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_BillBackFeeByAudit");
        tblMain.TableName = "SelectMain";
      }
      catch { throw; }

      return tblMain;
    }

    public static DataTable SearchBillBackFee(string sql)
    {
      DataTable tblMain;

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Search", SqlDbType.NVarChar, 300, sql));

        tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Search_BillBackFee", paras);
        tblMain.TableName = "SelectMain";
      }
      catch { throw; }

      return tblMain;
    }

    //public static DataTable SearchBillBackFeeDept(string sql)
    //{
    //  DataTable tblMain;

    //  try
    //  {
    //    ArrayList paras = new ArrayList();
    //    paras.Add(DBUtils.MakeInParam("@Search", SqlDbType.NVarChar, 200, sql));

    //    tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Search_BillBackFeeDept", paras);
    //    tblMain.TableName = "SelectMain";
    //  }
    //  catch { throw; }

    //  return tblMain;
    //}

    public static NewBackFee PopulateBillBackFee(IDataReader reader)
    {
      NewBackFee item = new NewBackFee();
      item.TranID = reader["Tran_ID"] as string;
      item.BackFeeWord = reader["BackFee_Word"] as string;
      item.BackFeeCode = reader["BackFee_Code"] as string;
      item.ApplyMan = reader["Apply_Man"] as string;
      item.ApplyManName = reader["Apply_Man_Name"] as string;
      if (reader["Cust_ID"] != DBNull.Value)
        item.CustID = reader["Cust_ID"] as string;
      item.BillDeptName = reader["Bill_Dept_Name"] as string;
      if (reader["Bank_Full_Name"] != DBNull.Value)
        item.BankFullName = reader["Bank_Full_Name"] as string;
      if (reader["Bank_Account"] != DBNull.Value)
        item.BankAccount = reader["Bank_Account"] as string;
      item.BackFeeCash = Convert.ToDouble(reader["BackFee_Cash"]);
      if (reader["Apply_Desc"] != DBNull.Value)
        item.ApplyDesc = reader["Apply_Desc"] as string;
      item.ApplyDate = Convert.ToDateTime(reader["Apply_Date"]);
      item.BackType = Convert.ToInt16(reader["Back_Type"]);
      item.BackTypeName = reader["Back_Type_Name"] as string;
      item.SerialID = Convert.ToInt32(reader["Serial_ID"]);
      if (reader["Bill_Code"] != DBNull.Value)
        item.BillCode = reader["Bill_Code"] as string;
      if (reader["Bill_Number"] != DBNull.Value)
        item.BillNumber = reader["Bill_Number"] as string;
      item.BackFeeStatus = (short)reader["BackFee_Status"];
      item.BackFeeStatusName = reader["BackFee_Status_Name"] as string;
      if (reader["Next_Man"] != DBNull.Value)
        item.NextMan = reader["Next_Man"] as string;
      if (reader["Next_Man_Name"] != DBNull.Value)
        item.NextManName = reader["Next_Man_Name"] as string;
      item.NextFlow = (short)reader["Next_Flow"];
      item.AuditMoney = (short)reader["Audit_Money"];
      item.ApplyDept = reader["Apply_Dept"] as string;
      item.DeptName = reader["Dept_Name"] as string;
      item.NowMan = reader["Now_Man"] as string;
      item.NowManName = reader["Now_Man_Name"] as string;
      item.NowDate = Convert.ToDateTime(reader["Now_Date"]);
      if (reader["Now_Desc"] != DBNull.Value)
        item.NowDesc = reader["Now_Desc"] as string;
      item.NowStatus = (short)reader["Now_Status"];
      item.NowStatusName = reader["Now_Status_Name"] as string;
      item.BackFeeFlow = (short)reader["BackFee_Flow"];
      item.BackFeeFlowName = reader["BackFee_Flow_Name"] as string;
      item.NowAuditMoney = (short)reader["Now_Audit_Money"];
      item.BackFeeBill = (short)reader["BackFee_Bill"];
      item.BankID = (short)reader["Bank_ID"];
      item.FeeBackModel = (short)reader["FeeBack_Model"];
      item.FeeBackModelName = reader["FeeBack_Model_Name"] as string;
      if (reader["Link_Man"] != DBNull.Value)
        item.LinkMan = reader["Link_Man"] as string;
      if (reader["Link_Tele"] != DBNull.Value)
        item.LinkTele = reader["Link_Tele"] as string;
      if (reader["Link_Ident"] != DBNull.Value)
        item.LinkIdent = reader["Link_Ident"] as string;
      if (reader["Get_Short"] != DBNull.Value)
        item.GetShort = reader["Get_Short"] as string;

      return item;
    }

    public static NewBackFee GetBillBackFee(string tranid)
    {
      NewBackFee item = new NewBackFee();

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Tran_ID", SqlDbType.NVarChar, 20, tranid));
        paras.Add(DBUtils.MakeInParam("@Get_Action", SqlDbType.NVarChar, 10, DataGetAction.Row.ToString().ToLower()));

        SqlDataReader reader = DBUtils.ExecuteReader(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_BillBackFee", paras);

        if (reader.Read())
        {
          item = PopulateBillBackFee(reader);
        }

        reader.Close();
      }
      catch { throw; }

      return item;
    }

    //public static void CreateUpdateDeleteBillBackFee(BillBackFee item, DataProviderAction action)
    //{
    //  if (item == null)
    //    return;

    //  SqlConnection conn = DBUtils.GetConnection();
    //  SqlCommand cmd = DBUtils.GetCommand();

    //  try
    //  {
    //    cmd.Transaction = conn.BeginTransaction();

    //    ArrayList paras = new ArrayList();

    //    paras.Add(DBUtils.MakeInParam("@Tran_ID", SqlDbType.NVarChar, 20, item.TranID));
    //    paras.Add(DBUtils.MakeInParam("@BackFee_Word", SqlDbType.NVarChar, 10, item.BackFeeWord));
    //    paras.Add(DBUtils.MakeInParam("@BackFee_Code", SqlDbType.NVarChar, 10, item.BackFeeCode));
    //    paras.Add(DBUtils.MakeInParam("@Apply_Man", SqlDbType.NVarChar, 6, item.ApplyMan));
    //    paras.Add(DBUtils.MakeInParam("@Apply_Man_Name", SqlDbType.NVarChar, 10, item.ApplyManName));
    //    paras.Add(DBUtils.MakeInParam("@Cust_ID", SqlDbType.NVarChar, 20, item.CustID));
    //    paras.Add(DBUtils.MakeInParam("@Bill_Dept_Name", SqlDbType.NVarChar, 40, item.BillDeptName));
    //    paras.Add(DBUtils.MakeInParam("@Bank_Full_Name", SqlDbType.NVarChar, 30, item.BankFullName));
    //    paras.Add(DBUtils.MakeInParam("@Bank_Account", SqlDbType.NVarChar, 30, item.BankAccount));
    //    paras.Add(DBUtils.MakeInParam("@BackFee_Cash", SqlDbType.Decimal, item.BackFeeCash));
    //    paras.Add(DBUtils.MakeInParam("@Apply_Desc", SqlDbType.NVarChar, 100, item.ApplyDesc));
    //    paras.Add(DBUtils.MakeInParam("@Apply_Date", SqlDbType.DateTime, item.ApplyDate));
    //    paras.Add(DBUtils.MakeInParam("@Check_Man", SqlDbType.NVarChar, 6, item.CheckMan));
    //    paras.Add(DBUtils.MakeInParam("@Check_Man_Name", SqlDbType.NVarChar, 10, item.CheckManName));
    //    paras.Add(DBUtils.MakeInParam("@Check_Date", SqlDbType.DateTime, Publics.GetDataDateTime(item.CheckDate)));
    //    paras.Add(DBUtils.MakeInParam("@Check_Desc", SqlDbType.NVarChar, 100, item.CheckDesc));
    //    paras.Add(DBUtils.MakeInParam("@Audit_Man", SqlDbType.NVarChar, 6, item.AuditMan));
    //    paras.Add(DBUtils.MakeInParam("@Audit_Man_Name", SqlDbType.NVarChar, 10, item.AuditManName));
    //    paras.Add(DBUtils.MakeInParam("@Audit_Date", SqlDbType.DateTime, Publics.GetDataDateTime(item.AuditDate)));
    //    paras.Add(DBUtils.MakeInParam("@Audit_Desc", SqlDbType.NVarChar, 100, item.AuditDesc));
    //    paras.Add(DBUtils.MakeInParam("@Deal_Man", SqlDbType.NVarChar, 6, item.DealMan));
    //    paras.Add(DBUtils.MakeInParam("@Deal_Man_Name", SqlDbType.NVarChar, 10, item.DealManName));
    //    paras.Add(DBUtils.MakeInParam("@Deal_Date", SqlDbType.DateTime, Publics.GetDataDateTime(item.DealDate)));
    //    paras.Add(DBUtils.MakeInParam("@Deal_Desc", SqlDbType.NVarChar, 100, item.DealDesc));
    //    paras.Add(DBUtils.MakeInParam("@Last_Man", SqlDbType.NVarChar, 6, item.LastMan));
    //    paras.Add(DBUtils.MakeInParam("@Last_Man_Name", SqlDbType.NVarChar, 10, item.LastManName));
    //    paras.Add(DBUtils.MakeInParam("@Last_Date", SqlDbType.DateTime, Publics.GetDataDateTime(item.LastDate)));
    //    paras.Add(DBUtils.MakeInParam("@Last_Desc", SqlDbType.NVarChar, 100, item.LastDesc));
    //    paras.Add(DBUtils.MakeInParam("@BackFee_Status", SqlDbType.SmallInt, item.BackFeeStatus));
    //    paras.Add(DBUtils.MakeInParam("@Action", SqlDbType.Int, action));

    //    DBUtils.ExecuteNonQuery(conn, cmd, CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_CreateUpdateDelete_BillBackFee", paras);

    //    cmd.Transaction.Commit();
    //  }
    //  catch
    //  {
    //    cmd.Transaction.Rollback();
    //    throw;
    //  }
    //  finally
    //  {
    //    DBUtils.SetDispose(conn, cmd);
    //  }
    //}

    public static void DeleteBillBackFee(string tranid)
    {
      SqlConnection conn = DBUtils.GetConnection();
      SqlCommand cmd = DBUtils.GetCommand();

      try
      {
        cmd.Transaction = conn.BeginTransaction();

        ArrayList paras = new ArrayList();

        paras.Add(DBUtils.MakeInParam("@Tran_ID", SqlDbType.NVarChar, 20, tranid));

        DBUtils.ExecuteNonQuery(conn, cmd, CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Delete_BillBackFee", paras);

        cmd.Transaction.Commit();
      }
      catch
      {
        cmd.Transaction.Rollback();
        throw;
      }
      finally
      {
        DBUtils.SetDispose(conn, cmd);
      }
    }

    public static void ApplyBillBackFee(NewBackFee item, DataProviderAction action)
    {
      if (item == null)
        return;

      SqlConnection conn = DBUtils.GetConnection();
      SqlCommand cmd = DBUtils.GetCommand();

      try
      {
        cmd.Transaction = conn.BeginTransaction();

        ArrayList paras = new ArrayList();

        if (action == DataProviderAction.Create)
          paras.Add(DBUtils.MakeOutParam("@Tran_ID", SqlDbType.NVarChar, 20));
        else
          paras.Add(DBUtils.MakeInParam("@Tran_ID", SqlDbType.NVarChar, 20, item.TranID));
        if (action == DataProviderAction.Create)
          paras.Add(DBUtils.MakeOutParam("@Serial_ID", SqlDbType.Int));
        else
          paras.Add(DBUtils.MakeInParam("@Serial_ID", SqlDbType.Int, item.SerialID));
        paras.Add(DBUtils.MakeInParam("@Back_Type", SqlDbType.SmallInt, item.BackType));
        paras.Add(DBUtils.MakeInParam("@BackFee_Word", SqlDbType.NVarChar, 10, item.BackFeeWord));
        paras.Add(DBUtils.MakeInParam("@BackFee_Code", SqlDbType.NVarChar, 10, item.BackFeeCode));
        paras.Add(DBUtils.MakeInParam("@Apply_Man", SqlDbType.NVarChar, 6, item.ApplyMan));
        paras.Add(DBUtils.MakeInParam("@Apply_Dept", SqlDbType.NVarChar, 8, item.ApplyDept));
        paras.Add(DBUtils.MakeInParam("@Apply_Man_Name", SqlDbType.NVarChar, 10, item.ApplyManName));
        paras.Add(DBUtils.MakeInParam("@Cust_ID", SqlDbType.NVarChar, 20, item.CustID));
        paras.Add(DBUtils.MakeInParam("@Bill_Dept_Name", SqlDbType.NVarChar, 40, item.BillDeptName));
        paras.Add(DBUtils.MakeInParam("@Bank_Full_Name", SqlDbType.NVarChar, 30, item.BankFullName));
        paras.Add(DBUtils.MakeInParam("@Bank_Account", SqlDbType.NVarChar, 30, item.BankAccount));
        paras.Add(DBUtils.MakeInParam("@BackFee_Cash", SqlDbType.Decimal, item.BackFeeCash));
        paras.Add(DBUtils.MakeInParam("@Apply_Desc", SqlDbType.Text, item.ApplyDesc));
        paras.Add(DBUtils.MakeInParam("@Apply_Date", SqlDbType.DateTime, item.ApplyDate));
        paras.Add(DBUtils.MakeInParam("@BackFee_Status", SqlDbType.SmallInt, item.BackFeeStatus));
        paras.Add(DBUtils.MakeInParam("@Next_Flow", SqlDbType.SmallInt, item.NextFlow)); 
        paras.Add(DBUtils.MakeInParam("@Audit_Money", SqlDbType.SmallInt, item.AuditMoney)); 
        paras.Add(DBUtils.MakeInParam("@BackFee_Flow", SqlDbType.SmallInt, item.BackFeeFlow));
        paras.Add(DBUtils.MakeInParam("@Now_Audit", SqlDbType.SmallInt, item.NowAuditMoney));
        paras.Add(DBUtils.MakeInParam("@BackFee_Bill", SqlDbType.SmallInt, item.BackFeeBill));
        paras.Add(DBUtils.MakeInParam("@FeeBack_Model", SqlDbType.SmallInt, item.FeeBackModel));
        paras.Add(DBUtils.MakeInParam("@Link_Man", SqlDbType.NVarChar, 30, item.LinkMan));
        paras.Add(DBUtils.MakeInParam("@Link_Tele", SqlDbType.NVarChar, 30, item.LinkTele));
        paras.Add(DBUtils.MakeInParam("@Link_Ident", SqlDbType.NVarChar, 30, item.LinkIdent));
        paras.Add(DBUtils.MakeInParam("@Action", SqlDbType.Int, action));

        DBUtils.ExecuteNonQuery(conn, cmd, CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Apply_BillBackFee", paras);

        if (action == DataProviderAction.Create)
        {
          item.TranID = ((((SqlParameter)paras[0]).Value != null) ? (((SqlParameter)paras[0]).Value).ToString() : String.Empty);
          item.SerialID = ((((SqlParameter)paras[1]).Value != null) ? Convert.ToInt32((((SqlParameter)paras[1]).Value)) : (int)0);
        }

        cmd.Transaction.Commit();
      }
      catch
      {
        cmd.Transaction.Rollback();
        throw;
      }
      finally
      {
        DBUtils.SetDispose(conn, cmd);
      }
    }

    public static void DeptBillBackFee(NewBackFee item, DataProviderAction action)
    {
      if (item == null)
        return;

      SqlConnection conn = DBUtils.GetConnection();
      SqlCommand cmd = DBUtils.GetCommand();

      try
      {
        cmd.Transaction = conn.BeginTransaction();

        ArrayList paras = new ArrayList();

        if (action == DataProviderAction.Create)
          paras.Add(DBUtils.MakeOutParam("@Serial_ID", SqlDbType.Int));
        else
          paras.Add(DBUtils.MakeInParam("@Serial_ID", SqlDbType.Int, item.SerialID));
        paras.Add(DBUtils.MakeInParam("@Tran_ID", SqlDbType.NVarChar, 20, item.TranID));
        paras.Add(DBUtils.MakeInParam("@Now_Man", SqlDbType.NVarChar, 6, item.NowMan));
        paras.Add(DBUtils.MakeInParam("@Now_Man_Name", SqlDbType.NVarChar, 10, item.NowManName));
        paras.Add(DBUtils.MakeInParam("@Now_Date", SqlDbType.DateTime, Publics.GetDataDateTime(item.NowDate)));
        paras.Add(DBUtils.MakeInParam("@Now_Desc", SqlDbType.NVarChar, 100, item.NowDesc));
        paras.Add(DBUtils.MakeInParam("@BackFee_Status", SqlDbType.SmallInt, item.BackFeeStatus));
        paras.Add(DBUtils.MakeInParam("@BackFee_Flow", SqlDbType.SmallInt, item.BackFeeFlow));
        paras.Add(DBUtils.MakeInParam("@Audit_Money", SqlDbType.SmallInt, item.AuditMoney));
        paras.Add(DBUtils.MakeInParam("@Next_Man", SqlDbType.NVarChar, 6, item.NextMan));
        paras.Add(DBUtils.MakeInParam("@Next_Man_Name", SqlDbType.NVarChar, 10, item.NextManName));
        paras.Add(DBUtils.MakeInParam("@Next_Flow", SqlDbType.SmallInt, item.NextFlow));
        paras.Add(DBUtils.MakeInParam("@Now_Audit", SqlDbType.SmallInt, item.NowAuditMoney));
        paras.Add(DBUtils.MakeInParam("@Action", SqlDbType.Int, action));

        DBUtils.ExecuteNonQuery(conn, cmd, CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Dept_BillBackFee", paras);

        if (action == DataProviderAction.Create)
        {
          item.SerialID = ((((SqlParameter)paras[0]).Value != null) ? Convert.ToInt32((((SqlParameter)paras[0]).Value)) : (int)0);
        }

        cmd.Transaction.Commit();
      }
      catch
      {
        cmd.Transaction.Rollback();
        throw;
      }
      finally
      {
        DBUtils.SetDispose(conn, cmd);
      }
    }

    public static void BackBillBackFee(NewBackFee item, DataProviderAction action)
    {
      CheckBillBackFee(item, action);
    }

    public static void CheckBillBackFee(NewBackFee item, DataProviderAction action)
    {
      if (item == null)
        return;

      SqlConnection conn = DBUtils.GetConnection();
      SqlCommand cmd = DBUtils.GetCommand();

      try
      {
        cmd.Transaction = conn.BeginTransaction();

        ArrayList paras = new ArrayList();

        if (action == DataProviderAction.Create)
          paras.Add(DBUtils.MakeOutParam("@Serial_ID", SqlDbType.Int));
        else
          paras.Add(DBUtils.MakeInParam("@Serial_ID", SqlDbType.Int, item.SerialID));
        paras.Add(DBUtils.MakeInParam("@Tran_ID", SqlDbType.NVarChar, 20, item.TranID));
        paras.Add(DBUtils.MakeInParam("@Now_Man", SqlDbType.NVarChar, 6, item.NowMan));
        paras.Add(DBUtils.MakeInParam("@Now_Man_Name", SqlDbType.NVarChar, 10, item.NowManName));
        paras.Add(DBUtils.MakeInParam("@Now_Date", SqlDbType.DateTime, Publics.GetDataDateTime(item.NowDate)));
        paras.Add(DBUtils.MakeInParam("@Now_Desc", SqlDbType.NVarChar, 100, item.NowDesc));
        paras.Add(DBUtils.MakeInParam("@BackFee_Status", SqlDbType.SmallInt, item.BackFeeStatus));
        paras.Add(DBUtils.MakeInParam("@BackFee_Flow", SqlDbType.SmallInt, item.BackFeeFlow));
        paras.Add(DBUtils.MakeInParam("@Audit_Money", SqlDbType.SmallInt, item.AuditMoney));
        paras.Add(DBUtils.MakeInParam("@Next_Man", SqlDbType.NVarChar, 6, item.NextMan));
        paras.Add(DBUtils.MakeInParam("@Next_Man_Name", SqlDbType.NVarChar, 10, item.NextManName));
        paras.Add(DBUtils.MakeInParam("@Next_Flow", SqlDbType.SmallInt, item.NextFlow));
        paras.Add(DBUtils.MakeInParam("@Now_Audit", SqlDbType.SmallInt, item.NowAuditMoney));
        paras.Add(DBUtils.MakeInParam("@Action", SqlDbType.Int, action));

        DBUtils.ExecuteNonQuery(conn, cmd, CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Check_BillBackFee", paras);

        if (action == DataProviderAction.Create)
        {
          item.SerialID = ((((SqlParameter)paras[0]).Value != null) ? Convert.ToInt32((((SqlParameter)paras[0]).Value)) : (int)0);
        }

        cmd.Transaction.Commit();
      }
      catch
      {
        cmd.Transaction.Rollback();
        throw;
      }
      finally
      {
        DBUtils.SetDispose(conn, cmd);
      }
    }

    public static void AuditBillBackFee(NewBackFee item, DataProviderAction action)
    {
      CheckBillBackFee(item, action);
    }

    // modify by cloudy 20101107
    public static void DirectBillBackFee(NewBackFee item, DataProviderAction action)
    {
      if (item == null)
        return;

      SqlConnection conn = DBUtils.GetConnection();
      SqlCommand cmd = DBUtils.GetCommand();

      try
      {
        cmd.Transaction = conn.BeginTransaction();

        ArrayList paras = new ArrayList();

        if (action == DataProviderAction.Create)
          paras.Add(DBUtils.MakeOutParam("@Serial_ID", SqlDbType.Int));
        else
          paras.Add(DBUtils.MakeInParam("@Serial_ID", SqlDbType.Int, item.SerialID));
        paras.Add(DBUtils.MakeInParam("@Tran_ID", SqlDbType.NVarChar, 20, item.TranID));
        paras.Add(DBUtils.MakeInParam("@Now_Man", SqlDbType.NVarChar, 6, item.NowMan));
        paras.Add(DBUtils.MakeInParam("@Now_Man_Name", SqlDbType.NVarChar, 10, item.NowManName));
        paras.Add(DBUtils.MakeInParam("@Now_Date", SqlDbType.DateTime, Publics.GetDataDateTime(item.NowDate)));
        paras.Add(DBUtils.MakeInParam("@Now_Desc", SqlDbType.NVarChar, 100, item.NowDesc));
        paras.Add(DBUtils.MakeInParam("@BackFee_Status", SqlDbType.SmallInt, item.BackFeeStatus));
        paras.Add(DBUtils.MakeInParam("@BackFee_Flow", SqlDbType.SmallInt, item.BackFeeFlow));
        paras.Add(DBUtils.MakeInParam("@Audit_Money", SqlDbType.SmallInt, item.AuditMoney));
        paras.Add(DBUtils.MakeInParam("@Next_Man", SqlDbType.NVarChar, 6, item.NextMan));
        paras.Add(DBUtils.MakeInParam("@Next_Man_Name", SqlDbType.NVarChar, 10, item.NextManName));
        paras.Add(DBUtils.MakeInParam("@Next_Flow", SqlDbType.SmallInt, item.NextFlow));
        paras.Add(DBUtils.MakeInParam("@Now_Audit", SqlDbType.SmallInt, item.NowAuditMoney));
        paras.Add(DBUtils.MakeInParam("@BackFee_Cash", SqlDbType.Decimal, item.BackFeeCash));
        paras.Add(DBUtils.MakeInParam("@Action", SqlDbType.Int, action));

        DBUtils.ExecuteNonQuery(conn, cmd, CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Direct_BillBackFee", paras);

        if (action == DataProviderAction.Create)
        {
          item.SerialID = ((((SqlParameter)paras[0]).Value != null) ? Convert.ToInt32((((SqlParameter)paras[0]).Value)) : (int)0);
        }

        cmd.Transaction.Commit();
      }
      catch
      {
        cmd.Transaction.Rollback();
        throw;
      }
      finally
      {
        DBUtils.SetDispose(conn, cmd);
      }
    }

    public static void DealBillBackFee(NewBackFee item, DataProviderAction action)
    {
      if (item == null)
        return;

      SqlConnection conn = DBUtils.GetConnection();
      SqlCommand cmd = DBUtils.GetCommand();

      try
      {
        cmd.Transaction = conn.BeginTransaction();

        ArrayList paras = new ArrayList();

        if (action == DataProviderAction.Create)
          paras.Add(DBUtils.MakeOutParam("@Serial_ID", SqlDbType.Int));
        else
          paras.Add(DBUtils.MakeInParam("@Serial_ID", SqlDbType.Int, item.SerialID));
        paras.Add(DBUtils.MakeInParam("@Tran_ID", SqlDbType.NVarChar, 20, item.TranID));
        paras.Add(DBUtils.MakeInParam("@Now_Man", SqlDbType.NVarChar, 6, item.NowMan));
        paras.Add(DBUtils.MakeInParam("@Now_Man_Name", SqlDbType.NVarChar, 10, item.NowManName));
        paras.Add(DBUtils.MakeInParam("@Now_Date", SqlDbType.DateTime, Publics.GetDataDateTime(item.NowDate)));
        paras.Add(DBUtils.MakeInParam("@Now_Desc", SqlDbType.NVarChar, 100, item.NowDesc));
        paras.Add(DBUtils.MakeInParam("@BackFee_Status", SqlDbType.SmallInt, item.BackFeeStatus));
        paras.Add(DBUtils.MakeInParam("@BackFee_Flow", SqlDbType.SmallInt, item.BackFeeFlow));
        paras.Add(DBUtils.MakeInParam("@Audit_Money", SqlDbType.SmallInt, item.AuditMoney));
        paras.Add(DBUtils.MakeInParam("@Next_Man", SqlDbType.NVarChar, 6, item.NextMan));
        paras.Add(DBUtils.MakeInParam("@Next_Man_Name", SqlDbType.NVarChar, 10, item.NextManName));
        paras.Add(DBUtils.MakeInParam("@Next_Flow", SqlDbType.SmallInt, item.NextFlow));
        paras.Add(DBUtils.MakeInParam("@Now_Audit", SqlDbType.SmallInt, item.NowAuditMoney));
        paras.Add(DBUtils.MakeInParam("@Bill_Code", SqlDbType.NVarChar, 20, item.BillCode));
        paras.Add(DBUtils.MakeInParam("@Bill_Number", SqlDbType.NVarChar, 20, item.BillNumber));
        paras.Add(DBUtils.MakeInParam("@Get_Short", SqlDbType.NVarChar, 20, item.GetShort));
        paras.Add(DBUtils.MakeInParam("@Bank_ID", SqlDbType.SmallInt, item.BankID));
        paras.Add(DBUtils.MakeInParam("@Action", SqlDbType.Int, action));

        DBUtils.ExecuteNonQuery(conn, cmd, CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Deal_BillBackFee", paras);

        if (action == DataProviderAction.Create)
        {
          item.SerialID = ((((SqlParameter)paras[0]).Value != null) ? Convert.ToInt32((((SqlParameter)paras[0]).Value)) : (int)0);
        }

        cmd.Transaction.Commit();
      }
      catch
      {
        cmd.Transaction.Rollback();
        throw;
      }
      finally
      {
        DBUtils.SetDispose(conn, cmd);
      }
    }

    public static void FaultBillBackFee(NewBackFee item, string oldtran, DataProviderAction action)
    {
      if (item == null)
        return;

      SqlConnection conn = DBUtils.GetConnection();
      SqlCommand cmd = DBUtils.GetCommand();

      try
      {
        cmd.Transaction = conn.BeginTransaction();

        ArrayList paras = new ArrayList();

        if (action == DataProviderAction.Create)
          paras.Add(DBUtils.MakeOutParam("@Tran_ID", SqlDbType.NVarChar, 20));
        else
          paras.Add(DBUtils.MakeInParam("@Tran_ID", SqlDbType.NVarChar, 20, item.TranID));
        if (action == DataProviderAction.Create)
          paras.Add(DBUtils.MakeOutParam("@Serial_ID", SqlDbType.Int));
        else
          paras.Add(DBUtils.MakeInParam("@Serial_ID", SqlDbType.Int, item.SerialID));
        paras.Add(DBUtils.MakeInParam("@Back_Type", SqlDbType.SmallInt, item.BackType));
        paras.Add(DBUtils.MakeInParam("@BackFee_Word", SqlDbType.NVarChar, 10, item.BackFeeWord));
        paras.Add(DBUtils.MakeInParam("@BackFee_Code", SqlDbType.NVarChar, 10, item.BackFeeCode));
        paras.Add(DBUtils.MakeInParam("@Apply_Man", SqlDbType.NVarChar, 6, item.ApplyMan));
        paras.Add(DBUtils.MakeInParam("@Apply_Dept", SqlDbType.NVarChar, 8, item.ApplyDept));
        paras.Add(DBUtils.MakeInParam("@Apply_Man_Name", SqlDbType.NVarChar, 10, item.ApplyManName));
        paras.Add(DBUtils.MakeInParam("@Cust_ID", SqlDbType.NVarChar, 20, item.CustID));
        paras.Add(DBUtils.MakeInParam("@Bill_Dept_Name", SqlDbType.NVarChar, 40, item.BillDeptName));
        paras.Add(DBUtils.MakeInParam("@Bank_Full_Name", SqlDbType.NVarChar, 30, item.BankFullName));
        paras.Add(DBUtils.MakeInParam("@Bank_Account", SqlDbType.NVarChar, 30, item.BankAccount));
        paras.Add(DBUtils.MakeInParam("@BackFee_Cash", SqlDbType.Decimal, item.BackFeeCash));
        paras.Add(DBUtils.MakeInParam("@Apply_Desc", SqlDbType.Text, item.ApplyDesc));
        paras.Add(DBUtils.MakeInParam("@Apply_Date", SqlDbType.DateTime, item.ApplyDate));
        paras.Add(DBUtils.MakeInParam("@BackFee_Status", SqlDbType.SmallInt, item.BackFeeStatus));
        paras.Add(DBUtils.MakeInParam("@Next_Flow", SqlDbType.SmallInt, item.NextFlow));
        paras.Add(DBUtils.MakeInParam("@Audit_Money", SqlDbType.SmallInt, item.AuditMoney));
        paras.Add(DBUtils.MakeInParam("@BackFee_Flow", SqlDbType.SmallInt, item.BackFeeFlow));
        paras.Add(DBUtils.MakeInParam("@Now_Audit", SqlDbType.SmallInt, item.NowAuditMoney));
        paras.Add(DBUtils.MakeInParam("@BackFee_Bill", SqlDbType.SmallInt, item.BackFeeBill));
        paras.Add(DBUtils.MakeInParam("@Old_Tran", SqlDbType.NVarChar, 20, oldtran));
        paras.Add(DBUtils.MakeInParam("@FeeBack_Model", SqlDbType.SmallInt, item.FeeBackModel));
        paras.Add(DBUtils.MakeInParam("@Link_Man", SqlDbType.NVarChar, 30, item.LinkMan));
        paras.Add(DBUtils.MakeInParam("@Link_Tele", SqlDbType.NVarChar, 30, item.LinkTele));
        paras.Add(DBUtils.MakeInParam("@Link_Ident", SqlDbType.NVarChar, 30, item.LinkIdent));
        paras.Add(DBUtils.MakeInParam("@Action", SqlDbType.Int, action));

        DBUtils.ExecuteNonQuery(conn, cmd, CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Fault_BillBackFee", paras);

        if (action == DataProviderAction.Create)
        {
          item.TranID = ((((SqlParameter)paras[0]).Value != null) ? (((SqlParameter)paras[0]).Value).ToString() : String.Empty);
          item.SerialID = ((((SqlParameter)paras[1]).Value != null) ? Convert.ToInt32((((SqlParameter)paras[1]).Value)) : (int)0);
        }

        cmd.Transaction.Commit();
      }
      catch
      {
        cmd.Transaction.Rollback();
        throw;
      }
      finally
      {
        DBUtils.SetDispose(conn, cmd);
      }
    }

    // modify by cloudy 20151112
    public static void SubmitBillBackFee(NewBackFee item)
    {
      if (item == null)
        return;

      SqlConnection conn = DBUtils.GetConnection();
      SqlCommand cmd = DBUtils.GetCommand();

      try
      {
        cmd.Transaction = conn.BeginTransaction();

        ArrayList paras = new ArrayList();

        paras.Add(DBUtils.MakeInParam("@Tran_ID", SqlDbType.NVarChar, 20, item.TranID));
        paras.Add(DBUtils.MakeInParam("@Apply_Man", SqlDbType.NVarChar, 6, item.ApplyMan));

        DBUtils.ExecuteNonQuery(conn, cmd, CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Submit_BillBackFee", paras);

        cmd.Transaction.Commit();
      }
      catch
      {
        cmd.Transaction.Rollback();
        throw;
      }
      finally
      {
        DBUtils.SetDispose(conn, cmd);
      }
    }
  }
}
