using GuFun.Utils;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
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
    }
}
