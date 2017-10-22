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
		public static DataTable GetBillDeptList()
		{
			DataTable tblMain;

			try
			{
				ArrayList paras = new ArrayList(); 
				paras.Add(DBUtils.MakeInParam("@Get_Action", SqlDbType.NVarChar, 10, DataGetAction.Full.ToString().ToLower()));

				tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_BillDept", paras);
				tblMain.TableName = "SelectMain";
			}
			catch { throw; }

			return tblMain;
		}

    public static DataTable SelectBillDept(string search, string deptid)
    {
      DataTable tblMain;

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Dept_ID", SqlDbType.NVarChar, 8, deptid));
        paras.Add(DBUtils.MakeInParam("@Search", SqlDbType.NVarChar, 200, search));

        tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Select_BillDept", paras);
        tblMain.TableName = "SelectMain";
      }
      catch { throw; }

      return tblMain;
    }

    public static DataTable GetSelfDept(string deptid)
    {
      DataTable tblMain;

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Dept_ID", SqlDbType.NVarChar, 6, deptid));

        tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_SelfDept", paras);
        tblMain.TableName = "SelectMain";
      }
      catch { throw; }

      return tblMain;
    }

    public static DataTable GetDefaultDeptList(string deptid, BillType type)
    {
      DataTable tblMain;

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Dept_ID", SqlDbType.NVarChar, 6, deptid));
        paras.Add(DBUtils.MakeInParam("@Bill_Type", SqlDbType.SmallInt, (short)type));

        tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_DefaultDeptList", paras);
        tblMain.TableName = "SelectMain";
      }
      catch { throw; }

      return tblMain;
    }

    public static DataTable GetDefaultDeptAll(string deptid)
    {
      DataTable tblMain;

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Dept_ID", SqlDbType.NVarChar, 6, deptid));

        tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_DefaultDeptAll", paras);
        tblMain.TableName = "SelectMain";
      }
      catch { throw; }

      return tblMain;
    }

    public static DataTable GetPageBillDept(PageBillDept item)
    {
      DataTable tblMain;

      try
      {
        ArrayList paras = new ArrayList();
        if (!String.IsNullOrEmpty(item.DeptID))
          paras.Add(DBUtils.MakeInParam("@Dept_ID", SqlDbType.NVarChar, 6, item.DeptID));
        if (!String.IsNullOrEmpty(item.Search))
          paras.Add(DBUtils.MakeInParam("@Search", SqlDbType.NVarChar, 200, item.Search));
        paras.Add(DBUtils.MakeInParam("@PageRow", SqlDbType.Int, item.PageRow));
        paras.Add(DBUtils.MakeInParam("@FirstCount", SqlDbType.Int, item.FirstCount));
        paras.Add(DBUtils.MakeOutParam("@AllCount", SqlDbType.Int));

        tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Page_BillDept", paras);
        tblMain.TableName = "SelectMain";

        if (paras.Count > 0)
          item.AllCount = ((((SqlParameter)paras[paras.Count - 1]).Value != DBNull.Value) ? (Convert.ToInt32(((SqlParameter)paras[paras.Count - 1]).Value)) : (int)0);
      }
      catch { throw; }

      return tblMain;
    }

		public static BillDept PopulateBillDept(IDataReader reader)
		{
			BillDept item = new BillDept();
			item.ID = (int)reader["Bill_Dept"];
			item.BillDeptName = reader["Bill_Dept_Name"] as string;
			item.BillDeptShort = reader["Bill_Dept_Short"] as string;
			item.BillDeptCn = reader["Bill_Dept_Cn"] as string;
			item.BankID = (short)reader["Bank_ID"];
			item.BankName = reader["Bank_Name"] as string;
			item.BankFullName = reader["Bank_Full_Name"] as string;
			item.BankAccount = reader["Bank_Account"] as string;
			item.IsSelf = Convert.ToBoolean(reader["Is_Self"]);
			item.DeptID = reader["Dept_ID"] as string;
			item.DeptName = reader["Dept_Name"] as string;
			if (reader["Cust_ID"] != DBNull.Value)
				item.CustID = reader["Cust_ID"] as string;
			item.CrtDate = Convert.ToDateTime(reader["Crt_Date"]);
			item.ManID = reader["Man_ID"] as string;
      item.BillDeptStatus = (short)reader["Bill_Dept_Status"];
      item.IsSelfName = reader["Is_Self_Name"] as string;
      if (reader["Link_Man"] != DBNull.Value)
        item.LinkMan = reader["Link_Man"] as string;
      if (reader["Link_Tele"] != DBNull.Value)
        item.LinkTele = reader["Link_Tele"] as string;
			return item;
		}

		public static BillDept GetBillDept(int id)
		{
			BillDept item = new BillDept();
			
			try
			{
				ArrayList paras = new ArrayList();
				paras.Add(DBUtils.MakeInParam("@Bill_Dept", SqlDbType.Int, id));
				paras.Add(DBUtils.MakeInParam("@Get_Action", SqlDbType.NVarChar, 10, DataGetAction.Row.ToString().ToLower()));

				SqlDataReader reader = DBUtils.ExecuteReader(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_BillDept", paras);
				
				if (reader.Read())
				{
					item = PopulateBillDept(reader);
				}

				reader.Close();
			}
			catch { throw; }

			return item;
		}

		public static void CreateUpdateDeleteBillDept(BillDept item, DataProviderAction action)
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
					paras.Add(DBUtils.MakeOutParam("@Bill_Dept", SqlDbType.Int));
				}
				else
				{
					paras.Add(DBUtils.MakeInParam("@Bill_Dept", SqlDbType.Int, item.ID));
				}
				paras.Add(DBUtils.MakeInParam("@Bill_Dept_Name", SqlDbType.NVarChar, 40, item.BillDeptName));
				paras.Add(DBUtils.MakeInParam("@Bill_Dept_Short", SqlDbType.NVarChar, 20, item.BillDeptShort));
				paras.Add(DBUtils.MakeInParam("@Bill_Dept_Cn", SqlDbType.NVarChar, 40, item.BillDeptCn));
				paras.Add(DBUtils.MakeInParam("@Bank_ID", SqlDbType.SmallInt, item.BankID));
				paras.Add(DBUtils.MakeInParam("@Bank_Full_Name", SqlDbType.NVarChar, 30, item.BankFullName));
				paras.Add(DBUtils.MakeInParam("@Bank_Account", SqlDbType.NVarChar, 30, item.BankAccount));
				paras.Add(DBUtils.MakeInParam("@Is_Self", SqlDbType.Bit, item.IsSelf));
				paras.Add(DBUtils.MakeInParam("@Dept_ID", SqlDbType.NVarChar, 6, item.DeptID));
				paras.Add(DBUtils.MakeInParam("@Cust_ID", SqlDbType.NVarChar, 20, item.CustID));
				paras.Add(DBUtils.MakeInParam("@Crt_Date", SqlDbType.DateTime, item.CrtDate));
				paras.Add(DBUtils.MakeInParam("@Man_ID", SqlDbType.NVarChar, 6, item.ManID));
        paras.Add(DBUtils.MakeInParam("@Bill_Dept_Status", SqlDbType.SmallInt, item.BillDeptStatus));
        paras.Add(DBUtils.MakeInParam("@Bill_Search", SqlDbType.NVarChar, 80, item.BillDeptName+item.BillDeptCn));
        paras.Add(DBUtils.MakeInParam("@Link_Man", SqlDbType.NVarChar, 30, item.LinkMan));
        paras.Add(DBUtils.MakeInParam("@Link_Tele", SqlDbType.NVarChar, 30, item.LinkTele));
				paras.Add(DBUtils.MakeInParam("@Action", SqlDbType.Int, action));

				DBUtils.ExecuteNonQuery(conn, cmd, CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_CreateUpdateDelete_BillDept", paras);

				if (action == DataProviderAction.Create)
				{
					item.ID = ((((SqlParameter)paras[0]).Value != null) ? (Convert.ToInt32(((SqlParameter)paras[0]).Value)) : (int)0);
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
