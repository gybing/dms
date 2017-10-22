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
		public static DataTable GetBillExcelList()
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

    public static DataTable SearchBillExcel(string search, string search1)
    {
      DataTable tblMain;

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Search", SqlDbType.NVarChar, 300, search));
        paras.Add(DBUtils.MakeInParam("@Search1", SqlDbType.NVarChar, 300, search1));

        tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Search_BillExcel", paras);
        tblMain.TableName = "SelectMain";
      }
      catch { throw; }

      return tblMain;
    }


		public static BillExcel PopulateBillExcel(IDataReader reader)
		{
      BillExcel item = new BillExcel();
			item.BillNo = (int)reader["Bill_No"];
      item.BillMan = reader["Bill_Man"] as string;
      item.BillManName = reader["Bill_Man_Name"] as string;
      item.DeptID = reader["Dept_ID"] as string;
      item.BillDate = Convert.ToDateTime(reader["Bill_Date"]);
      item.ExcelStatus = (short)reader["Excel_Status"];
      item.ExcelNowStatus = (short)reader["Excel_Now_Status"];
      item.IsPrint = Convert.ToBoolean(reader["Is_Print"]);
      if (reader["File_Name"] != DBNull.Value)
        item.FileName = reader["File_Name"] as string;
			return item;
		}

    public static BillExcel GetBillExcel(int billno)
		{
      BillExcel item = new BillExcel();
			
			try
			{
				ArrayList paras = new ArrayList();
				paras.Add(DBUtils.MakeInParam("@Bill_No", SqlDbType.Int, billno));
				paras.Add(DBUtils.MakeInParam("@Get_Action", SqlDbType.NVarChar, 10, DataGetAction.Row.ToString().ToLower()));

        SqlDataReader reader = DBUtils.ExecuteReader(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_BillExcel", paras);
				
				if (reader.Read())
				{
          item = PopulateBillExcel(reader);
				}

				reader.Close();
			}
			catch { throw; }

			return item;
		}


    public static void CreateUpdateDeleteBillExcel(BillExcel item, BillExcelDetails details, DataProviderAction action)
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
				paras.Add(DBUtils.MakeInParam("@Bill_Man", SqlDbType.NVarChar, 6, item.BillMan));
				paras.Add(DBUtils.MakeInParam("@Bill_Man_Name", SqlDbType.NVarChar, 10, item.BillManName));
				paras.Add(DBUtils.MakeInParam("@Dept_ID", SqlDbType.NVarChar, 8, item.DeptID));
        if (item.BillDate > DateTime.MinValue)
				  paras.Add(DBUtils.MakeInParam("@Bill_Date", SqlDbType.DateTime, Publics.GetDataDateTime(item.BillDate)));
				paras.Add(DBUtils.MakeInParam("@Excel_Status", SqlDbType.SmallInt, item.ExcelStatus));
        paras.Add(DBUtils.MakeInParam("@Excel_Now_Status", SqlDbType.SmallInt, item.ExcelNowStatus));
				paras.Add(DBUtils.MakeInParam("@Is_Print", SqlDbType.Bit, item.IsPrint));
				paras.Add(DBUtils.MakeInParam("@File_Name", SqlDbType.NVarChar, 50, item.FileName));
				paras.Add(DBUtils.MakeInParam("@Action", SqlDbType.SmallInt, action));

        DBUtils.ExecuteNonQuery(conn, cmd, CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_CreateUpdateDelete_BillExcel", paras);

				if (action == DataProviderAction.Create)
				{
					item.BillNo = ((((SqlParameter)paras[0]).Value != null) ? (Convert.ToInt32(((SqlParameter)paras[0]).Value)) : (int)0);
        }

        paras.Clear();
        paras.Add(DBUtils.MakeInParam("@Bill_No", SqlDbType.Int, item.BillNo));
        paras.Add(DBUtils.MakeInParam("@Action", SqlDbType.SmallInt, DataProviderAction.Delete));
        DBUtils.ExecuteNonQuery(conn, cmd, CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_CreateUpdateDelete_BillExcel", paras);

        foreach (BillExcelDetail detail in details)
        {
          detail.BillNo = item.BillNo;
        }

        SqlBaseProvider.CreateUpdateDeleteBillExcelDetail(conn, cmd, details, action);

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

    public static void PrintBillExcel(BillExcel item)
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
        paras.Add(DBUtils.MakeInParam("@Bill_Man", SqlDbType.NVarChar, 6, item.BillMan));
        paras.Add(DBUtils.MakeInParam("@Bill_Man_Name", SqlDbType.NVarChar, 10, item.BillManName));
        paras.Add(DBUtils.MakeInParam("@Dept_ID", SqlDbType.NVarChar, 8, item.DeptID));
        paras.Add(DBUtils.MakeInParam("@Excel_Now_Status", SqlDbType.SmallInt, item.ExcelNowStatus));

        DBUtils.ExecuteNonQuery(conn, cmd, CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Print_BillExcel", paras);

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

    public static void AcceptBillExcel(BillExcel item)
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
        paras.Add(DBUtils.MakeInParam("@Bill_Man", SqlDbType.NVarChar, 6, item.BillMan));
        paras.Add(DBUtils.MakeInParam("@Bill_Man_Name", SqlDbType.NVarChar, 10, item.BillManName));
        paras.Add(DBUtils.MakeInParam("@Dept_ID", SqlDbType.NVarChar, 8, item.DeptID));
        paras.Add(DBUtils.MakeInParam("@Excel_Now_Status", SqlDbType.SmallInt, item.ExcelNowStatus));

        DBUtils.ExecuteNonQuery(conn, cmd, CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Accept_BillExcel", paras);

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
