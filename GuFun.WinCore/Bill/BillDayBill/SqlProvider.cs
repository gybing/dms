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
    public static DataTable GetBillDayBillList()
    {
      DataTable tblMain;

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Get_Action", SqlDbType.NVarChar, 10, DataGetAction.Full.ToString().ToLower()));

        tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_BillDayBill", paras);
        tblMain.TableName = "SelectMain";
      }
      catch { throw; }

      return tblMain;
    }

    public static DataTable SearcBillDayBillList(string search)
    {
      DataTable tblMain;

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Search", SqlDbType.NVarChar, 200, search));

        tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Search_BillDayBill", paras);
        tblMain.TableName = "SelectMain";
      }
      catch { throw; }

      return tblMain;
    }

    public static BillDayBill PopulateBillDayBill(IDataReader reader)
    {
      BillDayBill item = new BillDayBill();
      item.ManID = reader["Man_ID"] as string;
      item.ManName = reader["Man_Name"] as string;
      item.DeptID = reader["Dept_ID"] as string;
      item.DeptName = reader["Dept_Name"] as string;
      item.RecoDate = Convert.ToDateTime(reader["Reco_Date"]);
      item.DayCashDay = reader["Day_Cash_Day"] as string;
      item.cash00 = Convert.ToDouble(reader["Cash00"]);
      item.cash01 = Convert.ToDouble(reader["Cash01"]);
      item.cash02 = Convert.ToDouble(reader["Cash02"]);
      item.cash03 = Convert.ToDouble(reader["Cash03"]);
      item.cash00count = Convert.ToInt32(reader["Cash00Count"]);
      item.cash01count = Convert.ToInt32(reader["Cash01Count"]);
      item.cash02count = Convert.ToInt32(reader["Cash02Count"]);
      item.cash03count = Convert.ToInt32(reader["Cash03Count"]);
      item.bill00 = Convert.ToDouble(reader["Bill00"]);
      item.bill00count = Convert.ToInt32(reader["Bill00Count"]);
      item.bill01 = Convert.ToDouble(reader["Bill01"]);
      item.bill01count = Convert.ToInt32(reader["Bill01Count"]); 
      item.bill02 = Convert.ToDouble(reader["Bill02"]);
      item.bill02count = Convert.ToInt32(reader["Bill02Count"]);
      if (reader["DayRemark"] != DBNull.Value)
        item.dayremark = reader["DayRemark"] as string;
      return item;
    }

    public static BillDayBill GetBillDayBill(string manid, string day)
    {
      BillDayBill item = new BillDayBill();

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Man_ID", SqlDbType.NVarChar, 6, manid));
        paras.Add(DBUtils.MakeInParam("@Day_Cash_Day", SqlDbType.NVarChar, 8, day));
        paras.Add(DBUtils.MakeInParam("@Get_Action", SqlDbType.NVarChar, 10, DataGetAction.Row.ToString().ToLower()));

        SqlDataReader reader = DBUtils.ExecuteReader(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_BillDayBill", paras);

        if (reader.Read())
        {
          item = PopulateBillDayBill(reader);
        }

        reader.Close();
      }
      catch { throw; }

      return item;
    }

    public static DataTable GetBillDayDetail(string manid, string day)
    {
      DataTable tblMain;

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Man_ID", SqlDbType.NVarChar, 6, manid));
        paras.Add(DBUtils.MakeInParam("@Day_Cash_Day", SqlDbType.NVarChar, 8, day));

        tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_BillDayDetail", paras);
        tblMain.TableName = "SelectMain";
      }
      catch { throw; }

      return tblMain;
    }

    public static DataTable GetBillDayBillDetail(string manid, string day, short canceltype)
    {
      DataTable tblMain;

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Man_ID", SqlDbType.NVarChar, 6, manid));
        paras.Add(DBUtils.MakeInParam("@Day_Cash_Day", SqlDbType.NVarChar, 8, day));
        paras.Add(DBUtils.MakeInParam("@Cancel_Type", SqlDbType.SmallInt, canceltype));

        tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_BillDayBillDetail", paras);
        tblMain.TableName = "SelectMain";
      }
      catch { throw; }

      return tblMain;
    }

    public static void CreateUpdateDeleteBillDayBill(BillDayBill item, DataProviderAction action)
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
        paras.Add(DBUtils.MakeInParam("@Reco_Date", SqlDbType.DateTime, item.RecoDate));
        paras.Add(DBUtils.MakeInParam("@Day_Cash_Day", SqlDbType.NVarChar, 8, item.DayCashDay));
        paras.Add(DBUtils.MakeInParam("@Cash00", SqlDbType.Decimal, item.cash00));
        paras.Add(DBUtils.MakeInParam("@Cash00Count", SqlDbType.Int, item.cash00count));
        paras.Add(DBUtils.MakeInParam("@Cash01", SqlDbType.Decimal, item.cash01));
        paras.Add(DBUtils.MakeInParam("@Cash01Count", SqlDbType.Int, item.cash01count));
        paras.Add(DBUtils.MakeInParam("@Cash02", SqlDbType.Decimal, item.cash02));
        paras.Add(DBUtils.MakeInParam("@Cash02Count", SqlDbType.Int, item.cash02count));
        paras.Add(DBUtils.MakeInParam("@Cash03", SqlDbType.Decimal, item.cash03));
        paras.Add(DBUtils.MakeInParam("@Cash03Count", SqlDbType.Int, item.cash03count));
        paras.Add(DBUtils.MakeInParam("@Bill00", SqlDbType.Decimal, item.bill00));
        paras.Add(DBUtils.MakeInParam("@Bill00Count", SqlDbType.Int, item.bill00count));
        paras.Add(DBUtils.MakeInParam("@Bill01", SqlDbType.Decimal, item.bill01));
        paras.Add(DBUtils.MakeInParam("@Bill01Count", SqlDbType.Int, item.bill01count));
        paras.Add(DBUtils.MakeInParam("@Bill02", SqlDbType.Decimal, item.bill02));
        paras.Add(DBUtils.MakeInParam("@Bill02Count", SqlDbType.Int, item.bill02count));
        paras.Add(DBUtils.MakeInParam("@DayRemark", SqlDbType.NVarChar, 100, item.dayremark));
        paras.Add(DBUtils.MakeInParam("@Action", SqlDbType.Int, action));

        DBUtils.ExecuteNonQuery(conn, cmd, CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_CreateUpdateDelete_BillDayBill", paras);

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
