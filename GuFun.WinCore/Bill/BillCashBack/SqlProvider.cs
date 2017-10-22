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
    public static DataTable GetBillCashBackList()
    {
      DataTable tblMain;

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Get_Action", SqlDbType.NVarChar, 10, DataGetAction.Full.ToString().ToLower()));

        tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_BillCashBack", paras);
        tblMain.TableName = "SelectMain";
      }
      catch { throw; }

      return tblMain;
    }

    public static DataTable SearchBillDetailCashBack(string search)
    {
      DataTable tblMain;

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Search", SqlDbType.NVarChar, 300, search));

        tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Search_BillDetailCashBack", paras);
        tblMain.TableName = "SelectMain";
      }
      catch { throw; }

      return tblMain;
    }

    public static DataTable GetNoBillCashBack(string search)
    {
      DataTable tblMain;

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Search", SqlDbType.NVarChar, 300, search));

        tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Search_NoBillCashBack", paras);
        tblMain.TableName = "SelectMain";
      }
      catch { throw; }

      return tblMain;
    }

    public static BillCashBack PopulateBillCashBack(IDataReader reader)
    {
      BillCashBack item = new BillCashBack();
      item.BillNo = (int)reader["Bill_No"];
      item.BackDate = Convert.ToDateTime(reader["Back_Date"]);
      item.BackReason = reader["Back_Reason"] as string;
      item.RecoMan = reader["Reco_Man"] as string;
      item.ManName = reader["Man_Name"] as string;
      item.RecoDate = Convert.ToDateTime(reader["Reco_Date"]);

      return item;
    }

    public static BillCashBack GetBillCashBack(int billno)
    {
      BillCashBack item = new BillCashBack();

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Bill_No", SqlDbType.Int, billno));
        paras.Add(DBUtils.MakeInParam("@Get_Action", SqlDbType.NVarChar, 10, DataGetAction.Row.ToString().ToLower()));

        SqlDataReader reader = DBUtils.ExecuteReader(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_BillCashBack", paras);

        if (reader.Read())
        {
          item = PopulateBillCashBack(reader);
          item.Detail = GetBillDetail(item.BillNo);
        }

        reader.Close();
      }
      catch { throw; }

      return item;
    }

    public static void CreateUpdateDeleteBillCashBack(BillCashBack item, DataProviderAction action)
    {
      if (item == null)
        return;

      SqlConnection conn = DBUtils.GetConnection();
      SqlCommand cmd = DBUtils.GetCommand();

      try
      {
        cmd.Transaction = conn.BeginTransaction();

        ArrayList paras = new ArrayList();

        paras.Add(DBUtils.MakeInParam("@Bill_No", SqlDbType.Int, item.BillNo));
        paras.Add(DBUtils.MakeInParam("@Back_Date", SqlDbType.DateTime, item.BackDate));
        paras.Add(DBUtils.MakeInParam("@Back_Reason", SqlDbType.NVarChar, 100, item.BackReason));
        paras.Add(DBUtils.MakeInParam("@Reco_Man", SqlDbType.NVarChar, 6, item.RecoMan));
        paras.Add(DBUtils.MakeInParam("@Reco_Date", SqlDbType.DateTime, item.RecoDate));
        paras.Add(DBUtils.MakeInParam("@Action", SqlDbType.Int, action));

        DBUtils.ExecuteNonQuery(conn, cmd, CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_CreateUpdateDelete_BillCashBack", paras);

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
