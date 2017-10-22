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
		public static DataTable GetBillSelfDetailList()
		{
			DataTable tblMain;

			try
			{
				ArrayList paras = new ArrayList(); 
				paras.Add(DBUtils.MakeInParam("@Get_Action", SqlDbType.NVarChar, 10, DataGetAction.Full.ToString().ToLower()));

				tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_BillSelfDetail", paras);
				tblMain.TableName = "SelectMain";
			}
			catch { throw; }

			return tblMain;
		}		

		public static void CreateUpdateDeleteBillSelfDetail(BillSelfDetail item, DataProviderAction action)
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
				paras.Add(DBUtils.MakeInParam("@Man_ID", SqlDbType.NVarChar, 6, item.ManID));
				paras.Add(DBUtils.MakeInParam("@Man_Name", SqlDbType.NVarChar, 10, item.ManName));
				paras.Add(DBUtils.MakeInParam("@Dept_ID", SqlDbType.NVarChar, 8, item.DeptID));
				paras.Add(DBUtils.MakeInParam("@Reco_Date", SqlDbType.DateTime, item.RecoDate));
				paras.Add(DBUtils.MakeInParam("@Self_ID", SqlDbType.NVarChar, 6, item.SelfID));
				paras.Add(DBUtils.MakeInParam("@Self_Name", SqlDbType.NVarChar, 8, item.SelfName));
				paras.Add(DBUtils.MakeInParam("@Oper_Desc", SqlDbType.NVarChar, 100, item.OperDesc));
				paras.Add(DBUtils.MakeInParam("@Action", SqlDbType.Int, action));

				DBUtils.ExecuteNonQuery(conn, cmd, CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_CreateUpdateDelete_BillSelfDetail", paras);

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

    public static void CreateUpdateDeleteBillSelfDetail(SqlConnection conn, SqlCommand cmd, BillSelfDetail item, DataProviderAction action)
    {
      if (item == null)
        return;

      try
      {
        ArrayList paras = new ArrayList();

        paras.Add(DBUtils.MakeInParam("@Bill_No", SqlDbType.Int, item.BillNo));
        paras.Add(DBUtils.MakeInParam("@Man_ID", SqlDbType.NVarChar, 6, item.ManID));
        paras.Add(DBUtils.MakeInParam("@Man_Name", SqlDbType.NVarChar, 10, item.ManName));
        paras.Add(DBUtils.MakeInParam("@Dept_ID", SqlDbType.NVarChar, 8, item.DeptID));
        paras.Add(DBUtils.MakeInParam("@Reco_Date", SqlDbType.DateTime, item.RecoDate));
        paras.Add(DBUtils.MakeInParam("@Self_ID", SqlDbType.NVarChar, 6, item.SelfID));
        paras.Add(DBUtils.MakeInParam("@Self_Name", SqlDbType.NVarChar, 8, item.SelfName));
        paras.Add(DBUtils.MakeInParam("@Oper_Desc", SqlDbType.NVarChar, 100, item.OperDesc));
        paras.Add(DBUtils.MakeInParam("@Action", SqlDbType.Int, action));

        DBUtils.ExecuteNonQuery(conn, cmd, CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_CreateUpdateDelete_BillSelfDetail", paras);

      }
      catch
      {
        throw;
      }
    }
	}
}
