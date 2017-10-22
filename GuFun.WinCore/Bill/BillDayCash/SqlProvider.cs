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
		public static DataTable GetBillDayCashList()
		{
			DataTable tblMain;

			try
			{
				ArrayList paras = new ArrayList(); 
				paras.Add(DBUtils.MakeInParam("@Get_Action", SqlDbType.NVarChar, 10, DataGetAction.Full.ToString().ToLower()));

				tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_BillDayCash", paras);
				tblMain.TableName = "SelectMain";
			}
			catch { throw; }

			return tblMain;
		}

    public static DataTable SearcBillDayCashList(string search)
    {
      DataTable tblMain;

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Search", SqlDbType.NVarChar, 200, search));

        tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Search_BillDayCash", paras);
        tblMain.TableName = "SelectMain";
      }
      catch { throw; }

      return tblMain;
    }

		public static BillDayCash PopulateBillDayCash(IDataReader reader)
		{
			BillDayCash item = new BillDayCash();
			item.ManID = reader["Man_ID"] as string;
			item.ManName = reader["Man_Name"] as string;
			item.DeptID = reader["Dept_ID"] as string;
			item.DeptName = reader["Dept_Name"] as string;
			item.DayCash = Convert.ToDouble(reader["Day_Cash"]);
      item.BeforeCash = Convert.ToDouble(reader["Before_Cash"]);
      item.PreWorkDate = reader["Pre_Work_Date"] as string;
			item.RecoDate = Convert.ToDateTime(reader["Reco_Date"]);
			item.DayCashDay = reader["Day_Cash_Day"] as string;
			item.RecoMan = reader["Reco_Man"] as string;
			item.RecoManName = reader["Reco_Man_Name"] as string;
      item.BackCash = Convert.ToDouble(reader["Back_Cash"]);
      item.BeforeAmount = Convert.ToDouble(reader["Before_Amount"]);
      item.BeforeBack = Convert.ToDouble(reader["Before_Back"]);
      item.BeforeLast = Convert.ToDouble(reader["Before_Last"]);
      item.DayAmount = Convert.ToDouble(reader["Day_Amount"]);
      item.DayLast = Convert.ToDouble(reader["Day_Last"]);
      item.DayAdjust = Convert.ToDouble(reader["Day_Adjust"]);
      item.BeforeNonow = Convert.ToDouble(reader["Before_Nonow"]);
      item.BeforeRela = Convert.ToDouble(reader["Before_Rela"]);
      item.DayNonow = Convert.ToDouble(reader["Day_Nonow"]);
      item.DayRela = Convert.ToDouble(reader["Day_Rela"]);
      item.DayError = Convert.ToDouble(reader["Day_Error"]);
      item.DayBank = Convert.ToDouble(reader["Day_Bank"]);
      item.DayBack = Convert.ToDouble(reader["Day_Back"]);
      item.BeforeBackCash = Convert.ToDouble(reader["Before_BackCash"]);
      item.BeforeBank = Convert.ToDouble(reader["Before_Bank"]);
      item.BeforeError = Convert.ToDouble(reader["Before_Error"]);
      item.BeforeAdjust = Convert.ToDouble(reader["Before_Adjust"]);
      item.DayRepair = Convert.ToDouble(reader["Day_Repair"]);
      item.DayReplace = Convert.ToDouble(reader["Day_Replace"]);
      item.BeforeRepair = Convert.ToDouble(reader["Before_Repair"]);
      item.BeforeReplace = Convert.ToDouble(reader["Before_Replace"]);
      item.DayBackFee = Convert.ToDouble(reader["Day_BackFee"]);
      item.BeforeBackFee = Convert.ToDouble(reader["Before_BackFee"]);
      item.DayDesign = Convert.ToDouble(reader["Day_Design"]);
      item.BeforeDesign = Convert.ToDouble(reader["Before_Design"]);
      item.DayDirect = Convert.ToDouble(reader["Day_Direct"]);
      item.BeforeDirect = Convert.ToDouble(reader["Before_Direct"]);
      item.DayApplyBack = Convert.ToDouble(reader["Day_ApplyBack"]);
      item.BeforeApplyBack = Convert.ToDouble(reader["Before_ApplyBack"]);

			return item;
		}

		public static BillDayCash GetBillDayCash(string manid, string day)
		{
			BillDayCash item = new BillDayCash();
			
			try
			{
				ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Man_ID", SqlDbType.NVarChar, 6, manid));
        paras.Add(DBUtils.MakeInParam("@Day_Cash_Day", SqlDbType.NVarChar, 8, day));
				paras.Add(DBUtils.MakeInParam("@Get_Action", SqlDbType.NVarChar, 10, DataGetAction.Row.ToString().ToLower()));

				SqlDataReader reader = DBUtils.ExecuteReader(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_BillDayCash", paras);
				
				if (reader.Read())
				{
					item = PopulateBillDayCash(reader);
				}

				reader.Close();
			}
			catch { throw; }

			return item;
		}

    public static void GetNewDayCash(BillDayCash item, string manid, string day)
    {
      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Man_ID", SqlDbType.NVarChar, 6, manid));
        paras.Add(DBUtils.MakeInParam("@Day_Cash_Day", SqlDbType.NVarChar, 8, day));

        SqlDataReader reader = DBUtils.ExecuteReader(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_NowDayCash", paras);

        if (reader.Read())
        {
          if (reader["Day_Bank"] != DBNull.Value)
            item.DayBank = Convert.ToDouble(reader["Day_Bank"]);
        }

        if (reader.NextResult())
        {
          if (reader.Read() && (reader["Day_Amount"] != DBNull.Value))
            item.DayAmount = Convert.ToDouble(reader["Day_Amount"]);
        }

        if (reader.NextResult())
        {
          if (reader.Read() && (reader["Day_Nonow"] != DBNull.Value))
            item.DayNonow = Convert.ToDouble(reader["Day_Nonow"]);
        }

        if (reader.NextResult())
        {
          if (reader.Read() && (reader["Day_Error"] != DBNull.Value))
            item.DayError = Convert.ToDouble(reader["Day_Error"]);
        }

        if (reader.NextResult())
        {
          if (reader.Read() && (reader["Day_Replace"] != DBNull.Value))
            item.DayReplace = Convert.ToDouble(reader["Day_Replace"]);
        }

        if (reader.NextResult())
        {
          if (reader.Read() && (reader["Day_Repair"] != DBNull.Value))
            item.DayRepair = Convert.ToDouble(reader["Day_Repair"]);
        }

        if (reader.NextResult())
        {
          if (reader.Read() && (reader["Day_Back"] != DBNull.Value))
            item.DayBack = Convert.ToDouble(reader["Day_Back"]);
        }

        if (reader.NextResult())
        {
          if (reader.Read() && (reader["Day_Rela"] != DBNull.Value))
            item.DayRela = Convert.ToDouble(reader["Day_Rela"]);
        }

        if (reader.NextResult())
        {
          if (reader.Read() && (reader["Day_Adjust"] != DBNull.Value))
            item.DayAdjust = Convert.ToDouble(reader["Day_Adjust"]);
        }

        if (reader.NextResult())
        {
          if (reader.Read() && (reader["Back_Cash"] != DBNull.Value))
            item.BackCash = Convert.ToDouble(reader["Back_Cash"]);
        }

        if (reader.NextResult())
        {
          if (reader.Read() && (reader["Day_BackFee"] != DBNull.Value))
            item.DayBackFee = Convert.ToDouble(reader["Day_BackFee"]);
        }

        if (reader.NextResult())
        {
          if (reader.Read() && (reader["BackCash_Cash"] != DBNull.Value))
            item.DayApplyBack = Convert.ToDouble(reader["BackCash_Cash"]);
        }

        if (reader.NextResult())
        {
          if (reader.Read() && (reader["BackFee_Cash"] != DBNull.Value))
            item.DayDirect = Convert.ToDouble(reader["BackFee_Cash"]);
        }

        reader.Close();
      }
      catch { throw; }
    }

    public static double GetSumDayCash(string search)
    {
      double sum = 0;

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Search", SqlDbType.NVarChar, 200, search));

        SqlDataReader reader = DBUtils.ExecuteReader(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_AdjustDayCash", paras);

        if (reader.Read())
        {
          if (reader["Sum_Cash"] != DBNull.Value)
            sum = Convert.ToDouble(reader["Sum_Cash"]);
        }

        reader.Close();
      }
      catch { throw; }

      return sum;
    }

		public static void CreateUpdateDeleteBillDayCash(BillDayCash item, DataProviderAction action)
		{
			if (item == null)
				return;

			SqlConnection conn = DBUtils.GetConnection();
			SqlCommand cmd = DBUtils.GetCommand();

			try
			{
				cmd.Transaction = conn.BeginTransaction();

				ArrayList paras = new ArrayList();

				paras.Add(DBUtils.MakeInParam("@Man_ID", SqlDbType.NVarChar, 6, item.ManID));
				paras.Add(DBUtils.MakeInParam("@Man_Name", SqlDbType.NVarChar, 10, item.ManName));
				paras.Add(DBUtils.MakeInParam("@Dept_ID", SqlDbType.NVarChar, 8, item.DeptID));
				paras.Add(DBUtils.MakeInParam("@Day_Cash", SqlDbType.Decimal, item.DayCash));
        paras.Add(DBUtils.MakeInParam("@Day_Bank", SqlDbType.Decimal, item.DayBank));
        paras.Add(DBUtils.MakeInParam("@Day_Amount", SqlDbType.Decimal, item.DayAmount));
        paras.Add(DBUtils.MakeInParam("@Day_Nonow", SqlDbType.Decimal, item.DayNonow));
        paras.Add(DBUtils.MakeInParam("@Day_Error", SqlDbType.Decimal, item.DayError));
        paras.Add(DBUtils.MakeInParam("@Day_Repair", SqlDbType.Decimal, item.DayRepair));
        paras.Add(DBUtils.MakeInParam("@Day_Replace", SqlDbType.Decimal, item.DayReplace));
        paras.Add(DBUtils.MakeInParam("@Day_Back", SqlDbType.Decimal, item.DayBack));
        paras.Add(DBUtils.MakeInParam("@Day_Rela", SqlDbType.Decimal, item.DayRela));        
        paras.Add(DBUtils.MakeInParam("@Day_Adjust", SqlDbType.Decimal, item.DayAdjust));        
        paras.Add(DBUtils.MakeInParam("@Back_Cash", SqlDbType.Decimal, item.BackCash));
        paras.Add(DBUtils.MakeInParam("@Day_Last", SqlDbType.Decimal, item.DayLast));
        paras.Add(DBUtils.MakeInParam("@Day_BackFee", SqlDbType.Decimal, item.DayBackFee));
        paras.Add(DBUtils.MakeInParam("@Day_Design", SqlDbType.Decimal, item.DayDesign));
				paras.Add(DBUtils.MakeInParam("@Reco_Date", SqlDbType.DateTime, item.RecoDate));
				paras.Add(DBUtils.MakeInParam("@Day_Cash_Day", SqlDbType.NVarChar, 8, item.DayCashDay));
				paras.Add(DBUtils.MakeInParam("@Reco_Man", SqlDbType.NVarChar, 6, item.RecoMan));
				paras.Add(DBUtils.MakeInParam("@Reco_Man_Name", SqlDbType.NVarChar, 10, item.RecoManName));
        paras.Add(DBUtils.MakeInParam("@Day_Direct", SqlDbType.Decimal, item.DayDirect));
        paras.Add(DBUtils.MakeInParam("@Day_ApplyBack", SqlDbType.Decimal, item.DayApplyBack));
				paras.Add(DBUtils.MakeInParam("@Action", SqlDbType.Int, action));

				DBUtils.ExecuteNonQuery(conn, cmd, CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_CreateUpdateDelete_BillDayCash", paras);

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
