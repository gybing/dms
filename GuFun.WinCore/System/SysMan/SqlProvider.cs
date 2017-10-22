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
		public static DataTable GetSysManList()
		{
			DataTable tblMain;

			try
			{
				ArrayList paras = new ArrayList(); 
				paras.Add(DBUtils.MakeInParam("@Get_Action", SqlDbType.NVarChar, 10, DataGetAction.Full.ToString().ToLower()));

				tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_SysMan", paras);
				tblMain.TableName = "SelectMain";
			}
			catch { throw; }

			return tblMain;
		}

    public static DataTable SearchManByDept(string sql)
    {
      DataTable tblMain;

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Search", SqlDbType.NVarChar, 8, sql));

        tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Search_Man", paras);
        tblMain.TableName = "SelectMain";
      }
      catch { throw; }

      return tblMain;
    }

    public static DataTable GetManByDept(string dept)
    {
      DataTable tblMain;

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Dept_ID", SqlDbType.NVarChar, 8, dept));

        tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Search_ManByDept", paras);
        tblMain.TableName = "SelectMain";
      }
      catch { throw; }

      return tblMain;
    }

    public static DataTable SearchSysMan(string sql)
    {
      DataTable tblMain;

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Search", SqlDbType.NVarChar, 200, sql));

        tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Search_SysMan", paras);
        tblMain.TableName = "SelectMain";
      }
      catch { throw; }

      return tblMain;
    }

    public static DataTable SelectSysMan(string deptid, string manname)
    {
      DataTable tblMain;

      try
      {
        ArrayList paras = new ArrayList();
        if (!String.IsNullOrEmpty(manname))
          paras.Add(DBUtils.MakeInParam("@Man_Name", SqlDbType.NVarChar, 10, manname));
        if (!String.IsNullOrEmpty(deptid))
          paras.Add(DBUtils.MakeInParam("@Dept_ID", SqlDbType.NVarChar, 8, deptid));

        tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Select_SysMan", paras);
        tblMain.TableName = "SelectMain";
      }
      catch { throw; }

      return tblMain;
    }

		public static SysMan PopulateSysMan(IDataReader reader)
		{
			SysMan item = new SysMan();
			item.ManID = reader["Man_ID"] as string;
			item.ManName = reader["Man_Name"] as string;
			item.CoID = reader["Co_ID"] as string;
			item.CoName = reader["Co_Name"] as string;
			item.DeptID = reader["Dept_ID"] as string;
			item.DeptName = reader["Dept_Name"] as string;
			item.ManType = (short)reader["Man_Type"];
			item.ManTypeName = reader["Man_Type_Name"] as string;
			item.CrtDate = Convert.ToDateTime(reader["Crt_Date"]);
			if (reader["Crt_Oper"] != DBNull.Value)
				item.CrtOper = reader["Crt_Oper"] as string;
			if (reader["Man_Tele"] != DBNull.Value)
				item.ManTele = reader["Man_Tele"] as string;
			if (reader["Man_EMail"] != DBNull.Value)
				item.ManEMail = reader["Man_EMail"] as string;
			if (reader["Man_Date"] != DBNull.Value)
				item.ManDate = Convert.ToDateTime(reader["Man_Date"]);
			item.ManLevel = (short)reader["Man_Level"];
			item.ManLevelName = reader["Man_Level_Name"] as string;
			item.ManTitle = (short)reader["Man_Title"];
			item.ManTitleName = reader["Man_Title_Name"] as string;
			item.ManSex = (short)reader["Man_Sex"];
			item.ManSexName = reader["Man_Sex_Name"] as string;
			item.ManStatus = (short)reader["Man_Status"];
			item.ManStatusName = reader["Man_Status_Name"] as string;
			item.OperPassword = reader["Oper_Password"] as string;
			item.OperSerial = (int)reader["Oper_Serial"];
			item.WorkDate = reader["Work_Date"] as string;
			item.AuthBound = (short)reader["Auth_Bound"];
			item.IsAdmin = Convert.ToBoolean(reader["Is_Admin"]);
			if (reader["Remark"] != DBNull.Value)
				item.Remark = reader["Remark"] as string;
			item.BackCash = Convert.ToDouble(reader["Back_Cash"]);
      item.NowCash = Convert.ToDouble(reader["Now_Cash"]);
      item.PreWorkDate = reader["Pre_Work_Date"] as string;
      item.IsLock = Convert.ToBoolean(reader["Is_Lock"]);
      item.IsFirst = Convert.ToBoolean(reader["Is_First"]);
      item.IsBack = Convert.ToBoolean(reader["Is_Back"]);
      item.IsDayCash = Convert.ToBoolean(reader["Is_DayCash"]);
			return item;
		}    

    public static string GetManName(string manid)
    {
      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Man_ID", SqlDbType.NVarChar, 6, manid));

        object rtn = DBUtils.ExecuteScalar(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_SysManName", paras);

        if (rtn != DBNull.Value)
          return rtn.ToString();

      }
      catch { throw; }

      return String.Empty;
    }

		public static SysMan GetSysMan(string manid)
		{
			SysMan item = new SysMan();
			
			try
			{
				ArrayList paras = new ArrayList();
				paras.Add(DBUtils.MakeInParam("@Man_ID", SqlDbType.NVarChar, 6, manid));
				paras.Add(DBUtils.MakeInParam("@Get_Action", SqlDbType.NVarChar, 10, DataGetAction.Row.ToString().ToLower()));

				SqlDataReader reader = DBUtils.ExecuteReader(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_SysMan", paras);
				
				if (reader.Read())
				{
					item = PopulateSysMan(reader);
				}

				reader.Close();
			}
			catch { throw; }

			return item;
		}

    public static SysMan GetSysManByType(string deptid, short type)
    {
      SysMan item = new SysMan();

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Dept_ID", SqlDbType.NVarChar, 10, deptid));
        paras.Add(DBUtils.MakeInParam("@Man_Type", SqlDbType.SmallInt, type));

        SqlDataReader reader = DBUtils.ExecuteReader(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_ManByType", paras);

        if (reader.Read())
        {
          item = PopulateSysMan(reader);
        }

        reader.Close();
      }
      catch { throw; }

      return item;
    }

    public static double GetSysManCash(string manid)
    {
      double rtn = 0;

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Man_ID", SqlDbType.NVarChar, 6, manid));

        SqlDataReader reader = DBUtils.ExecuteReader(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_DefaultCash", paras);

        if (reader.Read())
        {
          rtn = Convert.ToDouble(reader["Back_Cash"]);
        }

        reader.Close();
      }
      catch { throw; }

      return rtn;
    }

    public static void CreateUpdateDeleteSysMan(SysMan item, DataProviderAction action)
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
				paras.Add(DBUtils.MakeInParam("@Co_ID", SqlDbType.NVarChar, 4, item.CoID));
				paras.Add(DBUtils.MakeInParam("@Dept_ID", SqlDbType.NVarChar, 8, item.DeptID));
				paras.Add(DBUtils.MakeInParam("@Man_Type", SqlDbType.SmallInt, item.ManType));
				paras.Add(DBUtils.MakeInParam("@Crt_Date", SqlDbType.DateTime, item.CrtDate));
				paras.Add(DBUtils.MakeInParam("@Crt_Oper", SqlDbType.NVarChar, 6, item.CrtOper));
				paras.Add(DBUtils.MakeInParam("@Man_Tele", SqlDbType.NVarChar, 30, item.ManTele));
				paras.Add(DBUtils.MakeInParam("@Man_EMail", SqlDbType.NVarChar, 32, item.ManEMail));
				paras.Add(DBUtils.MakeInParam("@Man_Date", SqlDbType.DateTime, Publics.GetDataDateTime(item.ManDate)));
				paras.Add(DBUtils.MakeInParam("@Man_Level", SqlDbType.SmallInt, item.ManLevel));
				paras.Add(DBUtils.MakeInParam("@Man_Title", SqlDbType.SmallInt, item.ManTitle));
				paras.Add(DBUtils.MakeInParam("@Man_Sex", SqlDbType.SmallInt, item.ManSex));
				paras.Add(DBUtils.MakeInParam("@Man_Status", SqlDbType.SmallInt, item.ManStatus));
				paras.Add(DBUtils.MakeInParam("@Oper_Password", SqlDbType.NVarChar, 50, item.OperPassword));
				paras.Add(DBUtils.MakeInParam("@Oper_Serial", SqlDbType.Int, item.OperSerial));
				paras.Add(DBUtils.MakeInParam("@Work_Date", SqlDbType.NVarChar, 8, item.WorkDate));
				paras.Add(DBUtils.MakeInParam("@Auth_Bound", SqlDbType.SmallInt, item.AuthBound));
				paras.Add(DBUtils.MakeInParam("@Is_Admin", SqlDbType.Bit, item.IsAdmin));
				paras.Add(DBUtils.MakeInParam("@Remark", SqlDbType.NVarChar, 20, item.Remark));
				paras.Add(DBUtils.MakeInParam("@Back_Cash", SqlDbType.Decimal, item.BackCash));
        paras.Add(DBUtils.MakeInParam("@Now_Cash", SqlDbType.Decimal, item.NowCash));
        paras.Add(DBUtils.MakeInParam("@Pre_Work_Date", SqlDbType.NVarChar, 8, item.WorkDate));
        paras.Add(DBUtils.MakeInParam("@Is_Back", SqlDbType.Bit, item.IsBack));
        paras.Add(DBUtils.MakeInParam("@Is_DayCash", SqlDbType.Bit, item.IsDayCash));
				paras.Add(DBUtils.MakeInParam("@Action", SqlDbType.Int, action));

				DBUtils.ExecuteNonQuery(conn, cmd, CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_CreateUpdateDelete_SysMan", paras);

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

    public static void SetLockMan(string manid, bool islock)
    {

      SqlConnection conn = DBUtils.GetConnection();
      SqlCommand cmd = DBUtils.GetCommand();

      try
      {
        cmd.Transaction = conn.BeginTransaction();

        ArrayList paras = new ArrayList();

        paras.Add(DBUtils.MakeInParam("@Man_ID", SqlDbType.NVarChar, 6, manid));
        paras.Add(DBUtils.MakeInParam("@Is_Lock", SqlDbType.Bit, islock));

        DBUtils.ExecuteNonQuery(conn, cmd, CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_SetLock", paras);

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

    public static void DeleteOnlineMan(string manid, string recoman)
    {

      SqlConnection conn = DBUtils.GetConnection();
      SqlCommand cmd = DBUtils.GetCommand();

      try
      {
        cmd.Transaction = conn.BeginTransaction();

        ArrayList paras = new ArrayList();

        paras.Add(DBUtils.MakeInParam("@Man_ID", SqlDbType.NVarChar, 6, manid));
        paras.Add(DBUtils.MakeInParam("@Reco_Man", SqlDbType.NVarChar, 6, recoman));

        DBUtils.ExecuteNonQuery(conn, cmd, CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Delete_OnlineMan", paras);

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

    public static void SetCashLockMan(BillDayCash item)
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

        DBUtils.ExecuteNonQuery(conn, cmd, CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_SetCashLock", paras);

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

    public static void ResetMan(string manid)
    {

      SqlConnection conn = DBUtils.GetConnection();
      SqlCommand cmd = DBUtils.GetCommand();

      try
      {
        cmd.Transaction = conn.BeginTransaction();

        ArrayList paras = new ArrayList();

        paras.Add(DBUtils.MakeInParam("@Man_ID", SqlDbType.NVarChar, 6, manid));
        paras.Add(DBUtils.MakeInParam("@Oper_Password", SqlDbType.NVarChar, 50, Crypto.MD5Crypto(manid)));

        DBUtils.ExecuteNonQuery(conn, cmd, CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_ResetMan", paras);

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

    public static void FirstLogin(string manid, string password)
    {

      SqlConnection conn = DBUtils.GetConnection();
      SqlCommand cmd = DBUtils.GetCommand();

      try
      {
        cmd.Transaction = conn.BeginTransaction();

        ArrayList paras = new ArrayList();

        paras.Add(DBUtils.MakeInParam("@Man_ID", SqlDbType.NVarChar, 6, manid));
        paras.Add(DBUtils.MakeInParam("@Oper_Password", SqlDbType.NVarChar, 50, password));

        DBUtils.ExecuteNonQuery(conn, cmd, CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_First_Login", paras);

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
    
    public static void ModifyManCash(BillDeptBacks items, string operid)
    {

      SqlConnection conn = DBUtils.GetConnection();
      SqlCommand cmd = DBUtils.GetCommand();

      try
      {
        cmd.Transaction = conn.BeginTransaction();

        ArrayList paras = new ArrayList();

        foreach (BillDeptBack item in items)
        {
          paras.Clear();
          paras.Add(DBUtils.MakeInParam("@Man_ID", SqlDbType.NVarChar, 6, item.ManID));
          paras.Add(DBUtils.MakeInParam("@Back_Cash", SqlDbType.Decimal, item.BackStandard));
          paras.Add(DBUtils.MakeInParam("@Oper_ID", SqlDbType.NVarChar, 6, operid));

          DBUtils.ExecuteNonQuery(conn, cmd, CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Modify_ManCash", paras);
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
