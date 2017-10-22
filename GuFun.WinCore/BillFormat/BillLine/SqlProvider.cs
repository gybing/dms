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
		public static DataTable GetBillBaseLineList()
		{
			DataTable tblMain;

			try
			{
				ArrayList paras = new ArrayList(); 
				paras.Add(DBUtils.MakeInParam("@Get_Action", SqlDbType.NVarChar, 10, DataGetAction.Full.ToString().ToLower()));

				tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_BillBaseLine", paras);
				tblMain.TableName = "SelectMain";
			}
			catch { throw; }

			return tblMain;
		}

    public static DataTable GetBillBaseLineList(int format)
    {
      DataTable tblMain;

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Bill_Format", SqlDbType.Int, format));
        paras.Add(DBUtils.MakeInParam("@Get_Action", SqlDbType.NVarChar, 10, DataGetAction.ListRows.ToString().ToLower()));

        tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_BillBaseLine", paras);
        tblMain.TableName = "SelectMain";
      }
      catch { throw; }

      return tblMain;
    }

    public static BillLine PopulateBillBaseLine(IDataReader reader)
		{
			BillLine item = new BillLine();
			item.BillFormat = (int)reader["Bill_Format"];
			item.BillFormatName = reader["Bill_Format_Name"] as string;
			item.LineSerial = (short)reader["Line_Serial"];
			item.LineLeft = (short)reader["Line_Left"];
			item.LineTop = (short)reader["Line_Top"];
			item.LineRight = (short)reader["Line_Right"];
			item.LineBottom = (short)reader["Line_Bottom"];
			item.LineWidth = (short)reader["Line_Width"];
			item.LineType = (short)reader["Line_Type"];
			item.IsPrint = Convert.ToBoolean(reader["Is_Print"]);

			return item;
		}

    public static BillLine GetBillBaseLine(int format, short serial)
		{
			BillLine item = new BillLine();
			
			try
			{
				ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Bill_Format", SqlDbType.Int, format));
        paras.Add(DBUtils.MakeInParam("@Line_Serial", SqlDbType.SmallInt, serial));
				paras.Add(DBUtils.MakeInParam("@Get_Action", SqlDbType.NVarChar, 10, DataGetAction.Row.ToString().ToLower()));

        SqlDataReader reader = DBUtils.ExecuteReader(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_BillBaseLine", paras);
				
				if (reader.Read())
				{
					item = PopulateBillBaseLine(reader);
				}

				reader.Close();
			}
			catch { throw; }

			return item;
		}

    public static void CreateUpdateDeleteBillBaseLine(BillLine item, DataProviderAction action)
		{
			if (item == null)
				return;

			SqlConnection conn = DBUtils.GetConnection();
			SqlCommand cmd = DBUtils.GetCommand();

			try
			{
				cmd.Transaction = conn.BeginTransaction();

				ArrayList paras = new ArrayList();

				paras.Add(DBUtils.MakeInParam("@Bill_Format", SqlDbType.Int, item.BillFormat));
				paras.Add(DBUtils.MakeInParam("@Line_Serial", SqlDbType.SmallInt, item.LineSerial));
				paras.Add(DBUtils.MakeInParam("@Line_Left", SqlDbType.SmallInt, item.LineLeft));
				paras.Add(DBUtils.MakeInParam("@Line_Top", SqlDbType.SmallInt, item.LineTop));
				paras.Add(DBUtils.MakeInParam("@Line_Right", SqlDbType.SmallInt, item.LineRight));
				paras.Add(DBUtils.MakeInParam("@Line_Bottom", SqlDbType.SmallInt, item.LineBottom));
				paras.Add(DBUtils.MakeInParam("@Line_Width", SqlDbType.SmallInt, item.LineWidth));
				paras.Add(DBUtils.MakeInParam("@Line_Type", SqlDbType.SmallInt, item.LineType));
				paras.Add(DBUtils.MakeInParam("@Is_Print", SqlDbType.Bit, item.IsPrint));
				paras.Add(DBUtils.MakeInParam("@Action", SqlDbType.Int, action));

        DBUtils.ExecuteNonQuery(conn, cmd, CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_CreateUpdateDelete_BillBaseLine", paras);

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

    public static void DeleteBillBaseLine(int format)
    {
      SqlConnection conn = DBUtils.GetConnection();
      SqlCommand cmd = DBUtils.GetCommand();

      try
      {
        cmd.Transaction = conn.BeginTransaction();

        ArrayList paras = new ArrayList();

        paras.Add(DBUtils.MakeInParam("@Bill_Format", SqlDbType.Int, format));
        paras.Add(DBUtils.MakeInParam("@Action", SqlDbType.Int, DataProviderAction.Delete));

        DBUtils.ExecuteNonQuery(conn, cmd, CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_CreateUpdateDelete_BillBaseLine", paras);

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

    public static void CreateBillBaseLine(SqlConnection conn, SqlCommand cmd, BillFormat bill)
    {
      if (bill.ID == 0)
        return;

      try
      {
        ArrayList paras = new ArrayList();

        paras.Add(DBUtils.MakeInParam("@Bill_Format", SqlDbType.Int, bill.ID));
        paras.Add(DBUtils.MakeInParam("@Action", SqlDbType.Int, DataProviderAction.Delete));

        DBUtils.ExecuteNonQuery(conn, cmd, CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_CreateUpdateDelete_BillBaseLine", paras);

        foreach (BillLine item in bill.Lines)
        {
          paras.Clear();

          paras.Add(DBUtils.MakeInParam("@Bill_Format", SqlDbType.Int, item.BillFormat));
          paras.Add(DBUtils.MakeInParam("@Line_Serial", SqlDbType.SmallInt, item.LineSerial));
          paras.Add(DBUtils.MakeInParam("@Line_Left", SqlDbType.SmallInt, item.LineLeft));
          paras.Add(DBUtils.MakeInParam("@Line_Top", SqlDbType.SmallInt, item.LineTop));
          paras.Add(DBUtils.MakeInParam("@Line_Right", SqlDbType.SmallInt, item.LineRight));
          paras.Add(DBUtils.MakeInParam("@Line_Bottom", SqlDbType.SmallInt, item.LineBottom));
          paras.Add(DBUtils.MakeInParam("@Line_Width", SqlDbType.SmallInt, item.LineWidth));
          paras.Add(DBUtils.MakeInParam("@Line_Type", SqlDbType.SmallInt, item.LineType));
          paras.Add(DBUtils.MakeInParam("@Is_Print", SqlDbType.Bit, item.IsPrint));
          paras.Add(DBUtils.MakeInParam("@Action", SqlDbType.Int, DataProviderAction.Create));

          DBUtils.ExecuteNonQuery(conn, cmd, CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_CreateUpdateDelete_BillBaseLine", paras);
        }
      }
      catch
      {
        throw;
      }
    }
	}
}
