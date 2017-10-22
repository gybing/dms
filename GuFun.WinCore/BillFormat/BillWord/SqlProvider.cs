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
		public static DataTable GetBillBaseWordList()
		{
			DataTable tblMain;

			try
			{
				ArrayList paras = new ArrayList(); 
				paras.Add(DBUtils.MakeInParam("@Get_Action", SqlDbType.NVarChar, 10, DataGetAction.Full.ToString().ToLower()));

				tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_BillBaseWord", paras);
				tblMain.TableName = "SelectMain";
			}
			catch { throw; }

			return tblMain;
		}

    public static DataTable GetBillBaseWordList(int format)
    {
      DataTable tblMain;

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Bill_Format", SqlDbType.Int, format));
        paras.Add(DBUtils.MakeInParam("@Get_Action", SqlDbType.NVarChar, 10, DataGetAction.ListRows.ToString().ToLower()));

        tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_BillBaseWord", paras);
        tblMain.TableName = "SelectMain";
      }
      catch { throw; }

      return tblMain;
    }

    public static BillWord PopulateBillBaseWord(IDataReader reader)
		{
			BillWord item = new BillWord();
			item.BillFormat = (int)reader["Bill_Format"];
			item.BillFormatName = reader["Bill_Format_Name"] as string;
			item.WordSerial = (short)reader["Word_Serial"];
			item.WordContent = reader["Word_Content"] as string;
			item.WordLeft = (short)reader["Word_Left"];
			item.WordTop = (short)reader["Word_Top"];
			item.WordFont = reader["Word_Font"] as string;
			item.WordSize = Convert.ToDouble(reader["Word_Size"]);
			item.WordType = (short)reader["Word_Type"];
			item.IsPrint = Convert.ToBoolean(reader["Is_Print"]);

			return item;
		}

    public static BillWord GetBillBaseWord(int format, short serial)
		{
			BillWord item = new BillWord();
			
			try
			{
				ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Bill_Format", SqlDbType.Int, format));
        paras.Add(DBUtils.MakeInParam("@Line_Serial", SqlDbType.SmallInt, serial));
				paras.Add(DBUtils.MakeInParam("@Get_Action", SqlDbType.NVarChar, 10, DataGetAction.Row.ToString().ToLower()));

        SqlDataReader reader = DBUtils.ExecuteReader(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_BillBaseWord", paras);
				
				if (reader.Read())
				{
					item = PopulateBillBaseWord(reader);
				}

				reader.Close();
			}
			catch { throw; }

			return item;
		}

    public static void CreateUpdateDeleteBillBaseWord(BillWord item, DataProviderAction action)
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
				paras.Add(DBUtils.MakeInParam("@Word_Serial", SqlDbType.SmallInt, item.WordSerial));
				paras.Add(DBUtils.MakeInParam("@Word_Content", SqlDbType.NVarChar, 40, item.WordContent));
				paras.Add(DBUtils.MakeInParam("@Word_Left", SqlDbType.SmallInt, item.WordLeft));
				paras.Add(DBUtils.MakeInParam("@Word_Top", SqlDbType.SmallInt, item.WordTop));
				paras.Add(DBUtils.MakeInParam("@Word_Font", SqlDbType.NVarChar, 20, item.WordFont));
				paras.Add(DBUtils.MakeInParam("@Word_Size", SqlDbType.Decimal, item.WordSize));
				paras.Add(DBUtils.MakeInParam("@Word_Type", SqlDbType.SmallInt, item.WordType));
				paras.Add(DBUtils.MakeInParam("@Is_Print", SqlDbType.Bit, item.IsPrint));
				paras.Add(DBUtils.MakeInParam("@Action", SqlDbType.Int, action));

        DBUtils.ExecuteNonQuery(conn, cmd, CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_CreateUpdateDelete_BillBaseWord", paras);

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

    public static void DeleteBillBaseWord(int format)
    {
      SqlConnection conn = DBUtils.GetConnection();
      SqlCommand cmd = DBUtils.GetCommand();

      try
      {
        cmd.Transaction = conn.BeginTransaction();

        ArrayList paras = new ArrayList();

        paras.Add(DBUtils.MakeInParam("@Bill_Format", SqlDbType.Int, format));
        paras.Add(DBUtils.MakeInParam("@Action", SqlDbType.Int, DataProviderAction.Delete));

        DBUtils.ExecuteNonQuery(conn, cmd, CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_CreateUpdateDelete_BillBaseWord", paras);

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

    public static void CreateBillBaseWord(SqlConnection conn, SqlCommand cmd, BillFormat bill)
    {
      if (bill.ID == 0)
        return;

      try
      {
        ArrayList paras = new ArrayList();

        paras.Add(DBUtils.MakeInParam("@Bill_Format", SqlDbType.Int, bill.ID));
        paras.Add(DBUtils.MakeInParam("@Action", SqlDbType.Int, DataProviderAction.Delete));

        DBUtils.ExecuteNonQuery(conn, cmd, CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_CreateUpdateDelete_BillBaseWord", paras);

        foreach (BillWord item in bill.Words)
        {
          paras.Clear();

          paras.Add(DBUtils.MakeInParam("@Bill_Format", SqlDbType.Int, item.BillFormat));
          paras.Add(DBUtils.MakeInParam("@Word_Serial", SqlDbType.SmallInt, item.WordSerial));
          paras.Add(DBUtils.MakeInParam("@Word_Content", SqlDbType.NVarChar, 40, item.WordContent));
          paras.Add(DBUtils.MakeInParam("@Word_Left", SqlDbType.SmallInt, item.WordLeft));
          paras.Add(DBUtils.MakeInParam("@Word_Top", SqlDbType.SmallInt, item.WordTop));
          paras.Add(DBUtils.MakeInParam("@Word_Font", SqlDbType.NVarChar, 20, item.WordFont));
          paras.Add(DBUtils.MakeInParam("@Word_Size", SqlDbType.Decimal, item.WordSize));
          paras.Add(DBUtils.MakeInParam("@Word_Type", SqlDbType.SmallInt, item.WordType));
          paras.Add(DBUtils.MakeInParam("@Is_Print", SqlDbType.Bit, item.IsPrint));
          paras.Add(DBUtils.MakeInParam("@Action", SqlDbType.Int, DataProviderAction.Create));

          DBUtils.ExecuteNonQuery(conn, cmd, CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_CreateUpdateDelete_BillBaseWord", paras);
        }
      }
      catch
      {
        throw;
      }
    }
	}
}
