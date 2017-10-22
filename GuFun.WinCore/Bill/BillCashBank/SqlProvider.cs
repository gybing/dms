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
		public static DataTable GetBillCashBankList()
		{
			DataTable tblMain;

			try
			{
				ArrayList paras = new ArrayList(); 
				paras.Add(DBUtils.MakeInParam("@Get_Action", SqlDbType.NVarChar, 10, DataGetAction.Full.ToString().ToLower()));

				tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_BillCashBank", paras);
				tblMain.TableName = "SelectMain";
			}
			catch { throw; }

			return tblMain;
		}

    public static DataTable SearchBillCashBank(string sql)
    {
      DataTable tblMain;

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Search", SqlDbType.NVarChar, 300, sql));

        tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Search_BankCash", paras);
        tblMain.TableName = "SelectMain";
      }
      catch { throw; }

      return tblMain;
    }

    public static DataTable GetBillCashBankDetail(string deptid, string workdate)
    {
      DataTable tblMain;

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Dept_ID", SqlDbType.NVarChar, 8, deptid));
        if (!String.IsNullOrEmpty(workdate))
          paras.Add(DBUtils.MakeInParam("@Work_Date", SqlDbType.NVarChar, 8, workdate));

        tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_BillCashBankDetail", paras);
        tblMain.TableName = "SelectMain";
      }
      catch { throw; }

      return tblMain;
    }

    public static double GetBillCashBankMan(string manid, string workdate)
    {
      double rtn = 0;

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Man_ID", SqlDbType.NVarChar, 6, manid));
        paras.Add(DBUtils.MakeInParam("@Work_Date", SqlDbType.NVarChar, 8, workdate));

        SqlDataReader reader = DBUtils.ExecuteReader(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_CashBankDetailByMan", paras);

        if (reader.Read())
        {
          if (reader["En_Amount"] != DBNull.Value)
            rtn = Convert.ToDouble(reader["En_Amount"]);
        }
      }
      catch { throw; }

      return rtn;
    }

    public static double GetBillCashLastBankMan(string manid, string workdate)
    {
      double rtn = 0;

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Man_ID", SqlDbType.NVarChar, 6, manid));
        paras.Add(DBUtils.MakeInParam("@Work_Date", SqlDbType.NVarChar, 8, workdate));

        SqlDataReader reader = DBUtils.ExecuteReader(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_CashBankLastByMan", paras);

        if (reader.Read())
        {
          if (reader["En_Amount"] != DBNull.Value)
            rtn = Convert.ToDouble(reader["En_Amount"]);
        }
      }
      catch { throw; }

      return rtn;
    }

    public static double GetBillCashRelaMan(string manid, string workdate)
    {
      double rtn = 0;

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Man_ID", SqlDbType.NVarChar, 6, manid));
        paras.Add(DBUtils.MakeInParam("@Begin_Date", SqlDbType.DateTime, Publics.GetFmtDateTime(workdate + " 00:00:00", "yyyyMMdd HH:mm:ss")));
        paras.Add(DBUtils.MakeInParam("@End_Date", SqlDbType.DateTime, Publics.GetFmtDateTime(workdate + " 23:59:59", "yyyyMMdd HH:mm:ss")));

        SqlDataReader reader = DBUtils.ExecuteReader(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_CashRelaSumByMan", paras);

        if (reader.Read())
        {
          if (reader["En_Amount"] != DBNull.Value)
            rtn = Convert.ToDouble(reader["En_Amount"]);
        }
      }
      catch { throw; }

      return rtn;
    }

    public static DataTable GetBillCashBankDetail(int sendid)
    {
      DataTable tblMain;

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Send_ID", SqlDbType.Int, sendid));

        tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_CashBankDetailByID", paras);
        tblMain.TableName = "SelectMain";
      }
      catch { throw; }

      return tblMain;
    }

		public static BillCashBank PopulateBillCashBank(IDataReader reader)
		{
			BillCashBank item = new BillCashBank();
			item.SendID = (int)reader["Send_ID"];
			item.DeptID = reader["Dept_ID"] as string;
			item.DeptName = reader["Dept_Name"] as string;
			item.ManID = reader["Man_ID"] as string;
			item.SendDate = Convert.ToDateTime(reader["Send_Date"]);
			item.WorkDate = reader["Work_Date"] as string;
      
			return item;
		}

		public static BillCashBank GetBillCashBank(int sendid)
		{
			BillCashBank item = new BillCashBank();
			
			try
			{
				ArrayList paras = new ArrayList();
				paras.Add(DBUtils.MakeInParam("@Send_ID", SqlDbType.Int, sendid));
				paras.Add(DBUtils.MakeInParam("@Get_Action", SqlDbType.NVarChar, 10, DataGetAction.Row.ToString().ToLower()));

				SqlDataReader reader = DBUtils.ExecuteReader(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_BillCashBank", paras);
				
				if (reader.Read())
				{
					item = PopulateBillCashBank(reader);
				}

				reader.Close();
			}
			catch { throw; }

			return item;
		}

    public static BillCashBank GetBillCashBank(string deptid)
    {
      BillCashBank item = new BillCashBank();

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Dept_ID", SqlDbType.NVarChar, 8, deptid));

        SqlDataReader reader = DBUtils.ExecuteReader(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_BillCashBankByDept", paras);

        if (reader.Read())
        {
          item = PopulateBillCashBank(reader);
        }

        reader.Close();
      }
      catch { throw; }

      return item;
    }

		public static void CreateUpdateDeleteBillCashBank(BillCashBank item, DataProviderAction action)
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
					paras.Add(DBUtils.MakeOutParam("@Send_ID", SqlDbType.Int));
				}
				else
				{
					paras.Add(DBUtils.MakeInParam("@Send_ID", SqlDbType.Int, item.SendID));
				}
				paras.Add(DBUtils.MakeInParam("@Dept_ID", SqlDbType.NVarChar, 8, item.DeptID));
				paras.Add(DBUtils.MakeInParam("@Man_ID", SqlDbType.NVarChar, 6, item.ManID));
				paras.Add(DBUtils.MakeInParam("@Send_Date", SqlDbType.DateTime, item.SendDate));
				paras.Add(DBUtils.MakeInParam("@Work_Date", SqlDbType.NVarChar, 8, item.WorkDate));        
				paras.Add(DBUtils.MakeInParam("@Action", SqlDbType.Int, action));

				DBUtils.ExecuteNonQuery(conn, cmd, CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_CreateUpdateDelete_BillCashBank", paras);

				if (action == DataProviderAction.Create)
				{
					item.SendID = ((((SqlParameter)paras[0]).Value != null) ? (Convert.ToInt32(((SqlParameter)paras[0]).Value)) : (int)0);
				}

        for (int i = 0; i < item.BillNo.Count; i++)
        {
          paras.Clear();
          paras.Add(DBUtils.MakeInParam("@Send_ID", SqlDbType.Int, item.SendID));
          paras.Add(DBUtils.MakeInParam("@Bill_No", SqlDbType.Int, Convert.ToInt32(item.BillNo[i])));
          DBUtils.ExecuteNonQuery(conn, cmd, CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Create_BillCashBankDetail", paras);
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
