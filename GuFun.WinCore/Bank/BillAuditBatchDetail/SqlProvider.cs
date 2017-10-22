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
		public static DataTable GetBillAuditBatchDetailList()
		{
			DataTable tblMain;

			try
			{
				ArrayList paras = new ArrayList(); 
				paras.Add(DBUtils.MakeInParam("@Get_Action", SqlDbType.NVarChar, 10, DataGetAction.Full.ToString().ToLower()));

				tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_BillAuditBatchDetail", paras);
				tblMain.TableName = "SelectMain";
			}
			catch { throw; }

			return tblMain;
		}

    public static DataTable GetBillAuditBatchDetailList(int adiutbatch)
    {
      DataTable tblMain;

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Audit_Batch", SqlDbType.Int, adiutbatch));
        paras.Add(DBUtils.MakeInParam("@Get_Action", SqlDbType.NVarChar, 10, DataGetAction.ListRows.ToString().ToLower()));

        tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_BillAuditBatchDetail", paras);
        tblMain.TableName = "SelectMain";
      }
      catch { throw; }

      return tblMain;
    }

		public static BillAuditBatchDetail PopulateBillAuditBatchDetail(IDataReader reader)
		{
			BillAuditBatchDetail item = new BillAuditBatchDetail();
			item.AuditBatch = (int)reader["Audit_Batch"];
			item.AbSerial = (int)reader["Ab_Serial"];
			item.AbType = (short)reader["Ab_Type"];
      item.AbTypeName = reader["Ab_Type_Name"] as string;
			if (reader["Ab_Date"] != DBNull.Value)
				item.AbDate = Convert.ToDateTime(reader["Ab_Date"]);
			if (reader["Ab_Year"] != DBNull.Value)
				item.AbYear = reader["Ab_Year"] as string;
			item.EnAmount = Convert.ToDouble(reader["En_Amount"]);
			item.SumAmount = Convert.ToDouble(reader["Sum_Amount"]);
			if (reader["Act_Bill_No"] != DBNull.Value)
				item.ActBillNo = reader["Act_Bill_No"] as string;

			return item;
		}

    public static BillAuditBatchDetail GetBillAuditBatchDetail(int adiutbatch, int serial)
		{
			BillAuditBatchDetail item = new BillAuditBatchDetail();
			
			try
			{
				ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Audit_Batch", SqlDbType.Int, adiutbatch));
        paras.Add(DBUtils.MakeInParam("@Ab_Serial", SqlDbType.Int, serial));
				paras.Add(DBUtils.MakeInParam("@Get_Action", SqlDbType.NVarChar, 10, DataGetAction.Row.ToString().ToLower()));

				SqlDataReader reader = DBUtils.ExecuteReader(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_BillAuditBatchDetail", paras);
				
				if (reader.Read())
				{
					item = PopulateBillAuditBatchDetail(reader);
				}

				reader.Close();
			}
			catch { throw; }

			return item;
		}

		public static void CreateUpdateDeleteBillAuditBatchDetail(BillAuditBatchDetail item, DataProviderAction action)
		{
			if (item == null)
				return;

			SqlConnection conn = DBUtils.GetConnection();
			SqlCommand cmd = DBUtils.GetCommand();

			try
			{
				cmd.Transaction = conn.BeginTransaction();

				ArrayList paras = new ArrayList();

				paras.Add(DBUtils.MakeInParam("@Audit_Batch", SqlDbType.Int, item.AuditBatch));
				paras.Add(DBUtils.MakeInParam("@Ab_Serial", SqlDbType.Int, item.AbSerial));
				paras.Add(DBUtils.MakeInParam("@Ab_Type", SqlDbType.SmallInt, item.AbType));
        if (item.AbDate > DateTime.MinValue)
				  paras.Add(DBUtils.MakeInParam("@Ab_Date", SqlDbType.DateTime, Publics.GetDataDateTime(item.AbDate)));
				paras.Add(DBUtils.MakeInParam("@Ab_Year", SqlDbType.NVarChar, 8, item.AbYear));
				paras.Add(DBUtils.MakeInParam("@En_Amount", SqlDbType.Decimal, item.EnAmount));
				paras.Add(DBUtils.MakeInParam("@Sum_Amount", SqlDbType.Decimal, item.SumAmount));
				paras.Add(DBUtils.MakeInParam("@Act_Bill_No", SqlDbType.NVarChar, 20, item.ActBillNo));
				paras.Add(DBUtils.MakeInParam("@Action", SqlDbType.Int, action));

				DBUtils.ExecuteNonQuery(conn, cmd, CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_CreateUpdateDelete_BillAuditBatchDetail", paras);

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

    public static void CreateUpdateDeleteBillAuditBatchDetail(SqlConnection conn, SqlCommand cmd, BillAuditBatchDetail item, DataProviderAction action)
    {
      if (item == null)
        return;

      try
      {
        ArrayList paras = new ArrayList();

        paras.Add(DBUtils.MakeInParam("@Audit_Batch", SqlDbType.Int, item.AuditBatch));
        paras.Add(DBUtils.MakeInParam("@Ab_Serial", SqlDbType.Int, item.AbSerial));
        paras.Add(DBUtils.MakeInParam("@Ab_Type", SqlDbType.SmallInt, item.AbType));
        if (item.AbDate > DateTime.MinValue)
          paras.Add(DBUtils.MakeInParam("@Ab_Date", SqlDbType.DateTime, Publics.GetDataDateTime(item.AbDate)));
        paras.Add(DBUtils.MakeInParam("@Ab_Year", SqlDbType.NVarChar, 8, item.AbYear));
        paras.Add(DBUtils.MakeInParam("@En_Amount", SqlDbType.Decimal, item.EnAmount));
        paras.Add(DBUtils.MakeInParam("@Sum_Amount", SqlDbType.Decimal, item.SumAmount));
        paras.Add(DBUtils.MakeInParam("@Act_Bill_No", SqlDbType.NVarChar, 20, item.ActBillNo));
        paras.Add(DBUtils.MakeInParam("@Action", SqlDbType.Int, action));

        DBUtils.ExecuteNonQuery(conn, cmd, CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_CreateUpdateDelete_BillAuditBatchDetail", paras);
      }
      catch
      {
        throw;
      }
    }
	}
}
