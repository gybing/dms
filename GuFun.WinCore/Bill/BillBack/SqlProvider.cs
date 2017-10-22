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
		public static DataTable GetBillBackList()
		{
			DataTable tblMain;

			try
			{
				ArrayList paras = new ArrayList(); 
				paras.Add(DBUtils.MakeInParam("@Get_Action", SqlDbType.NVarChar, 10, DataGetAction.Full.ToString().ToLower()));

				tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_BillBack", paras);
				tblMain.TableName = "SelectMain";
			}
			catch { throw; }

			return tblMain;
		}

    public static DataTable SearchBillDetailBack(string search)
    {
      DataTable tblMain;

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Search", SqlDbType.NVarChar, 300, search));

        tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Search_BillDetailBack", paras);
        tblMain.TableName = "SelectMain";
      }
      catch { throw; }

      return tblMain;
    }

    public static DataTable GetBackFeeTips(string search)
    {
      DataTable tblMain;

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Search", SqlDbType.NVarChar, 300, search));

        tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_BackFeeTips", paras);
        tblMain.TableName = "SelectMain";
      }
      catch { throw; }

      return tblMain;
    }

    public static DataTable GetNoBillBack(string search)
    {
      DataTable tblMain;

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Search", SqlDbType.NVarChar, 300, search));

        tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Search_NoBillBack", paras);
        tblMain.TableName = "SelectMain";
      }
      catch { throw; }

      return tblMain;
    }

		public static BillBack PopulateBillBack(IDataReader reader)
		{
			BillBack item = new BillBack();
			item.BillNo = (int)reader["Bill_No"];
			item.BackDate = Convert.ToDateTime(reader["Back_Date"]);
			item.BackReason = reader["Back_Reason"] as string;
			item.RecoMan = reader["Reco_Man"] as string;
			item.ManName = reader["Man_Name"] as string;
			item.RecoDate = Convert.ToDateTime(reader["Reco_Date"]);
			if (reader["Feedback_Date"] != DBNull.Value)
				item.FeedbackDate = Convert.ToDateTime(reader["Feedback_Date"]);
			item.IsFeedback = Convert.ToBoolean(reader["Is_Feedback"]);
      if (reader["FeedBack_Info"] != DBNull.Value)
        item.FeedBackInfo = reader["FeedBack_Info"] as string;
      if (reader["New_Bill_No"] != DBNull.Value)
        item.NewBillNo = reader["New_Bill_No"] as string;
      item.FinishType = (short)reader["Finish_Type"];
      if (reader["Finish_Date"] != DBNull.Value)
        item.FinishDate = Convert.ToDateTime(reader["Finish_Date"]);

			return item;
		}

		public static BillBack GetBillBack(int billno)
		{
			BillBack item = new BillBack();
			
			try
			{
				ArrayList paras = new ArrayList();
				paras.Add(DBUtils.MakeInParam("@Bill_No", SqlDbType.Int, billno));
				paras.Add(DBUtils.MakeInParam("@Get_Action", SqlDbType.NVarChar, 10, DataGetAction.Row.ToString().ToLower()));

				SqlDataReader reader = DBUtils.ExecuteReader(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_BillBack", paras);
				
				if (reader.Read())
				{
					item = PopulateBillBack(reader);
          item.Detail = GetBillDetail(item.BillNo);
        }
        
				reader.Close();
			}
			catch { throw; }

			return item;
		}

		public static void CreateUpdateDeleteBillBack(BillBack item, DataProviderAction action)
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
				paras.Add(DBUtils.MakeInParam("@Feedback_Date", SqlDbType.DateTime, Publics.GetDataDateTime(item.FeedbackDate)));
				paras.Add(DBUtils.MakeInParam("@Is_Feedback", SqlDbType.Bit, item.IsFeedback));
        paras.Add(DBUtils.MakeInParam("@FeedBack_Info", SqlDbType.NVarChar, 100, item.FeedBackInfo));
				paras.Add(DBUtils.MakeInParam("@Action", SqlDbType.Int, action));

				DBUtils.ExecuteNonQuery(conn, cmd, CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_CreateUpdateDelete_BillBack", paras);

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

    public static void FeedBackBillBack(BillBack item)
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
        paras.Add(DBUtils.MakeInParam("@Feedback_Date", SqlDbType.DateTime, Publics.GetDataDateTime(item.FeedbackDate)));
        paras.Add(DBUtils.MakeInParam("@FeedBack_Info", SqlDbType.NVarChar, 100, item.FeedBackInfo));
        paras.Add(DBUtils.MakeInParam("@New_Bill_No", SqlDbType.NVarChar, 20, item.NewBillNo));
        paras.Add(DBUtils.MakeInParam("@Finish_Type", SqlDbType.SmallInt, item.FinishType));
        paras.Add(DBUtils.MakeInParam("@Finish_Date", SqlDbType.DateTime, item.FinishDate));

        DBUtils.ExecuteNonQuery(conn, cmd, CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_FeedBack_BillBack", paras);

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

    public static void AcceptBillBack(BillBack item, DataProviderAction action)
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

        DBUtils.ExecuteNonQuery(conn, cmd, CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_CreateUpdateDelete_BillBack", paras);

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
