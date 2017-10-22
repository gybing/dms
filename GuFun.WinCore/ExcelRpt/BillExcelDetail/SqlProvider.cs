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

    public static DataTable GetBillExcelDetailList(int billno)
		{
			DataTable tblMain;

			try
			{
				ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Bill_No", SqlDbType.Int, billno));
				paras.Add(DBUtils.MakeInParam("@Get_Action", SqlDbType.NVarChar, 10, DataGetAction.ValidList.ToString().ToLower()));

        tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_BillExcelDetail", paras);
				tblMain.TableName = "SelectMain";
			}
			catch { throw; }

			return tblMain;
		}

		public static BillExcelDetail PopulateBillExcelDetail(IDataReader reader)
		{
			BillExcelDetail item = new BillExcelDetail();
			item.BillNo = (int)reader["Bill_No"];
			item.ExcelRow = (int)reader["Excel_Row"];
      if (reader["Excel_Col1"] != DBNull.Value)
        item.ExcelCol1 = reader["Excel_Col1"] as string;
      if (reader["Excel_Col2"] != DBNull.Value)
        item.ExcelCol2 = reader["Excel_Col2"] as string;
      if (reader["Excel_Col3"] != DBNull.Value)
        item.ExcelCol3 = reader["Excel_Col3"] as string;
      if (reader["Excel_Col4"] != DBNull.Value)
        item.ExcelCol4 = reader["Excel_Col4"] as string;
      if (reader["Excel_Col5"] != DBNull.Value)
        item.ExcelCol5 = reader["Excel_Col5"] as string;
      if (reader["Excel_Col6"] != DBNull.Value)
        item.ExcelCol6 = reader["Excel_Col6"] as string;
      if (reader["Excel_Col7"] != DBNull.Value)
        item.ExcelCol7 = reader["Excel_Col7"] as string;
      if (reader["Excel_Col8"] != DBNull.Value)
        item.ExcelCol8 = reader["Excel_Col8"] as string;

			return item;
		}

		public static void CreateUpdateDeleteBillExcelDetail(SqlConnection conn, SqlCommand cmd, BillExcelDetails items, DataProviderAction action)
		{
			if (items == null)
				return;

			ArrayList paras = new ArrayList();

      foreach (BillExcelDetail item in items)
      {
        paras.Clear();
        paras.Add(DBUtils.MakeInParam("@Bill_No", SqlDbType.Int, item.BillNo));
        paras.Add(DBUtils.MakeInParam("@Excel_Row", SqlDbType.Int, item.ExcelRow));
        paras.Add(DBUtils.MakeInParam("@Excel_Col1", SqlDbType.NVarChar, 50, item.ExcelCol1));
        paras.Add(DBUtils.MakeInParam("@Excel_Col2", SqlDbType.NVarChar, 50, item.ExcelCol2));
        paras.Add(DBUtils.MakeInParam("@Excel_Col3", SqlDbType.NVarChar, 50, item.ExcelCol3));
        paras.Add(DBUtils.MakeInParam("@Excel_Col4", SqlDbType.NVarChar, 50, item.ExcelCol4));
        paras.Add(DBUtils.MakeInParam("@Excel_Col5", SqlDbType.NVarChar, 50, item.ExcelCol5));
        paras.Add(DBUtils.MakeInParam("@Excel_Col6", SqlDbType.NVarChar, 50, item.ExcelCol6));
        paras.Add(DBUtils.MakeInParam("@Excel_Col7", SqlDbType.NVarChar, 50, item.ExcelCol7));
        paras.Add(DBUtils.MakeInParam("@Excel_Col8", SqlDbType.NVarChar, 50, item.ExcelCol8));
        paras.Add(DBUtils.MakeInParam("@Action", SqlDbType.Int, action));

        DBUtils.ExecuteNonQuery(conn, cmd, CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_CreateUpdateDelete_BillExcelDetail", paras);
      }
		}
	}
}
