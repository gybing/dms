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
		public static DataTable GetBillDeptBackList()
		{
			DataTable tblMain;

			try
			{
				ArrayList paras = new ArrayList(); 
				paras.Add(DBUtils.MakeInParam("@Get_Action", SqlDbType.NVarChar, 10, DataGetAction.Full.ToString().ToLower()));

				tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_BillDeptBack", paras);
				tblMain.TableName = "SelectMain";
			}
			catch { throw; }

			return tblMain;
		}

    public static DataTable GetDeptBackList()
    {
      DataTable tblMain;

      try
      {
        tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_DeptBackList");
        tblMain.TableName = "SelectMain";
      }
      catch { throw; }

      return tblMain;
    }

    public static DataTable GetManBackList(string deptid)
    {
      DataTable tblMain;

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Dept_ID", SqlDbType.NVarChar, 8, deptid));

        tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_ManBackList", paras);
        tblMain.TableName = "SelectMain";
      }
      catch { throw; }

      return tblMain;
    }

		public static BillDeptBack PopulateBillDeptBack(IDataReader reader)
		{
			BillDeptBack item = new BillDeptBack();
			item.DeptID = reader["Dept_ID"] as string;
			item.DeptName = reader["Dept_Name"] as string;
			item.BackStandard = Convert.ToDouble(reader["Back_Standard"]);
			item.BackPercent = (short)reader["Back_Percent"];
			item.BackMax = Convert.ToDouble(reader["Back_Max"]);
			item.BackMin = Convert.ToDouble(reader["Back_Min"]);
			item.CrtDate = Convert.ToDateTime(reader["Crt_Date"]);
			item.ManID = reader["Man_ID"] as string;
			item.ManName = reader["Man_Name"] as string;

			return item;
		}

		public static BillDeptBack GetBillDeptBack(string deptid)
		{
			BillDeptBack item = new BillDeptBack();
			
			try
			{
				ArrayList paras = new ArrayList();
				paras.Add(DBUtils.MakeInParam("@Dept_ID", SqlDbType.NVarChar, 8, deptid));
				paras.Add(DBUtils.MakeInParam("@Get_Action", SqlDbType.NVarChar, 10, DataGetAction.Row.ToString().ToLower()));

				SqlDataReader reader = DBUtils.ExecuteReader(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_BillDeptBack", paras);
				
				if (reader.Read())
				{
					item = PopulateBillDeptBack(reader);
				}

				reader.Close();
			}
			catch { throw; }

			return item;
		}

		public static void CreateUpdateDeleteBillDeptBack(BillDeptBack item, DataProviderAction action)
		{
			if (item == null)
				return;

			SqlConnection conn = DBUtils.GetConnection();
			SqlCommand cmd = DBUtils.GetCommand();

			try
			{
				cmd.Transaction = conn.BeginTransaction();

				ArrayList paras = new ArrayList();

				paras.Add(DBUtils.MakeInParam("@Dept_ID", SqlDbType.NVarChar, 8, item.DeptID));
				paras.Add(DBUtils.MakeInParam("@Back_Standard", SqlDbType.Decimal, item.BackStandard));
				paras.Add(DBUtils.MakeInParam("@Back_Percent", SqlDbType.SmallInt, item.BackPercent));
				paras.Add(DBUtils.MakeInParam("@Back_Max", SqlDbType.Decimal, item.BackMax));
				paras.Add(DBUtils.MakeInParam("@Back_Min", SqlDbType.Decimal, item.BackMin));
				paras.Add(DBUtils.MakeInParam("@Crt_Date", SqlDbType.DateTime, item.CrtDate));
				paras.Add(DBUtils.MakeInParam("@Man_ID", SqlDbType.NVarChar, 6, item.ManID));
				paras.Add(DBUtils.MakeInParam("@Action", SqlDbType.Int, action));

				DBUtils.ExecuteNonQuery(conn, cmd, CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_CreateUpdateDelete_BillDeptBack", paras);

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

    public static void CreateUpdateDeleteBillDeptBack(BillDeptBacks items)
    {
      if (items == null)
        return;

      SqlConnection conn = DBUtils.GetConnection();
      SqlCommand cmd = DBUtils.GetCommand();

      try
      {
        cmd.Transaction = conn.BeginTransaction();

        ArrayList paras = new ArrayList();

        foreach (BillDeptBack item in items)
        {
          paras.Clear();
          paras.Add(DBUtils.MakeInParam("@Dept_ID", SqlDbType.NVarChar, 8, item.DeptID));
          paras.Add(DBUtils.MakeInParam("@Back_Standard", SqlDbType.Decimal, item.BackStandard));
          paras.Add(DBUtils.MakeInParam("@Back_Percent", SqlDbType.SmallInt, item.BackPercent));
          paras.Add(DBUtils.MakeInParam("@Back_Max", SqlDbType.Decimal, item.BackMax));
          paras.Add(DBUtils.MakeInParam("@Back_Min", SqlDbType.Decimal, item.BackMin));
          paras.Add(DBUtils.MakeInParam("@Man_ID", SqlDbType.NVarChar, 6, item.ManID));
          paras.Add(DBUtils.MakeInParam("@Action", SqlDbType.Int, DataProviderAction.Create));

          DBUtils.ExecuteNonQuery(conn, cmd, CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_CreateUpdateDelete_BillDeptBack", paras);
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
