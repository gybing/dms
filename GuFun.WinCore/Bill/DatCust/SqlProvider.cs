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

    public static void CreateDatCust(DatCust item)
    {
      if (item == null)
        return;

      SqlConnection conn = DBUtils.GetConnection();
      SqlCommand cmd = DBUtils.GetCommand();

      try
      {
        cmd.Transaction = conn.BeginTransaction();

        ArrayList paras = new ArrayList();

        
        paras.Add(DBUtils.MakeInParam("@billno", SqlDbType.Int, item.billno));
        paras.Add(DBUtils.MakeInParam("@trankey", SqlDbType.VarChar, 32, item.trankey));
        paras.Add(DBUtils.MakeInParam("@manid", SqlDbType.VarChar, 6, item.manid));

        DBUtils.ExecuteNonQuery(conn, cmd, CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Create_DatCust", paras);

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

    public static void CreateDatCust(SqlConnection conn, SqlCommand cmd, DatCust item)
    {
      if (item == null)
        return;

      ArrayList paras = new ArrayList();


      paras.Add(DBUtils.MakeInParam("@billno", SqlDbType.Int, item.billno));
      paras.Add(DBUtils.MakeInParam("@trankey", SqlDbType.VarChar, 32, item.trankey));
      paras.Add(DBUtils.MakeInParam("@manid", SqlDbType.VarChar, 6, item.manid));

      DBUtils.ExecuteNonQuery(conn, cmd, CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Create_DatCust", paras);
    }

    public static void DeleteDatCust(DatCust item)
    {
      if (item == null)
        return;

      SqlConnection conn = DBUtils.GetConnection();
      SqlCommand cmd = DBUtils.GetCommand();

      try
      {
        cmd.Transaction = conn.BeginTransaction();

        ArrayList paras = new ArrayList();


        paras.Add(DBUtils.MakeInParam("@billno", SqlDbType.Int, item.billno));
        paras.Add(DBUtils.MakeInParam("@trankey", SqlDbType.VarChar, 32, item.trankey));
        paras.Add(DBUtils.MakeInParam("@manid", SqlDbType.VarChar, 6, item.manid));

        DBUtils.ExecuteNonQuery(conn, cmd, CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Delete_DatCust", paras);

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

    public static void DeleteDatRelaCust(int billno, string manid)
    {
      SqlConnection conn = DBUtils.GetConnection();
      SqlCommand cmd = DBUtils.GetCommand();

      try
      {
        cmd.Transaction = conn.BeginTransaction();

        ArrayList paras = new ArrayList();


        paras.Add(DBUtils.MakeInParam("@billno", SqlDbType.Int, billno));
        paras.Add(DBUtils.MakeInParam("@manid", SqlDbType.VarChar, 6, manid));

        DBUtils.ExecuteNonQuery(conn, cmd, CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Delete_DatRelaCust", paras);

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

    public static void DeleteDatCust(SqlConnection conn, SqlCommand cmd, DatCust item)
    {
      if (item == null)
        return;

      ArrayList paras = new ArrayList();


      paras.Add(DBUtils.MakeInParam("@billno", SqlDbType.Int, item.billno));
      paras.Add(DBUtils.MakeInParam("@trankey", SqlDbType.VarChar, 32, item.trankey));
      paras.Add(DBUtils.MakeInParam("@manid", SqlDbType.VarChar, 6, item.manid));

      DBUtils.ExecuteNonQuery(conn, cmd, CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Delete_DatCust", paras);
    }
  }
}
