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
		public static DataTable GetBillAuditBatchList()
		{
			DataTable tblMain;

			try
			{
				ArrayList paras = new ArrayList(); 
				paras.Add(DBUtils.MakeInParam("@Get_Action", SqlDbType.NVarChar, 10, DataGetAction.Full.ToString().ToLower()));

				tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_BillAuditBatch", paras);
				tblMain.TableName = "SelectMain";
			}
			catch { throw; }

			return tblMain;
		}

    public static DataTable SearchBillAuditBatchList(string search)
    {
      DataTable tblMain;

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Search", SqlDbType.NVarChar, 300, search));

        tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Search_BillAuditBatchDetail", paras);
        tblMain.TableName = "SelectMain";
      }
      catch { throw; }

      return tblMain;
    }

		public static BillAuditBatch PopulateBillAuditBatch(IDataReader reader)
		{
			BillAuditBatch item = new BillAuditBatch();
			item.AuditBatch = (int)reader["Audit_Batch"];
			item.BankID = (short)reader["Bank_ID"];
			item.RecoDate = Convert.ToDateTime(reader["Reco_Date"]);
			item.RecoMan = reader["Reco_Man"] as string;
			item.ManName = reader["Man_Name"] as string;
			item.AuditDate = reader["Audit_Date"] as string;
      item.BankName = reader["Bank_Name"] as string;

			return item;
		}

		public static BillAuditBatch GetBillAuditBatch(int auditbatch)
		{
			BillAuditBatch item = new BillAuditBatch();
			
			try
			{
				ArrayList paras = new ArrayList();
				paras.Add(DBUtils.MakeInParam("@Audit_Batch", SqlDbType.Int, auditbatch));
				paras.Add(DBUtils.MakeInParam("@Get_Action", SqlDbType.NVarChar, 10, DataGetAction.Row.ToString().ToLower()));

				SqlDataReader reader = DBUtils.ExecuteReader(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_BillAuditBatch", paras);
				
				if (reader.Read())
				{
					item = PopulateBillAuditBatch(reader);
				}

        reader.Close();
			}
			catch { throw; }

			return item;
		}

		public static void CreateUpdateDeleteBillAuditBatch(BillAuditBatch item, DataProviderAction action)
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
					paras.Add(DBUtils.MakeOutParam("@Audit_Batch", SqlDbType.Int));
				}
				else
				{
					paras.Add(DBUtils.MakeInParam("@Audit_Batch", SqlDbType.Int, item.AuditBatch));
				}
				paras.Add(DBUtils.MakeInParam("@Bank_ID", SqlDbType.SmallInt, item.BankID));
				paras.Add(DBUtils.MakeInParam("@Reco_Date", SqlDbType.DateTime, item.RecoDate));
				paras.Add(DBUtils.MakeInParam("@Reco_Man", SqlDbType.NVarChar, 6, item.RecoMan));
				paras.Add(DBUtils.MakeInParam("@Audit_Date", SqlDbType.NVarChar, 8, item.AuditDate));
				paras.Add(DBUtils.MakeInParam("@Action", SqlDbType.Int, action));

				DBUtils.ExecuteNonQuery(conn, cmd, CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_CreateUpdateDelete_BillAuditBatch", paras);

				if (action == DataProviderAction.Create)
				{
					item.AuditBatch = ((((SqlParameter)paras[0]).Value != null) ? (Convert.ToInt32(((SqlParameter)paras[0]).Value)) : (int)0);
				}

        foreach (BillAuditBatchDetail detail in item.Items)
        {
          detail.AuditBatch = item.AuditBatch;
          CreateUpdateDeleteBillAuditBatchDetail(conn, cmd, detail, action);
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
