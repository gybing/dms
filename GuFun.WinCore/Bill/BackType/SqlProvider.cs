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
    public static DataTable GetBillBackTypeList()
    {
      DataTable tblMain;

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Get_Action", SqlDbType.NVarChar, 10, DataGetAction.Full.ToString().ToLower()));

        tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_BackType", paras);
        tblMain.TableName = "SelectMain";
      }
      catch { throw; }

      return tblMain;
    }

    public static DataTable GetBillBackTypeList(short feebackmodel)
    {
      DataTable tblMain;

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@FeeBack_Model", SqlDbType.SmallInt, feebackmodel));
        paras.Add(DBUtils.MakeInParam("@Get_Action", SqlDbType.NVarChar, 10, DataGetAction.Condition.ToString().ToLower()));

        tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_BackType", paras);
        tblMain.TableName = "SelectMain";
      }
      catch { throw; }

      return tblMain;
    }

    public static BillBackType PopulateBillBackType(IDataReader reader)
    {
      BillBackType item = new BillBackType();
      item.BackType = (short)reader["Back_Type"];
      item.BackTypeName = reader["Back_Type_Name"] as string;
      item.FeeBackModel = (short)reader["FeeBack_Model"];
      item.FeeBackModelName = reader["FeeBack_Model_Name"] as string;

      return item;
    }

    public static BillBackType GetBillBackType(short backtype)
    {
      BillBackType item = new BillBackType();

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Back_Type", SqlDbType.SmallInt, backtype));
        paras.Add(DBUtils.MakeInParam("@Get_Action", SqlDbType.NVarChar, 10, DataGetAction.Row.ToString().ToLower()));

        SqlDataReader reader = DBUtils.ExecuteReader(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_BackType", paras);

        if (reader.Read())
        {
          item = PopulateBillBackType(reader);
        }

        reader.Close();
      }
      catch { throw; }

      return item;
    }

    public static void CreateUpdateDeleteBillBackType(BillBackType item, DataProviderAction action)
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
          paras.Add(DBUtils.MakeOutParam("@Back_Type", SqlDbType.SmallInt));
        }
        else
        {
          paras.Add(DBUtils.MakeInParam("@Back_Type", SqlDbType.SmallInt, item.BackType));
        }
        paras.Add(DBUtils.MakeInParam("@Back_Type_Name", SqlDbType.NVarChar, 20, item.BackTypeName));
        paras.Add(DBUtils.MakeInParam("@FeeBack_Model", SqlDbType.SmallInt, item.FeeBackModel));
        paras.Add(DBUtils.MakeInParam("@Action", SqlDbType.Int, action));

        DBUtils.ExecuteNonQuery(conn, cmd, CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_CreateUpdateDelete_BillBackType", paras);

        if (action == DataProviderAction.Create)
        {
          item.BackType = ((((SqlParameter)paras[0]).Value != null) ? (Convert.ToInt16(((SqlParameter)paras[0]).Value)) : (short)0);
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
