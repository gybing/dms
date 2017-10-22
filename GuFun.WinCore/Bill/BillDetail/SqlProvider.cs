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
		public static DataTable GetBillDetailList()
		{
			DataTable tblMain;

			try
			{
				ArrayList paras = new ArrayList(); 
				paras.Add(DBUtils.MakeInParam("@Get_Action", SqlDbType.NVarChar, 10, DataGetAction.ValidList.ToString().ToLower()));

				tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_BillDetail", paras);
				tblMain.TableName = "SelectMain";
			}
			catch { throw; }

			return tblMain;
		}

    public static DataTable SearchCashDetail(string search)
    {
      DataTable tblMain;

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Search", SqlDbType.NVarChar, 300, search));

        tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Search_CashDetail", paras);
        tblMain.TableName = "SelectMain";
      }
      catch { throw; }

      return tblMain;
    }

    public static DataTable GetUnPrintCash(string manid, string recodate)
    {
      DataTable tblMain;

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Bill_Man", SqlDbType.NVarChar, 6, manid));
        paras.Add(DBUtils.MakeInParam("@Reco_Date", SqlDbType.NVarChar, 8, recodate));

        tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_UnPrintCash", paras);
        tblMain.TableName = "SelectMain";
      }
      catch { throw; }

      return tblMain;
    }

    public static DataTable GetNoPrintTips(string manid, DateTime recodate)
    {
      DataTable tblMain;

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Bill_Man", SqlDbType.NVarChar, 6, manid));
        paras.Add(DBUtils.MakeInParam("@Reco_Date", SqlDbType.DateTime, recodate));

        tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_NoPrintTip", paras);
        tblMain.TableName = "SelectMain";
      }
      catch { throw; }

      return tblMain;
    }

    public static DataTable SearchBillDetailBill(string search)
    {
      DataTable tblMain;

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Search", SqlDbType.NVarChar, 300, search));

        tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Search_BillDetailBill", paras);
        tblMain.TableName = "SelectMain";
      }
      catch { throw; }

      return tblMain;
    }

    public static DataTable SearchBillDetailPrint(string search)
    {
      DataTable tblMain;

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Search", SqlDbType.NVarChar, 300, search));

        tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Search_BillDetailPrint", paras);
        tblMain.TableName = "SelectMain";
      }
      catch { throw; }

      return tblMain;
    }

    // modify by cloudy 20150522
    public static DataTable SearchBankRela(string search)
    {
      DataTable tblMain;

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Search", SqlDbType.NVarChar, 300, search));

        tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Search_BankRela", paras);
        tblMain.TableName = "SelectMain";
      }
      catch { throw; }

      return tblMain;
    }

    // modify by cloudy 20150522
    public static DataTable SearchBankNoRela(string search)
    {
      DataTable tblMain;

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Search", SqlDbType.NVarChar, 300, search));

        tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Search_NoRela", paras);
        tblMain.TableName = "SelectMain";
      }
      catch { throw; }

      return tblMain;
    }

    public static DataTable SearchBankNoRelaPipei(string search)
    {
      DataTable tblMain;

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Search", SqlDbType.NVarChar, 300, search));

        tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Search_NoRelaPipei", paras);
        tblMain.TableName = "SelectMain";
      }
      catch { throw; }

      return tblMain;
    }

    public static DataTable SearchBankNoRelaNoPipei(string search)
    {
      DataTable tblMain;

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Search", SqlDbType.NVarChar, 300, search));

        tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Search_NoRelaNoPipei", paras);
        tblMain.TableName = "SelectMain";
      }
      catch { throw; }

      return tblMain;
    }

    // modify by cloudy 20151114
    public static DataTable SearchRelaBus(string search)
    {
      DataTable tblMain;

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Search", SqlDbType.NVarChar, 300, search));

        tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Search_RelaBus", paras);
        tblMain.TableName = "SelectMain";
      }
      catch { throw; }

      return tblMain;
    }

    // modify by cloudy 20151114
    public static DataTable GetBusRelaDetail(int billno)
    {
      DataTable tblMain;

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@billno", SqlDbType.Int, billno));

        tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_BusRelaDetail", paras);
        tblMain.TableName = "SelectMain";
      }
      catch { throw; }

      return tblMain;
    }

    public static DataTable GetBusRelaDetail(int billno, String search)
    {
      DataTable tblMain;

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@billno", SqlDbType.Int, billno));
        paras.Add(DBUtils.MakeInParam("@Search", SqlDbType.NVarChar, 400, search));

        tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Search_BusRelaDetail", paras);
        tblMain.TableName = "SelectMain";
      }
      catch { throw; }

      return tblMain;
    }

    // modify by cloudy 20151114
    public static DataTable GetBusNoRelaDetail(int billno)
    {
      DataTable tblMain;

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@billno", SqlDbType.Int, billno));

        tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_BusNoRelaDetail", paras);
        tblMain.TableName = "SelectMain";
      }
      catch { throw; }

      return tblMain;
    }

    public static DataTable GetBusNoRelaDetail(String search)
    {
      DataTable tblMain;

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Search", SqlDbType.NVarChar, 400, search));

        tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Search_BusNoRelaDetail", paras);
        tblMain.TableName = "SelectMain";
      }
      catch { throw; }

      return tblMain;
    }

    // modify by cloudy 20151114
    public static DataTable SearchNoRelaBus(string search)
    {
      DataTable tblMain;

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Search", SqlDbType.NVarChar, 300, search));

        tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Search_NoRelaBus", paras);
        tblMain.TableName = "SelectMain";
      }
      catch { throw; }

      return tblMain;
    }

    // modify by cloudy 20160204
    public static DataTable SearchAllRelaBus(string search)
    {
      DataTable tblMain;

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Search", SqlDbType.NVarChar, 300, search));

        tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Search_AllRelaBus", paras);
        tblMain.TableName = "SelectMain";
      }
      catch { throw; }

      return tblMain;
    }

    // modify by cloudy 20161108
    public static DataTable SearchAllNoRelaBus(string search)
    {
      DataTable tblMain;

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Search", SqlDbType.NVarChar, 300, search));

        tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Search_AllNoRelaBus", paras);
        tblMain.TableName = "SelectMain";
      }
      catch { throw; }

      return tblMain;
    }

    // modify by cloudy 20151114
    public static void SetBusRela(int billno, string trankey, string userid)
    {
      SqlConnection conn = DBUtils.GetConnection();
      SqlCommand cmd = DBUtils.GetCommand();

      try
      {
        cmd.Transaction = conn.BeginTransaction();

        ArrayList paras = new ArrayList();

        paras.Add(DBUtils.MakeInParam("@billno", SqlDbType.Int, billno));
        paras.Add(DBUtils.MakeInParam("@trankey", SqlDbType.VarChar, 32, trankey));
        paras.Add(DBUtils.MakeInParam("@userid", SqlDbType.VarChar, 14, userid));

        DBUtils.ExecuteNonQuery(conn, cmd, CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Set_BusRela", paras);

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

    // modify by cloudy 20151115
    public static void DealMyBillSale(string userid)
    {
      SqlConnection conn = DBUtils.GetConnection();
      SqlCommand cmd = DBUtils.GetCommand();

      try
      {
        cmd.Transaction = conn.BeginTransaction();

        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@tranuser", SqlDbType.VarChar, 14, userid));

        DBUtils.ExecuteNonQuery(conn, cmd, CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Deal_MyBillSale", paras);

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

    // modify by cloudy 20151115
    public static DataTable SearchAllDatBank(string search)
    {
      DataTable tblMain;

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Search", SqlDbType.NVarChar, 300, search));

        tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Search_AllDatBank", paras);
        tblMain.TableName = "SelectMain";
      }
      catch { throw; }

      return tblMain;
    }

    // modify by cloudy 20151115
    public static DataTable SearchReleaseApply(string search)
    {
      DataTable tblMain;

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Search", SqlDbType.NVarChar, 300, search));

        tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Search_ReleaseApply", paras);
        tblMain.TableName = "SelectMain";
      }
      catch { throw; }

      return tblMain;
    }

    // modify by cloudy 20151115
    public static DataTable GetRelaBank(string trankey)
    {
      DataTable tblMain;

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@trankey", SqlDbType.VarChar, 32, trankey));

        tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_RelaBank", paras);
        tblMain.TableName = "SelectMain";
      }
      catch { throw; }

      return tblMain;
    }

    // modify by cloudy 20151115
    public static void ApplyReleaseBank(string userid, string username, string trankey)
    {
      SqlConnection conn = DBUtils.GetConnection();
      SqlCommand cmd = DBUtils.GetCommand();

      try
      {
        cmd.Transaction = conn.BeginTransaction();

        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@tranuser", SqlDbType.VarChar, 14, userid));
        paras.Add(DBUtils.MakeInParam("@tranusername", SqlDbType.NVarChar, 10, username));
        paras.Add(DBUtils.MakeInParam("@trankey", SqlDbType.VarChar, 32, trankey));

        DBUtils.ExecuteNonQuery(conn, cmd, CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Submit_ReleaseBank", paras);

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

    // modify by cloudy 20151115
    public static void ApplyRelease(string userid, string username, int applyid)
    {
      SqlConnection conn = DBUtils.GetConnection();
      SqlCommand cmd = DBUtils.GetCommand();

      try
      {
        cmd.Transaction = conn.BeginTransaction();

        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@tranuser", SqlDbType.VarChar, 14, userid));
        paras.Add(DBUtils.MakeInParam("@tranusername", SqlDbType.NVarChar, 10, username));
        paras.Add(DBUtils.MakeInParam("@applyid", SqlDbType.Int, applyid));

        DBUtils.ExecuteNonQuery(conn, cmd, CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Apply_ReleaseBank", paras);

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

    // modify by cloudy 20151115
    public static DataTable GetReleaseBill(string trankey)
    {
      DataTable tblMain;

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@trankey", SqlDbType.VarChar, 32, trankey));

        tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_ReleaseBill", paras);
        tblMain.TableName = "SelectMain";
      }
      catch { throw; }

      return tblMain;
    }

    // modify by cloudy 20151115
    public static DataTable GetReleaseBank(string trankey)
    {
      DataTable tblMain;

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@trankey", SqlDbType.VarChar, 32, trankey));

        tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_ReleaseBank", paras);
        tblMain.TableName = "SelectMain";
      }
      catch { throw; }

      return tblMain;
    }

    // modify by cloudy 20151115
    public static DataTable GetMyNoBill(string search)
    {
      DataTable tblMain;

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Search", SqlDbType.NVarChar, 300, search));

        tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_MyNoBill", paras);
        tblMain.TableName = "SelectMain";
      }
      catch { throw; }

      return tblMain;
    }

    // modify by cloudy 20151115
    public static DataTable GetMyNoBank(string search)
    {
      DataTable tblMain;

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Search", SqlDbType.NVarChar, 300, search));

        tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_MyNoBank", paras);
        tblMain.TableName = "SelectMain";
      }
      catch { throw; }

      return tblMain;
    }

    // modify by cloudy 20151115
    public static DataTable GetMyBankNull()
    {
      DataTable tblMain;

      try
      {
        tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_MyBankNull");
        tblMain.TableName = "SelectMain";
      }
      catch { throw; }

      return tblMain;
    }

    // modify by cloudy 20151115
    public static DataTable GetMyBillNull()
    {
      DataTable tblMain;

      try
      {
        tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_MyBillNull");
        tblMain.TableName = "SelectMain";
      }
      catch { throw; }

      return tblMain;
    }

    // modify by cloudy 20151115
    public static void MatchBill(SqlConnection conn, SqlCommand cmd, int billno, int first)
    {
      ArrayList paras = new ArrayList();
      paras.Add(DBUtils.MakeInParam("@billno", SqlDbType.Int, billno));
      paras.Add(DBUtils.MakeInParam("@first", SqlDbType.Int, first));

      DBUtils.ExecuteNonQuery(conn, cmd, CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Match_Bill", paras);
    }

    // modify by cloudy 20151115
    public static void MatchBank(SqlConnection conn, SqlCommand cmd, string trankey, int first)
    {
      ArrayList paras = new ArrayList();
      paras.Add(DBUtils.MakeInParam("@trankey", SqlDbType.VarChar, 32, trankey));
      paras.Add(DBUtils.MakeInParam("@first", SqlDbType.Int, first));

      DBUtils.ExecuteNonQuery(conn, cmd, CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Match_Bank", paras);
    }

    // modify by cloudy 20151115
    public static void MatchLast(SqlConnection conn, SqlCommand cmd, int first)
    {
      ArrayList paras = new ArrayList();
      paras.Add(DBUtils.MakeInParam("@first", SqlDbType.Int, first));

      DBUtils.ExecuteNonQuery(conn, cmd, CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Match_Last", paras);
    }

    // modify by cloudy 20151115
    public static DataTable GetBillDayDisplay()
    {
      DataTable tblMain;

      try
      {
        tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_BillDayDisplay");
        tblMain.TableName = "SelectMain";
      }
      catch { throw; }

      return tblMain;
    }

    public static DataTable SearchBillDetailDept(string search)
    {
      DataTable tblMain;

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Search", SqlDbType.NVarChar, 1000, search));

        tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Search_BillDetailDept", paras);
        tblMain.TableName = "SelectMain";
      }
      catch { throw; }

      return tblMain;
    }


    public static DataTable SearchBillDetailByBill(string search)
    {
      DataTable tblMain;

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Search", SqlDbType.NVarChar, 3000, search));

        tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Search_BillDetailByBill", paras);
        tblMain.TableName = "SelectMain";
      }
      catch { throw; }

      return tblMain;
    }

    public static DataTable SearchManBillDetail(string search)
    {
      DataTable tblMain;

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Search", SqlDbType.NVarChar, 300, search));

        tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Rpt_ManBillDetail", paras);
        tblMain.TableName = "SelectMain";
      }
      catch { throw; }

      return tblMain;
    }

    public static DataTable SearchBillDetailGet(string search)
    {
      DataTable tblMain;

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Search", SqlDbType.NVarChar, 300, search));

        tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Rpt_BillDetailGet", paras);
        tblMain.TableName = "SelectMain";
      }
      catch { throw; }

      return tblMain;
    }

    public static DataTable SearchManTranDetail(string search)
    {
      DataTable tblMain;

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Search", SqlDbType.NVarChar, 300, search));

        tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Search_TranDetailByMan", paras);
        tblMain.TableName = "SelectMain";
      }
      catch { throw; }

      return tblMain;
    }

    public static DataTable RptDayCash(string search)
    {
      DataTable tblMain;

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Search", SqlDbType.NVarChar, 300, search));

        tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Rpt_DayCash", paras);
        tblMain.TableName = "SelectMain";
      }
      catch { throw; }

      return tblMain;
    }

    public static DataTable SearchDeptTranDetail(string search)
    {
      DataTable tblMain;

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Search", SqlDbType.NVarChar, 300, search));

        tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Search_TranDetailByDept", paras);
        tblMain.TableName = "SelectMain";
      }
      catch { throw; }

      return tblMain;
    }

    public static DataTable SearchManBillSum(string search)
    {
      DataTable tblMain;

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Search", SqlDbType.NVarChar, 300, search));

        tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Rpt_ManSumBill", paras);
        tblMain.TableName = "SelectMain";
      }
      catch { throw; }

      return tblMain;
    }

    public static DataTable SearchDeptBillSum(string search)
    {
      DataTable tblMain;

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Search", SqlDbType.NVarChar, 300, search));

        tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Rpt_DeptSumBill", paras);
        tblMain.TableName = "SelectMain";
      }
      catch { throw; }

      return tblMain;
    }

    public static DataTable SearchOverTime(string search)
    {
      DataTable tblMain;

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Search", SqlDbType.NVarChar, 300, search));

        tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Search_OverTime", paras);
        tblMain.TableName = "SelectMain";
      }
      catch { throw; }

      return tblMain;
    }

    // modify bu cloudy 20111103
    public static DataTable SearchRptAnalysis(string search, string manid)
    {
      DataTable tblMain;

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Search", SqlDbType.NVarChar, 300, search));
        paras.Add(DBUtils.MakeInParam("@Man_ID", SqlDbType.NVarChar, 6, manid));

        tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Rpt_Analysis", paras);
        tblMain.TableName = "SelectMain";
      }
      catch { throw; }

      return tblMain;
    }

    public static DataTable SearchSelfBillGet(string search)
    {
      DataTable tblMain;

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Search", SqlDbType.NVarChar, 300, search));

        tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Search_SelfBillGet", paras);
        tblMain.TableName = "SelectMain";
      }
      catch { throw; }

      return tblMain;
    }

    public static DataTable GetBillDetailAll()
    {
      DataTable tblMain;

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Get_Action", SqlDbType.NVarChar, 10, DataGetAction.Full.ToString().ToLower()));

        tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_BillDetail", paras);
        tblMain.TableName = "SelectMain";
      }
      catch { throw; }

      return tblMain;
    }

		public static BillDetail PopulateBillDetail(IDataReader reader)
		{
			BillDetail item = new BillDetail();
			item.BillNo = (int)reader["Bill_No"];
			item.BillType = (short)reader["Bill_Type"];
			item.BillTypeName = reader["Bill_Type_Name"] as string;
			item.BankID = (short)reader["Bank_ID"];
			item.BankName = reader["Bank_Name"] as string;
			if (reader["Act_Bill_No"] != DBNull.Value)
				item.ActBillNo = reader["Act_Bill_No"] as string;
			if (reader["Rela_Bill_No"] != DBNull.Value)
				item.RelaBillNo = reader["Rela_Bill_No"] as string;
      if (reader["Bill_Date"] != DBNull.Value)
			  item.BillDate = Convert.ToDateTime(reader["Bill_Date"]);
			if (reader["Act_Date"] != DBNull.Value)
				item.ActDate = Convert.ToDateTime(reader["Act_Date"]);
			item.BillMan = reader["Bill_Man"] as string;
			item.BillManName = reader["Bill_Man_Name"] as string;
			item.DeptID	 = reader["Dept_ID"] as string;
			item.OperType = (short)reader["Oper_Type"];
			item.OperTypeName = reader["Oper_Type_Name"] as string;
			item.IsSum = Convert.ToBoolean(reader["Is_Sum"]);
			item.EnDate = reader["En_Date"] as string;
			item.EnYearMonth = reader["En_Year_Month"] as string;
			item.EnYear = reader["En_Year"] as string;
			item.EnMonth = reader["En_Month"] as string;
			item.EnDay = reader["En_Day"] as string;
			item.CnYear = reader["Cn_Year"] as string;
			item.CnMonth = reader["Cn_Month"] as string;
			item.CnDay = reader["Cn_Day"] as string;
			item.EnAmount = Convert.ToDouble(reader["En_Amount"]);
			item.RelaAmount = Convert.ToDouble(reader["Rela_Amount"]);
			item.SumAmount = Convert.ToDouble(reader["Sum_Amount"]);
			item.CnAmount = reader["Cn_Amount"] as string;
			if (reader["En_01"] != DBNull.Value)
				item.En01 = reader["En_01"] as string;
			if (reader["En_02"] != DBNull.Value)
				item.En02 = reader["En_02"] as string;
			if (reader["En_03"] != DBNull.Value)
				item.En03 = reader["En_03"] as string;
			if (reader["En_04"] != DBNull.Value)
				item.En04 = reader["En_04"] as string;
			if (reader["En_05"] != DBNull.Value)
				item.En05 = reader["En_05"] as string;
			if (reader["En_06"] != DBNull.Value)
				item.En06 = reader["En_06"] as string;
			if (reader["En_07"] != DBNull.Value)
				item.En07 = reader["En_07"] as string;
			if (reader["En_08"] != DBNull.Value)
				item.En08 = reader["En_08"] as string;
			if (reader["En_09"] != DBNull.Value)
				item.En09 = reader["En_09"] as string;
			if (reader["En_10"] != DBNull.Value)
				item.En10 = reader["En_10"] as string;
			if (reader["En_11"] != DBNull.Value)
				item.En11 = reader["En_11"] as string;
			if (reader["En_12"] != DBNull.Value)
				item.En12 = reader["En_12"] as string;
			if (reader["Bill_Password"] != DBNull.Value)
				item.BillPassword = reader["Bill_Password"] as string;
			if (reader["Cust_ID"] != DBNull.Value)
				item.CustID = reader["Cust_ID"] as string;
			if (reader["Bill_Source"] != DBNull.Value)
				item.BillSource = reader["Bill_Source"] as string;
			if (reader["Bill_Use"] != DBNull.Value)
				item.BillUse = reader["Bill_Use"] as string;
			if (reader["Send_Dept"] != DBNull.Value)
				item.SendDept = (int)reader["Send_Dept"];
			if (reader["Send_Name"] != DBNull.Value)
				item.SendName = reader["Send_Name"] as string;
			if (reader["Send_Bank"] != DBNull.Value)
				item.SendBank = reader["Send_Bank"] as string;
			if (reader["Send_Account"] != DBNull.Value)
				item.SendAccount = reader["Send_Account"] as string;
			if (reader["Send_Short"] != DBNull.Value)
				item.SendShort = reader["Send_Short"] as string;
			if (reader["Get_Dept"] != DBNull.Value)
				item.GetDept = (int)reader["Get_Dept"];
			if (reader["Get_Name"] != DBNull.Value)
				item.GetName = reader["Get_Name"] as string;
			if (reader["Get_Bank"] != DBNull.Value)
				item.GetBank = reader["Get_Bank"] as string;
			if (reader["Get_Account"] != DBNull.Value)
				item.GetAccount = reader["Get_Account"] as string;
			if (reader["Get_Short"] != DBNull.Value)
				item.GetShort = reader["Get_Short"] as string;
			if (reader["Re_01"] != DBNull.Value)
				item.Re01 = reader["Re_01"] as string;
			if (reader["Re_02"] != DBNull.Value)
				item.Re02 = reader["Re_02"] as string;
			if (reader["Re_03"] != DBNull.Value)
				item.Re03 = reader["Re_03"] as string;
			if (reader["Re_04"] != DBNull.Value)
				item.Re04 = reader["Re_04"] as string;
			if (reader["Re_05"] != DBNull.Value)
				item.Re05 = reader["Re_05"] as string;
			if (reader["Re_06"] != DBNull.Value)
				item.Re06 = reader["Re_06"] as string;
			if (reader["Re_07"] != DBNull.Value)
				item.Re07 = reader["Re_07"] as string;
			if (reader["Re_08"] != DBNull.Value)
				item.Re08 = reader["Re_08"] as string;
			if (reader["Re_09"] != DBNull.Value)
				item.Re09 = reader["Re_09"] as string;
			if (reader["Re_10"] != DBNull.Value)
				item.Re10 = reader["Re_10"] as string;
			if (reader["Re_11"] != DBNull.Value)
				item.Re11 = reader["Re_11"] as string;
			if (reader["Re_12"] != DBNull.Value)
				item.Re12 = reader["Re_12"] as string;
			if (reader["Re_13"] != DBNull.Value)
				item.Re13 = reader["Re_13"] as string;
			if (reader["Re_14"] != DBNull.Value)
				item.Re14 = reader["Re_14"] as string;
			if (reader["Re_15"] != DBNull.Value)
				item.Re15 = reader["Re_15"] as string;
			if (reader["Re_16"] != DBNull.Value)
				item.Re16 = reader["Re_16"] as string;
			if (reader["Re_17"] != DBNull.Value)
				item.Re17 = reader["Re_17"] as string;
			if (reader["Re_18"] != DBNull.Value)
				item.Re18 = reader["Re_18"] as string;
			if (reader["Re_19"] != DBNull.Value)
				item.Re19 = reader["Re_19"] as string;
			if (reader["Re_20"] != DBNull.Value)
				item.Re20 = reader["Re_20"] as string;
      if (reader["Re_21"] != DBNull.Value)
        item.Re21 = reader["Re_21"] as string;
      if (reader["Re_22"] != DBNull.Value)
        item.Re22 = reader["Re_22"] as string;
      if (reader["Re_23"] != DBNull.Value)
        item.Re23 = reader["Re_23"] as string;
      if (reader["Re_24"] != DBNull.Value)
        item.Re24 = reader["Re_24"] as string;
      if (reader["Re_25"] != DBNull.Value)
        item.Re25 = reader["Re_25"] as string;
      item.OtherBank = (short)reader["Other_Bank"];
      item.OtherBillNo = (int)reader["Other_BillNo"];
      item.IsPrint = Convert.ToBoolean(reader["Is_Print"]);
      item.BillStatus = (short)reader["Bill_Status"];
      item.IsModify = Convert.ToBoolean(reader["Is_Modify"]);
      item.ManType = (short)reader["Man_Type"];
      item.RecoDate = Convert.ToDateTime(reader["Reco_Date"]);
      item.RecoYear = reader["Reco_Year"] as string;
      item.BillNowStatus = (short)reader["Bill_Now_Status"];
      item.IsMulti = Convert.ToBoolean(reader["Is_Multi"]);
      item.IsCust = Convert.ToBoolean(reader["Is_Cust"]);
      item.DAmount = Convert.ToDouble(reader["D_Amount"]);
      item.YAmount = Convert.ToDouble(reader["Y_Amount"]);
      if (reader["D_Use"] != DBNull.Value)
        item.DUse = reader["D_Use"] as string;
      if (reader["D_JinUse"] != DBNull.Value)
        item.DJinUse = reader["D_JinUse"] as string;
      if (reader["Y_Use"] != DBNull.Value)
        item.YUse = reader["Y_Use"] as string;
      if (reader["Y_JinUse"] != DBNull.Value)
        item.YJinUse = reader["Y_JinUse"] as string;
      if (reader["Link_Man"] != DBNull.Value)
        item.LinkMan = reader["Link_Man"] as string;
      if (reader["Link_Tele"] != DBNull.Value)
        item.LinkTele = reader["Link_Tele"] as string;
      if (reader["In_Date"] != DBNull.Value)
        item.InDate = Convert.ToDateTime(reader["In_Date"]);
      item.CancelType = Convert.ToInt16(reader["Cancel_Type"]);
      item.CancelTypeName = reader["Cancel_Type_Name"] as string;
			return item;
		}

		public static BillDetail GetBillDetail(int billno)
		{
			BillDetail item = new BillDetail();
			
			try
			{
				ArrayList paras = new ArrayList();
				paras.Add(DBUtils.MakeInParam("@Bill_No", SqlDbType.Int, billno));
				paras.Add(DBUtils.MakeInParam("@Get_Action", SqlDbType.NVarChar, 10, DataGetAction.Row.ToString().ToLower()));

				SqlDataReader reader = DBUtils.ExecuteReader(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_BillDetail", paras);
				
				if (reader.Read())
				{
					item = PopulateBillDetail(reader);
				}

				reader.Close();

        if (item.BillNo > 0)
          item.TranDetail = SqlBaseProvider.GetBillTranDetail(item.BillNo);
			}
			catch { throw; }

			return item;
		}

    public static DatCust GetDatCustByID(int billno)
    {
      DatCust item = new DatCust();

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@billno", SqlDbType.Int, billno));

        SqlDataReader reader = DBUtils.ExecuteReader(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_DatCustByID", paras);

        if (reader.Read())
        {
          item.trankey = reader["trankey"] as string;
        }

        reader.Close();
      }
      catch { throw; }

      return item;
    }

    public static BillDetail GetBillDetail(string actbillno)
    {
      BillDetail item = new BillDetail();

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Act_Bill_No", SqlDbType.NVarChar, 25, actbillno));

        SqlDataReader reader = DBUtils.ExecuteReader(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_BillDetailByAct", paras);

        if (reader.Read())
        {
          item = PopulateBillDetail(reader);
        }

        reader.Close();
      }
      catch { throw; }

      return item;
    }

    public static BillDetail GetBillDetailRe(string actbillno)
    {
      BillDetail item = new BillDetail();

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Act_Bill_No", SqlDbType.NVarChar, 20, actbillno));

        SqlDataReader reader = DBUtils.ExecuteReader(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_BillDetailByRe", paras);

        if (reader.Read())
        {
          item = PopulateBillDetail(reader);
        }

        reader.Close();
      }
      catch { throw; }

      return item;
    }

    public static BillDetail GetBillDetail(string actbillno, string manid)
    {
      BillDetail item = new BillDetail();

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Act_Bill_No", SqlDbType.NVarChar, 25, actbillno));
        paras.Add(DBUtils.MakeInParam("@Get_Man", SqlDbType.NVarChar, 6, manid));

        SqlDataReader reader = DBUtils.ExecuteReader(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_BillDetailGet", paras);

        if (reader.Read())
        {
          item = PopulateBillDetail(reader);
        }

        reader.Close();
      }
      catch { throw; }

      return item;
    }

    public static BillDetail GetBillDetailRe(string actbillno, string manid)
    {
      BillDetail item = new BillDetail();

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Re_02", SqlDbType.NVarChar, 20, actbillno));
        paras.Add(DBUtils.MakeInParam("@Get_Man", SqlDbType.NVarChar, 6, manid));

        SqlDataReader reader = DBUtils.ExecuteReader(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_BillDetailGetRe", paras);

        if (reader.Read())
        {
          item = PopulateBillDetail(reader);
        }

        reader.Close();
      }
      catch { throw; }

      return item;
    }

    public static BillDetail GetBillDetailReGaoChun(string actbillno, string manid)
    {
      BillDetail item = new BillDetail();

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Re_02", SqlDbType.NVarChar, 20, actbillno));

        SqlDataReader reader = DBUtils.ExecuteReader(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_BillDetailGetReGaoChun", paras);

        if (reader.Read())
        {
          item = PopulateBillDetail(reader);
        }

        reader.Close();
      }
      catch { throw; }

      return item;
    }

    public static BillDetail GetBillDetailOther(string actbillno, string manid)
    {
      BillDetail item = new BillDetail();

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Act_Bill_No", SqlDbType.NVarChar, 20, actbillno));
        paras.Add(DBUtils.MakeInParam("@Get_Man", SqlDbType.NVarChar, 6, manid));

        SqlDataReader reader = DBUtils.ExecuteReader(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_BillDetailGetOther", paras);

        if (reader.Read())
        {
          item = PopulateBillDetail(reader);
        }

        reader.Close();
      }
      catch { throw; }

      return item;
    }

    public static BillDetail GetBillDetailBank(string actbillno, string deptid)
    {
      BillDetail item = new BillDetail();

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Act_Bill_No", SqlDbType.NVarChar, 25, actbillno));
        paras.Add(DBUtils.MakeInParam("@Dept_ID", SqlDbType.NVarChar, 8, deptid));

        SqlDataReader reader = DBUtils.ExecuteReader(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_BillDetailBank", paras);

        if (reader.Read())
        {
          item = PopulateBillDetail(reader);
        }

        reader.Close();
      }
      catch { throw; }

      return item;
    }

    public static BillDetail GetBillDetailBank(string actbillno)
    {
      BillDetail item = new BillDetail();

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Act_Bill_No", SqlDbType.NVarChar, 25, actbillno));

        SqlDataReader reader = DBUtils.ExecuteReader(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_BillDetailBankNoDept", paras);

        if (reader.Read())
        {
          item = PopulateBillDetail(reader);
        }

        reader.Close();
      }
      catch { throw; }

      return item;
    }

    public static BillDetail GetBillDetailBack(string actbillno, string manid)
    {
      BillDetail item = new BillDetail();

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Act_Bill_No", SqlDbType.NVarChar, 25, actbillno));
        paras.Add(DBUtils.MakeInParam("@Get_Man", SqlDbType.NVarChar, 6, manid));

        SqlDataReader reader = DBUtils.ExecuteReader(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_BillDetailBackGet", paras);

        if (reader.Read())
        {
          item = PopulateBillDetail(reader);
        }

        reader.Close();
      }
      catch { throw; }

      return item;
    }

    public static BillDetail GetBillDetailBackRe(string actbillno, string manid)
    {
      BillDetail item = new BillDetail();

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Re_02", SqlDbType.NVarChar, 20, actbillno));
        paras.Add(DBUtils.MakeInParam("@Get_Man", SqlDbType.NVarChar, 6, manid));

        SqlDataReader reader = DBUtils.ExecuteReader(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_BillDetailBackGetRe", paras);

        if (reader.Read())
        {
          item = PopulateBillDetail(reader);
        }

        reader.Close();
      }
      catch { throw; }

      return item;
    }

		public static void CreateUpdateDeleteBillDetail(BillDetail item, DataProviderAction action)
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
					paras.Add(DBUtils.MakeOutParam("@Bill_No", SqlDbType.Int));
				}
				else
				{
					paras.Add(DBUtils.MakeInParam("@Bill_No", SqlDbType.Int, item.BillNo));
				}
				paras.Add(DBUtils.MakeInParam("@Bill_Type", SqlDbType.SmallInt, item.BillType));
				paras.Add(DBUtils.MakeInParam("@Bank_ID", SqlDbType.SmallInt, item.BankID));
				paras.Add(DBUtils.MakeInParam("@Act_Bill_No", SqlDbType.NVarChar, 25, item.ActBillNo));
				paras.Add(DBUtils.MakeInParam("@Rela_Bill_No", SqlDbType.NVarChar, 25, item.RelaBillNo));
        if (item.BillDate > DateTime.MinValue)
				  paras.Add(DBUtils.MakeInParam("@Bill_Date", SqlDbType.DateTime, Publics.GetDataDateTime(item.BillDate)));
        if (item.ActDate > DateTime.MinValue)
				  paras.Add(DBUtils.MakeInParam("@Act_Date", SqlDbType.DateTime, Publics.GetDataDateTime(item.ActDate)));
				paras.Add(DBUtils.MakeInParam("@Bill_Man", SqlDbType.NVarChar, 6, item.BillMan));
				paras.Add(DBUtils.MakeInParam("@Bill_Man_Name", SqlDbType.NVarChar, 10, item.BillManName));
				paras.Add(DBUtils.MakeInParam("@Dept_ID", SqlDbType.NVarChar, 8, item.DeptID	));
				paras.Add(DBUtils.MakeInParam("@Oper_Type", SqlDbType.SmallInt, item.OperType));
				paras.Add(DBUtils.MakeInParam("@Is_Sum", SqlDbType.Bit, item.IsSum));
				paras.Add(DBUtils.MakeInParam("@En_Date", SqlDbType.NVarChar, 8, item.EnDate));
				paras.Add(DBUtils.MakeInParam("@En_Year_Month", SqlDbType.NVarChar, 6, item.EnYearMonth));
				paras.Add(DBUtils.MakeInParam("@En_Year", SqlDbType.NVarChar, 4, item.EnYear));
				paras.Add(DBUtils.MakeInParam("@En_Month", SqlDbType.NVarChar, 2, item.EnMonth));
				paras.Add(DBUtils.MakeInParam("@En_Day", SqlDbType.NVarChar, 2, item.EnDay));
				paras.Add(DBUtils.MakeInParam("@Cn_Year", SqlDbType.NVarChar, 6, item.CnYear));
				paras.Add(DBUtils.MakeInParam("@Cn_Month", SqlDbType.NVarChar, 4, item.CnMonth));
				paras.Add(DBUtils.MakeInParam("@Cn_Day", SqlDbType.NVarChar, 4, item.CnDay));
				paras.Add(DBUtils.MakeInParam("@En_Amount", SqlDbType.Decimal, item.EnAmount));
				paras.Add(DBUtils.MakeInParam("@Rela_Amount", SqlDbType.Decimal, item.RelaAmount));
				paras.Add(DBUtils.MakeInParam("@Sum_Amount", SqlDbType.Decimal, item.SumAmount));
				paras.Add(DBUtils.MakeInParam("@Cn_Amount", SqlDbType.NVarChar, 30, item.CnAmount));
				paras.Add(DBUtils.MakeInParam("@En_01", SqlDbType.NVarChar, 1, item.En01));
				paras.Add(DBUtils.MakeInParam("@En_02", SqlDbType.NVarChar, 1, item.En02));
				paras.Add(DBUtils.MakeInParam("@En_03", SqlDbType.NVarChar, 1, item.En03));
				paras.Add(DBUtils.MakeInParam("@En_04", SqlDbType.NVarChar, 1, item.En04));
				paras.Add(DBUtils.MakeInParam("@En_05", SqlDbType.NVarChar, 1, item.En05));
				paras.Add(DBUtils.MakeInParam("@En_06", SqlDbType.NVarChar, 1, item.En06));
				paras.Add(DBUtils.MakeInParam("@En_07", SqlDbType.NVarChar, 1, item.En07));
				paras.Add(DBUtils.MakeInParam("@En_08", SqlDbType.NVarChar, 1, item.En08));
				paras.Add(DBUtils.MakeInParam("@En_09", SqlDbType.NVarChar, 1, item.En09));
				paras.Add(DBUtils.MakeInParam("@En_10", SqlDbType.NVarChar, 1, item.En10));
				paras.Add(DBUtils.MakeInParam("@En_11", SqlDbType.NVarChar, 1, item.En11));
				paras.Add(DBUtils.MakeInParam("@En_12", SqlDbType.NVarChar, 1, item.En12));
				paras.Add(DBUtils.MakeInParam("@Bill_Password", SqlDbType.NVarChar, 24, item.BillPassword));
				paras.Add(DBUtils.MakeInParam("@Cust_ID", SqlDbType.NVarChar, 40, item.CustID));
				paras.Add(DBUtils.MakeInParam("@Bill_Source", SqlDbType.NVarChar, 20, item.BillSource));
				paras.Add(DBUtils.MakeInParam("@Bill_Use", SqlDbType.NVarChar, 20, item.BillUse));
				paras.Add(DBUtils.MakeInParam("@Send_Dept", SqlDbType.Int, item.SendDept));
				paras.Add(DBUtils.MakeInParam("@Send_Name", SqlDbType.NVarChar, 40, item.SendName));
				paras.Add(DBUtils.MakeInParam("@Send_Bank", SqlDbType.NVarChar, 30, item.SendBank));
				paras.Add(DBUtils.MakeInParam("@Send_Account", SqlDbType.NVarChar, 30, item.SendAccount));
				paras.Add(DBUtils.MakeInParam("@Send_Short", SqlDbType.NVarChar, 20, item.SendShort));
				paras.Add(DBUtils.MakeInParam("@Get_Dept", SqlDbType.Int, item.GetDept));
				paras.Add(DBUtils.MakeInParam("@Get_Name", SqlDbType.NVarChar, 40, item.GetName));
				paras.Add(DBUtils.MakeInParam("@Get_Bank", SqlDbType.NVarChar, 30, item.GetBank));
				paras.Add(DBUtils.MakeInParam("@Get_Account", SqlDbType.NVarChar, 30, item.GetAccount));
				paras.Add(DBUtils.MakeInParam("@Get_Short", SqlDbType.NVarChar, 20, item.GetShort));
				paras.Add(DBUtils.MakeInParam("@Re_01", SqlDbType.NVarChar, 20, item.Re01));
				paras.Add(DBUtils.MakeInParam("@Re_02", SqlDbType.NVarChar, 20, item.Re02));
				paras.Add(DBUtils.MakeInParam("@Re_03", SqlDbType.NVarChar, 20, item.Re03));
				paras.Add(DBUtils.MakeInParam("@Re_04", SqlDbType.NVarChar, 20, item.Re04));        
				paras.Add(DBUtils.MakeInParam("@Re_05", SqlDbType.NVarChar, 20, item.Re05));
				paras.Add(DBUtils.MakeInParam("@Re_06", SqlDbType.NVarChar, 20, item.Re06));
				paras.Add(DBUtils.MakeInParam("@Re_07", SqlDbType.NVarChar, 20, item.Re07));
				paras.Add(DBUtils.MakeInParam("@Re_08", SqlDbType.NVarChar, 20, item.Re08));
				paras.Add(DBUtils.MakeInParam("@Re_09", SqlDbType.NVarChar, 20, item.Re09));
				paras.Add(DBUtils.MakeInParam("@Re_10", SqlDbType.NVarChar, 20, item.Re10));
				paras.Add(DBUtils.MakeInParam("@Re_11", SqlDbType.NVarChar, 20, item.Re11));
				paras.Add(DBUtils.MakeInParam("@Re_12", SqlDbType.NVarChar, 20, item.Re12));
				paras.Add(DBUtils.MakeInParam("@Re_13", SqlDbType.NVarChar, 20, item.Re13));
				paras.Add(DBUtils.MakeInParam("@Re_14", SqlDbType.NVarChar, 20, item.Re14));
				paras.Add(DBUtils.MakeInParam("@Re_15", SqlDbType.NVarChar, 20, item.Re15));
				paras.Add(DBUtils.MakeInParam("@Re_16", SqlDbType.NVarChar, 20, item.Re16));
				paras.Add(DBUtils.MakeInParam("@Re_17", SqlDbType.NVarChar, 20, item.Re17));
				paras.Add(DBUtils.MakeInParam("@Re_18", SqlDbType.NVarChar, 20, item.Re18));
				paras.Add(DBUtils.MakeInParam("@Re_19", SqlDbType.NVarChar, 20, item.Re19));
				paras.Add(DBUtils.MakeInParam("@Re_20", SqlDbType.NVarChar, 20, item.Re20));
        paras.Add(DBUtils.MakeInParam("@Re_21", SqlDbType.NVarChar, 20, item.Re21));
        paras.Add(DBUtils.MakeInParam("@Re_22", SqlDbType.NVarChar, 20, item.Re22));
        paras.Add(DBUtils.MakeInParam("@Re_23", SqlDbType.NVarChar, 20, item.Re23));
        paras.Add(DBUtils.MakeInParam("@Re_24", SqlDbType.NVarChar, 20, item.Re24));
        paras.Add(DBUtils.MakeInParam("@Re_25", SqlDbType.NVarChar, 20, item.Re25));
        paras.Add(DBUtils.MakeInParam("@Other_Bank", SqlDbType.SmallInt, item.OtherBank));
        paras.Add(DBUtils.MakeInParam("@Other_BillNo", SqlDbType.Int, item.OtherBillNo));
        paras.Add(DBUtils.MakeInParam("@Man_Type", SqlDbType.SmallInt, item.ManType));
        paras.Add(DBUtils.MakeInParam("@Bill_Now_Status", SqlDbType.SmallInt, item.BillNowStatus));
        paras.Add(DBUtils.MakeInParam("@Is_Multi", SqlDbType.Bit, item.IsMulti));
        paras.Add(DBUtils.MakeInParam("@Is_Cust", SqlDbType.Bit, item.IsCust));
        paras.Add(DBUtils.MakeInParam("@D_Amount", SqlDbType.Decimal, item.DAmount));
        paras.Add(DBUtils.MakeInParam("@D_Use", SqlDbType.NVarChar, 20, item.DUse));
        paras.Add(DBUtils.MakeInParam("@D_JinUse", SqlDbType.NVarChar, 20, item.DJinUse));
        paras.Add(DBUtils.MakeInParam("@Y_Amount", SqlDbType.Decimal, item.YAmount));
        paras.Add(DBUtils.MakeInParam("@Y_Use", SqlDbType.NVarChar, 20, item.YUse));
        paras.Add(DBUtils.MakeInParam("@Y_JinUse", SqlDbType.NVarChar, 20, item.YJinUse));
        paras.Add(DBUtils.MakeInParam("@Link_Man", SqlDbType.NVarChar, 30, item.LinkMan));
        paras.Add(DBUtils.MakeInParam("@Link_Tele", SqlDbType.NVarChar, 30, item.LinkTele));
        paras.Add(DBUtils.MakeInParam("@Is_Print", SqlDbType.Bit, item.IsPrint));
        if (item.InDate > DateTime.MinValue)
          paras.Add(DBUtils.MakeInParam("@In_Date", SqlDbType.DateTime, Publics.GetDataDateTime(item.InDate)));
        paras.Add(DBUtils.MakeInParam("@Cancel_Type", SqlDbType.SmallInt, item.CancelType));
				paras.Add(DBUtils.MakeInParam("@Action", SqlDbType.SmallInt, action));

				DBUtils.ExecuteNonQuery(conn, cmd, CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_CreateUpdateDelete_BillDetail", paras);

				if (action == DataProviderAction.Create)
				{
					item.BillNo = ((((SqlParameter)paras[0]).Value != null) ? (Convert.ToInt32(((SqlParameter)paras[0]).Value)) : (int)0);
        }

        if ((item.BillType == (short)BillType.ZhuanZhangZhiPiao) || (item.BillType == (short)BillType.HuiPiao) || (item.BillType == (short)BillType.BenPiao) || (item.BillType == (short)BillType.XianJinJiaoKuan))
        {
          DeleteTranDetail(conn, cmd, item.BillNo);

          foreach (DataRow dr in item.TranDetail.Rows)
          {
            if (Convert.ToDouble(dr["En_Amount"]) > 0)
              InsertTranDetail(conn, cmd, item.BillNo, Convert.ToInt16(dr["Tran_Type"]), Convert.ToDouble(dr["En_Amount"]));
          }
        }

        if (!String.IsNullOrEmpty(item.TranKey))
        {
          DatCust cust = new DatCust();
          cust.manid = item.BillMan;
          cust.billno = item.BillNo;
          cust.trankey = item.TranKey;

          SqlBaseProvider.CreateDatCust(conn, cmd, cust);
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

    public static void ModifyPrintDate(BillDetail item)
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
        paras.Add(DBUtils.MakeInParam("@Bill_Date", SqlDbType.DateTime, Publics.GetDataDateTime(item.BillDate)));
        paras.Add(DBUtils.MakeInParam("@En_Date", SqlDbType.NVarChar, 8, item.EnDate));
        paras.Add(DBUtils.MakeInParam("@En_Year_Month", SqlDbType.NVarChar, 6, item.EnYearMonth));
        paras.Add(DBUtils.MakeInParam("@En_Year", SqlDbType.NVarChar, 4, item.EnYear));
        paras.Add(DBUtils.MakeInParam("@En_Month", SqlDbType.NVarChar, 2, item.EnMonth));
        paras.Add(DBUtils.MakeInParam("@En_Day", SqlDbType.NVarChar, 2, item.EnDay));
        paras.Add(DBUtils.MakeInParam("@Cn_Year", SqlDbType.NVarChar, 6, item.CnYear));
        paras.Add(DBUtils.MakeInParam("@Cn_Month", SqlDbType.NVarChar, 4, item.CnMonth));
        paras.Add(DBUtils.MakeInParam("@Cn_Day", SqlDbType.NVarChar, 4, item.CnDay));

        DBUtils.ExecuteNonQuery(conn, cmd, CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Modify_PrintDate", paras);

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

    public static void CreateUpdateDeleteBillDetail(SqlConnection conn, SqlCommand cmd, BillDetail item, DataProviderAction action)
    {
      if (item == null)
        return;

      try
      {
      
        ArrayList paras = new ArrayList();

        if (action == DataProviderAction.Create)
        {
          paras.Add(DBUtils.MakeOutParam("@Bill_No", SqlDbType.Int));
        }
        else
        {
          paras.Add(DBUtils.MakeInParam("@Bill_No", SqlDbType.Int, item.BillNo));
        }
        paras.Add(DBUtils.MakeInParam("@Bill_Type", SqlDbType.SmallInt, item.BillType));
        paras.Add(DBUtils.MakeInParam("@Bank_ID", SqlDbType.SmallInt, item.BankID));
        paras.Add(DBUtils.MakeInParam("@Act_Bill_No", SqlDbType.NVarChar, 25, item.ActBillNo));
        paras.Add(DBUtils.MakeInParam("@Rela_Bill_No", SqlDbType.NVarChar, 25, item.RelaBillNo));
        if (item.BillDate > DateTime.MinValue)
          paras.Add(DBUtils.MakeInParam("@Bill_Date", SqlDbType.DateTime, Publics.GetDataDateTime(item.BillDate)));
        if (item.ActDate > DateTime.MinValue)
          paras.Add(DBUtils.MakeInParam("@Act_Date", SqlDbType.DateTime, Publics.GetDataDateTime(item.ActDate)));
        paras.Add(DBUtils.MakeInParam("@Bill_Man", SqlDbType.NVarChar, 6, item.BillMan));
        paras.Add(DBUtils.MakeInParam("@Bill_Man_Name", SqlDbType.NVarChar, 10, item.BillManName));
        paras.Add(DBUtils.MakeInParam("@Dept_ID", SqlDbType.NVarChar, 8, item.DeptID));
        paras.Add(DBUtils.MakeInParam("@Oper_Type", SqlDbType.SmallInt, item.OperType));
        paras.Add(DBUtils.MakeInParam("@Is_Sum", SqlDbType.Bit, item.IsSum));
        paras.Add(DBUtils.MakeInParam("@En_Date", SqlDbType.NVarChar, 8, item.EnDate));
        paras.Add(DBUtils.MakeInParam("@En_Year_Month", SqlDbType.NVarChar, 6, item.EnYearMonth));
        paras.Add(DBUtils.MakeInParam("@En_Year", SqlDbType.NVarChar, 4, item.EnYear));
        paras.Add(DBUtils.MakeInParam("@En_Month", SqlDbType.NVarChar, 2, item.EnMonth));
        paras.Add(DBUtils.MakeInParam("@En_Day", SqlDbType.NVarChar, 2, item.EnDay));
        paras.Add(DBUtils.MakeInParam("@Cn_Year", SqlDbType.NVarChar, 6, item.CnYear));
        paras.Add(DBUtils.MakeInParam("@Cn_Month", SqlDbType.NVarChar, 4, item.CnMonth));
        paras.Add(DBUtils.MakeInParam("@Cn_Day", SqlDbType.NVarChar, 4, item.CnDay));
        paras.Add(DBUtils.MakeInParam("@En_Amount", SqlDbType.Decimal, item.EnAmount));
        paras.Add(DBUtils.MakeInParam("@Rela_Amount", SqlDbType.Decimal, item.RelaAmount));
        paras.Add(DBUtils.MakeInParam("@Sum_Amount", SqlDbType.Decimal, item.SumAmount));
        paras.Add(DBUtils.MakeInParam("@Cn_Amount", SqlDbType.NVarChar, 30, item.CnAmount));
        paras.Add(DBUtils.MakeInParam("@En_01", SqlDbType.NVarChar, 1, item.En01));
        paras.Add(DBUtils.MakeInParam("@En_02", SqlDbType.NVarChar, 1, item.En02));
        paras.Add(DBUtils.MakeInParam("@En_03", SqlDbType.NVarChar, 1, item.En03));
        paras.Add(DBUtils.MakeInParam("@En_04", SqlDbType.NVarChar, 1, item.En04));
        paras.Add(DBUtils.MakeInParam("@En_05", SqlDbType.NVarChar, 1, item.En05));
        paras.Add(DBUtils.MakeInParam("@En_06", SqlDbType.NVarChar, 1, item.En06));
        paras.Add(DBUtils.MakeInParam("@En_07", SqlDbType.NVarChar, 1, item.En07));
        paras.Add(DBUtils.MakeInParam("@En_08", SqlDbType.NVarChar, 1, item.En08));
        paras.Add(DBUtils.MakeInParam("@En_09", SqlDbType.NVarChar, 1, item.En09));
        paras.Add(DBUtils.MakeInParam("@En_10", SqlDbType.NVarChar, 1, item.En10));
        paras.Add(DBUtils.MakeInParam("@En_11", SqlDbType.NVarChar, 1, item.En11));
        paras.Add(DBUtils.MakeInParam("@En_12", SqlDbType.NVarChar, 1, item.En12));
        paras.Add(DBUtils.MakeInParam("@Bill_Password", SqlDbType.NVarChar, 24, item.BillPassword));
        paras.Add(DBUtils.MakeInParam("@Cust_ID", SqlDbType.NVarChar, 40, item.CustID));
        paras.Add(DBUtils.MakeInParam("@Bill_Source", SqlDbType.NVarChar, 20, item.BillSource));
        paras.Add(DBUtils.MakeInParam("@Bill_Use", SqlDbType.NVarChar, 20, item.BillUse));
        paras.Add(DBUtils.MakeInParam("@Send_Dept", SqlDbType.Int, item.SendDept));
        paras.Add(DBUtils.MakeInParam("@Send_Name", SqlDbType.NVarChar, 40, item.SendName));
        paras.Add(DBUtils.MakeInParam("@Send_Bank", SqlDbType.NVarChar, 30, item.SendBank));
        paras.Add(DBUtils.MakeInParam("@Send_Account", SqlDbType.NVarChar, 30, item.SendAccount));
        paras.Add(DBUtils.MakeInParam("@Send_Short", SqlDbType.NVarChar, 20, item.SendShort));
        paras.Add(DBUtils.MakeInParam("@Get_Dept", SqlDbType.Int, item.GetDept));
        paras.Add(DBUtils.MakeInParam("@Get_Name", SqlDbType.NVarChar, 40, item.GetName));
        paras.Add(DBUtils.MakeInParam("@Get_Bank", SqlDbType.NVarChar, 30, item.GetBank));
        paras.Add(DBUtils.MakeInParam("@Get_Account", SqlDbType.NVarChar, 30, item.GetAccount));
        paras.Add(DBUtils.MakeInParam("@Get_Short", SqlDbType.NVarChar, 20, item.GetShort));
        paras.Add(DBUtils.MakeInParam("@Re_01", SqlDbType.NVarChar, 20, item.Re01));
        paras.Add(DBUtils.MakeInParam("@Re_02", SqlDbType.NVarChar, 20, item.Re02));
        paras.Add(DBUtils.MakeInParam("@Re_03", SqlDbType.NVarChar, 20, item.Re03));
        paras.Add(DBUtils.MakeInParam("@Re_04", SqlDbType.NVarChar, 20, item.Re04));
        paras.Add(DBUtils.MakeInParam("@Re_05", SqlDbType.NVarChar, 20, item.Re05));
        paras.Add(DBUtils.MakeInParam("@Re_06", SqlDbType.NVarChar, 20, item.Re06));
        paras.Add(DBUtils.MakeInParam("@Re_07", SqlDbType.NVarChar, 20, item.Re07));
        paras.Add(DBUtils.MakeInParam("@Re_08", SqlDbType.NVarChar, 20, item.Re08));
        paras.Add(DBUtils.MakeInParam("@Re_09", SqlDbType.NVarChar, 20, item.Re09));
        paras.Add(DBUtils.MakeInParam("@Re_10", SqlDbType.NVarChar, 20, item.Re10));
        paras.Add(DBUtils.MakeInParam("@Re_11", SqlDbType.NVarChar, 20, item.Re11));
        paras.Add(DBUtils.MakeInParam("@Re_12", SqlDbType.NVarChar, 20, item.Re12));
        paras.Add(DBUtils.MakeInParam("@Re_13", SqlDbType.NVarChar, 20, item.Re13));
        paras.Add(DBUtils.MakeInParam("@Re_14", SqlDbType.NVarChar, 20, item.Re14));
        paras.Add(DBUtils.MakeInParam("@Re_15", SqlDbType.NVarChar, 20, item.Re15));
        paras.Add(DBUtils.MakeInParam("@Re_16", SqlDbType.NVarChar, 20, item.Re16));
        paras.Add(DBUtils.MakeInParam("@Re_17", SqlDbType.NVarChar, 20, item.Re17));
        paras.Add(DBUtils.MakeInParam("@Re_18", SqlDbType.NVarChar, 20, item.Re18));
        paras.Add(DBUtils.MakeInParam("@Re_19", SqlDbType.NVarChar, 20, item.Re19));
        paras.Add(DBUtils.MakeInParam("@Re_20", SqlDbType.NVarChar, 20, item.Re20));
        paras.Add(DBUtils.MakeInParam("@Re_21", SqlDbType.NVarChar, 20, item.Re21));
        paras.Add(DBUtils.MakeInParam("@Re_22", SqlDbType.NVarChar, 20, item.Re22));
        paras.Add(DBUtils.MakeInParam("@Re_23", SqlDbType.NVarChar, 20, item.Re23));
        paras.Add(DBUtils.MakeInParam("@Re_24", SqlDbType.NVarChar, 20, item.Re24));
        paras.Add(DBUtils.MakeInParam("@Re_25", SqlDbType.NVarChar, 20, item.Re25));
        paras.Add(DBUtils.MakeInParam("@Other_Bank", SqlDbType.SmallInt, item.OtherBank));
        paras.Add(DBUtils.MakeInParam("@Other_BillNo", SqlDbType.Int, item.OtherBillNo));
        paras.Add(DBUtils.MakeInParam("@Man_Type", SqlDbType.SmallInt, item.ManType));
        paras.Add(DBUtils.MakeInParam("@Bill_Now_Status", SqlDbType.SmallInt, item.BillNowStatus));
        paras.Add(DBUtils.MakeInParam("@Is_Multi", SqlDbType.Bit, item.IsMulti));
        paras.Add(DBUtils.MakeInParam("@Is_Cust", SqlDbType.Bit, item.IsCust));
        paras.Add(DBUtils.MakeInParam("@D_Amount", SqlDbType.Decimal, item.DAmount));
        paras.Add(DBUtils.MakeInParam("@D_Use", SqlDbType.NVarChar, 20, item.DUse));
        paras.Add(DBUtils.MakeInParam("@D_JinUse", SqlDbType.NVarChar, 20, item.DJinUse));
        paras.Add(DBUtils.MakeInParam("@Y_Amount", SqlDbType.Decimal, item.YAmount));
        paras.Add(DBUtils.MakeInParam("@Y_Use", SqlDbType.NVarChar, 20, item.YUse));
        paras.Add(DBUtils.MakeInParam("@Y_JinUse", SqlDbType.NVarChar, 20, item.YJinUse));
        paras.Add(DBUtils.MakeInParam("@Link_Man", SqlDbType.NVarChar, 30, item.LinkMan));
        paras.Add(DBUtils.MakeInParam("@Link_Tele", SqlDbType.NVarChar, 30, item.LinkTele));
        paras.Add(DBUtils.MakeInParam("@Is_Print", SqlDbType.Bit, item.IsPrint));
        if (item.InDate > DateTime.MinValue)
          paras.Add(DBUtils.MakeInParam("@In_Date", SqlDbType.DateTime, Publics.GetDataDateTime(item.InDate)));
        paras.Add(DBUtils.MakeInParam("@Cancel_Type", SqlDbType.SmallInt, item.CancelType));
        paras.Add(DBUtils.MakeInParam("@Action", SqlDbType.SmallInt, action));

        DBUtils.ExecuteNonQuery(conn, cmd, CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_CreateUpdateDelete_BillDetail", paras);

        if (action == DataProviderAction.Create)
        {
          item.BillNo = ((((SqlParameter)paras[0]).Value != null) ? (Convert.ToInt32(((SqlParameter)paras[0]).Value)) : (int)0);
        }

        if ((item.BillType == (short)BillType.ZhuanZhangZhiPiao) || (item.BillType == (short)BillType.HuiPiao) || (item.BillType == (short)BillType.BenPiao))
        {
          DeleteTranDetail(conn, cmd, item.BillNo);

          foreach(DataRow dr in item.TranDetail.Rows)
          {
            if (Convert.ToDouble(dr["En_Amount"]) > 0)
              InsertTranDetail(conn, cmd, item.BillNo, Convert.ToInt16(dr["Tran_Type"]), Convert.ToDouble(dr["En_Amount"]));
          }
        }

        if (!String.IsNullOrEmpty(item.TranKey))
        {
          DatCust cust = new DatCust();
          cust.manid = item.BillMan;
          cust.billno = item.BillNo;
          cust.trankey = item.TranKey;

          SqlBaseProvider.CreateDatCust(conn, cmd, cust);
        }
      }
      catch
      {
        throw;
      }
    }

    public static void DeleteTranDetail(SqlConnection conn, SqlCommand cmd, int billno)
    {
      try
      {
      
        ArrayList paras = new ArrayList();

        paras.Add(DBUtils.MakeInParam("@Bill_No", SqlDbType.Int, billno));

        DBUtils.ExecuteNonQuery(conn, cmd, CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Delete_TranDetail", paras);

      }
      catch
      {
        throw;
      }
    }

    public static void InsertTranDetail(SqlConnection conn, SqlCommand cmd, int billno, short trantype, double enamount)
    {
      try
      {

        ArrayList paras = new ArrayList();

        paras.Add(DBUtils.MakeInParam("@Bill_No", SqlDbType.Int, billno));
        paras.Add(DBUtils.MakeInParam("@Tran_Type", SqlDbType.SmallInt, trantype));
        paras.Add(DBUtils.MakeInParam("@En_Amount", SqlDbType.Decimal, enamount));

        DBUtils.ExecuteNonQuery(conn, cmd, CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Insert_TranDetail", paras);

      }
      catch
      {
        throw;
      }
    }

    public static void CreateUpdateDeleteBillDetail(BillDetail item, BillAuthDetail auth, DataProviderAction action)
    {
      if (item == null)
        return;

      SqlConnection conn = DBUtils.GetConnection();
      SqlCommand cmd = DBUtils.GetCommand();

      try
      {
        cmd.Transaction = conn.BeginTransaction();

        CreateUpdateDeleteBillDetail(conn, cmd, item, action);

        if (!String.IsNullOrEmpty(auth.ManID))
        {
          CreateUpdateDeleteBillAuthDetail(conn, cmd, auth, DataProviderAction.Create);
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

    public static void CreateUpdateDeleteBillDetail(BillDetail item, BillSelfDetail self, BillAuthDetail auth, DataProviderAction action)
    {
      if (item == null)
        return;

      SqlConnection conn = DBUtils.GetConnection();
      SqlCommand cmd = DBUtils.GetCommand();

      try
      {
        cmd.Transaction = conn.BeginTransaction();

        CreateUpdateDeleteBillDetail(conn, cmd, item, action);

        self.BillNo = item.BillNo;
        self.RecoDate = DateTime.Now;

        CreateUpdateDeleteBillSelfDetail(conn, cmd, self, DataProviderAction.Create);

        if (!String.IsNullOrEmpty(auth.ManID))
        {
          CreateUpdateDeleteBillAuthDetail(conn, cmd, auth, DataProviderAction.Create);
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

    public static void CreateUpdateDeleteBillDetail(BillDetail item, BillSelfDetail self, DataProviderAction action)
    {
      if (item == null)
        return;

      SqlConnection conn = DBUtils.GetConnection();
      SqlCommand cmd = DBUtils.GetCommand();

      try
      {
        cmd.Transaction = conn.BeginTransaction();

        CreateUpdateDeleteBillDetail(conn, cmd, item, action);

        self.BillNo = item.BillNo;
        self.RecoDate = DateTime.Now;

        CreateUpdateDeleteBillSelfDetail(conn, cmd, self, DataProviderAction.Create);

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

    public static void DeleteShiTong(BillDetail item, BillAuthDetail auth, DataProviderAction action)
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

        DBUtils.ExecuteNonQuery(conn, cmd, CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Delete_ShiTong", paras);

        if (!String.IsNullOrEmpty(auth.ManID))
        {
          CreateUpdateDeleteBillAuthDetail(conn, cmd, auth, DataProviderAction.Create);
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

    public static void CreateUpdateDeleteBillDetail(BillDetail cash, BillDetail bill, BillAuthDetail auth, DataProviderAction action)
    {
      if ((cash == null) || (bill == null))
        return;

      SqlConnection conn = DBUtils.GetConnection();
      SqlCommand cmd = DBUtils.GetCommand();

      try
      {
        cmd.Transaction = conn.BeginTransaction();

        CreateUpdateDeleteBillDetail(conn, cmd, cash, action);

        CreateUpdateDeleteBillDetail(conn, cmd, bill, action);

        if (!String.IsNullOrEmpty(auth.ManID))
        {
          CreateUpdateDeleteBillAuthDetail(conn, cmd, auth, DataProviderAction.Create);
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

    public static void CreateUpdateDeleteBillDetail(BillDetail cash, BillDetail bill, DataProviderAction action)
    {
      if ((cash == null) || (bill == null))
        return;

      SqlConnection conn = DBUtils.GetConnection();
      SqlCommand cmd = DBUtils.GetCommand();

      try
      {
        cmd.Transaction = conn.BeginTransaction();

        CreateUpdateDeleteBillDetail(conn, cmd, cash, action);

        bill.OtherBillNo = cash.BillNo;

        CreateUpdateDeleteBillDetail(conn, cmd, bill, action);

        cash.OtherBillNo = bill.BillNo;

        ArrayList paras = new ArrayList();

        paras.Add(DBUtils.MakeInParam("@Bill_No", SqlDbType.Int, cash.BillNo));
        paras.Add(DBUtils.MakeInParam("@Other_BillNo", SqlDbType.Int, cash.OtherBillNo));

        DBUtils.ExecuteNonQuery(conn, cmd, CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Update_ShiTong", paras);

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

    public static void PrintBillDetail(int billno)
    {
      SqlConnection conn = DBUtils.GetConnection();
      SqlCommand cmd = DBUtils.GetCommand();

      try
      {
        cmd.Transaction = conn.BeginTransaction();

        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Bill_No", SqlDbType.Int, billno));

        DBUtils.ExecuteNonQuery(conn, cmd, CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Print_BillDetail", paras);

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

    public static void PrintBillDetail(int billno, short status)
    {
      SqlConnection conn = DBUtils.GetConnection();
      SqlCommand cmd = DBUtils.GetCommand();

      try
      {
        cmd.Transaction = conn.BeginTransaction();

        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Bill_No", SqlDbType.Int, billno));
        paras.Add(DBUtils.MakeInParam("@Bill_Now_Status", SqlDbType.SmallInt, status));

        DBUtils.ExecuteNonQuery(conn, cmd, CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Print_BillDetailByStatus", paras);

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

    public static void PrintBillDetail(int billno, short status, string manid)
    {
      SqlConnection conn = DBUtils.GetConnection();
      SqlCommand cmd = DBUtils.GetCommand();

      try
      {
        cmd.Transaction = conn.BeginTransaction();

        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Bill_No", SqlDbType.Int, billno));
        paras.Add(DBUtils.MakeInParam("@Bill_Now_Status", SqlDbType.SmallInt, status));
        paras.Add(DBUtils.MakeInParam("@Man_ID", SqlDbType.NVarChar, 6, manid));

        DBUtils.ExecuteNonQuery(conn, cmd, CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Print_BillDetailByStatus", paras);

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

    public static void SumLastBillDetail(BillDetail item)
    {
      if (item == null)
        return;

      SqlConnection conn = DBUtils.GetConnection();
      SqlCommand cmd = DBUtils.GetCommand();

      try
      {
        cmd.Transaction = conn.BeginTransaction();

        ArrayList paras = new ArrayList();

        paras.Add(DBUtils.MakeOutParam("@Bill_No", SqlDbType.Int));
        paras.Add(DBUtils.MakeInParam("@Bill_Type", SqlDbType.SmallInt, item.BillType));
        paras.Add(DBUtils.MakeInParam("@Bank_ID", SqlDbType.SmallInt, item.BankID));
        paras.Add(DBUtils.MakeInParam("@Act_Bill_No", SqlDbType.NVarChar, 25, item.ActBillNo));
        paras.Add(DBUtils.MakeInParam("@Rela_Bill_No", SqlDbType.NVarChar, 25, item.RelaBillNo));
        if (item.BillDate > DateTime.MinValue)
          paras.Add(DBUtils.MakeInParam("@Bill_Date", SqlDbType.DateTime, Publics.GetDataDateTime(item.BillDate)));
        if (item.ActDate > DateTime.MinValue)
          paras.Add(DBUtils.MakeInParam("@Act_Date", SqlDbType.DateTime, Publics.GetDataDateTime(item.ActDate)));
        paras.Add(DBUtils.MakeInParam("@Bill_Man", SqlDbType.NVarChar, 6, item.BillMan));
        paras.Add(DBUtils.MakeInParam("@Bill_Man_Name", SqlDbType.NVarChar, 10, item.BillManName));
        paras.Add(DBUtils.MakeInParam("@Dept_ID", SqlDbType.NVarChar, 8, item.DeptID));
        paras.Add(DBUtils.MakeInParam("@Oper_Type", SqlDbType.SmallInt, item.OperType));
        paras.Add(DBUtils.MakeInParam("@Is_Sum", SqlDbType.Bit, item.IsSum));
        paras.Add(DBUtils.MakeInParam("@En_Date", SqlDbType.NVarChar, 8, item.EnDate));
        paras.Add(DBUtils.MakeInParam("@En_Year_Month", SqlDbType.NVarChar, 6, item.EnYearMonth));
        paras.Add(DBUtils.MakeInParam("@En_Year", SqlDbType.NVarChar, 4, item.EnYear));
        paras.Add(DBUtils.MakeInParam("@En_Month", SqlDbType.NVarChar, 2, item.EnMonth));
        paras.Add(DBUtils.MakeInParam("@En_Day", SqlDbType.NVarChar, 2, item.EnDay));
        paras.Add(DBUtils.MakeInParam("@Cn_Year", SqlDbType.NVarChar, 6, item.CnYear));
        paras.Add(DBUtils.MakeInParam("@Cn_Month", SqlDbType.NVarChar, 4, item.CnMonth));
        paras.Add(DBUtils.MakeInParam("@Cn_Day", SqlDbType.NVarChar, 4, item.CnDay));
        paras.Add(DBUtils.MakeInParam("@En_Amount", SqlDbType.Decimal, item.EnAmount));
        paras.Add(DBUtils.MakeInParam("@Rela_Amount", SqlDbType.Decimal, item.RelaAmount));
        paras.Add(DBUtils.MakeInParam("@Sum_Amount", SqlDbType.Decimal, item.SumAmount));
        paras.Add(DBUtils.MakeInParam("@Cn_Amount", SqlDbType.NVarChar, 30, item.CnAmount));
        paras.Add(DBUtils.MakeInParam("@En_01", SqlDbType.NVarChar, 1, item.En01));
        paras.Add(DBUtils.MakeInParam("@En_02", SqlDbType.NVarChar, 1, item.En02));
        paras.Add(DBUtils.MakeInParam("@En_03", SqlDbType.NVarChar, 1, item.En03));
        paras.Add(DBUtils.MakeInParam("@En_04", SqlDbType.NVarChar, 1, item.En04));
        paras.Add(DBUtils.MakeInParam("@En_05", SqlDbType.NVarChar, 1, item.En05));
        paras.Add(DBUtils.MakeInParam("@En_06", SqlDbType.NVarChar, 1, item.En06));
        paras.Add(DBUtils.MakeInParam("@En_07", SqlDbType.NVarChar, 1, item.En07));
        paras.Add(DBUtils.MakeInParam("@En_08", SqlDbType.NVarChar, 1, item.En08));
        paras.Add(DBUtils.MakeInParam("@En_09", SqlDbType.NVarChar, 1, item.En09));
        paras.Add(DBUtils.MakeInParam("@En_10", SqlDbType.NVarChar, 1, item.En10));
        paras.Add(DBUtils.MakeInParam("@En_11", SqlDbType.NVarChar, 1, item.En11));
        paras.Add(DBUtils.MakeInParam("@En_12", SqlDbType.NVarChar, 1, item.En12));
        paras.Add(DBUtils.MakeInParam("@Bill_Password", SqlDbType.NVarChar, 24, item.BillPassword));
        paras.Add(DBUtils.MakeInParam("@Cust_ID", SqlDbType.NVarChar, 40, item.CustID));
        paras.Add(DBUtils.MakeInParam("@Bill_Source", SqlDbType.NVarChar, 20, item.BillSource));
        paras.Add(DBUtils.MakeInParam("@Bill_Use", SqlDbType.NVarChar, 20, item.BillUse));
        paras.Add(DBUtils.MakeInParam("@Send_Dept", SqlDbType.Int, item.SendDept));
        paras.Add(DBUtils.MakeInParam("@Send_Name", SqlDbType.NVarChar, 40, item.SendName));
        paras.Add(DBUtils.MakeInParam("@Send_Bank", SqlDbType.NVarChar, 30, item.SendBank));
        paras.Add(DBUtils.MakeInParam("@Send_Account", SqlDbType.NVarChar, 30, item.SendAccount));
        paras.Add(DBUtils.MakeInParam("@Send_Short", SqlDbType.NVarChar, 20, item.SendShort));
        paras.Add(DBUtils.MakeInParam("@Get_Dept", SqlDbType.Int, item.GetDept));
        paras.Add(DBUtils.MakeInParam("@Get_Name", SqlDbType.NVarChar, 40, item.GetName));
        paras.Add(DBUtils.MakeInParam("@Get_Bank", SqlDbType.NVarChar, 30, item.GetBank));
        paras.Add(DBUtils.MakeInParam("@Get_Account", SqlDbType.NVarChar, 30, item.GetAccount));
        paras.Add(DBUtils.MakeInParam("@Get_Short", SqlDbType.NVarChar, 20, item.GetShort));
        paras.Add(DBUtils.MakeInParam("@Re_01", SqlDbType.NVarChar, 20, item.Re01));
        paras.Add(DBUtils.MakeInParam("@Re_02", SqlDbType.NVarChar, 20, item.Re02));
        paras.Add(DBUtils.MakeInParam("@Re_03", SqlDbType.NVarChar, 20, item.Re03));
        paras.Add(DBUtils.MakeInParam("@Re_04", SqlDbType.NVarChar, 20, item.Re04));
        paras.Add(DBUtils.MakeInParam("@Re_05", SqlDbType.NVarChar, 20, item.Re05));
        paras.Add(DBUtils.MakeInParam("@Re_06", SqlDbType.NVarChar, 20, item.Re06));
        paras.Add(DBUtils.MakeInParam("@Re_07", SqlDbType.NVarChar, 20, item.Re07));
        paras.Add(DBUtils.MakeInParam("@Re_08", SqlDbType.NVarChar, 20, item.Re08));
        paras.Add(DBUtils.MakeInParam("@Re_09", SqlDbType.NVarChar, 20, item.Re09));
        paras.Add(DBUtils.MakeInParam("@Re_10", SqlDbType.NVarChar, 20, item.Re10));
        paras.Add(DBUtils.MakeInParam("@Re_11", SqlDbType.NVarChar, 20, item.Re11));
        paras.Add(DBUtils.MakeInParam("@Re_12", SqlDbType.NVarChar, 20, item.Re12));
        paras.Add(DBUtils.MakeInParam("@Re_13", SqlDbType.NVarChar, 20, item.Re13));
        paras.Add(DBUtils.MakeInParam("@Re_14", SqlDbType.NVarChar, 20, item.Re14));
        paras.Add(DBUtils.MakeInParam("@Re_15", SqlDbType.NVarChar, 20, item.Re15));
        paras.Add(DBUtils.MakeInParam("@Re_16", SqlDbType.NVarChar, 20, item.Re16));
        paras.Add(DBUtils.MakeInParam("@Re_17", SqlDbType.NVarChar, 20, item.Re17));
        paras.Add(DBUtils.MakeInParam("@Re_18", SqlDbType.NVarChar, 20, item.Re18));
        paras.Add(DBUtils.MakeInParam("@Re_19", SqlDbType.NVarChar, 20, item.Re19));
        paras.Add(DBUtils.MakeInParam("@Re_20", SqlDbType.NVarChar, 20, item.Re20));
        paras.Add(DBUtils.MakeInParam("@Re_21", SqlDbType.NVarChar, 20, item.Re21));
        paras.Add(DBUtils.MakeInParam("@Re_22", SqlDbType.NVarChar, 20, item.Re22));
        paras.Add(DBUtils.MakeInParam("@Re_23", SqlDbType.NVarChar, 20, item.Re23));
        paras.Add(DBUtils.MakeInParam("@Re_24", SqlDbType.NVarChar, 20, item.Re24));
        paras.Add(DBUtils.MakeInParam("@Re_25", SqlDbType.NVarChar, 20, item.Re25));
        paras.Add(DBUtils.MakeInParam("@Other_Bank", SqlDbType.SmallInt, item.OtherBank));
        paras.Add(DBUtils.MakeInParam("@Other_BillNo", SqlDbType.Int, item.OtherBillNo));
        paras.Add(DBUtils.MakeInParam("@Man_Type", SqlDbType.SmallInt, item.ManType));
        paras.Add(DBUtils.MakeInParam("@Bill_Now_Status", SqlDbType.SmallInt, item.BillNowStatus));
        paras.Add(DBUtils.MakeInParam("@Reco_Date", SqlDbType.DateTime, item.RecoDate));
        paras.Add(DBUtils.MakeInParam("@Reco_Year", SqlDbType.NVarChar, 8, item.RecoYear));
        paras.Add(DBUtils.MakeInParam("@Is_Multi", SqlDbType.Bit, item.IsMulti));
        paras.Add(DBUtils.MakeInParam("@Is_Cust", SqlDbType.Bit, item.IsCust));
        paras.Add(DBUtils.MakeInParam("@D_Amount", SqlDbType.Decimal, item.DAmount));
        paras.Add(DBUtils.MakeInParam("@D_Use", SqlDbType.NVarChar, 20, item.DUse));
        paras.Add(DBUtils.MakeInParam("@D_JinUse", SqlDbType.NVarChar, 20, item.DJinUse));
        paras.Add(DBUtils.MakeInParam("@Y_Amount", SqlDbType.Decimal, item.YAmount));
        paras.Add(DBUtils.MakeInParam("@Y_Use", SqlDbType.NVarChar, 20, item.YUse));
        paras.Add(DBUtils.MakeInParam("@Y_JinUse", SqlDbType.NVarChar, 20, item.YJinUse));
        paras.Add(DBUtils.MakeInParam("@Link_Man", SqlDbType.NVarChar, 30, item.LinkMan));
        paras.Add(DBUtils.MakeInParam("@Link_Tele", SqlDbType.NVarChar, 30, item.LinkTele));
        paras.Add(DBUtils.MakeInParam("@Cancel_Type", SqlDbType.SmallInt, item.CancelType));

        DBUtils.ExecuteNonQuery(conn, cmd, CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_SumLast_BillDetail", paras);

        item.BillNo = ((((SqlParameter)paras[0]).Value != null) ? (Convert.ToInt32(((SqlParameter)paras[0]).Value)) : (int)0);

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
    //Æ±¾Ý×ªÐéÊÕ 20150607 by zs
    public static void BillToXuShou(Int32 billno, BillAuthDetail auth, DataProviderAction action)
    {
        if (billno == 0)
            return;

        SqlConnection conn = DBUtils.GetConnection();
        SqlCommand cmd = DBUtils.GetCommand();

        try
        {
            cmd.Transaction = conn.BeginTransaction();

            BillToXuShou(conn, cmd, billno, action);

            if (!String.IsNullOrEmpty(auth.ManID))
            {
                CreateUpdateDeleteBillAuthDetail(conn, cmd, auth, DataProviderAction.Create);
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
    public static void BillToXuShou(SqlConnection conn, SqlCommand cmd, Int32 billno, DataProviderAction action)
    {
        if (billno == 0)
            return;

        try
        {

            ArrayList paras = new ArrayList();

            paras.Add(DBUtils.MakeInParam("@Bill_No", SqlDbType.Int, billno));


            DBUtils.ExecuteNonQuery(conn, cmd, CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Save_BillToXuShou", paras);


        }
        catch
        {
            throw;
        }
    }
    public static void BillToXuShou( Int32 billno, DataProviderAction action)
    {
        if (billno == 0)
            return;

        SqlConnection conn = DBUtils.GetConnection();
        SqlCommand cmd = DBUtils.GetCommand();

        try
        {
            cmd.Transaction = conn.BeginTransaction();

            ArrayList paras = new ArrayList();

            paras.Add(DBUtils.MakeInParam("@Bill_No", SqlDbType.Int, billno));


            DBUtils.ExecuteNonQuery(conn, cmd, CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Save_BillToXuShou", paras);


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

    public static void DealCashRela(BillDetail item, DataProviderAction action)
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
        paras.Add(DBUtils.MakeInParam("@Bill_Now_Status", SqlDbType.SmallInt, item.BillNowStatus));

        DBUtils.ExecuteNonQuery(conn, cmd, CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Deal_CashRela", paras);

        if (!String.IsNullOrEmpty(item.TranKey))
        {
          DatCust cust = new DatCust();
          cust.manid = item.BillMan;
          cust.billno = item.BillNo;
          cust.trankey = item.TranKey;

          SqlBaseProvider.CreateDatCust(conn, cmd, cust);
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
