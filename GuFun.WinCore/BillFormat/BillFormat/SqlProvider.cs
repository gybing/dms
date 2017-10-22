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
		public static DataTable GetBillBaseFormatList()
		{
			DataTable tblMain;

			try
			{
				ArrayList paras = new ArrayList(); 
				paras.Add(DBUtils.MakeInParam("@Get_Action", SqlDbType.NVarChar, 10, DataGetAction.Full.ToString().ToLower()));

				tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_BillBaseFormat", paras);
				tblMain.TableName = "SelectMain";
			}
			catch { throw; }

			return tblMain;
		}

    public static BillFormat PopulateBillBaseFormat(IDataReader reader)
		{
      BillFormat item = new BillFormat();
			item.ID = (int)reader["Bill_Format"];
			item.BillFormatName = reader["Bill_Format_Name"] as string;
			item.BillType = (short)reader["Bill_Type"];
			item.BillTypeName = reader["Bill_Type_Name"] as string;
			item.BankID = (short)reader["Bank_ID"];
			item.BankName = reader["Bank_Name"] as string;
			item.BillWidth = (short)reader["Bill_Width"];
			item.BillHeight = (short)reader["Bill_Height"];
			item.BillLeft = (short)reader["Bill_Left"];
			item.BillTop = (short)reader["Bill_Top"];
			item.IsPrint = Convert.ToBoolean(reader["Is_Print"]);
			item.BillShare = (int)reader["Bill_Share"];
      item.IsHalf = Convert.ToBoolean(reader["Is_Half"]);

			return item;
		}

    public static BillFormat GetBillBaseFormat(int billformat)
		{
      BillFormat item = new BillFormat();
			
			try
			{
				ArrayList paras = new ArrayList();
				paras.Add(DBUtils.MakeInParam("@Bill_Format", SqlDbType.Int, billformat));
				paras.Add(DBUtils.MakeInParam("@Get_Action", SqlDbType.NVarChar, 10, DataGetAction.Row.ToString().ToLower()));

				SqlDataReader reader = DBUtils.ExecuteReader(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_BillBaseFormat", paras);

				reader.Close();
			}
			catch { throw; }

			return item;
		}

    public static BillFormat GetAllBillBaseFormat(int billformat)
		{
      BillFormat item = new BillFormat();
			
			try
			{
				ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Bill_Format", SqlDbType.Int, billformat));

				SqlDataReader reader = DBUtils.ExecuteReader(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_BillBaseFormat_All", paras);
				
				if (reader.Read())
				{
					item = PopulateBillBaseFormat(reader);
				}

        if (reader.NextResult())
        {
          while (reader.Read())
          {
            item.Lines.Add(PopulateBillBaseLine(reader));
          }
        }

        if (reader.NextResult())
        {
          while (reader.Read())
          {
            item.Words.Add(PopulateBillBaseWord(reader));
          }
        }

        if (reader.NextResult())
        {
          while (reader.Read())
          {
            item.Mains.Add(PopulateBillBaseMain(reader));
          }
        }

				reader.Close();
			}
			catch { throw; }

			return item;
		}

    public static BillFormat GetPrintInfo(int billformat, int billno)
    {
      BillFormat item = new BillFormat();

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Bill_Format", SqlDbType.Int, billformat));
        paras.Add(DBUtils.MakeInParam("@Bill_No", SqlDbType.Int, billno));

        SqlDataReader reader = DBUtils.ExecuteReader(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_PrintInfo", paras);

        if (reader.Read())
        {
          item = PopulateBillBaseFormat(reader);
        }

        if (reader.NextResult())
        {
          while (reader.Read())
          {
            item.Lines.Add(PopulateBillBaseLine(reader));
          }
        }

        if (reader.NextResult())
        {
          while (reader.Read())
          {
            item.Words.Add(PopulateBillBaseWord(reader));
          }
        }

        if (reader.NextResult())
        {
          while (reader.Read())
          {
            item.Mains.Add(PopulateBillBaseMain(reader));
          }
        }

        if (reader.NextResult())
        {
          if (reader.Read())
          {
            foreach (BillMain main in item.Mains)
            {
              if (reader[main.MainCode] != DBNull.Value)
                main.PrintValue = reader[main.MainCode].ToString();
            }
          }
        }

        reader.Close();
      }
      catch { throw; }

      return item;
    }

    public static BillFormat GetPrintInfoByBank(short bank, short type, bool ishalf, int billno)
    {
      BillFormat item = new BillFormat();

      try
      {
        ArrayList paras = new ArrayList();
        if ((type == (short)BillType.JinZhangDan) && (bank != 17))
          paras.Add(DBUtils.MakeInParam("@Bank_ID", SqlDbType.SmallInt, 1));
        else
          paras.Add(DBUtils.MakeInParam("@Bank_ID", SqlDbType.SmallInt, bank));
        paras.Add(DBUtils.MakeInParam("@Bill_Type", SqlDbType.SmallInt, type));
        paras.Add(DBUtils.MakeInParam("@Is_Half", SqlDbType.Bit, ishalf));
        paras.Add(DBUtils.MakeInParam("@Bill_No", SqlDbType.Int, billno));

        SqlDataReader reader = DBUtils.ExecuteReader(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_PrintInfoByBank", paras);

        if (reader.Read())
        {
          item = PopulateBillBaseFormat(reader);
        }

        if (reader.NextResult())
        {
          while (reader.Read())
          {
            item.Lines.Add(PopulateBillBaseLine(reader));
          }
        }

        if (reader.NextResult())
        {
          while (reader.Read())
          {
            item.Words.Add(PopulateBillBaseWord(reader));
          }
        }

        if (reader.NextResult())
        {
          while (reader.Read())
          {
            item.Mains.Add(PopulateBillBaseMain(reader));
          }
        }

        if (reader.NextResult())
        {
          if (reader.Read())
          {
            foreach (BillMain main in item.Mains)
            {
              if (reader[main.MainCode] != DBNull.Value)
                main.PrintValue = reader[main.MainCode].ToString();
            }
          }
        }

        reader.Close();
      }
      catch { throw; }

      return item;
    }

    public static BillFormat GetPrintInfoByBank(short bank, short type, bool ishalf)
    {
      BillFormat item = new BillFormat();

      try
      {
        ArrayList paras = new ArrayList();
        if (type == (short)BillType.JinZhangDan)
          paras.Add(DBUtils.MakeInParam("@Bank_ID", SqlDbType.SmallInt, bank));
        else
          paras.Add(DBUtils.MakeInParam("@Bank_ID", SqlDbType.SmallInt, bank));
        paras.Add(DBUtils.MakeInParam("@Bill_Type", SqlDbType.SmallInt, type));
        paras.Add(DBUtils.MakeInParam("@Is_Half", SqlDbType.Bit, ishalf));

        SqlDataReader reader = DBUtils.ExecuteReader(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_PrintInfoByBack", paras);

        if (reader.Read())
        {
          item = PopulateBillBaseFormat(reader);
        }

        if (reader.NextResult())
        {
          while (reader.Read())
          {
            item.Lines.Add(PopulateBillBaseLine(reader));
          }
        }

        if (reader.NextResult())
        {
          while (reader.Read())
          {
            item.Words.Add(PopulateBillBaseWord(reader));
          }
        }

        if (reader.NextResult())
        {
          while (reader.Read())
          {
            item.Mains.Add(PopulateBillBaseMain(reader));
          }
        }

        reader.Close();
      }
      catch { throw; }

      return item;
    }

    public static BillFormat GetPrintInfoByBackFee(short type, string tranid)
    {
      BillFormat item = new BillFormat();

      try
      {
        ArrayList paras = new ArrayList();
        paras.Add(DBUtils.MakeInParam("@Bill_Type", SqlDbType.SmallInt, type));
        paras.Add(DBUtils.MakeInParam("@Tran_ID", SqlDbType.NVarChar, 20, tranid));

        SqlDataReader reader = DBUtils.ExecuteReader(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_PrintInfoByBackFee", paras);

        if (reader.Read())
        {
          item = PopulateBillBaseFormat(reader);
        }

        if (reader.NextResult())
        {
          while (reader.Read())
          {
            item.Lines.Add(PopulateBillBaseLine(reader));
          }
        }

        if (reader.NextResult())
        {
          while (reader.Read())
          {
            item.Words.Add(PopulateBillBaseWord(reader));
          }
        }

        if (reader.NextResult())
        {
          while (reader.Read())
          {
            item.Mains.Add(PopulateBillBaseMain(reader));
          }
        }

        //if (reader.NextResult())
        //{
        //  if (reader.Read())
        //  {
        //    foreach (BillMain main in item.Mains)
        //    {
        //      if (reader[main.MainCode] != DBNull.Value)
        //        main.PrintValue = reader[main.MainCode].ToString();
        //    }
        //  }
        //}

        reader.Close();
      }
      catch { throw; }

      return item;
    }

    public static void CreateUpdateDeleteBillBaseFormat(BillFormat item, DataProviderAction action)
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
					paras.Add(DBUtils.MakeOutParam("@Bill_Format", SqlDbType.Int));
				}
				else
				{
					paras.Add(DBUtils.MakeInParam("@Bill_Format", SqlDbType.Int, item.ID));
				}
				paras.Add(DBUtils.MakeInParam("@Bill_Format_Name", SqlDbType.NVarChar, 20, item.BillFormatName));
				paras.Add(DBUtils.MakeInParam("@Bill_Type", SqlDbType.SmallInt, item.BillType));
				paras.Add(DBUtils.MakeInParam("@Bank_ID", SqlDbType.SmallInt, item.BankID));
				paras.Add(DBUtils.MakeInParam("@Bill_Width", SqlDbType.SmallInt, item.BillWidth));
				paras.Add(DBUtils.MakeInParam("@Bill_Height", SqlDbType.SmallInt, item.BillHeight));
				paras.Add(DBUtils.MakeInParam("@Bill_Left", SqlDbType.SmallInt, item.BillLeft));
				paras.Add(DBUtils.MakeInParam("@Bill_Top", SqlDbType.SmallInt, item.BillTop));
				paras.Add(DBUtils.MakeInParam("@Is_Print", SqlDbType.Bit, item.IsPrint));
				paras.Add(DBUtils.MakeInParam("@Bill_Share", SqlDbType.Int, item.BillShare));
        paras.Add(DBUtils.MakeInParam("@Is_Half", SqlDbType.Bit, item.IsHalf));
				paras.Add(DBUtils.MakeInParam("@Action", SqlDbType.Int, action));

				DBUtils.ExecuteNonQuery(conn, cmd, CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_CreateUpdateDelete_BillBaseFormat", paras);

				if (action == DataProviderAction.Create)
				{
					item.ID = ((((SqlParameter)paras[0]).Value != null) ? (Convert.ToInt32(((SqlParameter)paras[0]).Value)) : (int)0);
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

    public static void CreateBillBaseFormat(BillFormat item, DataProviderAction action)
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
          paras.Add(DBUtils.MakeOutParam("@Bill_Format", SqlDbType.Int));
        }
        else
        {
          paras.Add(DBUtils.MakeInParam("@Bill_Format", SqlDbType.Int, item.ID));
        }
        paras.Add(DBUtils.MakeInParam("@Bill_Format_Name", SqlDbType.NVarChar, 20, item.BillFormatName));
        paras.Add(DBUtils.MakeInParam("@Bill_Type", SqlDbType.SmallInt, item.BillType));
        paras.Add(DBUtils.MakeInParam("@Bank_ID", SqlDbType.SmallInt, item.BankID));
        paras.Add(DBUtils.MakeInParam("@Bill_Width", SqlDbType.SmallInt, item.BillWidth));
        paras.Add(DBUtils.MakeInParam("@Bill_Height", SqlDbType.SmallInt, item.BillHeight));
        paras.Add(DBUtils.MakeInParam("@Bill_Left", SqlDbType.SmallInt, item.BillLeft));
        paras.Add(DBUtils.MakeInParam("@Bill_Top", SqlDbType.SmallInt, item.BillTop));
        paras.Add(DBUtils.MakeInParam("@Is_Print", SqlDbType.Bit, item.IsPrint));
        paras.Add(DBUtils.MakeInParam("@Bill_Share", SqlDbType.Int, item.BillShare));
        paras.Add(DBUtils.MakeInParam("@Action", SqlDbType.Int, action));

        DBUtils.ExecuteNonQuery(conn, cmd, CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_CreateUpdateDelete_BillBaseFormat", paras);

        if (action == DataProviderAction.Create)
        {
          item.ID = ((((SqlParameter)paras[0]).Value != null) ? (Convert.ToInt32(((SqlParameter)paras[0]).Value)) : (int)0);
        }

        SqlBaseProvider.CreateBillBaseLine(conn, cmd, item);

        SqlBaseProvider.CreateBillBaseWord(conn, cmd, item);

        SqlBaseProvider.CreateBillBaseMain(conn, cmd, item);

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
