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
		public static DataTable GetBillGetList()
		{
			DataTable tblMain;

			try
			{
				ArrayList paras = new ArrayList(); 
				paras.Add(DBUtils.MakeInParam("@Get_Action", SqlDbType.NVarChar, 10, DataGetAction.ValidList.ToString().ToLower()));

				tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_BillGet", paras);
				tblMain.TableName = "SelectMain";
			}
			catch { throw; }

			return tblMain;
		}

    public static DataTable GetBillGetList(string manid)
    {
      DataTable tblMain;

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Man_ID", SqlDbType.NVarChar, 6, manid));
        paras.Add(DBUtils.MakeInParam("@Get_Action", SqlDbType.NVarChar, 10, DataGetAction.Condition.ToString().ToLower()));

        tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_BillGet", paras);
        tblMain.TableName = "SelectMain";
      }
      catch { throw; }

      return tblMain;
    }

    public static DataTable GetBillGetListAll()
    {
      DataTable tblMain;

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Get_Action", SqlDbType.NVarChar, 10, DataGetAction.Full.ToString().ToLower()));

        tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_BillGet", paras);
        tblMain.TableName = "SelectMain";
      }
      catch { throw; }

      return tblMain;
    }

		public static BillGet PopulateBillGet(IDataReader reader)
		{
			BillGet item = new BillGet();
			item.BillNo = (int)reader["Bill_No"];
			item.ActBillNo = reader["Act_Bill_No"] as string;
			item.ManID = reader["Man_ID"] as string;
			item.ManName = reader["Man_Name"] as string;
			item.GetDate = Convert.ToDateTime(reader["Get_Date"]);
			item.IsGet = Convert.ToBoolean(reader["Is_Get"]);
      item.BillStatus = (short)reader["Bill_Status"];
      item.BillType = (short)reader["Bill_Type"];
      item.BillTypeName = reader["Bill_Type_Name"] as string;
      item.BankID = (short)reader["Bank_ID"];
      item.BankName = reader["Bank_Name"] as string;
      item.OperType = (short)reader["Oper_Type"];
      item.OperTypeName = reader["Oper_Type_Name"] as string;
      item.EnDate = reader["En_Date"] as string;
      item.EnYearMonth = reader["En_Year_Month"] as string;
      item.EnAmount = Convert.ToDouble(reader["En_Amount"]);
      item.RelaAmount = Convert.ToDouble(reader["Rela_Amount"]);
      item.SumAmount = Convert.ToDouble(reader["Sum_Amount"]);
      if (reader["Before_Man"] != DBNull.Value)
        item.BeforeMan = reader["Before_Man"] as string;
      if (reader["Before_Man_Name"] != DBNull.Value)
        item.BeforeManName = reader["Before_Man_Name"] as string;
      if (reader["Before_Dept"] != DBNull.Value)
        item.BeforeDept = reader["Before_Dept"] as string;
      if (reader["Dept_ID"] != DBNull.Value)
        item.DeptID = reader["Dept_ID"] as string;
      item.BillNowStatus = (short)reader["Bill_Now_Status"];
      if (reader["Send_Date"] != DBNull.Value)
        item.SendDate = Convert.ToDateTime(reader["Send_Date"]);
			return item;
		}

		public static BillGet GetBillGet(int billno, string manid)
		{
			BillGet item = new BillGet();
			
			try
			{
				ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Bill_No", SqlDbType.Int, billno));
        paras.Add(DBUtils.MakeInParam("@Man_ID", SqlDbType.NVarChar, 6, manid));
				paras.Add(DBUtils.MakeInParam("@Get_Action", SqlDbType.NVarChar, 10, DataGetAction.Row.ToString().ToLower()));

				SqlDataReader reader = DBUtils.ExecuteReader(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_BillGet", paras);
				
				if (reader.Read())
				{
					item = PopulateBillGet(reader);
				}

				reader.Close();
			}
			catch { throw; }

			return item;
		}

		public static void CreateUpdateDeleteBillGet(BillGet item, DataProviderAction action)
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
				paras.Add(DBUtils.MakeInParam("@Get_Date", SqlDbType.DateTime, item.GetDate));
				paras.Add(DBUtils.MakeInParam("@Is_Get", SqlDbType.Bit, item.IsGet));
        paras.Add(DBUtils.MakeInParam("@Before_Man", SqlDbType.NVarChar, 6, item.BeforeMan));
        paras.Add(DBUtils.MakeInParam("@Before_Man_Name", SqlDbType.NVarChar, 10, item.BeforeManName));
        paras.Add(DBUtils.MakeInParam("@Before_Dept", SqlDbType.NVarChar, 8, item.BeforeDept));
        paras.Add(DBUtils.MakeInParam("@Dept_ID", SqlDbType.NVarChar, 8, item.DeptID));
        paras.Add(DBUtils.MakeInParam("@Bill_Now_Status", SqlDbType.SmallInt, item.BillNowStatus));
				paras.Add(DBUtils.MakeInParam("@Action", SqlDbType.Int, action));

				DBUtils.ExecuteNonQuery(conn, cmd, CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_CreateUpdateDelete_BillGet", paras);

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
