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
		public static DataTable GetBillBaseMainList()
		{
			DataTable tblMain;

			try
			{
				ArrayList paras = new ArrayList(); 
				paras.Add(DBUtils.MakeInParam("@Get_Action", SqlDbType.NVarChar, 10, DataGetAction.Full.ToString().ToLower()));

				tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_BillBaseMain", paras);
				tblMain.TableName = "SelectMain";
			}
			catch { throw; }

			return tblMain;
		}

    public static DataTable GetBillBaseMainList(int format)
    {
      DataTable tblMain;

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Bill_Format", SqlDbType.Int, format));
        paras.Add(DBUtils.MakeInParam("@Get_Action", SqlDbType.NVarChar, 10, DataGetAction.ListRows.ToString().ToLower()));

        tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_BillBaseMain", paras);
        tblMain.TableName = "SelectMain";
      }
      catch { throw; }

      return tblMain;
    }

		public static BillMain PopulateBillBaseMain(IDataReader reader)
		{
			BillMain item = new BillMain();
			item.BillFormat = (int)reader["Bill_Format"];
			item.BillFormatName = reader["Bill_Format_Name"] as string;
			item.MainSerial = (short)reader["Main_Serial"];
			item.MainLeft = (short)reader["Main_Left"];
			item.MainTop = (short)reader["Main_Top"];
			item.MainWidth = (short)reader["Main_Width"];
			item.MainHeight = (short)reader["Main_Height"];
			item.MainCode = reader["Main_Code"] as string;
			item.MainName = reader["Main_Name"] as string;
			item.MainFont = reader["Main_Font"] as string;
			item.MainSize = Convert.ToDouble(reader["Main_Size"]);
			item.WordType = (short)reader["Word_Type"];
			item.IsWarp = Convert.ToBoolean(reader["Is_Warp"]);

			return item;
		}

		public static BillMain GetBillBaseMain(int format, short serial)
		{
			BillMain item = new BillMain();
			
			try
			{
				ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Bill_Format", SqlDbType.Int, format));
        paras.Add(DBUtils.MakeInParam("@Main_Serial", SqlDbType.SmallInt, serial));
				paras.Add(DBUtils.MakeInParam("@Get_Action", SqlDbType.NVarChar, 10, DataGetAction.Row.ToString().ToLower()));

				SqlDataReader reader = DBUtils.ExecuteReader(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_BillBaseMain", paras);
				
				if (reader.Read())
				{
          item = PopulateBillBaseMain(reader);
				}

				reader.Close();
			}
			catch { throw; }

			return item;
		}

		public static void CreateUpdateDeleteBillBaseMain(BillMain item, DataProviderAction action)
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
				paras.Add(DBUtils.MakeInParam("@Main_Serial", SqlDbType.SmallInt, item.MainSerial));
				paras.Add(DBUtils.MakeInParam("@Main_Left", SqlDbType.SmallInt, item.MainLeft));
				paras.Add(DBUtils.MakeInParam("@Main_Top", SqlDbType.SmallInt, item.MainTop));
				paras.Add(DBUtils.MakeInParam("@Main_Width", SqlDbType.SmallInt, item.MainWidth));
				paras.Add(DBUtils.MakeInParam("@Main_Height", SqlDbType.SmallInt, item.MainHeight));
				paras.Add(DBUtils.MakeInParam("@Main_Code", SqlDbType.NVarChar, 20, item.MainCode));
				paras.Add(DBUtils.MakeInParam("@Main_Name", SqlDbType.NVarChar, 40, item.MainName));
				paras.Add(DBUtils.MakeInParam("@Main_Font", SqlDbType.NVarChar, 20, item.MainFont));
				paras.Add(DBUtils.MakeInParam("@Main_Size", SqlDbType.Decimal, item.MainSize));
				paras.Add(DBUtils.MakeInParam("@Word_Type", SqlDbType.SmallInt, item.WordType));
				paras.Add(DBUtils.MakeInParam("@Is_Warp", SqlDbType.Bit, item.IsWarp));
				paras.Add(DBUtils.MakeInParam("@Action", SqlDbType.Int, action));

				DBUtils.ExecuteNonQuery(conn, cmd, CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_CreateUpdateDelete_BillBaseMain", paras);

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

    public static void DeleteBillBaseMain(BillMain item)
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
        paras.Add(DBUtils.MakeInParam("@Action", SqlDbType.Int, DataProviderAction.Delete));

        DBUtils.ExecuteNonQuery(conn, cmd, CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_CreateUpdateDelete_BillBaseMain", paras);

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

    public static void CreateBillBaseMain(SqlConnection conn, SqlCommand cmd, BillFormat bill)
    {
      if (bill.ID == 0)
        return;

      try
      {
        ArrayList paras = new ArrayList();

        paras.Add(DBUtils.MakeInParam("@Bill_Format", SqlDbType.Int, bill.ID));
        paras.Add(DBUtils.MakeInParam("@Action", SqlDbType.Int, DataProviderAction.Delete));

        DBUtils.ExecuteNonQuery(conn, cmd, CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_CreateUpdateDelete_BillBaseMain", paras);

        foreach (BillMain item in bill.Lines)
        {
          paras.Clear();
          paras.Add(DBUtils.MakeInParam("@Bill_Format", SqlDbType.Int, item.BillFormat));
          paras.Add(DBUtils.MakeInParam("@Main_Serial", SqlDbType.SmallInt, item.MainSerial));
          paras.Add(DBUtils.MakeInParam("@Main_Left", SqlDbType.SmallInt, item.MainLeft));
          paras.Add(DBUtils.MakeInParam("@Main_Top", SqlDbType.SmallInt, item.MainTop));
          paras.Add(DBUtils.MakeInParam("@Main_Width", SqlDbType.SmallInt, item.MainWidth));
          paras.Add(DBUtils.MakeInParam("@Main_Height", SqlDbType.SmallInt, item.MainHeight));
          paras.Add(DBUtils.MakeInParam("@Main_Code", SqlDbType.NVarChar, 20, item.MainCode));
          paras.Add(DBUtils.MakeInParam("@Main_Name", SqlDbType.NVarChar, 40, item.MainName));
          paras.Add(DBUtils.MakeInParam("@Main_Font", SqlDbType.NVarChar, 20, item.MainFont));
          paras.Add(DBUtils.MakeInParam("@Main_Size", SqlDbType.Decimal, item.MainSize));
          paras.Add(DBUtils.MakeInParam("@Word_Type", SqlDbType.SmallInt, item.WordType));
          paras.Add(DBUtils.MakeInParam("@Is_Warp", SqlDbType.Bit, item.IsWarp));
          paras.Add(DBUtils.MakeInParam("@Action", SqlDbType.Int, DataProviderAction.Create));

          DBUtils.ExecuteNonQuery(conn, cmd, CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_CreateUpdateDelete_BillBaseMain", paras);
        }
      }
      catch
      {
        throw;
      }
    }
	}
}
