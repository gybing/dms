using GuFun.Utils;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace GuFun.WinCore
{
    public partial class SqlBaseProvider
    {

        public static BusHours GetHoursByDB(int dbid, string ManID)
        {
            BusHours rtn = null;

            try
            {
                ArrayList paras = new ArrayList();
                paras.Add(DBUtils.MakeInParam("DBID", SqlDbType.Int, dbid));
                paras.Add(DBUtils.MakeInParam("ManID", SqlDbType.NVarChar, ManID));

                SqlDataReader reader = DBUtils.ExecuteReader(CommandType.StoredProcedure, "dbo.P_Get_HoursByDB", paras);

                if (reader.Read())
                {
                    rtn = new BusHours();
                    rtn.OnPopulate(reader);
                }

                reader.Close();
            }
            catch { throw; }

            return rtn;
        }

        public static void SaveBusHours(BusHours item, DataProviderAction action)
        {
            if (item == null)
                return;

            SqlConnection conn = DBUtils.GetConnection();
            SqlCommand cmd = DBUtils.GetCommand();

            try
            {
                cmd.Transaction = conn.BeginTransaction();

                ArrayList paras = new ArrayList();

                paras.Add(DBUtils.MakeInParam("@DBID", SqlDbType.Int, item.DBID));
                paras.Add(DBUtils.MakeInParam("@ManID", SqlDbType.NVarChar, 6, item.ManID));
                paras.Add(DBUtils.MakeInParam("@Action", SqlDbType.Int, action));
                DBUtils.ExecuteNonQuery(conn, cmd, CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Save_BusHours", paras);

                cmd.Transaction.Commit();
            }
            catch (Exception)
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
