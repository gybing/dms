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
    public static DataTable GetBankAcceptList()
    {
      DataTable tblMain;

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Get_Action", SqlDbType.NVarChar, 10, DataGetAction.Full.ToString().ToLower()));

        tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_BankAccept", paras);
        tblMain.TableName = "SelectMain";
      }
      catch { throw; }

      return tblMain;
    }

    public static DataTable GetBankAcceptNothing()
    {
      DataTable tblMain;

      try
      {
        tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_BankAcceptNothing");
        tblMain.TableName = "SelectMain";
      }
      catch { throw; }

      return tblMain;
    }

    public static DataTable GetBankAcceptDetail(int changeid)
    {
      DataTable tblMain;

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Accept_ID", SqlDbType.Int, changeid));

        tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_BankAcceptDetail", paras);
        tblMain.TableName = "SelectMain";
      }
      catch { throw; }

      return tblMain;
    }

    public static DataTable SearchBankAccept(string search)
    {
      DataTable tblMain;

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Search", SqlDbType.NVarChar, 200, search));

        tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Search_BankAccept", paras);
        tblMain.TableName = "SelectMain";
      }
      catch { throw; }

      return tblMain;
    }

    public static BankAccept PopulateBankAccept(IDataReader reader)
    {
      BankAccept item = new BankAccept();
      item.AcceptID = (int)reader["Accept_ID"];
      item.TargetMan = reader["Target_Man"] as string;
      item.TargetManName = reader["Target_Man_Name"] as string;
      item.TargetDept = reader["Target_Dept"] as string;
      item.DeptName = reader["Dept_Name"] as string;
      item.AcceptDate = Convert.ToDateTime(reader["Accept_Date"]);
      item.Cnt = (int)reader["Cnt"];
      item.EnAmount = Convert.ToDouble(reader["En_Amount"]);

      return item;
    }

    public static BankAccept GetBankAccept(int changeid)
    {
      BankAccept item = new BankAccept();

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Accept_ID", SqlDbType.Int, changeid));
        paras.Add(DBUtils.MakeInParam("@Get_Action", SqlDbType.NVarChar, 10, DataGetAction.Row.ToString().ToLower()));

        SqlDataReader reader = DBUtils.ExecuteReader(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_BankAccept", paras);

        if (reader.Read())
        {
          item = PopulateBankAccept(reader);
        }

        reader.Close();
      }
      catch { throw; }

      return item;
    }

    public static void CreateUpdateDeleteBankAccept(BankAccept item, DataProviderAction action)
    {
      CreateUpdateDeleteBankAccept(item, action, 2);
    }

    public static void CreateUpdateDeleteBankAccept(BankAccept item, DataProviderAction action, short status)
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
        {
          paras.Add(DBUtils.MakeOutParam("@Accept_ID", SqlDbType.Int));
        }
        else
        {
          paras.Add(DBUtils.MakeInParam("@Accept_ID", SqlDbType.Int, item.AcceptID));
        }
        paras.Add(DBUtils.MakeInParam("@Target_Man", SqlDbType.NVarChar, 6, item.TargetMan));
        paras.Add(DBUtils.MakeInParam("@Target_Man_Name", SqlDbType.NVarChar, 10, item.TargetManName));
        paras.Add(DBUtils.MakeInParam("@Target_Dept", SqlDbType.NVarChar, 8, item.TargetDept));
        paras.Add(DBUtils.MakeInParam("@Accept_Date", SqlDbType.DateTime, item.AcceptDate));
        paras.Add(DBUtils.MakeInParam("@Cnt", SqlDbType.Int, item.Cnt));
        paras.Add(DBUtils.MakeInParam("@En_Amount", SqlDbType.Decimal, item.EnAmount));
        paras.Add(DBUtils.MakeInParam("@Action", SqlDbType.Int, action));

        DBUtils.ExecuteNonQuery(conn, cmd, CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_CreateUpdateDelete_BankAccept", paras);

        if (action == DataProviderAction.Create)
        {
          item.AcceptID = ((((SqlParameter)paras[0]).Value != null) ? (Convert.ToInt32(((SqlParameter)paras[0]).Value)) : (int)0);
        }

        // modify by 20110322 增加了票据状态的字段传递
        foreach (BankAcceptData data in item.Items)
        {
          paras.Clear();
          paras.Add(DBUtils.MakeInParam("@Accept_ID", SqlDbType.Int, item.AcceptID));
          paras.Add(DBUtils.MakeInParam("@Bill_No", SqlDbType.Int, data.BillNo));
          paras.Add(DBUtils.MakeInParam("@Now_Status", SqlDbType.SmallInt, status));
          DBUtils.ExecuteNonQuery(conn, cmd, CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_CreateUpdateDelete_BankAcceptData", paras);
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
  }
}
