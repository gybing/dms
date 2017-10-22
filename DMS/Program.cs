using GuFun.Utils;
using GuFun.WinCore;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Linq;
using System.Runtime.InteropServices;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace DMS
{
    static class Program
    {
        public static string CpuInfo;
        public static UserCache ManInfo;
        public static bool isCancel;
        public static string NowLoginMan;
        public static DataTable Dept = new DataTable();
        public static DataTable DefaultDept = new DataTable();

        [DllImport("User32.dll")]
        private static extern bool SetForegroundWindow(IntPtr hWnd); 

        /// <summary>
        /// 应用程序的主入口点。
        /// </summary>
        [STAThread]
        static void Main()
        {
            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);

            System.Diagnostics.Process[] papp = System.Diagnostics.Process.GetProcessesByName(Application.ProductName);
            if (papp.Length > 1)
            {
                MessageBox.Show("该程序已经运行，不能重复运行！");
                return;
            }
            else
            {
                SetForegroundWindow(Process.GetCurrentProcess().MainWindowHandle);
            }

            Program.NowLoginMan = String.Empty;

            if (true)
            {
                bool isDB = true;
                while (isDB)
                {
                    try
                    {
                        SqlConnection conn = DBUtils.GetConnection();
                        if (conn.State == ConnectionState.Open)
                        {
                            conn.Close();
                            conn.Dispose();
                            isDB = false;
                        }
                        else
                        {
                            throw new Exception("指定的数据库不存在或者数据库配置错误！");
                        }
                    }
                    catch (Exception)
                    {
                        Global.ShowSysInfo("指定的数据库不存在或者数据库配置错误！");
                        DBConfig dbconfig = new DBConfig();
                        DialogResult dbconfigrtn = dbconfig.ShowDialog();
                        dbconfig.Dispose();

                        if (dbconfigrtn != DialogResult.OK)
                        {
                            return;
                        }
                    }

                }
            }

            Login lg = new Login();
            DialogResult rtn = lg.ShowDialog();

            if (rtn == DialogResult.OK)
            {
            GotoMain:
                Application.Run(new MainForm());

                if (isCancel)
                {
                    isCancel = false;
                    goto GotoMain;
                }
            }
            else if (rtn == DialogResult.Yes)
            {
                
            }
           
        }
    }
}
