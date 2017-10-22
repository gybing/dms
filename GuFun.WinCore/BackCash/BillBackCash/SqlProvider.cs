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
    public static BillBackCash PopulateBillBackCash(IDataReader reader)
    {
      BillBackCash item = new BillBackCash();
      item.TranID = reader["Tran_ID"] as string;
      item.ApplyMan = reader["Apply_Man"] as string;
      item.ApplyManName = reader["Apply_Man_Name"] as string;
      item.BackCashCash = Convert.ToDouble(reader["BackCash_Cash"]);
      if (reader["Apply_Desc"] != DBNull.Value)
        item.ApplyDesc = reader["Apply_Desc"] as string;
      item.ApplyDate = Convert.ToDateTime(reader["Apply_Date"]);
      item.SerialID = Convert.ToInt32(reader["Serial_ID"]);
      item.BackCashStatus = (short)reader["BackCash_Status"];
      item.BackCashStatusName = reader["BackCash_Status_Name"] as string;
      if (reader["Next_Man"] != DBNull.Value)
        item.NextMan = reader["Next_Man"] as string;
      if (reader["Next_Man_Name"] != DBNull.Value)
        item.NextManName = reader["Next_Man_Name"] as string;
      item.NextFlow = (short)reader["Next_Flow"];
      item.ApplyDept = reader["Apply_Dept"] as string;
      item.DeptName = reader["Dept_Name"] as string;
      item.NowMan = reader["Now_Man"] as string;
      item.NowManName = reader["Now_Man_Name"] as string;
      item.NowDate = Convert.ToDateTime(reader["Now_Date"]);
      if (reader["Now_Desc"] != DBNull.Value)
        item.NowDesc = reader["Now_Desc"] as string;
      item.NowStatus = (short)reader["Now_Status"];
      item.NowStatusName = reader["Now_Status_Name"] as string;
      item.BackCashFlow = (short)reader["BackCash_Flow"];
      item.BackCashFlowName = reader["BackCash_Flow_Name"] as string;

      return item;
    }

    public static BillBackCash GetBillBackCash(string tranid)
    {
      BillBackCash item = new BillBackCash();

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Tran_ID", SqlDbType.NVarChar, 20, tranid));
        paras.Add(DBUtils.MakeInParam("@Get_Action", SqlDbType.NVarChar, 10, DataGetAction.Row.ToString().ToLower()));

        SqlDataReader reader = DBUtils.ExecuteReader(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_BillBackCash", paras);

        if (reader.Read())
        {
          item = PopulateBillBackCash(reader);
        }

        reader.Close();
      }
      catch { throw; }

      return item;
    }

    public static void ApplyBillBackCash(BillBackCash item, DataProviderAction action)
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
        paras.Add(DBUtils.MakeInParam("@Apply_Man", SqlDbType.NVarChar, 6, item.ApplyMan));
        paras.Add(DBUtils.MakeInParam("@Apply_Dept", SqlDbType.NVarChar, 8, item.ApplyDept));
        paras.Add(DBUtils.MakeInParam("@Apply_Man_Name", SqlDbType.NVarChar, 10, item.ApplyManName));
        paras.Add(DBUtils.MakeInParam("@Apply_Desc", SqlDbType.Text, item.ApplyDesc));
        paras.Add(DBUtils.MakeInParam("@BackCash_Cash", SqlDbType.Decimal, item.BackCashCash));
        paras.Add(DBUtils.MakeInParam("@Apply_Date", SqlDbType.DateTime, item.ApplyDate));
        paras.Add(DBUtils.MakeInParam("@BackCash_Status", SqlDbType.SmallInt, item.BackCashStatus));
        paras.Add(DBUtils.MakeInParam("@Next_Flow", SqlDbType.SmallInt, item.NextFlow));
        paras.Add(DBUtils.MakeInParam("@BackCash_Flow", SqlDbType.SmallInt, item.BackCashFlow));
        paras.Add(DBUtils.MakeInParam("@Action", SqlDbType.Int, action));

        DBUtils.ExecuteNonQuery(conn, cmd, CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Apply_BillBackCash", paras);

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

    public static DataTable GetBillBackCashByDept(string deptid)
    {
      DataTable tblMain;

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Dept_ID", SqlDbType.NVarChar, 8, deptid));

        tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_BillBackCashByDept", paras);
        tblMain.TableName = "SelectMain";
      }
      catch { throw; }

      return tblMain;
    }

    public static DataTable GetBillBackCashByReDept(string manid)
    {
      DataTable tblMain;

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Man_ID", SqlDbType.NVarChar, 6, manid));

        tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_BillBackCashByReDept", paras);
        tblMain.TableName = "SelectMain";
      }
      catch { throw; }

      return tblMain;
    }

    public static DataTable GetBillBackCashByCheck(string manid)
    {
      DataTable tblMain;

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Man_ID", SqlDbType.NVarChar, 6, manid));

        tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_BillBackCashByCheck", paras);
        tblMain.TableName = "SelectMain";
      }
      catch { throw; }

      return tblMain;
    }

    public static DataTable GetBillBackCashByAudit()
    {
      DataTable tblMain;

      try
      {
        tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_BillBackCashByAudit");
        tblMain.TableName = "SelectMain";
      }
      catch { throw; }

      return tblMain;
    }

    public static DataTable GetBillBackCashByDeal()
    {
      DataTable tblMain;

      try
      {
        tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_BillBackCashByDeal");
        tblMain.TableName = "SelectMain";
      }
      catch { throw; }

      return tblMain;
    }

    public static DataTable GetBackCashFlow(string tranid)
    {
      DataTable tblMain;

      try
      {
        ArrayList paras = new ArrayList();

        paras.Add(DBUtils.MakeInParam("@Tran_ID", SqlDbType.NVarChar, 20, tranid));

        tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_BackCashFlow", paras);
        tblMain.TableName = "SelectMain";
      }
      catch { throw; }

      return tblMain;
    }

    public static DataTable GetCashAuditMan(string tranid)
    {
      DataTable tblMain;

      try
      {
        ArrayList paras = new ArrayList();

        paras.Add(DBUtils.MakeInParam("@Tran_ID", SqlDbType.NVarChar, 20, tranid));

        tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_CashAuditMan", paras);
        tblMain.TableName = "SelectMain";
      }
      catch { throw; }

      return tblMain;
    }

    public static void DeptBillBackCash(BillBackCash item, DataProviderAction action)
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
        paras.Add(DBUtils.MakeInParam("@BackCash_Status", SqlDbType.SmallInt, item.BackCashStatus));
        paras.Add(DBUtils.MakeInParam("@BackCash_Flow", SqlDbType.SmallInt, item.BackCashFlow));
        paras.Add(DBUtils.MakeInParam("@Next_Man", SqlDbType.NVarChar, 6, item.NextMan));
        paras.Add(DBUtils.MakeInParam("@Next_Man_Name", SqlDbType.NVarChar, 10, item.NextManName));
        paras.Add(DBUtils.MakeInParam("@Next_Flow", SqlDbType.SmallInt, item.NextFlow));
        paras.Add(DBUtils.MakeInParam("@Action", SqlDbType.Int, action));

        DBUtils.ExecuteNonQuery(conn, cmd, CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Dept_BillBackCash", paras);

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

    public static void CheckBillBackCash(BillBackCash item, DataProviderAction action)
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
        paras.Add(DBUtils.MakeInParam("@BackCash_Status", SqlDbType.SmallInt, item.BackCashStatus));
        paras.Add(DBUtils.MakeInParam("@BackCash_Flow", SqlDbType.SmallInt, item.BackCashFlow));
        paras.Add(DBUtils.MakeInParam("@Next_Man", SqlDbType.NVarChar, 6, item.NextMan));
        paras.Add(DBUtils.MakeInParam("@Next_Man_Name", SqlDbType.NVarChar, 10, item.NextManName));
        paras.Add(DBUtils.MakeInParam("@Next_Flow", SqlDbType.SmallInt, item.NextFlow));
        paras.Add(DBUtils.MakeInParam("@Action", SqlDbType.Int, action));

        DBUtils.ExecuteNonQuery(conn, cmd, CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Check_BillBackCash", paras);

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

    public static void DealBillBackCash(BillBackCash item, DataProviderAction action)
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
        paras.Add(DBUtils.MakeInParam("@BackCash_Status", SqlDbType.SmallInt, item.BackCashStatus));
        paras.Add(DBUtils.MakeInParam("@BackCash_Flow", SqlDbType.SmallInt, item.BackCashFlow));
        paras.Add(DBUtils.MakeInParam("@Next_Man", SqlDbType.NVarChar, 6, item.NextMan));
        paras.Add(DBUtils.MakeInParam("@Next_Man_Name", SqlDbType.NVarChar, 10, item.NextManName));
        paras.Add(DBUtils.MakeInParam("@Next_Flow", SqlDbType.SmallInt, item.NextFlow));
        paras.Add(DBUtils.MakeInParam("@Accept_Man", SqlDbType.NVarChar, 6, item.ApplyMan));
        paras.Add(DBUtils.MakeInParam("@Action", SqlDbType.Int, action));

        DBUtils.ExecuteNonQuery(conn, cmd, CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Deal_BillBackCash", paras);

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

    public static void ReDeptBillBackCash(BillBackCash item, DataProviderAction action)
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
        paras.Add(DBUtils.MakeInParam("@BackCash_Status", SqlDbType.SmallInt, item.BackCashStatus));
        paras.Add(DBUtils.MakeInParam("@BackCash_Flow", SqlDbType.SmallInt, item.BackCashFlow));
        paras.Add(DBUtils.MakeInParam("@Next_Man", SqlDbType.NVarChar, 6, item.NextMan));
        paras.Add(DBUtils.MakeInParam("@Next_Man_Name", SqlDbType.NVarChar, 10, item.NextManName));
        paras.Add(DBUtils.MakeInParam("@Next_Flow", SqlDbType.SmallInt, item.NextFlow));
        paras.Add(DBUtils.MakeInParam("@BackCash_Cash", SqlDbType.Decimal, item.BackCashCash));
        paras.Add(DBUtils.MakeInParam("@Action", SqlDbType.Int, action));

        DBUtils.ExecuteNonQuery(conn, cmd, CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_ReDept_BillBackCash", paras);

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

    public static DataTable SearchBillBackCash(string sql)
    {
      DataTable tblMain;

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Search", SqlDbType.NVarChar, 300, sql));

        tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Search_BillBackCash", paras);
        tblMain.TableName = "SelectMain";
      }
      catch { throw; }

      return tblMain;
    }

    public static void DeleteBillBackCash(string tranid)
    {
      SqlConnection conn = DBUtils.GetConnection();
      SqlCommand cmd = DBUtils.GetCommand();

      try
      {
        cmd.Transaction = conn.BeginTransaction();

        ArrayList paras = new ArrayList();

        paras.Add(DBUtils.MakeInParam("@Tran_ID", SqlDbType.NVarChar, 20, tranid));

        DBUtils.ExecuteNonQuery(conn, cmd, CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Delete_BillBackCash", paras);

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

    public static double GetMaxBillBackCash()
    {
      double rtn = 0;

      try
      {
        SqlDataReader reader = DBUtils.ExecuteReader(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_MaxBackCash");

        if (reader.Read())
        {
          rtn = Convert.ToDouble(reader["MaxBackCash"]);
        }

        reader.Close();
      }
      catch { throw; }

      return rtn;
    }
  }
}
