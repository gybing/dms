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
		public static DataTable GetBillSelectMainList()
		{
			DataTable tblMain;

			try
			{
				ArrayList paras = new ArrayList(); 
				paras.Add(DBUtils.MakeInParam("@Get_Action", SqlDbType.NVarChar, 10, DataGetAction.Full.ToString().ToLower()));

				tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_BillSelectMain", paras);
				tblMain.TableName = "SelectMain";
			}
			catch { throw; }

			return tblMain;
		}

    public static DataTable GetBillSelectMainList(short type)
    {
      DataTable tblMain;

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Bill_Type", SqlDbType.SmallInt, type));
        paras.Add(DBUtils.MakeInParam("@Get_Action", SqlDbType.NVarChar, 10, DataGetAction.ListRows.ToString().ToLower()));

        tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_BillSelectMain", paras);
        tblMain.TableName = "SelectMain";
      }
      catch { throw; }

      return tblMain;
    }

		public static BillSelectMain PopulateBillSelectMain(IDataReader reader)
		{
			BillSelectMain item = new BillSelectMain();
			item.BillType = (short)reader["Bill_Type"];
			item.BillTypeName = reader["Bill_Type_Name"] as string;
			item.MainSerial = (short)reader["Main_Serial"];
			item.MainCode = reader["Main_Code"] as string;
			item.MainName = reader["Main_Name"] as string;

			return item;
		}

		public static BillSelectMain GetBillSelectMain(short type, short serial)
		{
			BillSelectMain item = new BillSelectMain();
			
			try
			{
				ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Bill_Type", SqlDbType.SmallInt, type));
        paras.Add(DBUtils.MakeInParam("@Main_Serial", SqlDbType.SmallInt, serial));
				paras.Add(DBUtils.MakeInParam("@Get_Action", SqlDbType.NVarChar, 10, DataGetAction.Row.ToString().ToLower()));

				SqlDataReader reader = DBUtils.ExecuteReader(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_BillSelectMain", paras);
				
				if (reader.Read())
				{
					item = PopulateBillSelectMain(reader);
				}

				reader.Close();
			}
			catch { throw; }

			return item;
		}

		public static void CreateUpdateDeleteBillSelectMain(BillSelectMain item, DataProviderAction action)
		{
			if (item == null)
				return;

			SqlConnection conn = DBUtils.GetConnection();
			SqlCommand cmd = DBUtils.GetCommand();

			try
			{
				cmd.Transaction = conn.BeginTransaction();

				ArrayList paras = new ArrayList();

				paras.Add(DBUtils.MakeInParam("@Bill_Type", SqlDbType.SmallInt, item.BillType));
				paras.Add(DBUtils.MakeInParam("@Main_Serial", SqlDbType.SmallInt, item.MainSerial));
				paras.Add(DBUtils.MakeInParam("@Main_Code", SqlDbType.NVarChar, 20, item.MainCode));
				paras.Add(DBUtils.MakeInParam("@Main_Name", SqlDbType.NVarChar, 40, item.MainName));
				paras.Add(DBUtils.MakeInParam("@Action", SqlDbType.Int, action));

				DBUtils.ExecuteNonQuery(conn, cmd, CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_CreateUpdateDelete_BillSelectMain", paras);

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
