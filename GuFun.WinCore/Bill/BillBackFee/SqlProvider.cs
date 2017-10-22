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
    //public static DataTable GetBillBackFeeList()
    //{
    //  DataTable tblMain;

    //  try
    //  {
    //    ArrayList paras = new ArrayList(); 
    //    paras.Add(DBUtils.MakeInParam("@Get_Action", SqlDbType.NVarChar, 10, DataGetAction.Full.ToString().ToLower()));

    //    tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_BillBackFee", paras);
    //    tblMain.TableName = "SelectMain";
    //  }
    //  catch { throw; }

    //  return tblMain;
    //}

    //public static DataTable GetBillBackFeeFault()
    //{
    //  DataTable tblMain;

    //  try
    //  {
    //    tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_BillBackFeeFault");
    //    tblMain.TableName = "SelectMain";
    //  }
    //  catch { throw; }

    //  return tblMain;
    //}

    //public static DataTable GetBillBackFeeList(short status)
    //{
    //  DataTable tblMain;

    //  try
    //  {
    //    ArrayList paras = new ArrayList();
    //    paras.Add(DBUtils.MakeInParam("@BackFee_Status", SqlDbType.SmallInt, status));

    //    tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_BillBackFeeByStatus", paras);
    //    tblMain.TableName = "SelectMain";
    //  }
    //  catch { throw; }

    //  return tblMain;
    //}

    //public static DataTable GetBillBackFeeByDept()
    //{
    //  DataTable tblMain;

    //  try
    //  {
    //    tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_BillBackFeeByDept");
    //    tblMain.TableName = "SelectMain";
    //  }
    //  catch { throw; }

    //  return tblMain;
    //}

    //public static DataTable GetBillBackFeeByDeal()
    //{
    //  DataTable tblMain;

    //  try
    //  {
    //    tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_BillBackFeeByDeal");
    //    tblMain.TableName = "SelectMain";
    //  }
    //  catch { throw; }

    //  return tblMain;
    //}

    //public static DataTable GetBillBackFeeByBack()
    //{
    //  DataTable tblMain;

    //  try
    //  {
    //    tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_BillBackFeeByBack");
    //    tblMain.TableName = "SelectMain";
    //  }
    //  catch { throw; }

    //  return tblMain;
    //}

    //public static DataTable GetBillBackFeeByCheck()
    //{
    //  DataTable tblMain;

    //  try
    //  {
    //    tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_BillBackFeeByCheck");
    //    tblMain.TableName = "SelectMain";
    //  }
    //  catch { throw; }

    //  return tblMain;
    //}

    //public static DataTable GetBillBackFeeByAudit()
    //{
    //  DataTable tblMain;

    //  try
    //  {
    //    tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_BillBackFeeByAudit");
    //    tblMain.TableName = "SelectMain";
    //  }
    //  catch { throw; }

    //  return tblMain;
    //}

    //public static DataTable SearchBillBackFee(string sql)
    //{
    //  DataTable tblMain;

    //  try
    //  {
    //    ArrayList paras = new ArrayList();
    //    paras.Add(DBUtils.MakeInParam("@Search", SqlDbType.NVarChar, 100, sql));

    //    tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Search_BillBackFee", paras);
    //    tblMain.TableName = "SelectMain";
    //  }
    //  catch { throw; }

    //  return tblMain;
    //}

    //public static DataTable SearchBillBackFeeDept(string sql)
    //{
    //  DataTable tblMain;

    //  try
    //  {
    //    ArrayList paras = new ArrayList();
    //    paras.Add(DBUtils.MakeInParam("@Search", SqlDbType.NVarChar, 200, sql));

    //    tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Search_BillBackFeeDept", paras);
    //    tblMain.TableName = "SelectMain";
    //  }
    //  catch { throw; }

    //  return tblMain;
    //}

    //public static BillBackFee PopulateBillBackFee(IDataReader reader)
    //{
    //  BillBackFee item = new BillBackFee();
    //  item.TranID = reader["Tran_ID"] as string;
    //  item.BackFeeWord = reader["BackFee_Word"] as string;
    //  item.BackFeeCode = reader["BackFee_Code"] as string;
    //  item.ApplyMan = reader["Apply_Man"] as string;
    //  item.ApplyManName = reader["Apply_Man_Name"] as string;
    //  if (reader["Cust_ID"] != DBNull.Value)
    //    item.CustID = reader["Cust_ID"] as string;
    //  item.BillDeptName = reader["Bill_Dept_Name"] as string;
    //  item.BankFullName = reader["Bank_Full_Name"] as string;
    //  item.BankAccount = reader["Bank_Account"] as string;
    //  item.BackFeeCash = Convert.ToDouble(reader["BackFee_Cash"]);
    //  if (reader["Apply_Desc"] != DBNull.Value)
    //    item.ApplyDesc = reader["Apply_Desc"] as string;
    //  item.ApplyDate = Convert.ToDateTime(reader["Apply_Date"]);
    //  if (reader["Check_Man"] != DBNull.Value)
    //    item.CheckMan = reader["Check_Man"] as string;
    //  if (reader["Check_Man_Name"] != DBNull.Value)
    //    item.CheckManName = reader["Check_Man_Name"] as string;
    //  if (reader["Check_Date"] != DBNull.Value)
    //    item.CheckDate = Convert.ToDateTime(reader["Check_Date"]);
    //  if (reader["Check_Desc"] != DBNull.Value)
    //    item.CheckDesc = reader["Check_Desc"] as string;
    //  if (reader["Audit_Man"] != DBNull.Value)
    //    item.AuditMan = reader["Audit_Man"] as string;
    //  if (reader["Audit_Man_Name"] != DBNull.Value)
    //    item.AuditManName = reader["Audit_Man_Name"] as string;
    //  if (reader["Audit_Date"] != DBNull.Value)
    //    item.AuditDate = Convert.ToDateTime(reader["Audit_Date"]);
    //  if (reader["Audit_Desc"] != DBNull.Value)
    //    item.AuditDesc = reader["Audit_Desc"] as string;
    //  if (reader["Deal_Man"] != DBNull.Value)
    //    item.DealMan = reader["Deal_Man"] as string;
    //  if (reader["Deal_Man_Name"] != DBNull.Value)
    //    item.DealManName = reader["Deal_Man_Name"] as string;
    //  if (reader["Deal_Date"] != DBNull.Value)
    //    item.DealDate = Convert.ToDateTime(reader["Deal_Date"]);
    //  if (reader["Deal_Desc"] != DBNull.Value)
    //    item.DealDesc = reader["Deal_Desc"] as string;
    //  if (reader["Last_Man"] != DBNull.Value)
    //    item.LastMan = reader["Last_Man"] as string;
    //  if (reader["Last_Man_Name"] != DBNull.Value)
    //    item.LastManName = reader["Last_Man_Name"] as string;
    //  if (reader["Last_Date"] != DBNull.Value)
    //    item.LastDate = Convert.ToDateTime(reader["Last_Date"]);
    //  if (reader["Last_Desc"] != DBNull.Value)
    //    item.LastDesc = reader["Last_Desc"] as string;
    //  item.BackFeeStatus = (short)reader["BackFee_Status"];
    //  item.BackFeeStatusName = reader["BackFee_Status_Name"] as string;
    //  if (reader["Dept_Man"] != DBNull.Value)
    //    item.DeptMan = reader["Dept_Man"] as string;
    //  if (reader["Dept_Man_Name"] != DBNull.Value)
    //    item.DeptManName = reader["Dept_Man_Name"] as string;
    //  if (reader["Dept_Date"] != DBNull.Value)
    //    item.DeptDate = Convert.ToDateTime(reader["Dept_Date"]);
    //  if (reader["Dept_Desc"] != DBNull.Value)
    //    item.DeptDesc = reader["Dept_Desc"] as string;
    //  if (reader["Bill_Code"] != DBNull.Value)
    //    item.BillCode = reader["Bill_Code"] as string;
    //  if (reader["Bill_Number"] != DBNull.Value)
    //    item.BillNumber = reader["Bill_Number"] as string;
    //  if (reader["Back_Desc"] != DBNull.Value)
    //    item.BackDesc = reader["Back_Desc"] as string;
    //  if (reader["Back_Man"] != DBNull.Value)
    //    item.BackMan = reader["Back_Man"] as string;
    //  if (reader["Back_Man_Name"] != DBNull.Value)
    //    item.BackManName = reader["Back_Man_Name"] as string;
    //  if (reader["Back_Date"] != DBNull.Value)
    //    item.BackDate = Convert.ToDateTime(reader["Back_Date"]);
    //  if (reader["Back_Type"] != DBNull.Value)
    //    item.BackType = Convert.ToInt16(reader["Back_Type"]);

    //  return item;
    //}

    //public static BillBackFee GetBillBackFee(string tranid)
    //{
    //  BillBackFee item = new BillBackFee();
			
    //  try
    //  {
    //    ArrayList paras = new ArrayList();
    //    paras.Add(DBUtils.MakeInParam("@Tran_ID", SqlDbType.NVarChar, 20, tranid));
    //    paras.Add(DBUtils.MakeInParam("@Get_Action", SqlDbType.NVarChar, 10, DataGetAction.Row.ToString().ToLower()));

    //    SqlDataReader reader = DBUtils.ExecuteReader(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_BillBackFee", paras);
				
    //    if (reader.Read())
    //    {
    //      item = PopulateBillBackFee(reader);
    //    }

    //    reader.Close();
    //  }
    //  catch { throw; }

    //  return item;
    //}

    //public static void CreateUpdateDeleteBillBackFee(BillBackFee item, DataProviderAction action)
    //{
    //  if (item == null)
    //    return;

    //  SqlConnection conn = DBUtils.GetConnection();
    //  SqlCommand cmd = DBUtils.GetCommand();

    //  try
    //  {
    //    cmd.Transaction = conn.BeginTransaction();

    //    ArrayList paras = new ArrayList();

    //    paras.Add(DBUtils.MakeInParam("@Tran_ID", SqlDbType.NVarChar, 20, item.TranID));
    //    paras.Add(DBUtils.MakeInParam("@BackFee_Word", SqlDbType.NVarChar, 10, item.BackFeeWord));
    //    paras.Add(DBUtils.MakeInParam("@BackFee_Code", SqlDbType.NVarChar, 10, item.BackFeeCode));
    //    paras.Add(DBUtils.MakeInParam("@Apply_Man", SqlDbType.NVarChar, 6, item.ApplyMan));
    //    paras.Add(DBUtils.MakeInParam("@Apply_Man_Name", SqlDbType.NVarChar, 10, item.ApplyManName));
    //    paras.Add(DBUtils.MakeInParam("@Cust_ID", SqlDbType.NVarChar, 20, item.CustID));
    //    paras.Add(DBUtils.MakeInParam("@Bill_Dept_Name", SqlDbType.NVarChar, 40, item.BillDeptName));
    //    paras.Add(DBUtils.MakeInParam("@Bank_Full_Name", SqlDbType.NVarChar, 30, item.BankFullName));
    //    paras.Add(DBUtils.MakeInParam("@Bank_Account", SqlDbType.NVarChar, 30, item.BankAccount));
    //    paras.Add(DBUtils.MakeInParam("@BackFee_Cash", SqlDbType.Decimal, item.BackFeeCash));
    //    paras.Add(DBUtils.MakeInParam("@Apply_Desc", SqlDbType.NVarChar, 100, item.ApplyDesc));
    //    paras.Add(DBUtils.MakeInParam("@Apply_Date", SqlDbType.DateTime, item.ApplyDate));
    //    paras.Add(DBUtils.MakeInParam("@Check_Man", SqlDbType.NVarChar, 6, item.CheckMan));
    //    paras.Add(DBUtils.MakeInParam("@Check_Man_Name", SqlDbType.NVarChar, 10, item.CheckManName));
    //    paras.Add(DBUtils.MakeInParam("@Check_Date", SqlDbType.DateTime, Publics.GetDataDateTime(item.CheckDate)));
    //    paras.Add(DBUtils.MakeInParam("@Check_Desc", SqlDbType.NVarChar, 100, item.CheckDesc));
    //    paras.Add(DBUtils.MakeInParam("@Audit_Man", SqlDbType.NVarChar, 6, item.AuditMan));
    //    paras.Add(DBUtils.MakeInParam("@Audit_Man_Name", SqlDbType.NVarChar, 10, item.AuditManName));
    //    paras.Add(DBUtils.MakeInParam("@Audit_Date", SqlDbType.DateTime, Publics.GetDataDateTime(item.AuditDate)));
    //    paras.Add(DBUtils.MakeInParam("@Audit_Desc", SqlDbType.NVarChar, 100, item.AuditDesc));
    //    paras.Add(DBUtils.MakeInParam("@Deal_Man", SqlDbType.NVarChar, 6, item.DealMan));
    //    paras.Add(DBUtils.MakeInParam("@Deal_Man_Name", SqlDbType.NVarChar, 10, item.DealManName));
    //    paras.Add(DBUtils.MakeInParam("@Deal_Date", SqlDbType.DateTime, Publics.GetDataDateTime(item.DealDate)));
    //    paras.Add(DBUtils.MakeInParam("@Deal_Desc", SqlDbType.NVarChar, 100, item.DealDesc));
    //    paras.Add(DBUtils.MakeInParam("@Last_Man", SqlDbType.NVarChar, 6, item.LastMan));
    //    paras.Add(DBUtils.MakeInParam("@Last_Man_Name", SqlDbType.NVarChar, 10, item.LastManName));
    //    paras.Add(DBUtils.MakeInParam("@Last_Date", SqlDbType.DateTime, Publics.GetDataDateTime(item.LastDate)));
    //    paras.Add(DBUtils.MakeInParam("@Last_Desc", SqlDbType.NVarChar, 100, item.LastDesc));
    //    paras.Add(DBUtils.MakeInParam("@BackFee_Status", SqlDbType.SmallInt, item.BackFeeStatus));
    //    paras.Add(DBUtils.MakeInParam("@Action", SqlDbType.Int, action));

    //    DBUtils.ExecuteNonQuery(conn, cmd, CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_CreateUpdateDelete_BillBackFee", paras);

    //    cmd.Transaction.Commit();
    //  }
    //  catch
    //  {
    //    cmd.Transaction.Rollback();
    //    throw;
    //  }
    //  finally
    //  {
    //    DBUtils.SetDispose(conn, cmd);
    //  }
    //}

    //public static void ApplyBillBackFee(BillBackFee item, DataProviderAction action)
    //{
    //  if (item == null)
    //    return;

    //  SqlConnection conn = DBUtils.GetConnection();
    //  SqlCommand cmd = DBUtils.GetCommand();

    //  try
    //  {
    //    cmd.Transaction = conn.BeginTransaction();

    //    ArrayList paras = new ArrayList();

    //    if (action == DataProviderAction.Create)
    //      paras.Add(DBUtils.MakeOutParam("@Tran_ID", SqlDbType.NVarChar, 20));
    //    else
    //      paras.Add(DBUtils.MakeInParam("@Tran_ID", SqlDbType.NVarChar, 20, item.TranID));
    //    paras.Add(DBUtils.MakeInParam("@BackFee_Word", SqlDbType.NVarChar, 10, item.BackFeeWord));
    //    paras.Add(DBUtils.MakeInParam("@BackFee_Code", SqlDbType.NVarChar, 10, item.BackFeeCode));
    //    paras.Add(DBUtils.MakeInParam("@Apply_Man", SqlDbType.NVarChar, 6, item.ApplyMan));
    //    paras.Add(DBUtils.MakeInParam("@Apply_Man_Name", SqlDbType.NVarChar, 10, item.ApplyManName));
    //    paras.Add(DBUtils.MakeInParam("@Cust_ID", SqlDbType.NVarChar, 20, item.CustID));
    //    paras.Add(DBUtils.MakeInParam("@Bill_Dept_Name", SqlDbType.NVarChar, 40, item.BillDeptName));
    //    paras.Add(DBUtils.MakeInParam("@Bank_Full_Name", SqlDbType.NVarChar, 30, item.BankFullName));
    //    paras.Add(DBUtils.MakeInParam("@Bank_Account", SqlDbType.NVarChar, 30, item.BankAccount));
    //    paras.Add(DBUtils.MakeInParam("@BackFee_Cash", SqlDbType.Decimal, item.BackFeeCash));
    //    paras.Add(DBUtils.MakeInParam("@Apply_Desc", SqlDbType.Text, item.ApplyDesc));
    //    paras.Add(DBUtils.MakeInParam("@Apply_Date", SqlDbType.DateTime, item.ApplyDate));
    //    paras.Add(DBUtils.MakeInParam("@BackFee_Status", SqlDbType.SmallInt, item.BackFeeStatus));
    //    paras.Add(DBUtils.MakeInParam("@Back_Type", SqlDbType.SmallInt, item.BackType));
    //    paras.Add(DBUtils.MakeInParam("@BackFee_Flow", SqlDbType.SmallInt, item.BackFeeFlow));
    //    paras.Add(DBUtils.MakeInParam("@Audit_Money", SqlDbType.SmallInt, item.AuditMoney));
    //    paras.Add(DBUtils.MakeInParam("@Action", SqlDbType.Int, action));

    //    DBUtils.ExecuteNonQuery(conn, cmd, CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Apply_BillBackFee", paras);

    //    if (action == DataProviderAction.Create)
    //    {
    //      item.TranID = ((((SqlParameter)paras[0]).Value != null) ? (((SqlParameter)paras[0]).Value).ToString() : String.Empty);
    //    }

    //    cmd.Transaction.Commit();
    //  }
    //  catch
    //  {
    //    cmd.Transaction.Rollback();
    //    throw;
    //  }
    //  finally
    //  {
    //    DBUtils.SetDispose(conn, cmd);
    //  }
    //}

    //public static void DeptBillBackFee(BillBackFee item)
    //{
    //  if (item == null)
    //    return;

    //  SqlConnection conn = DBUtils.GetConnection();
    //  SqlCommand cmd = DBUtils.GetCommand();

    //  try
    //  {
    //    cmd.Transaction = conn.BeginTransaction();

    //    ArrayList paras = new ArrayList();

    //    paras.Add(DBUtils.MakeInParam("@Tran_ID", SqlDbType.NVarChar, 20, item.TranID));
    //    paras.Add(DBUtils.MakeInParam("@Dept_Man", SqlDbType.NVarChar, 6, item.DeptMan));
    //    paras.Add(DBUtils.MakeInParam("@Dept_Man_Name", SqlDbType.NVarChar, 10, item.DeptManName));
    //    paras.Add(DBUtils.MakeInParam("@Dept_Date", SqlDbType.DateTime, Publics.GetDataDateTime(item.DeptDate)));
    //    paras.Add(DBUtils.MakeInParam("@Dept_Desc", SqlDbType.NVarChar, 100, item.DeptDesc));
    //    paras.Add(DBUtils.MakeInParam("@BackFee_Status", SqlDbType.SmallInt, item.BackFeeStatus));

    //    DBUtils.ExecuteNonQuery(conn, cmd, CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Dept_BillBackFee", paras);

    //    cmd.Transaction.Commit();
    //  }
    //  catch
    //  {
    //    cmd.Transaction.Rollback();
    //    throw;
    //  }
    //  finally
    //  {
    //    DBUtils.SetDispose(conn, cmd);
    //  }
    //}

    //public static void BackBillBackFee(BillBackFee item)
    //{
    //  if (item == null)
    //    return;

    //  SqlConnection conn = DBUtils.GetConnection();
    //  SqlCommand cmd = DBUtils.GetCommand();

    //  try
    //  {
    //    cmd.Transaction = conn.BeginTransaction();

    //    ArrayList paras = new ArrayList();

    //    paras.Add(DBUtils.MakeInParam("@Tran_ID", SqlDbType.NVarChar, 20, item.TranID));
    //    paras.Add(DBUtils.MakeInParam("@Back_Man", SqlDbType.NVarChar, 6, item.BackMan));
    //    paras.Add(DBUtils.MakeInParam("@Back_Man_Name", SqlDbType.NVarChar, 10, item.BackManName));
    //    paras.Add(DBUtils.MakeInParam("@Back_Date", SqlDbType.DateTime, Publics.GetDataDateTime(item.BackDate)));
    //    paras.Add(DBUtils.MakeInParam("@Back_Desc", SqlDbType.NVarChar, 100, item.BackDesc));
    //    paras.Add(DBUtils.MakeInParam("@BackFee_Status", SqlDbType.SmallInt, item.BackFeeStatus));

    //    DBUtils.ExecuteNonQuery(conn, cmd, CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Back_BillBackFee", paras);

    //    cmd.Transaction.Commit();
    //  }
    //  catch
    //  {
    //    cmd.Transaction.Rollback();
    //    throw;
    //  }
    //  finally
    //  {
    //    DBUtils.SetDispose(conn, cmd);
    //  }
    //}

    //public static void CheckBillBackFee(BillBackFee item)
    //{
    //  if (item == null)
    //    return;

    //  SqlConnection conn = DBUtils.GetConnection();
    //  SqlCommand cmd = DBUtils.GetCommand();

    //  try
    //  {
    //    cmd.Transaction = conn.BeginTransaction();

    //    ArrayList paras = new ArrayList();

    //    paras.Add(DBUtils.MakeInParam("@Tran_ID", SqlDbType.NVarChar, 20, item.TranID));
    //    paras.Add(DBUtils.MakeInParam("@Check_Man", SqlDbType.NVarChar, 6, item.CheckMan));
    //    paras.Add(DBUtils.MakeInParam("@Check_Man_Name", SqlDbType.NVarChar, 10, item.CheckManName));
    //    paras.Add(DBUtils.MakeInParam("@Check_Date", SqlDbType.DateTime, Publics.GetDataDateTime(item.CheckDate)));
    //    paras.Add(DBUtils.MakeInParam("@Check_Desc", SqlDbType.NVarChar, 100, item.CheckDesc));
    //    paras.Add(DBUtils.MakeInParam("@BackFee_Status", SqlDbType.SmallInt, item.BackFeeStatus));

    //    DBUtils.ExecuteNonQuery(conn, cmd, CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Check_BillBackFee", paras);

    //    cmd.Transaction.Commit();
    //  }
    //  catch
    //  {
    //    cmd.Transaction.Rollback();
    //    throw;
    //  }
    //  finally
    //  {
    //    DBUtils.SetDispose(conn, cmd);
    //  }
    //}

    //public static void AuditBillBackFee(BillBackFee item)
    //{
    //  if (item == null)
    //    return;

    //  SqlConnection conn = DBUtils.GetConnection();
    //  SqlCommand cmd = DBUtils.GetCommand();

    //  try
    //  {
    //    cmd.Transaction = conn.BeginTransaction();

    //    ArrayList paras = new ArrayList();

    //    paras.Add(DBUtils.MakeInParam("@Tran_ID", SqlDbType.NVarChar, 20, item.TranID));
    //    paras.Add(DBUtils.MakeInParam("@Audit_Man", SqlDbType.NVarChar, 6, item.AuditMan));
    //    paras.Add(DBUtils.MakeInParam("@Audit_Man_Name", SqlDbType.NVarChar, 10, item.AuditManName));
    //    paras.Add(DBUtils.MakeInParam("@Audit_Date", SqlDbType.DateTime, Publics.GetDataDateTime(item.AuditDate)));
    //    paras.Add(DBUtils.MakeInParam("@Audit_Desc", SqlDbType.NVarChar, 100, item.AuditDesc));
    //    paras.Add(DBUtils.MakeInParam("@BackFee_Status", SqlDbType.SmallInt, item.BackFeeStatus));

    //    DBUtils.ExecuteNonQuery(conn, cmd, CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Audit_BillBackFee", paras);

    //    cmd.Transaction.Commit();
    //  }
    //  catch
    //  {
    //    cmd.Transaction.Rollback();
    //    throw;
    //  }
    //  finally
    //  {
    //    DBUtils.SetDispose(conn, cmd);
    //  }
    //}

    //public static void DealBillBackFee(BillBackFee item)
    //{
    //  if (item == null)
    //    return;

    //  SqlConnection conn = DBUtils.GetConnection();
    //  SqlCommand cmd = DBUtils.GetCommand();

    //  try
    //  {
    //    cmd.Transaction = conn.BeginTransaction();

    //    ArrayList paras = new ArrayList();

    //    paras.Add(DBUtils.MakeInParam("@Tran_ID", SqlDbType.NVarChar, 20, item.TranID));
    //    paras.Add(DBUtils.MakeInParam("@Deal_Man", SqlDbType.NVarChar, 6, item.DealMan));
    //    paras.Add(DBUtils.MakeInParam("@Deal_Man_Name", SqlDbType.NVarChar, 10, item.DealManName));
    //    paras.Add(DBUtils.MakeInParam("@Deal_Date", SqlDbType.DateTime, Publics.GetDataDateTime(item.DealDate)));
    //    paras.Add(DBUtils.MakeInParam("@Deal_Desc", SqlDbType.NVarChar, 100, item.DealDesc));
    //    paras.Add(DBUtils.MakeInParam("@Bill_Code", SqlDbType.NVarChar, 20, item.BillCode));
    //    paras.Add(DBUtils.MakeInParam("@Bill_Number", SqlDbType.NVarChar, 20, item.BillNumber));
    //    paras.Add(DBUtils.MakeInParam("@BackFee_Status", SqlDbType.SmallInt, item.BackFeeStatus));

    //    DBUtils.ExecuteNonQuery(conn, cmd, CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Deal_BillBackFee", paras);

    //    cmd.Transaction.Commit();
    //  }
    //  catch
    //  {
    //    cmd.Transaction.Rollback();
    //    throw;
    //  }
    //  finally
    //  {
    //    DBUtils.SetDispose(conn, cmd);
    //  }
    //}

    //public static void FaultBillBackFee(BillBackFee item)
    //{
    //  if (item == null)
    //    return;

    //  SqlConnection conn = DBUtils.GetConnection();
    //  SqlCommand cmd = DBUtils.GetCommand();

    //  try
    //  {
    //    cmd.Transaction = conn.BeginTransaction();

    //    ArrayList paras = new ArrayList();

    //    paras.Add(DBUtils.MakeOutParam("@Tran_ID", SqlDbType.NVarChar, 20));        
    //    paras.Add(DBUtils.MakeInParam("@BackFee_Word", SqlDbType.NVarChar, 10, item.BackFeeWord));
    //    paras.Add(DBUtils.MakeInParam("@BackFee_Code", SqlDbType.NVarChar, 10, item.BackFeeCode));
    //    paras.Add(DBUtils.MakeInParam("@Apply_Man", SqlDbType.NVarChar, 6, item.ApplyMan));
    //    paras.Add(DBUtils.MakeInParam("@Apply_Man_Name", SqlDbType.NVarChar, 10, item.ApplyManName));
    //    paras.Add(DBUtils.MakeInParam("@Cust_ID", SqlDbType.NVarChar, 20, item.CustID));
    //    paras.Add(DBUtils.MakeInParam("@Bill_Dept_Name", SqlDbType.NVarChar, 40, item.BillDeptName));
    //    paras.Add(DBUtils.MakeInParam("@Bank_Full_Name", SqlDbType.NVarChar, 30, item.BankFullName));
    //    paras.Add(DBUtils.MakeInParam("@Bank_Account", SqlDbType.NVarChar, 30, item.BankAccount));
    //    paras.Add(DBUtils.MakeInParam("@BackFee_Cash", SqlDbType.Decimal, item.BackFeeCash));
    //    paras.Add(DBUtils.MakeInParam("@Apply_Desc", SqlDbType.NVarChar, 100, item.ApplyDesc));
    //    paras.Add(DBUtils.MakeInParam("@Apply_Date", SqlDbType.DateTime, item.ApplyDate));
    //    paras.Add(DBUtils.MakeInParam("@BackFee_Status", SqlDbType.SmallInt, item.BackFeeStatus));
    //    paras.Add(DBUtils.MakeInParam("@Old_Tran", SqlDbType.NVarChar, 20, item.TranID));

    //    DBUtils.ExecuteNonQuery(conn, cmd, CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Fault_BillBackFee", paras);

    //    item.TranID = ((((SqlParameter)paras[0]).Value != null) ? (((SqlParameter)paras[0]).Value).ToString() : String.Empty);

    //    cmd.Transaction.Commit();
    //  }
    //  catch
    //  {
    //    cmd.Transaction.Rollback();
    //    throw;
    //  }
    //  finally
    //  {
    //    DBUtils.SetDispose(conn, cmd);
    //  }
    //}
	}
}
