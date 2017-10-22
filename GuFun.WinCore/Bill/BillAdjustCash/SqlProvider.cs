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
		public static DataTable GetBillAdjustCashList()
		{
			DataTable tblMain;

			try
			{
				ArrayList paras = new ArrayList(); 
				paras.Add(DBUtils.MakeInParam("@Get_Action", SqlDbType.NVarChar, 10, DataGetAction.Full.ToString().ToLower()));

				tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_BillAdjustCash", paras);
				tblMain.TableName = "SelectMain";
			}
			catch { throw; }

			return tblMain;
		}

    public static DataTable SearchBillAdjustCashList(string search)
    {
      DataTable tblMain;

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Search", SqlDbType.NVarChar, 300, search));

        tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Search_BillAdjustCash", paras);
        tblMain.TableName = "SelectMain";
      }
      catch { throw; }

      return tblMain;
    }

		public static BillAdjustCash PopulateBillAdjustCash(IDataReader reader)
		{
			BillAdjustCash item = new BillAdjustCash();
			item.AdjustID = (int)reader["Adjust_ID"];
			item.SourceMan = reader["Source_Man"] as string;
			item.SourceManName = reader["Source_Man_Name"] as string;
			item.TargetMan = reader["Target_Man"] as string;
			item.TargetManName = reader["Target_Man_Name"] as string;
			item.AdjustCash = Convert.ToDouble(reader["Adjust_Cash"]);
			item.RecoDate = Convert.ToDateTime(reader["Reco_Date"]);
			item.RecoMan = reader["Reco_Man"] as string;
			item.RecoManName = reader["Reco_Man_Name"] as string;
			item.DeptID = reader["Dept_ID"] as string;
			item.DeptName = reader["Dept_Name"] as string;

			return item;
		}

		public static BillAdjustCash GetBillAdjustCash(int adjustid)
		{
			BillAdjustCash item = new BillAdjustCash();
			
			try
			{
				ArrayList paras = new ArrayList();
				paras.Add(DBUtils.MakeInParam("@Adjust_ID", SqlDbType.Int, adjustid));
				paras.Add(DBUtils.MakeInParam("@Get_Action", SqlDbType.NVarChar, 10, DataGetAction.Row.ToString().ToLower()));

				SqlDataReader reader = DBUtils.ExecuteReader(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_BillAdjustCash", paras);
				
				if (reader.Read())
				{
					item = PopulateBillAdjustCash(reader);
				}

				reader.Close();
			}
			catch { throw; }

			return item;
		}

		public static void CreateUpdateDeleteBillAdjustCash(BillAdjustCash item, DataProviderAction action)
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
					paras.Add(DBUtils.MakeOutParam("@Adjust_ID", SqlDbType.Int));
				}
				else
				{
					paras.Add(DBUtils.MakeInParam("@Adjust_ID", SqlDbType.Int, item.AdjustID));
				}
				paras.Add(DBUtils.MakeInParam("@Source_Man", SqlDbType.NVarChar, 6, item.SourceMan));
				paras.Add(DBUtils.MakeInParam("@Source_Man_Name", SqlDbType.NVarChar, 10, item.SourceManName));
				paras.Add(DBUtils.MakeInParam("@Target_Man", SqlDbType.NVarChar, 6, item.TargetMan));
				paras.Add(DBUtils.MakeInParam("@Target_Man_Name", SqlDbType.NVarChar, 10, item.TargetManName));
				paras.Add(DBUtils.MakeInParam("@Adjust_Cash", SqlDbType.Decimal, item.AdjustCash));
				paras.Add(DBUtils.MakeInParam("@Reco_Date", SqlDbType.DateTime, item.RecoDate));
				paras.Add(DBUtils.MakeInParam("@Reco_Man", SqlDbType.NVarChar, 6, item.RecoMan));
				paras.Add(DBUtils.MakeInParam("@Reco_Man_Name", SqlDbType.NVarChar, 10, item.RecoManName));
				paras.Add(DBUtils.MakeInParam("@Dept_ID", SqlDbType.NVarChar, 8, item.DeptID));
				paras.Add(DBUtils.MakeInParam("@Action", SqlDbType.Int, action));

				DBUtils.ExecuteNonQuery(conn, cmd, CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_CreateUpdateDelete_BillAdjustCash", paras);

				if (action == DataProviderAction.Create)
				{
					item.AdjustID = ((((SqlParameter)paras[0]).Value != null) ? (Convert.ToInt32(((SqlParameter)paras[0]).Value)) : (int)0);
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
