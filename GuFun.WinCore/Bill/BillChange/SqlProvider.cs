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
		public static DataTable GetBillChangeList()
		{
			DataTable tblMain;

			try
			{
				ArrayList paras = new ArrayList(); 
				paras.Add(DBUtils.MakeInParam("@Get_Action", SqlDbType.NVarChar, 10, DataGetAction.Full.ToString().ToLower()));

				tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_BillChange", paras);
				tblMain.TableName = "SelectMain";
			}
			catch { throw; }

			return tblMain;
		}

    public static DataTable GetBillGetNothing()
    {
      DataTable tblMain;

      try
      {
        tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_BillGetNothing");
        tblMain.TableName = "SelectMain";
      }
      catch { throw; }

      return tblMain;
    }

    public static DataTable GetBillGetDetail(int changeid)
    {
      DataTable tblMain;

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Change_ID", SqlDbType.Int, changeid));

        tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_BillGetDetail", paras);
        tblMain.TableName = "SelectMain";
      }
      catch { throw; }

      return tblMain;
    }

    public static DataTable GetBillGetBatchLast(int changeid)
    {
      DataTable tblMain;

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Change_ID", SqlDbType.Int, changeid));

        tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_BillGetBatchLast", paras);
        tblMain.TableName = "SelectMain";
      }
      catch { throw; }

      return tblMain;
    }


    public static DataTable GetBillGetBatch(string deptid, string date)
    {
      DataTable tblMain;

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Dept_ID", SqlDbType.NVarChar, 6, deptid));
        paras.Add(DBUtils.MakeInParam("@Search", SqlDbType.NVarChar, 100, date));

        tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_BillGetBatch", paras);
        tblMain.TableName = "SelectMain";
      }
      catch { throw; }

      return tblMain;
    }

    public static DataTable GetBillGetBatchMan(string userman, string date)
    {
      DataTable tblMain;

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Man_ID", SqlDbType.NVarChar, 6, userman));
        paras.Add(DBUtils.MakeInParam("@Search", SqlDbType.NVarChar, 100, date));

        tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_BillGetBatchMan", paras);
        tblMain.TableName = "SelectMain";
      }
      catch { throw; }

      return tblMain;
    }

    public static DataTable SearchBillChange(string source, string target)
    {
      DataTable tblMain;

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Source_Sql", SqlDbType.NVarChar, 300, source));
        paras.Add(DBUtils.MakeInParam("@Target_Sql", SqlDbType.NVarChar, 300, target));

        tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Search_BillChange", paras);
        tblMain.TableName = "SelectMain";
      }
      catch { throw; }

      return tblMain;
    }

		public static BillChange PopulateBillChange(IDataReader reader)
		{
			BillChange item = new BillChange();
			item.ChangeID = (int)reader["Change_ID"];
			item.TargetMan = reader["Target_Man"] as string;
			item.TargetManName = reader["Target_Man_Name"] as string;
			item.TargetDept = reader["Target_Dept"] as string;
			item.SourceMan = reader["Source_Man"] as string;
			item.SourceManName = reader["Source_Man_Name"] as string;
			item.SourceDept = reader["Source_Dept"] as string;
			item.DeptName = reader["Dept_Name"] as string;
			item.ChangeDate = Convert.ToDateTime(reader["Change_Date"]);
      item.Cnt = (int)reader["Cnt"];
      item.EnAmount = Convert.ToDouble(reader["En_Amount"]);

			return item;
		}

		public static BillChange GetBillChange(int changeid)
		{
			BillChange item = new BillChange();
			
			try
			{
				ArrayList paras = new ArrayList();
				paras.Add(DBUtils.MakeInParam("@Change_ID", SqlDbType.Int, changeid));
				paras.Add(DBUtils.MakeInParam("@Get_Action", SqlDbType.NVarChar, 10, DataGetAction.Row.ToString().ToLower()));

				SqlDataReader reader = DBUtils.ExecuteReader(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_BillChange", paras);
				
				if (reader.Read())
				{
					item = PopulateBillChange(reader);
				}

				reader.Close();
			}
			catch { throw; }

			return item;
		}

		public static void CreateUpdateDeleteBillChange(BillChange item, DataProviderAction action)
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
					paras.Add(DBUtils.MakeOutParam("@Change_ID", SqlDbType.Int));
				}
				else
				{
					paras.Add(DBUtils.MakeInParam("@Change_ID", SqlDbType.Int, item.ChangeID));
				}
				paras.Add(DBUtils.MakeInParam("@Target_Man", SqlDbType.NVarChar, 6, item.TargetMan));
				paras.Add(DBUtils.MakeInParam("@Target_Man_Name", SqlDbType.NVarChar, 10, item.TargetManName));
				paras.Add(DBUtils.MakeInParam("@Target_Dept", SqlDbType.NVarChar, 8, item.TargetDept));
				paras.Add(DBUtils.MakeInParam("@Source_Man", SqlDbType.NVarChar, 6, item.SourceMan));
				paras.Add(DBUtils.MakeInParam("@Source_Man_Name", SqlDbType.NVarChar, 10, item.SourceManName));
				paras.Add(DBUtils.MakeInParam("@Source_Dept", SqlDbType.NVarChar, 8, item.SourceDept));
				paras.Add(DBUtils.MakeInParam("@Change_Date", SqlDbType.DateTime, item.ChangeDate));
        paras.Add(DBUtils.MakeInParam("@Cnt", SqlDbType.Int, item.Cnt));
        paras.Add(DBUtils.MakeInParam("@En_Amount", SqlDbType.Decimal, item.EnAmount));
				paras.Add(DBUtils.MakeInParam("@Action", SqlDbType.Int, action));

				DBUtils.ExecuteNonQuery(conn, cmd, CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_CreateUpdateDelete_BillChange", paras);

				if (action == DataProviderAction.Create)
				{
					item.ChangeID = ((((SqlParameter)paras[0]).Value != null) ? (Convert.ToInt32(((SqlParameter)paras[0]).Value)) : (int)0);
				}

        foreach (BillChangeData data in item.Items)
        {
          paras.Clear();
          paras.Add(DBUtils.MakeInParam("@Change_ID", SqlDbType.Int, item.ChangeID));
          paras.Add(DBUtils.MakeInParam("@Bill_No", SqlDbType.Int, data.BillNo));
          paras.Add(DBUtils.MakeInParam("@Man_ID", SqlDbType.NVarChar, 6, item.TargetMan));
          DBUtils.ExecuteNonQuery(conn, cmd, CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Insert_BillChangeDataByMan", paras);
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
