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
    public static DataTable GetErsDatBankGetList()
    {
      DataTable tblMain;

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@getaction", SqlDbType.NVarChar, 10, DataGetAction.Full.ToString().ToLower()));

        tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.ErsDatabaseOwner + ".P_Get_DatBank", paras);
        tblMain.TableName = "SelectMain";
      }
      catch { throw; }

      return tblMain;
    }

    public static DataTable GetErsDatBankGetList(string search)
    {
      DataTable tblMain;

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@search", SqlDbType.NVarChar, 400, search));

        tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.ErsDatabaseOwner + ".P_Get_DatBankByAmount", paras);
        tblMain.TableName = "SelectMain";
      }
      catch { throw; }

      return tblMain;
    }

    public static DatBank PopulateErsDatBank(IDataReader reader)
    {
      DatBank item = new DatBank();

      item.TranKey = reader["TranKey"] as string;
      item.BankID = reader["BankID"] as string;
      item.BankName = reader["BankName"] as string;
      item.TranDate = reader["TranDate"] as string;
      item.TranYear = reader["TranYear"] as string;
      item.TranMonth = reader["TranMonth"] as string;
      item.TranTime = reader["TranTime"] as string;
      item.TranDebit = Convert.ToDouble(reader["TranDebit"]);
      item.TranCredit = Convert.ToDouble(reader["TranCredit"]);
      item.TranBalance = Convert.ToDouble(reader["TranBalance"]);
      item.CheckStatus = reader["CheckStatus"] as string;
      item.CheckStatusName = reader["CheckStatusName"] as string;
      item.CheckType = reader["CheckType"] as string;
      item.CheckTypeName = reader["CheckTypeName"] as string;
      if (reader["TranType"] != DBNull.Value) 
        item.TranType = reader["TranType"] as string;
      if (reader["TranAbs"] != DBNull.Value)
        item.TranAbs = reader["TranAbs"] as string;
      if (reader["TranSerial"] != DBNull.Value)
        item.TranSerial = reader["TranSerial"] as string;
      if (reader["BusType"] != DBNull.Value)
        item.BusType = reader["BusType"] as string;
      if (reader["PayerBank"] != DBNull.Value)
        item.PayerBank = reader["PayerBank"] as string;
      if (reader["PayerAccount"] != DBNull.Value)
        item.PayerAccount = reader["PayerAccount"] as string;
      if (reader["PayeeName"] != DBNull.Value)
        item.PayeeName = reader["PayeeName"] as string;
      if (reader["PayeeAccount"] != DBNull.Value)
        item.PayeeAccount = reader["PayeeAccount"] as string;
      if (reader["BillType"] != DBNull.Value)
        item.BillType = reader["BillType"] as string;
      if (reader["BillNo"] != DBNull.Value)
        item.BillNo = reader["BillNo"] as string;
      if (reader["TranReamrk"] != DBNull.Value)
        item.TranReamrk = reader["TranReamrk"] as string;

      return item;
    }

    public static DatBank GetErs(string TranKey)
    {
      DatBank item = new DatBank();

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@trankey", SqlDbType.NVarChar, 32, TranKey));
        paras.Add(DBUtils.MakeInParam("@getaction", SqlDbType.NVarChar, 10, DataGetAction.Row.ToString().ToLower()));

        SqlDataReader reader = DBUtils.ExecuteReader(CommandType.StoredProcedure, PublicConsts.ErsDatabaseOwner + ".P_Get_DatBank", paras);

        if (reader.Read())
        {
          item = PopulateErsDatBank(reader);
        }

        reader.Close();
      }
      catch { throw; }

      return item;
    }
  }
}
