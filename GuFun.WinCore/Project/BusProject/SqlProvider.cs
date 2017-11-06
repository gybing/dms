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
        public static DataTable SearchBusProject(string search)
        {
            DataTable tblMain;
            try
            {
                ArrayList paras = new ArrayList();
                paras.Add(DBUtils.MakeInParam("@Search", SqlDbType.NVarChar, 200, search));
                tblMain = DBUtils.ExecuteDataTable(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Search_BusProject", paras);
                tblMain.TableName = "SelectMain";
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, PublicConsts.PC_Tip);
                throw;
            }
            return tblMain;
        }


        public static void SaveBusProject(BusProject item, DataProviderAction action)
        {
            if (item == null)
                return;

            SqlConnection conn = DBUtils.GetConnection();
            SqlCommand cmd = DBUtils.GetCommand();

            try
            {
                cmd.Transaction = conn.BeginTransaction();

                ArrayList paras = new ArrayList();

                paras.Add(DBUtils.MakeInParam("@ProjectID", SqlDbType.VarChar, 6, item.ProjectID));
                paras.Add(DBUtils.MakeInParam("@ProjectCode", SqlDbType.NVarChar, 6, item.ProjectCode));
                paras.Add(DBUtils.MakeInParam("@ProjectName", SqlDbType.NVarChar, 6, item.ProjectName));
                paras.Add(DBUtils.MakeInParam("@ProjectType", SqlDbType.VarChar, 6, item.ProjectType));
                paras.Add(DBUtils.MakeInParam("@ProjectManager", SqlDbType.VarChar, 6, item.ProjectManager));
                paras.Add(DBUtils.MakeInParam("@WorkDate", SqlDbType.Decimal, 6, item.WorkDate));
                paras.Add(DBUtils.MakeInParam("@WorkUnit", SqlDbType.VarChar, 6, item.WorkUnit));
                paras.Add(DBUtils.MakeInParam("@ProjectDesc", SqlDbType.Text, 6, item.ProjectDesc));
                paras.Add(DBUtils.MakeInParam("@TranDate", SqlDbType.DateTime, 6, item.TranDate));
                paras.Add(DBUtils.MakeInParam("@TranUser", SqlDbType.VarChar, 6, item.TranUser));
                paras.Add(DBUtils.MakeInParam("@Action", SqlDbType.Int, action));

                DBUtils.ExecuteNonQuery(conn, cmd, CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Save_BusProject", paras);
                item.ProjectID = ((SqlParameter)paras[0]).Value != DBNull.Value ? ((SqlParameter)paras[0]).Value.ToString() : "";

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

        public static BusProject GetBusProject(string projectid)
        {
            BusProject item = new BusProject();

            try
            {
                ArrayList paras = new ArrayList();
                paras.Add(DBUtils.MakeInParam("@ProjectID", SqlDbType.VarChar, 20, projectid));
                paras.Add(DBUtils.MakeInParam("@Get_Action", SqlDbType.NVarChar, 10, DataGetAction.Row.ToString().ToLower()));

                SqlDataReader reader = DBUtils.ExecuteReader(CommandType.StoredProcedure, PublicConsts.DatabaseOwner + ".P_Get_BusProject", paras);

                if (reader.Read())
                {
                    item = PopulateBusProject(reader);
                }

                reader.Close();
            }
            catch { throw; }

            return item;
        }

        public static BusProject PopulateBusProject(IDataReader reader)
        {
            BusProject item = new BusProject();
            item.ProjectID = reader["ProjectID"] as string;
            item.ProjectCode = reader["ProjectCode"] as string;
            item.ProjectName = reader["ProjectName"] as string;
            item.ProjectType = reader["ProjectType"] as string;
            item.ProjectManager = reader["ProjectManager"] as string;
            item.WorkDate = Double.Parse(reader["WorkDate"].ToString());
            item.WorkUnit = reader["WorkUnit"] as string;
            item.ProjectDesc = reader["ProjectDesc"] as string;
            item.TranDate = Convert.ToDateTime(reader["TranDate"]);
            item.TranUser = reader["TranUser"] as string;
           
            return item;
        }   

    }
}
