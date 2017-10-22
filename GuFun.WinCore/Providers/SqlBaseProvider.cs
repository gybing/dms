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
    #region Login Methods

    public static void LoginSuccess(string manid, string workdate)
    {
      SqlConnection conn = DBUtils.GetConnection();
      SqlCommand cmd = DBUtils.GetCommand();

      try
      {
        cmd.Transaction = conn.BeginTransaction();

        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Man_ID", SqlDbType.NVarChar, 6, manid));
        paras.Add(DBUtils.MakeInParam("@Work_Date", SqlDbType.NVarChar, 8, workdate));

        DBUtils.ExecuteNonQuery(conn, cmd, CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Login_Success", paras);

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

    public static UserCache GetLoginInfo(string manid, string reginfo, string password)
    {
      UserCache uc = new UserCache();

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Man_ID", SqlDbType.NVarChar, 6, manid));

        SqlDataReader reader = DBUtils.ExecuteReader(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Valid_Login", paras);

        if (reader.Read())
          uc.Company = SqlBaseProvider.PopulateSysCompany(reader);

        if (reader.NextResult())
        {
          if (reader.Read())
            uc.Dept = SqlBaseProvider.PopulateSysDept(reader);
        }

        if (reader.NextResult())
        {
          if (reader.Read())
            uc.Man = SqlBaseProvider.PopulateSysMan(reader);
        }

        if (reader.NextResult())
        {
          uc.RelaDept.Clear();
          while (reader.Read())
          {
            uc.RelaDept.Add(reader["Dept_ID"] as string);
          }
        }

        if (reader.NextResult())
        {
          if (reader.Read())
            uc.AuditMoney = (short)reader["Audit_Money"];
        }

        if (reader.NextResult())
        {
          if (reader.Read())
          {
            if ((int)reader["Cnt"] > 0)
              uc.IsHoliday = true;
            else
              uc.IsHoliday = false;
          }
        }

        // modify by cloudy 20101020 增加系统流程版本的读取
        if (reader.NextResult())
        {
          if (reader.Read())
            uc.Dept.DeptFlow = (short)reader["Dept_Flow"];
        }

        reader.Close();
      }
      catch
      {
        
      }

      return uc;
    }

    public static bool ValidPassword(string manid, string password)
    {
      int cnt = 0;
      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Man_ID", SqlDbType.NVarChar, 6, manid));
        paras.Add(DBUtils.MakeInParam("@Oper_Password", SqlDbType.NVarChar, 50, Crypto.MD5Crypto(password)));

        SqlDataReader reader = DBUtils.ExecuteReader(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Valid_Password", paras);

        if (reader.Read())
        {
          cnt = (int)reader["Cnt"];
        }

        reader.Close();
      }
      catch
      {
        throw;
      }

      if (cnt > 0)
        return true;
      else
        return false;
    }


    public static SysMan ValidAuth(string manid, string password)
    {
      SysMan item = new SysMan();

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Man_ID", SqlDbType.NVarChar,6, manid));
        paras.Add(DBUtils.MakeInParam("@Password", SqlDbType.NVarChar, 50, Crypto.MD5Crypto(password)));

        SqlDataReader reader = DBUtils.ExecuteReader(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Valid_AuthMan", paras);

        if (reader.Read())
        {          
          item.ManID = reader["Man_ID"] as string;
          item.ManName = reader["Man_Name"] as string;
          item.DeptID = reader["Dept_ID"] as string;
          item.ManLevel = (short)reader["Man_Level"];
          item.ManType = (short)reader["Man_Type"];
          item.IsLock = Convert.ToBoolean(reader["Is_Lock"]);
          item.AuthBound = (short)reader["Auth_Bound"];
        }

        reader.Close();
      }
      catch
      {
        throw;
      }

      return item;
    }

    public static int GetRelaDept(string main, string rela)
    {
      int rtn = 0;

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Main_Dept", SqlDbType.NVarChar, 8, main));
        paras.Add(DBUtils.MakeInParam("@Rela_Dept", SqlDbType.NVarChar, 8, rela));

        SqlDataReader reader = DBUtils.ExecuteReader(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_RelaDept", paras);

        if (reader.Read())
          rtn = (int)reader["Cnt"];

        if (reader.NextResult())
        {
          if (reader.Read())
            rtn = (int)reader["Cnt"];
        }

        reader.Close();
      }
      catch
      {
        
      }

      return rtn;
    }

    public static short GetSetManLevel()
    {
      short rtn = 0;

      try
      {
        SqlDataReader reader = DBUtils.ExecuteReader(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_SetManLevel");

        if (reader.Read())
          rtn = (short)reader["Man_Level"];

        reader.Close();
      }
      catch
      {

      }

      return rtn;
    }

    #endregion Login Methods

    #region Menu Methods

    public static void GetManMenus(UserCache uc, string manid, string sysid)
    {
      if (uc == null)
        return;

      SysMenuGroups ag = uc.Menus;
      SysMenu fm;
      SysMenuGroup fg;

      RibTabs rts = uc.Ribbons;
      RibTab rt;
      RibPanel rp;

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Man_ID", SqlDbType.NVarChar, 6, manid));
        paras.Add(DBUtils.MakeInParam("@System_ID", SqlDbType.NVarChar, 2, sysid));

        SqlDataReader reader = DBUtils.ExecuteReader(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_Man_Menus", paras);

        #region Read MenuGroups

        while (reader.Read())
        {
          SysMenuGroup mgItem = new SysMenuGroup();

          mgItem.MgID = (short)reader["mg_id"];
          mgItem.MgName = reader["mg_name"] as string;

          if (reader["mg_tip"] != DBNull.Value)
            mgItem.MgTip = reader["mg_tip"] as string;

          if (reader["mg_normal_icon"] != DBNull.Value)
            mgItem.MgNormalIcon = reader["mg_normal_icon"] as string;

          if (reader["mg_hot_icon"] != DBNull.Value)
            mgItem.MgHotIcon = reader["mg_hot_icon"] as string;

          if (reader["mg_disable_icon"] != DBNull.Value)
            mgItem.MgDisableIcon = reader["mg_disable_icon"] as string;

          mgItem.MgIconIndex = (short)reader["mg_icon_index"];

          if (reader["mg_function"] != DBNull.Value)
            mgItem.MgFunction = reader["mg_function"] as string;

          mgItem.MgStatus = (short)reader["mg_status"];
          mgItem.MgOrder = (short)reader["mg_order"];

          ag.Add(mgItem);
        }

        #endregion Read MenuGroups

        #region Read Menus

        if (reader.NextResult() && (ag.Count > 0))
        {
          while (reader.Read())
          {
            if ((fg = ag.FindByGroupID((short)reader["mg_id"])) != null)
            {
              if ((fm = fg.Menus.FindSubMenu((short)reader["m_id"])) != null)
              {
                fm.MAuth = (int)((AuthType)fm.MAuth | (AuthType)((int)reader["menu_auth"]));
                continue;
              }
            }

            SysMenu mItem = new SysMenu();

            mItem.MID = (short)reader["m_id"];
            mItem.MName = reader["m_name"] as string;
            mItem.MPID = (short)reader["m_pid"];
            mItem.MgID = (short)reader["mg_id"];
            mItem.MLevel = (short)reader["m_level"];
            mItem.MDisp = (short)reader["m_disp"];
            mItem.MAuth = (int)reader["menu_auth"];

            if (reader["m_tip"] != DBNull.Value)
              mItem.MTip = reader["m_tip"] as string;

            if (reader["m_function"] != DBNull.Value)
              mItem.MFunction = reader["m_function"] as string;

            mItem.IsLine = Convert.ToBoolean(reader["is_line"]);
            mItem.IsSub = Convert.ToBoolean(reader["is_sub"]);

            if (reader["m_sid"] != DBNull.Value)
              mItem.MSID = (short)reader["m_sid"];

            if (reader["m_normal_icon"] != DBNull.Value)
              mItem.MNormalIcon = reader["m_normal_icon"] as string;

            if (reader["m_hot_icon"] != DBNull.Value)
              mItem.MHotIcon = reader["m_hot_icon"] as string;

            if (reader["m_disable_icon"] != DBNull.Value)
              mItem.MDisableIcon = reader["m_disable_icon"] as string;

            mItem.MIconIndex = (short)reader["m_icon_index"];
            mItem.IsBase = Convert.ToBoolean(reader["is_base"]);
            mItem.MCode = reader["m_code"] as string;
            mItem.MStatus = (short)reader["m_status"];

            if (reader["M_Shortcut"] != DBNull.Value)
              mItem.MShortcut = reader["M_Shortcut"] as string;

            if (fg != null)
            {
              if (mItem.MID != mItem.MPID)
              {
                fm = fg.Menus.FindSubMenu(mItem.MPID);

                if (fm != null)
                {
                  fm.SubMenus.Add(mItem);
                }
              }
              else
              {
                fg.Menus.Add(mItem);
              }

            }
          }
        }

        #endregion Read Menus

        #region Read Ribbon Tabs

        if (reader.NextResult() && (ag.Count > 0))
        {
          while (reader.Read())
          {
            RibTab rtItem = new RibTab();
            rtItem.ID = (short)reader["Rib_Tab"];
            rtItem.RibTabName = reader["Rib_Tab_Name"] as string;
            rtItem.RibOrder = (short)reader["Rib_Order"];

            rts.Add(rtItem);
          }
        }

        #endregion Read Ribbon Tabs

        #region Read Ribbon Panels

        if (reader.NextResult() && (ag.Count > 0))
        {
          while (reader.Read())
          {
            rt = rts.FindByRibTab((short)reader["Rib_Tab"]);
            if (rt == null)
              continue;

            RibPanel rpItem = new RibPanel();
            rpItem.ID = (short)reader["Rib_Panel"];
            rpItem.RibPanelName = reader["Rib_Panel_Name"] as string;
            rpItem.RibOrder = (short)reader["Rib_Order"];
            rpItem.RibTab = (short)reader["Rib_Tab"];

            rt.Panels.Add(rpItem);
          }
        }

        #endregion Read Ribbon Panels

        #region Read Ribbon Buttons

        if (reader.NextResult() && (ag.Count > 0))
        {
          while (reader.Read())
          {
            rt = rts.FindByRibTab((short)reader["Rib_Tab"]);
            if (rt == null)
              continue;

            rp = rt.Panels.FindByRibPanel((short)reader["Rib_Panel"]);
            if (rp == null)
              continue;

            RibButton rbItem = new RibButton();
            rbItem.RibBtn = (short)reader["Rib_Btn"];
            rbItem.RibBtnName = reader["Rib_Btn_Name"] as string;
            rbItem.RibBtnType = (short)reader["Rib_Btn_Type"];
            rbItem.RibOrder = (short)reader["Rib_Order"];
            rbItem.RibPanel = (short)reader["Rib_Panel"];
            rbItem.RibTab = (short)reader["Rib_Tab"];
            if (reader["Rib_Image"] != DBNull.Value)
              rbItem.RibImage = reader["Rib_Image"] as string;
            rbItem.RibImageIndex = (short)reader["Rib_Image_Index"];
            if (reader["M_Function"] != DBNull.Value)
              rbItem.MFunction = reader["M_Function"] as string;
            if (reader["M_Code"] != DBNull.Value)
              rbItem.MCode = reader["M_Code"] as string;
            rbItem.MID = (short)reader["M_ID"];
            if (reader["Rib_Code"] != DBNull.Value)
              rbItem.RibCode = reader["Rib_Code"] as string;

            rp.Buttons.Add(rbItem);
          }
        }

        #endregion Read Ribbon Buttons

        reader.Close();
      }
      catch { throw; }
    }

    #endregion Menu Methods

    #region Get Cache Parameters

    public static void GetCacheParameters(UserCache uc)
    {
      try
      {
        int idx = 0;
        string name = String.Empty;

        DataSet ds = DBUtils.ExecuteDataSet(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_All_Parameters");

        if (ds.Tables.Count >= 1)
        {
          uc.Parameters.Clear();

          for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
          {
            idx = Convert.ToInt32(ds.Tables[0].Rows[i]["Parameter_ID"]);
            if (idx < ds.Tables.Count)
            {
              name = ds.Tables[0].Rows[i]["Parameter_Name"].ToString();
              
              CacheParameter cp = new CacheParameter();
              cp.Name = name;
              cp.Data = ds.Tables[idx];
              cp.Data.TableName = cp.Name;
              if (ds.Tables[0].Rows[i]["Parameter_Display"] != DBNull.Value)
                cp.Display = ds.Tables[0].Rows[i]["Parameter_Display"].ToString();

              uc.Parameters.Add(cp);
            }
          }
        }
      }
      catch { }
    }

    #endregion Get Cache Parameters

    #region Other Methods

    public static DataTable GetBillType()
    {
      DataTable tblMain;

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Get_Action", SqlDbType.NVarChar, 10, DataGetAction.Full.ToString().ToLower()));

        tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_BillType", paras);
        tblMain.TableName = "SelectMain";
      }
      catch { throw; }

      return tblMain;
    }

    public static int GetDefaultDept(short billtype, string search)
    {
      int rtn = 0;

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Bill_Type", SqlDbType.SmallInt, billtype));
        paras.Add(DBUtils.MakeInParam("@Search", SqlDbType.NVarChar, 200, search));

        SqlDataReader reader = DBUtils.ExecuteReader(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Search_DefaultDept", paras);

        if (reader.Read())
          rtn = (int)reader["Bill_Dept"];

        reader.Close();
      }
      catch
      {

      }

      return rtn;
    }

    public static int GetDefaultFeeDept(short billtype, string search)
    {
      int rtn = 0;

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Bill_Type", SqlDbType.SmallInt, billtype));
        paras.Add(DBUtils.MakeInParam("@Search", SqlDbType.NVarChar, 200, search));

        SqlDataReader reader = DBUtils.ExecuteReader(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Search_DefaultDept", paras);

        if (reader.Read())
          rtn = (int)reader["Bill_Dept"];

        reader.Close();
      }
      catch
      {

      }

      return rtn;
    }

    public static int GetDefaultInitDept(short billtype, string deptid, short trantype)
    {
      int rtn = 0;

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Bill_Type", SqlDbType.SmallInt, billtype));
        paras.Add(DBUtils.MakeInParam("@Dept_ID", SqlDbType.NVarChar, 6, deptid));
        paras.Add(DBUtils.MakeInParam("@Tran_Type", SqlDbType.SmallInt, trantype));

        SqlDataReader reader = DBUtils.ExecuteReader(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Search_DefaultInitDept", paras);

        if (reader.Read())
          rtn = (int)reader["Bill_Dept"];

        reader.Close();
      }
      catch
      {

      }

      return rtn;
    }

    public static int GetDefaultInitFee(short billtype, string deptid)
    {
      return GetDefaultInitDept(billtype, deptid, 0);
    }

    public static int GetDefaultInitTran(short billtype, string deptid)
    {
      return GetDefaultInitDept(billtype, deptid, 1);
    }

    public static void InsertDefaultDept(short billtype, int feebilldept, int tranbilldept, string deptid)
    {
      SqlConnection conn = DBUtils.GetConnection();
      SqlCommand cmd = DBUtils.GetCommand();

      try
      {
        cmd.Transaction = conn.BeginTransaction();

        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Bill_Type", SqlDbType.SmallInt, billtype));
        paras.Add(DBUtils.MakeInParam("@Fee_Bill_Dept", SqlDbType.Int, feebilldept));
        paras.Add(DBUtils.MakeInParam("@Tran_Bill_Dept", SqlDbType.Int, tranbilldept));
        paras.Add(DBUtils.MakeInParam("@Dept_ID", SqlDbType.NVarChar, 6, deptid));

        DBUtils.ExecuteNonQuery(conn, cmd, CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Insert_DefaultDept", paras);

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

    #endregion Other Methods

    public static DateTime GetSysDate()
    {
      DateTime rtn = DateTime.MinValue;

      try
      {
        SqlDataReader reader = DBUtils.ExecuteReader(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_SysDate");

        if (reader.Read())
          rtn = Convert.ToDateTime(reader[0]);

        reader.Close();
      }
      catch
      {

      }

      return rtn;
    }

    public static double GetPreSumLast(string manid, string workdate, DateTime recodate)
    {
      double rtn = 0;
      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Man_ID", SqlDbType.NVarChar, 6, manid));
        paras.Add(DBUtils.MakeInParam("@Work_Date", SqlDbType.NVarChar, 8, workdate));
        paras.Add(DBUtils.MakeInParam("@Reco_Date", SqlDbType.DateTime, recodate));

        SqlDataReader reader = DBUtils.ExecuteReader(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Insert_AutoCash", paras);
        if (reader.Read())
        {
          if (reader["Sum_Last"] != DBNull.Value)
            rtn = Convert.ToDouble(reader["Sum_Last"]);
        }

        reader.Close();
      }
      catch { throw; }

      return rtn;
    }

    public static DataTable GetBillHoliday(string search)
    {
      DataTable tblMain;

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Search", SqlDbType.NVarChar, 300, search));

        tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Search_BillHoliday", paras);
        tblMain.TableName = "SelectMain";
      }
      catch { throw; }

      return tblMain;
    }

    public static void CreateBillHoliday(string deptid, string begin, string end)
    {
      SqlConnection conn = DBUtils.GetConnection();
      SqlCommand cmd = DBUtils.GetCommand();

      try
      {
        cmd.Transaction = conn.BeginTransaction();

        for (int i = Convert.ToInt32(begin); i <= Convert.ToInt32(end); i++)
        {
          ArrayList paras = new ArrayList();
          paras.Clear();
          paras.Add(DBUtils.MakeInParam("@Dept_ID", SqlDbType.NVarChar, 8, deptid));
          paras.Add(DBUtils.MakeInParam("@Holiday", SqlDbType.NVarChar, 8, i.ToString()));

          DBUtils.ExecuteNonQuery(conn, cmd, CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Create_BillHoliday", paras);
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

    public static void DeleteBillHoliday(string deptid, string holiday)
    {
      SqlConnection conn = DBUtils.GetConnection();
      SqlCommand cmd = DBUtils.GetCommand();

      try
      {
        cmd.Transaction = conn.BeginTransaction();

        ArrayList paras = new ArrayList();

        paras.Add(DBUtils.MakeInParam("@Dept_ID", SqlDbType.NVarChar, 8, deptid));
        paras.Add(DBUtils.MakeInParam("@Holiday", SqlDbType.NVarChar, 8, holiday));

        DBUtils.ExecuteNonQuery(conn, cmd, CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Delete_BillHoliday", paras);


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

    public static DataTable GetBillTranDetail(int billno)
    {
      DataTable tblMain;

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Bill_No", SqlDbType.Int, billno));

        tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Select_BillTranDetail", paras);
        tblMain.TableName = "SelectMain";
      }
      catch { throw; }

      return tblMain;
    }

    public static DataTable GetSysAuditList()
    {
      DataTable tblMain;

      try
      {
        tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Search_SysManAudit");
        tblMain.TableName = "SelectMain";
      }
      catch { throw; }

      return tblMain;
    }

    public static void InsertManAuditMoney(string manid, short auditmoney)
    {
      SqlConnection conn = DBUtils.GetConnection();
      SqlCommand cmd = DBUtils.GetCommand();

      try
      {
        cmd.Transaction = conn.BeginTransaction();

        ArrayList paras = new ArrayList();

        paras.Add(DBUtils.MakeInParam("@Man_ID", SqlDbType.NVarChar, 6, manid));
        paras.Add(DBUtils.MakeInParam("@Audit_Money", SqlDbType.SmallInt, 6, auditmoney));

        DBUtils.ExecuteNonQuery(conn, cmd, CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Insert_ManAuditMoney", paras);

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

    public static DataTable GetBackFeeFlow(string tranid)
    {
      DataTable tblMain;

      try
      {
        ArrayList paras = new ArrayList();

        paras.Add(DBUtils.MakeInParam("@Tran_ID", SqlDbType.NVarChar, 20, tranid));

        tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_BackFeeFlow", paras);
        tblMain.TableName = "SelectMain";
      }
      catch { throw; }

      return tblMain;
    }

    public static short GetBackFeeAuditMoney(double money)
    {
      short rtn = 0;

      try
      {
        ArrayList paras = new ArrayList();

        paras.Add(DBUtils.MakeInParam("@Audit_Money", SqlDbType.Decimal, money));

        SqlDataReader reader = DBUtils.ExecuteReader(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Search_AuditMoney", paras);
        if (reader.Read())
        {
          rtn = Convert.ToInt16(reader["Audit_Money"]);
        }

        reader.Close();
      }
      catch { throw; }

      return rtn;
    }

    public static DataTable GetAuditMan(string tranid, short auditmoney)
    {
      DataTable tblMain;

      try
      {
        ArrayList paras = new ArrayList();

        paras.Add(DBUtils.MakeInParam("@Tran_ID", SqlDbType.NVarChar, 20, tranid));
        paras.Add(DBUtils.MakeInParam("@Audit_Money", SqlDbType.SmallInt, auditmoney));

        tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_AuditMan", paras);
        tblMain.TableName = "SelectMain";
      }
      catch { throw; }

      return tblMain;
    }

    public static DataTable GetFeeAuditMan(string tranid)
    {
      DataTable tblMain;

      try
      {
        ArrayList paras = new ArrayList();

        paras.Add(DBUtils.MakeInParam("@Tran_ID", SqlDbType.NVarChar, 20, tranid));

        tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_FeeAuditMan", paras);
        tblMain.TableName = "SelectMain";
      }
      catch { throw; }

      return tblMain;
    }

    public static DataTable GetDayDisplay()
    {
      DataTable tblMain;

      try
      {
        tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_DayDisplay");
        tblMain.TableName = "SelectMain";
      }
      catch { throw; }

      return tblMain;
    }

    public static DataTable GetFeeCheckMan()
    {
      DataTable tblMain;

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Get_Action", SqlDbType.NVarChar, 10, DataGetAction.Full.ToString().ToLower()));

        tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_FeeCheckMan", paras);
        tblMain.TableName = "SelectMain";
      }
      catch { throw; }

      return tblMain;
    }

    public static void InsertFeeCheckMan(string manid)
    {
      SqlConnection conn = DBUtils.GetConnection();
      SqlCommand cmd = DBUtils.GetCommand();

      try
      {
        cmd.Transaction = conn.BeginTransaction();

        ArrayList paras = new ArrayList();

        paras.Add(DBUtils.MakeInParam("@Man_ID", SqlDbType.NVarChar, 6, manid));

        DBUtils.ExecuteNonQuery(conn, cmd, CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Insert_FeeCheckMan", paras);

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

    public static void DeleteFeeCheckMan(string manid)
    {
      SqlConnection conn = DBUtils.GetConnection();
      SqlCommand cmd = DBUtils.GetCommand();

      try
      {
        cmd.Transaction = conn.BeginTransaction();

        ArrayList paras = new ArrayList();

        paras.Add(DBUtils.MakeInParam("@Man_ID", SqlDbType.NVarChar, 6, manid));

        DBUtils.ExecuteNonQuery(conn, cmd, CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Delete_FeeCheckMan", paras);

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

    public static bool ValidHoliday(string deptid, string workdate)
    {
      bool rtn = false;

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Dept_ID", SqlDbType.NVarChar, 8, deptid));
        paras.Add(DBUtils.MakeInParam("@Work_Date", SqlDbType.NVarChar, 8, workdate));

        SqlDataReader reader = DBUtils.ExecuteReader(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Valid_BillHoliday", paras);

        if (reader.Read())
        {
          if ((int)reader["Cnt"] > 0)
            rtn = true;
        }

        reader.Close();
      }
      catch
      {

      }

      return rtn;
    }
  }
}
