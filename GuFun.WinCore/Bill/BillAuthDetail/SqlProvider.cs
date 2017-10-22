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
		public static DataTable GetBillAuthDetailList()
		{
			DataTable tblMain;

			try
			{
				ArrayList paras = new ArrayList(); 
				paras.Add(DBUtils.MakeInParam("@Get_Action", SqlDbType.NVarChar, 10, DataGetAction.Full.ToString().ToLower()));

				tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_BillAuthDetail", paras);
				tblMain.TableName = "SelectMain";
			}
			catch { throw; }

			return tblMain;
		}

		public static BillAuthDetail PopulateBillAuthDetail(IDataReader reader)
		{
			BillAuthDetail item = new BillAuthDetail();
			item.AuthID = (int)reader["Auth_ID"];
			item.ManID = reader["Man_ID"] as string;
			item.ManName = reader["Man_Name"] as string;
			item.DeptID = reader["Dept_ID"] as string;
			item.DeptName = reader["Dept_Name"] as string;
			item.AuthDate = Convert.ToDateTime(reader["Auth_Date"]);
			item.AuthMan = reader["Auth_Man"] as string;
			item.AuthManName = reader["Auth_Man_Name"] as string;
			if (reader["Auth_Info"] != DBNull.Value)
				item.AuthInfo = reader["Auth_Info"] as string;

			return item;
		}

		public static BillAuthDetail GetBillAuthDetail(int authid)
		{
			BillAuthDetail item = new BillAuthDetail();
			
			try
			{
				ArrayList paras = new ArrayList();
				paras.Add(DBUtils.MakeInParam("@Auth_ID", SqlDbType.Int, authid));
				paras.Add(DBUtils.MakeInParam("@Get_Action", SqlDbType.NVarChar, 10, DataGetAction.Row.ToString().ToLower()));

				SqlDataReader reader = DBUtils.ExecuteReader(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_BillAuthDetail", paras);
				
				if (reader.Read())
				{
					item = PopulateBillAuthDetail(reader);
				}

				reader.Close();
			}
			catch { throw; }

			return item;
		}

		public static void CreateUpdateDeleteBillAuthDetail(BillAuthDetail item, DataProviderAction action)
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
					paras.Add(DBUtils.MakeOutParam("@Auth_ID", SqlDbType.Int));
				}
				else
				{
					paras.Add(DBUtils.MakeInParam("@Auth_ID", SqlDbType.Int, item.AuthID));
				}
				paras.Add(DBUtils.MakeInParam("@Man_ID", SqlDbType.NVarChar, 6, item.ManID));
				paras.Add(DBUtils.MakeInParam("@Man_Name", SqlDbType.NVarChar, 10, item.ManName));
				paras.Add(DBUtils.MakeInParam("@Dept_ID", SqlDbType.NVarChar, 8, item.DeptID));
				paras.Add(DBUtils.MakeInParam("@Auth_Date", SqlDbType.DateTime, item.AuthDate));
				paras.Add(DBUtils.MakeInParam("@Auth_Man", SqlDbType.NVarChar, 6, item.AuthMan));
				paras.Add(DBUtils.MakeInParam("@Auth_Info", SqlDbType.NVarChar, 40, item.AuthInfo));
				paras.Add(DBUtils.MakeInParam("@Action", SqlDbType.Int, action));

				DBUtils.ExecuteNonQuery(conn, cmd, CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_CreateUpdateDelete_BillAuthDetail", paras);

				if (action == DataProviderAction.Create)
				{
					item.AuthID = ((((SqlParameter)paras[0]).Value != null) ? (Convert.ToInt32(((SqlParameter)paras[0]).Value)) : (int)0);
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

    public static void CreateUpdateDeleteBillAuthDetail(SqlConnection conn, SqlCommand cmd, BillAuthDetail item, DataProviderAction action)
    {
      if (item == null)
        return;

      try
      {
        ArrayList paras = new ArrayList();

        if (action == DataProviderAction.Create)
        {
          paras.Add(DBUtils.MakeOutParam("@Auth_ID", SqlDbType.Int));
        }
        else
        {
          paras.Add(DBUtils.MakeInParam("@Auth_ID", SqlDbType.Int, item.AuthID));
        }
        paras.Add(DBUtils.MakeInParam("@Man_ID", SqlDbType.NVarChar, 6, item.ManID));
        paras.Add(DBUtils.MakeInParam("@Man_Name", SqlDbType.NVarChar, 10, item.ManName));
        paras.Add(DBUtils.MakeInParam("@Dept_ID", SqlDbType.NVarChar, 8, item.DeptID));
        paras.Add(DBUtils.MakeInParam("@Auth_Date", SqlDbType.DateTime, item.AuthDate));
        paras.Add(DBUtils.MakeInParam("@Auth_Man", SqlDbType.NVarChar, 6, item.AuthMan));
        paras.Add(DBUtils.MakeInParam("@Auth_Info", SqlDbType.NVarChar, 40, item.AuthInfo));
        paras.Add(DBUtils.MakeInParam("@Action", SqlDbType.Int, action));

        DBUtils.ExecuteNonQuery(conn, cmd, CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_CreateUpdateDelete_BillAuthDetail", paras);

        if (action == DataProviderAction.Create)
        {
          item.AuthID = ((((SqlParameter)paras[0]).Value != null) ? (Convert.ToInt32(((SqlParameter)paras[0]).Value)) : (int)0);
        }
      }
      catch
      {
        throw;
      }
    }
	}
}
