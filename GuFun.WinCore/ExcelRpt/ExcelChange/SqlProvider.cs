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
		public static DataTable GetExcelChangeList()
		{
			DataTable tblMain;

			try
			{
				ArrayList paras = new ArrayList(); 
				paras.Add(DBUtils.MakeInParam("@Get_Action", SqlDbType.NVarChar, 10, DataGetAction.Full.ToString().ToLower()));

				tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_ExcelChange", paras);
				tblMain.TableName = "SelectMain";
			}
			catch { throw; }

			return tblMain;
		}

    public static DataTable GetBillExcelGetNothing()
    {
      DataTable tblMain;

      try
      {
        tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_BillExcelGetNothing");
        tblMain.TableName = "SelectMain";
      }
      catch { throw; }

      return tblMain;
    }

    public static DataTable GetBillExcelGetDetail(int changeid)
    {
      DataTable tblMain;

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Change_ID", SqlDbType.Int, changeid));

        tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_BillExcelGetDetail", paras);
        tblMain.TableName = "SelectMain";
      }
      catch { throw; }

      return tblMain;
    }

    public static DataTable SearchExcelChange(string source, string target)
    {
      DataTable tblMain;

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Source_Sql", SqlDbType.NVarChar, 300, source));
        paras.Add(DBUtils.MakeInParam("@Target_Sql", SqlDbType.NVarChar, 300, target));

        tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Search_ExcelChange", paras);
        tblMain.TableName = "SelectMain";
      }
      catch { throw; }

      return tblMain;
    }

		public static ExcelChange PopulateExcelChange(IDataReader reader)
		{
      ExcelChange item = new ExcelChange();
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

			return item;
		}

    public static ExcelChange GetExcelChange(int changeid)
		{
      ExcelChange item = new ExcelChange();
			
			try
			{
				ArrayList paras = new ArrayList();
				paras.Add(DBUtils.MakeInParam("@Change_ID", SqlDbType.Int, changeid));
				paras.Add(DBUtils.MakeInParam("@Get_Action", SqlDbType.NVarChar, 10, DataGetAction.Row.ToString().ToLower()));

				SqlDataReader reader = DBUtils.ExecuteReader(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_ExcelChange", paras);
				
				if (reader.Read())
				{
          item = PopulateExcelChange(reader);
				}

				reader.Close();
			}
			catch { throw; }

			return item;
		}

		public static void CreateUpdateDeleteExcelChange(ExcelChange item, DataProviderAction action)
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
				paras.Add(DBUtils.MakeInParam("@Action", SqlDbType.Int, action));

				DBUtils.ExecuteNonQuery(conn, cmd, CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_CreateUpdateDelete_ExcelChange", paras);

				if (action == DataProviderAction.Create)
				{
					item.ChangeID = ((((SqlParameter)paras[0]).Value != null) ? (Convert.ToInt32(((SqlParameter)paras[0]).Value)) : (int)0);
				}

        foreach (ExcelChangeData data in item.Items)
        {
          paras.Clear();
          paras.Add(DBUtils.MakeInParam("@Change_ID", SqlDbType.Int, item.ChangeID));
          paras.Add(DBUtils.MakeInParam("@Bill_No", SqlDbType.Int, data.BillNo));
          paras.Add(DBUtils.MakeInParam("@Man_ID", SqlDbType.NVarChar, 6, item.TargetMan));
          DBUtils.ExecuteNonQuery(conn, cmd, CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Insert_ExcelChangeDataByMan", paras);
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
