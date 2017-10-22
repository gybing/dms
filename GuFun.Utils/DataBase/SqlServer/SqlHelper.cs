// ***************************************************************************
// ��Ŀ���ƣ�Bblives.Utils 
// ��Ȩ��Ϣ: Copyright (C), 2003-2008, �Ͼ��ŷ��Ƽ����޹�˾
// �汾��Ϣ: 3.0
// �������ƣ�DBUtils
// �������������ݿ������ʽ�����Sql Server 2000��
// ��дʱ�䣺2003-05-05
// ��д��Ա��cloudy
// ��    ע��
// ����������������������������������������������������������������������
// ��   ����  ��   ʱ��   ��  �汾   ��              ˵��              ��
// �ǩ�������������������������������������������������������������������
// �� cloudy  �� 20040514 ��  V1.0   �� �½���Ŀ��                     ��
// �ǩ�������������������������������������������������������������������
// �� cloudy  �� 20060119 ��  V2.0   �� ���������                     ��
// �ǩ�������������������������������������������������������������������
// �� cloudy  �� 20070113 ��  V3.0   �� ת��ΪC#��                     ��
// �ǩ�������������������������������������������������������������������
// �� cloudy  �� 20080808 ��  V3.1   �� ���������������˶�̬����Ĵ��� ��
// ��         ��          ��         �� ��ʽ������ʵ������������Ϊ���� ��
// ��         ��          ��         �� �����ķ�����Ϊ�˿�����ǰ����Ŀ ��
// ��         ��          ��         �� ���ʱ�����ǰ�ڵĺ�����̬��ʵ�� ��
// ��         ��          ��         �� ��ʽ��                         ��
// ����������������������������������������������������������������������
// ***************************************************************************

using System;
using System.Web;
using System.Data;
using System.Data.Common;
using System.Data.OleDb;
using System.Data.SqlClient;
using System.Configuration;
using System.Runtime.InteropServices;
using System.Xml;
using System.Collections;

namespace GuFun.Utils
{
  /// <summary>
  /// �������ݿ���������ṩ���õ����ݿ�ӿ�
  /// </summary>
  public sealed class DBUtils
  {
    #region -Utility Methods-

    /// <summary>
    /// ���ϵͳ���õ����ݿ����ͣ�App.Config����Web.Config��
    /// </summary>
    /// <returns>���ݿ�����</returns>
    public static string GetDatabaseType()
    {
      return ConfigurationManager.AppSettings["DatabaseType"].ToUpper();
    }

    /// <summary>
    /// ��ȡϵͳ���õ����ݿ�������
    /// </summary>
    /// <returns>���ݿ�������</returns>
    public static string GetConnectionString()
    {
      // ��ȡ���ݿ������ֵĹؼ���
      string sConnection = ConfigurationManager.AppSettings["ConnectionString"];

      if (String.IsNullOrEmpty(sConnection))
        return String.Empty;

      // �������ݿ������ֵĹؼ��ֶ�ȡ�����ļ��е����ݿ�������
      string connection = Crypto.DecryptoString(ConfigurationManager.AppSettings[sConnection]);
      if (String.IsNullOrEmpty(connection))
        return String.Empty;

      return Crypto.ConfigSecret(connection);
    }

    /// <summary>
    /// ����ϵͳĬ�ϵ����ݿ������ֻ�����ݿ����Ӷ���
    /// </summary>
    /// <returns>���ݿ����Ӷ���</returns>
    public static SqlConnection GetConnection()
    {
      string databasetype = GetDatabaseType();
      string connection = GetConnectionString();

      return GetConnection(connection, databasetype);
    }

    /// <summary>
    /// ����ָ�������ݿ������ֻ�����ݿ����Ӷ���
    /// </summary>
    /// <param name="connectionString">ָ�������ݿ�������</param>
    /// /// <param name="databasetype">���ݿ�����</param>
    /// <returns>���ݿ����Ӷ���</returns>
    public static SqlConnection GetConnection(string connection, string databasetype)
    {
      SqlConnection conn = new SqlConnection(connection);

      if (conn != null)
        conn.Open();

      return conn;
    }

    /// <summary>
    /// �ж����ݿ����Ӷ����״̬���������ݿ�����
    /// </summary>
    /// <param name="connection">��Ҫ�����ݿ����ӵĶ���</param>
    public static void OpenConnection(SqlConnection connection)
    {
      if ((connection != null) && (connection.State == ConnectionState.Closed))
      {
        connection.Open();
      }
    }

    /// <summary>
    /// ��ȡ���ݿ����COMMAND����
    /// </summary>
    /// <returns>���ݿ�COMMAND����</returns>
    public static SqlCommand GetCommand()
    {
      return new SqlCommand();
    }

    /// <summary>
    /// ��ȡ���ݿ�ADAPTER����
    /// </summary>
    /// <returns>���ɵ�ADAPTER����</returns>
    public static SqlDataAdapter GetAdapter()
    {
      return new SqlDataAdapter();
    }

    /// <summary>
    /// ����COMMAND�����ȡ���ݿ�ADAPTER����
    /// </summary>
    /// <param name="command">COMMAND����</param>
    /// <returns>���ɵ�ADAPTER����</returns>
    public static SqlDataAdapter GetAdapter(SqlCommand command)
    {
      return new SqlDataAdapter(command);
    }

    /// <summary>
    /// ������ͷ����ݿ����Ӷ���
    /// </summary>
    /// <param name="connection">�������Ӷ���</param>
    /// <param name="command">���ݿ��������</param>
    public static void SetDispose(SqlConnection connection, SqlCommand command)
    {
      if (command != null)
        command.Dispose();

      if (connection != null)
      {
        connection.Close();
        connection.Dispose();
      }
    }

    #endregion Utility Methods

    #region -Parameters Methods-

    public static ArrayList ConvertParameters(params SqlParameter[] parameters)
    {
      ArrayList paras = new ArrayList();

      if (parameters != null)
      {
        foreach (SqlParameter p in parameters)
        {
          paras.Add(p);
        }
      }

      return paras;
    }

    public static ArrayList ConvertParameters(params object[] parameters)
    {
      ArrayList paras = new ArrayList();

      if (parameters != null)
      {
        foreach (object p in parameters)
        {
          paras.Add(p);
        }
      }

      return paras;
    }

    public static ArrayList ConvertParameters(params string[] parameters)
    {
      ArrayList paras = new ArrayList();

      if (parameters != null)
      {
        foreach (string p in parameters)
        {
          paras.Add(p);
        }
      }

      return paras;
    }

    /// <summary>
    /// ������������뵽ָ����SqlCommand��
    /// </summary>
    /// <param name="command">Ҫ���������SqlCommand</param>
    /// <param name="parameters">SqlParameter����</param>
    public static void AddParameters(SqlCommand command, SqlParameter[] parameters)
    {
      AddParameters(command, ConvertParameters(parameters));
    }

    /// <summary>
    /// ����̬����������뵽ָ����SqlCommand��
    /// </summary>
    /// <param name="command">Ҫ���������SqlCommand</param>
    /// <param name="parameters">SqlParameter��̬��������</param>
    public static void AddParameters(SqlCommand command, ArrayList parameters)
    {
      for (int i = 0; i < parameters.Count; i++)
      {
        SqlParameter p = (SqlParameter)parameters[i];

        AddParameters(command, p);
      }
    }

    /// <summary>
    /// ���������뵽ָ����SqlCommand��
    /// </summary>
    /// <param name="command">Ҫ���������SqlCommand</param>
    /// <param name="parameter">SqlParameter����</param>
    public static void AddParameters(SqlCommand command, SqlParameter parameter)
    {
      // �����������ͷ�ʽ�ж��Ƿ�Ϊ�գ����������ֵΪDBNull
      if ((parameter.Direction == ParameterDirection.InputOutput) && (parameter.Value == null))
      {
        parameter.Value = DBNull.Value;
      }

      // ���������ͣ�C#��Sql Server����Сֵ��һ����������Ϊ��
      if ((parameter.DbType == DbType.DateTime) && ((DateTime)parameter.Value == DateTime.MinValue))
      {
        parameter.Value = DBNull.Value;
      }

      command.Parameters.Add(parameter);
    }

    /// <summary>
    /// ��ֵ��������ָ���Ĳ�������
    /// </summary>
    /// <param name="parameters">��������</param>
    /// <param name="values">ֵ����</param>
    public static void AssignParameterValues(SqlParameter[] parameters, object[] values)
    {
      AssignParameterValues(ConvertParameters(parameters), ConvertParameters(values));
    }

    /// <summary>
    /// ��ֵ��̬��������ָ���Ĳ�����̬����
    /// </summary>
    /// <param name="parameters">������̬����</param>
    /// <param name="values">ֵ��̬����</param>
    public static void AssignParameterValues(ArrayList parameters, ArrayList values)
    {
      if ((parameters == null) || (values == null))
      {
        return;
      }

      // ���������ֵ����ĳ��ȱ���һֱ
      if (parameters.Count != values.Count)
      {
        throw new ArgumentException("���������ֵ����ĳ��Ȳ�һ�£�");
      }

      for (int i = 0; i < parameters.Count; i++)
      {
        AssignParameterValue((SqlParameter)parameters[i], (object)values[i]);
      }
    }

    /// <summary>
    /// ��ֵ�����ָ���Ĳ���
    /// </summary>
    /// <param name="parameter">����</param>
    /// <param name="value">ֵ</param>
    public static void AssignParameterValue(SqlParameter parameter, object value)
    {
      if ((parameter == null) || (value == null))
      {
        return;
      }

      parameter.Value = value;
    }

    /// <summary>
    /// ����ָ���Ĳ������Ƹ�Command�Ĳ�������ֵ
    /// </summary>
    /// <param name="command">���ݿ��������</param>
    /// <param name="name">��������</param>
    /// <param name="value">������ֵ</param>
    public static void AssignParameterValue(SqlCommand command, string name, object value)
    {
      if (String.IsNullOrEmpty(name) || (value == null))
      {
        return;
      }

      for (int i = 0; i < command.Parameters.Count; i++)
      {
        if (command.Parameters[i].ParameterName == name)
        {
          command.Parameters[i].Value = value;
          break;
        }
      }

    }

    /// <summary>
    /// ����ָ���Ĳ������Ƹ�Command�Ĳ�������ֵ
    /// </summary>
    /// <param name="command">���ݿ��������</param>
    /// <param name="names">������������</param>
    /// <param name="values">������ֵ����</param>
    public static void AssignParameterValues(SqlCommand command, string[] names, object[] values)
    {
      AssignParameterValues(command, ConvertParameters(names), ConvertParameters(values));
    }

    /// <summary>
    /// ����ָ���Ĳ������Ƹ�Command�Ĳ�������ֵ
    /// </summary>
    /// <param name="command">���ݿ��������</param>
    /// <param name="names">�������ƶ�̬����</param>
    /// <param name="values">������ֵ��̬����</param>
    public static void AssignParameterValues(SqlCommand command, ArrayList names, ArrayList values)
    {
      if ((names == null) || (values == null))
      {
        return;
      }

      if (names.Count != values.Count)
        throw new ArgumentException("���������ֵ����ĳ��Ȳ�һ�£�");

      for (int i = 0; i < names.Count; i++)
      {
        AssignParameterValue(command, names[i] as string, (object)values[i]);
      }
    }

    /// <summary>
    /// �������ֵ����
    /// </summary>
    /// <param name="command">���ݿ��������</param>
    /// <param name="parameters">��������</param>
    private static void OutPutParameters(SqlCommand command, SqlParameter[] parameters)
    {
      OutPutParameters(command, ConvertParameters(parameters));
    }

    /// <summary>
    /// �������ֵ����
    /// </summary>
    /// <param name="command">���ݿ��������</param>
    /// <param name="parameters">������̬����</param>
    private static void OutPutParameters(SqlCommand command, ArrayList parameters)
    {
      for (int i = 0; i < parameters.Count; i++)
      {
        // �жϲ����������ʽ
        SqlParameter p = (SqlParameter)parameters[i];

        if ((p.Direction == ParameterDirection.InputOutput) && (p.Direction == ParameterDirection.Output))
        {
          p.Value = command.Parameters[p.ParameterName].Value;
        }
      }
    }

    /// <summary>
    /// �����������
    /// </summary>
    /// <param name="name">��������</param>
    /// <param name="type">��������</param>
    /// <param name="size">��������</param>
    /// <param name="value">����ֵ</param>
    /// <returns>���ɵ�SqlParameter����</returns>
    public static SqlParameter MakeInParam(string name, SqlDbType type, int size, object value)
    {
      return MakeParam(name, type, size, ParameterDirection.Input, value);
    }

    /// <summary>
    /// �����������
    /// </summary>
    /// <param name="name">��������</param>
    /// <param name="type">��������</param>
    /// <param name="value">����ֵ</param>
    /// <returns>���ɵ�SqlParameter����</returns>
    public static SqlParameter MakeInParam(string name, SqlDbType type, object value)
    {
      return MakeParam(name, type, 0, ParameterDirection.Input, value);
    }

    /// <summary>
    /// �����������
    /// </summary>
    /// <param name="name">��������</param>
    /// <param name="type">��������</param>
    /// <param name="size">��������</param>
    /// <returns>���ɵ�SqlParameter����</returns>
    public static SqlParameter MakeOutParam(string name, SqlDbType type, int size)
    {
      return MakeParam(name, type, size, ParameterDirection.Output, null);
    }

    /// <summary>
    /// �����������
    /// </summary>
    /// <param name="name">��������</param>
    /// <param name="type">��������</param>
    /// <returns>���ɵ�SqlParameter����</returns>
    public static SqlParameter MakeOutParam(string name, SqlDbType type)
    {
      return MakeParam(name, type, 0, ParameterDirection.Output, null);
    }

    /// <summary>
    /// ���ò���
    /// </summary>
    /// <param name="name">��������</param>
    /// <param name="type">��������</param>
    /// <param name="size">��������</param>
    /// <param name="direction">����������뷽��</param>
    /// <param name="value">����ֵ</param>
    /// <returns>���ɵ�SqlParameter����</returns>
    public static SqlParameter MakeParam(string name, SqlDbType type, int size, ParameterDirection direction, object value)
    {
      SqlParameter param = new SqlParameter();

      param.ParameterName = name;
      param.SqlDbType = type;

      if ((size > 0) || (direction != ParameterDirection.ReturnValue))
      {
        param.Size = size;
      }

      param.Direction = direction;

      if (!(direction == ParameterDirection.Output && value == null))
      {
        param.Value = value;
      }

      return param;
    }

    #endregion Parameters Methods

    #region -Prepared Methods-

    /// <summary>
    /// ���ݿ��������׼��
    /// </summary>
    /// <param name="command">��Ҫ����׼�������ݿ��������</param>
    /// <param name="text">Sql����Procedure</param>
    /// <param name="parameters">׼����������</param>
    private static void PrepareCommand(SqlCommand command, string text, SqlParameter[] parameters)
    {
      PrepareCommand(command, null, CommandType.Text, text, ConvertParameters(parameters));
    }

    /// <summary>
    /// ���ݿ��������׼��
    /// </summary>
    /// <param name="command">��Ҫ����׼�������ݿ��������</param>
    /// <param name="text">Sql����Procedure</param>
    /// <param name="parameters">׼��������̬����</param>
    private static void PrepareCommand(SqlCommand command, string text, ArrayList parameters)
    {
      PrepareCommand(command, null, CommandType.Text, text, parameters);
    }

    /// <summary>
    /// ���ݿ��������׼��
    /// </summary>
    /// <param name="command">��Ҫ����׼�������ݿ��������</param>
    /// <param name="connection">���ݿ����Ӷ���</param>
    /// <param name="text">Sql����Procedure</param>
    /// <param name="parameters">׼����������</param>
    private static void PrepareCommand(SqlCommand command, SqlConnection connection, string text, SqlParameter[] parameters)
    {
      PrepareCommand(command, connection, CommandType.Text, text, ConvertParameters(parameters));
    }

    /// <summary>
    /// ���ݿ��������׼��
    /// </summary>
    /// <param name="command">��Ҫ����׼�������ݿ��������</param>
    /// <param name="connection">���ݿ����Ӷ���</param>
    /// <param name="text">Sql����Procedure</param>
    /// <param name="parameters">׼��������̬����</param>
    private static void PrepareCommand(SqlCommand command, SqlConnection connection, string text, ArrayList parameters)
    {
      PrepareCommand(command, connection, CommandType.Text, text, parameters);
    }

    /// <summary>
    ///���ݿ��������׼��
    /// </summary>
    /// <param name="command">��Ҫ����׼�������ݿ��������</param>
    /// <param name="connection">���ݿ����Ӷ���</param>
    /// <param name="type">���������ַ�������</param>
    /// <param name="text">Sql����Procedure</param>
    /// <param name="parameters">׼����������</param>
    private static void PrepareCommand(SqlCommand command, SqlConnection connection, CommandType type, string text, SqlParameter[] parameters)
    {
      PrepareCommand(command, connection, type, text, ConvertParameters(parameters));
    }

    /// <summary>
    ///���ݿ��������׼��
    /// </summary>
    /// <param name="command">��Ҫ����׼�������ݿ��������</param>
    /// <param name="connection">���ݿ����Ӷ���</param>
    /// <param name="type">���������ַ�������</param>
    /// <param name="text">Sql����Procedure</param>
    /// <param name="parameters">׼��������̬����</param>
    private static void PrepareCommand(SqlCommand command, SqlConnection connection, CommandType type, string text, ArrayList parameters)
    {
      if (connection != null)
      {
        OpenConnection(connection);

        // Ϊ���ݿ��������ָ�����ݿ����Ӷ���
        command.Connection = connection;
      }

      // ���������ַ���
      command.CommandText = text;

      // ���������ַ�������
      command.CommandType = type;

      // �����������
      if (parameters != null)
      {
        AddParameters(command, parameters);
      }

      return;
    }



    #endregion Prepared Methods

    #region -Check Methods-

    /// <summary>
    /// �ж϶����Ƿ�Ϊ��ֵ
    /// </summary>
    /// <param name="value">��Ҫ�����жϵĶ���</param>
    /// <returns>���Ϊ��ֵ����true�����򷵻�false</returns>
    public static bool CheckDBNull(object value)
    {
      return (value is DBNull);
    }

    /// <summary>
    /// �ж��ַ����Ƿ�Ϊ��ֵ����ת�����ַ���
    /// </summary>
    /// <param name="value">��Ҫ�����жϵĶ���</param>
    /// <returns>�жϺ���ַ���</returns>
    public static string CheckNullString(object value)
    {
      if (value is DBNull)
      {
        return String.Empty;
      }

      return (string)value;
    }

    /// <summary>
    /// �ж��ַ����Ƿ�Ϊ��ֵ
    /// </summary>
    /// <param name="value">��Ҫ�����жϵ��ַ���</param>
    /// <returns>�жϺ�Ķ���</returns>
    public static object CheckNull(string value)
    {
      if (String.IsNullOrEmpty(value))
      {
        return System.DBNull.Value;
      }

      return value;
    }

    /// <summary>
    /// �ж϶����Ƿ�Ϊ��ֵ
    /// </summary>
    /// <param name="value">��Ҫ�����жϵĶ���</param>
    /// <returns>�жϺ�Ķ���</returns>
    public static string CheckNull(object value)
    {
      if ((value == null) || (value == System.DBNull.Value))
        return String.Empty;

      return value.ToString();
    }

    /// <summary>
    /// �ж϶����Ƿ�Ϊ��ֵ
    /// </summary>
    /// <param name="value">��Ҫ�����жϵĶ���</param>
    /// <returns>�жϺ�Ķ���</returns>
    public static string CheckNull(DBNull value)
    {
      return String.Empty;
    }

    /// <summary>
    /// ת�����ڸ�ʽ
    /// </summary>
    /// <param name="date"></param>
    /// <returns></returns>
    public static string GetSafeSqlDateTimeFormat(DateTime date)
    {
      return date.ToString(System.Globalization.CultureInfo.CurrentCulture.DateTimeFormat.SortableDateTimePattern);
    }

    /// <summary>
    /// ת��Ϊ��ȫ����
    /// </summary>
    /// <param name="date"></param>
    /// <returns></returns>
    public static DateTime GetSafeSqlDateTime(DateTime date)
    {

      if (date < DateTime.MinValue)
        return (DateTime)System.Data.SqlTypes.SqlDateTime.MinValue;
      else if (date > DateTime.MaxValue)
        return (DateTime)System.Data.SqlTypes.SqlDateTime.MaxValue;

      return date;
    }

    /// <summary>
    /// ת��Ϊ��ȫ����
    /// </summary>
    /// <param name="i"></param>
    /// <returns></returns>
    public static int GetSafeSqlInt(int i)
    {

      if (i <= (int)System.Data.SqlTypes.SqlInt32.MinValue)
        return (int)System.Data.SqlTypes.SqlInt32.MinValue + 1;
      else if (i >= (int)System.Data.SqlTypes.SqlInt32.MaxValue)
        return (int)System.Data.SqlTypes.SqlInt32.MaxValue - 1;

      return i;

    }

    /// <summary>
    /// ת��Ϊ��ȫ������
    /// </summary>
    /// <param name="i"></param>
    /// <returns></returns>
    public static short GetSafeSqlShort(short i)
    {

      if (i <= (short)System.Data.SqlTypes.SqlInt16.MinValue)
        return (short)(System.Data.SqlTypes.SqlInt16.MinValue + 1);
      else if (i >= (short)System.Data.SqlTypes.SqlInt16.MaxValue)
        return (short)(System.Data.SqlTypes.SqlInt16.MaxValue - 1);
      return i;

    }

    /// <summary>
    /// ת��Ϊ��ȫ������
    /// </summary>
    /// <param name="i"></param>
    /// <returns></returns>
    public static double GetSafeSqlDouble(double i)
    {

      if (i <= Convert.ToDouble(System.Data.SqlTypes.SqlDecimal.MinValue))
        return Convert.ToDouble(System.Data.SqlTypes.SqlDecimal.MinValue) + 1;
      else if (i >= Convert.ToDouble(System.Data.SqlTypes.SqlDecimal.MaxValue))
        return Convert.ToDouble(System.Data.SqlTypes.SqlDecimal.MaxValue) - 1;
      return i;

    }

    #endregion Check Methods

    #region -ExecuteNonQuery Methods-

    /// <summary>
    /// ִ�����ݿ�����
    /// </summary>
    /// <param name="text">���ݿ������ַ���</param>
    /// <returns>���ݿ�����ִ�к�Ӱ�������</returns>
    public static int ExecuteNonQuery(string text)
    {
      return ExecuteNonQuery(null, null, SqlOperation.Internal, CommandType.Text, text, new ArrayList());
    }

    /// <summary>
    /// ִ�����ݿ�����
    /// </summary>
    /// <param name="type">��������</param>
    /// <param name="text">���ݿ������ַ���</param>
    /// <returns>���ݿ�����ִ�к�Ӱ�������</returns>
    public static int ExecuteNonQuery(CommandType type, string text)
    {
      return ExecuteNonQuery(null, null, SqlOperation.Internal, type, text, new ArrayList());
    }

    /// <summary>
    /// ִ�����ݿ�����
    /// </summary>
    /// <param name="text">���ݿ������ַ���</param>
    /// <param name="parameters">ִ�в�������</param>
    /// <returns>���ݿ�����ִ�к�Ӱ�������</returns>
    public static int ExecuteNonQuery(string text, params SqlParameter[] parameters)
    {
      return ExecuteNonQuery(null, null, SqlOperation.Internal, CommandType.Text, text, ConvertParameters(parameters));
    }

    /// <summary>
    /// ִ�����ݿ�����
    /// </summary>
    /// <param name="text">���ݿ������ַ���</param>
    /// <param name="parameters">ִ�в�����̬����</param>
    /// <returns>���ݿ�����ִ�к�Ӱ�������</returns>
    public static int ExecuteNonQuery(string text, ArrayList parameters)
    {
      return ExecuteNonQuery(null, null, SqlOperation.Internal, CommandType.Text, text, parameters);
    }

    /// <summary>
    /// ִ�����ݿ�����
    /// </summary>
    /// <param name="type">��������</param>
    /// <param name="text">���ݿ������ַ���</param>
    /// <param name="pParameters">ִ�в�������</param>
    /// <returns>���ݿ�����ִ�к�Ӱ�������</returns>
    public static int ExecuteNonQuery(CommandType type, string text, params SqlParameter[] parameters)
    {
      return ExecuteNonQuery(null, null, SqlOperation.Internal, type, text, ConvertParameters(parameters));
    }

    /// <summary>
    /// ִ�����ݿ�����
    /// </summary>
    /// <param name="type">��������</param>
    /// <param name="text">���ݿ������ַ���</param>
    /// <param name="pParameters">ִ�в�����̬����</param>
    /// <returns>���ݿ�����ִ�к�Ӱ�������</returns>
    public static int ExecuteNonQuery(CommandType type, string text, ArrayList parameters)
    {
      return ExecuteNonQuery(null, null, SqlOperation.Internal, type, text, parameters);
    }

    /// <summary>
    /// ִ�����ݿ�����
    /// </summary>
    /// <param name="connection">���ݿ����Ӷ���</param>
    /// <param name="command">Ԥ׼�������ݿ��������</param>
    /// <param name="text">���ݿ������ַ���</param>
    /// <returns>���ݿ�����ִ�к�Ӱ�������</returns>
    public static int ExecuteNonQuery(SqlConnection connection, SqlCommand command, string text)
    {
      return ExecuteNonQuery(connection, command, SqlOperation.External, CommandType.Text, text, new ArrayList());
    }

    /// <summary>
    /// ִ�����ݿ�����
    /// </summary>
    /// <param name="connection">���ݿ����Ӷ���</param>
    /// <param name="command">Ԥ׼�������ݿ��������</param>
    /// <param name="type">��������</param>
    /// <param name="text">���ݿ������ַ���</param>
    /// <returns>���ݿ�����ִ�к�Ӱ�������</returns>
    public static int ExecuteNonQuery(SqlConnection connection, SqlCommand command, CommandType type, string text)
    {
      return ExecuteNonQuery(connection, command, SqlOperation.External, type, text, new ArrayList());
    }

    /// <summary>
    /// ִ�����ݿ�����
    /// </summary>
    /// <param name="connection">���ݿ����Ӷ���</param>
    /// <param name="command">Ԥ׼�������ݿ��������</param>
    /// <param name="text">���ݿ������ַ���</param>
    /// <param name="parameters">ִ�в�������</param>
    /// <returns>���ݿ�����ִ�к�Ӱ�������</returns>
    public static int ExecuteNonQuery(SqlConnection connection, SqlCommand command, string text, params SqlParameter[] parameters)
    {
      return ExecuteNonQuery(connection, command, SqlOperation.External, CommandType.Text, text, ConvertParameters(parameters));
    }

    /// <summary>
    /// ִ�����ݿ�����
    /// </summary>
    /// <param name="connection">���ݿ����Ӷ���</param>
    /// <param name="command">Ԥ׼�������ݿ��������</param>
    /// <param name="text">���ݿ������ַ���</param>
    /// <param name="parameters">ִ�в�����̬����</param>
    /// <returns>���ݿ�����ִ�к�Ӱ�������</returns>
    public static int ExecuteNonQuery(SqlConnection connection, SqlCommand command, string text, ArrayList parameters)
    {
      return ExecuteNonQuery(connection, command, SqlOperation.External, CommandType.Text, text, parameters);
    }

    /// <summary>
    /// ִ�����ݿ�����
    /// </summary>
    /// <param name="connection">���ݿ����Ӷ���</param>
    /// <param name="command">Ԥ׼�������ݿ��������</param>
    /// <param name="type">��������</param>
    /// <param name="text">���ݿ������ַ���</param>
    /// <param name="parameters">ִ�в�������</param>
    /// <returns>���ݿ�����ִ�к�Ӱ�������</returns>
    public static int ExecuteNonQuery(SqlConnection connection, SqlCommand command, CommandType type, string text, params SqlParameter[] parameters)
    {
      return ExecuteNonQuery(connection, command, SqlOperation.External, type, text, ConvertParameters(parameters));
    }

    /// <summary>
    /// ִ�����ݿ�����
    /// </summary>
    /// <param name="connection">���ݿ����Ӷ���</param>
    /// <param name="command">Ԥ׼�������ݿ��������</param>
    /// <param name="type">��������</param>
    /// <param name="text">���ݿ������ַ���</param>
    /// <param name="parameters">ִ�в�������</param>
    /// <returns>���ݿ�����ִ�к�Ӱ�������</returns>
    public static int ExecuteNonQuery(SqlConnection connection, SqlCommand command, CommandType type, string text, ArrayList parameters)
    {
      return ExecuteNonQuery(connection, command, SqlOperation.External, type, text, parameters);
    }


    /// <summary>
    /// ִ�����ݿ�����
    /// </summary>
    /// <param name="connection">���ݿ����Ӷ���</param>
    /// <param name="command">Ԥ׼�������ݿ��������</param>
    /// <param name="sqloperation">���������ʽ</param>
    /// <param name="type">��������</param>
    /// <param name="text">���ݿ������ַ���</param>
    /// <param name="parameters">ִ�в�������</param>
    /// <returns>���ݿ�����ִ�к�Ӱ�������</returns>
    public static int ExecuteNonQuery(SqlConnection connection, SqlCommand command, SqlOperation sqloperation,
          CommandType type, string text, params SqlParameter[] parameters)
    {
      return ExecuteNonQuery(connection, command, sqloperation, type, text, ConvertParameters(parameters));
    }

    /// <summary>
    /// ִ�����ݿ�����
    /// </summary>
    /// <param name="SqlOper">���ݿ�����Զ������</param>
    /// <returns>���ݿ�����ִ�к�Ӱ�������</returns>
    public static int ExecuteNonQuery(SqlTool oper)
    {
      if (oper == null)
        return -1;

      if (oper.Connection == null)
        return ExecuteNonQuery(oper.Type, oper.Sql, oper.Parameters);

      return ExecuteNonQuery(oper.Connection, oper.Command, oper.Operation, oper.Type, oper.Sql, oper.Parameters);
    }

    /// <summary>
    /// ִ�����ݿ�����
    /// </summary>
    /// <param name="connection">���ݿ����Ӷ���</param>
    /// <param name="command">Ԥ׼�������ݿ��������</param>
    /// <param name="sqloperation">���������ʽ</param>
    /// <param name="type">��������</param>
    /// <param name="text">���ݿ������ַ���</param>
    /// <param name="parameters">ִ�в�������</param>
    /// <returns>���ݿ�����ִ�к�Ӱ�������</returns>
    public static int ExecuteNonQuery(SqlConnection connection, SqlCommand command, SqlOperation sqloperation,
          CommandType type, string text, ArrayList parameters)
    {
      if ((sqloperation == SqlOperation.External) && ((connection == null) || (command == null)))
      {
        throw new ArgumentNullException("���������ⲿ�ύʱ��ȱ�����ݿ����Ӻ��������");
      }

      SqlConnection conn = connection;
      SqlCommand cmd = command;

      try
      {
        if (sqloperation == SqlOperation.Internal)
        {
          conn = GetConnection();
          cmd = GetCommand();
        }

        // Ԥ׼�����ݿ��������
        PrepareCommand(cmd, conn, type, text, parameters);

        if (sqloperation == SqlOperation.Internal)
        {
          cmd.Transaction = cmd.Connection.BeginTransaction();
        }

        // ִ�����ݿ�����
        int retval = cmd.ExecuteNonQuery();

        // ���ִ�е��Ǵ洢���̣����ȡ����ֵ
        if (type == CommandType.StoredProcedure)
          OutPutParameters(cmd, parameters);

        // ����������ٴ�ʹ��
        cmd.Parameters.Clear();

        if (sqloperation == SqlOperation.Internal)
          cmd.Transaction.Commit();

        return retval;
      }
      catch
      {
        if (sqloperation == SqlOperation.Internal)
          cmd.Transaction.Rollback();

        throw;
      }
      finally
      {
        // �������Ϊ�ڲ��ύ�����ͷ����ݿ����Ӻ��������
        if (sqloperation == SqlOperation.Internal)
          SetDispose(conn, cmd);
      }
    }

    #endregion ExecuteNonQuery Methods

    #region -ExecuteDataSet Methods-

    /// <summary>
    /// ִ�����ݲ�ѯ�������ݽ����
    /// </summary>
    /// <param name="text">���ݿ������ַ���</param>
    /// <returns>���ݽ����</returns>
    public static DataSet ExecuteDataSet(string text)
    {
      return ExecuteDataSet(null, null, SqlOperation.Internal, CommandType.Text, text, new ArrayList());
    }

    /// <summary>
    /// ִ�����ݲ�ѯ�������ݽ����
    /// </summary>
    /// <param name="type">��������</param>
    /// <param name="text">���ݿ������ַ���</param>
    /// <returns>���ݽ����</returns>
    public static DataSet ExecuteDataSet(CommandType type, string text)
    {
      return ExecuteDataSet(null, null, SqlOperation.Internal, type, text, new ArrayList());
    }

    /// <summary>
    /// ִ�����ݲ�ѯ�������ݽ����
    /// </summary>
    /// <param name="text">���ݿ������ַ���</param>
    /// <param name="parameters">��������</param>
    /// <returns>���ݽ����</returns>
    public static DataSet ExecuteDataSet(string text, SqlParameter[] parameters)
    {
      return ExecuteDataSet(null, null, SqlOperation.Internal, CommandType.Text, text, ConvertParameters(parameters));
    }

    /// <summary>
    /// ִ�����ݲ�ѯ�������ݽ����
    /// </summary>
    /// <param name="text">���ݿ������ַ���</param>
    /// <param name="parameters">������̬����</param>
    /// <returns>���ݽ����</returns>
    public static DataSet ExecuteDataSet(string text, ArrayList parameters)
    {
      return ExecuteDataSet(null, null, SqlOperation.Internal, CommandType.Text, text, parameters);
    }

    /// <summary>
    /// ִ�����ݲ�ѯ�������ݽ����
    /// </summary>
    /// <param name="type">��������</param>
    /// <param name="text">���ݿ������ַ���</param>
    /// <param name="parameters">��������</param>
    /// <returns>���ݽ����</returns>
    public static DataSet ExecuteDataSet(CommandType type, string text, SqlParameter[] parameters)
    {
      return ExecuteDataSet(null, null, SqlOperation.Internal, type, text, ConvertParameters(parameters));
    }

    /// <summary>
    /// ִ�����ݲ�ѯ�������ݽ����
    /// </summary>
    /// <param name="type">��������</param>
    /// <param name="text">���ݿ������ַ���</param>
    /// <param name="parameters">������̬����</param>
    /// <returns>���ݽ����</returns>
    public static DataSet ExecuteDataSet(CommandType type, string text, ArrayList parameters)
    {
      return ExecuteDataSet(null, null, SqlOperation.Internal, type, text, parameters);
    }

    /// <summary>
    /// ִ�����ݲ�ѯ�������ݽ����
    /// </summary>
    /// <param name="connection">���ݿ����Ӷ���</param>
    /// <param name="command">���ݿ��������</param>
    /// <param name="text">���ݿ������ַ���</param>
    /// <returns>���ݽ����</returns>
    public static DataSet ExecuteDataSet(SqlConnection connection, SqlCommand command, string text)
    {
      return ExecuteDataSet(connection, command, SqlOperation.External, CommandType.Text, text, new ArrayList());
    }

    /// <summary>
    /// ִ�����ݲ�ѯ�������ݽ����
    /// </summary>
    /// <param name="connection">���ݿ����Ӷ���</param>
    /// <param name="command">���ݿ��������</param>
    /// <param name="type">��������</param>
    /// <param name="text">���ݿ������ַ���</param>
    /// <returns>���ݽ����</returns>
    public static DataSet ExecuteDataSet(SqlConnection connection, SqlCommand command, CommandType type, string text)
    {
      return ExecuteDataSet(connection, command, SqlOperation.External, type, text, new ArrayList());
    }

    /// <summary>
    /// ִ�����ݲ�ѯ�������ݽ����
    /// </summary>
    /// <param name="connection">���ݿ����Ӷ���</param>
    /// <param name="command">���ݿ��������</param>
    /// <param name="text">���ݿ������ַ���</param>
    /// <param name="parameters">��������</param>
    /// <returns>���ݽ����</returns>
    public static DataSet ExecuteDataSet(SqlConnection connection, SqlCommand command, string text, SqlParameter[] parameters)
    {
      return ExecuteDataSet(connection, command, SqlOperation.External, CommandType.Text, text, ConvertParameters(parameters));
    }

    /// <summary>
    /// ִ�����ݲ�ѯ�������ݽ����
    /// </summary>
    /// <param name="connection">���ݿ����Ӷ���</param>
    /// <param name="command">���ݿ��������</param>
    /// <param name="text">���ݿ������ַ���</param>
    /// <param name="parameters">������̬����</param>
    /// <returns>���ݽ����</returns>
    public static DataSet ExecuteDataSet(SqlConnection connection, SqlCommand command, string text, ArrayList parameters)
    {
      return ExecuteDataSet(connection, command, SqlOperation.External, CommandType.Text, text, parameters);
    }

    /// <summary>
    /// ִ�����ݲ�ѯ�������ݽ����
    /// </summary>
    /// <param name="connection">���ݿ����Ӷ���</param>
    /// <param name="command">���ݿ��������</param>
    /// <param name="sqloperation">��������</param>
    /// <param name="type">��������</param>
    /// <param name="text">���ݿ������ַ���</param>
    /// <param name="parameters">��������</param>
    /// <returns>���ݽ����</returns>
    public static DataSet ExecuteDataSet(SqlConnection connection, SqlCommand command, SqlOperation sqloperation, CommandType type, string text, SqlParameter[] parameters)
    {
      return ExecuteDataSet(connection, command, sqloperation, type, text, ConvertParameters(parameters));
    }

    /// <summary>
    /// ִ�����ݲ�ѯ�������ݽ����
    /// </summary>
    /// <param name="SqlOper">���ݿ�����Զ������</param>
    /// <returns>���ݽ����</returns>
    public static DataSet ExecuteDataSet(SqlTool oper)
    {
      if (oper == null)
        return new DataSet();

      if (oper.Connection == null)
        return ExecuteDataSet(oper.Type, oper.Sql, oper.Parameters);

      return ExecuteDataSet(oper.Connection, oper.Command, oper.Operation, oper.Type, oper.Sql, oper.Parameters);
    }

    /// <summary>
    /// ִ�����ݲ�ѯ�������ݽ����
    /// </summary>
    /// <param name="connection">���ݿ����Ӷ���</param>
    /// <param name="command">���ݿ��������</param>
    /// <param name="sqloperation">��������</param>
    /// <param name="type">��������</param>
    /// <param name="text">���ݿ������ַ���</param>
    /// <param name="parameters">������̬����</param>
    /// <returns>���ݽ����</returns>
    public static DataSet ExecuteDataSet(SqlConnection connection, SqlCommand command, SqlOperation sqloperation, CommandType type, string text, ArrayList parameters)
    {
      if ((sqloperation == SqlOperation.External) && ((connection == null) || (command == null)))
      {
        throw new ArgumentNullException("���������ⲿ�ύʱ��ȱ�����ݿ����Ӻ��������");
      }

      SqlConnection conn = connection;
      SqlCommand cmd = command;

      try
      {
        DataSet ds = new DataSet();

        if (sqloperation == SqlOperation.Internal)
        {
          conn = GetConnection();
          cmd = GetCommand();
        }

        // Ԥ׼�����ݿ��������
        PrepareCommand(cmd, conn, type, text, parameters);

        // ��ȡ���ݼ�
        SqlDataAdapter da = GetAdapter(cmd);

        // �������
        da.Fill(ds);

        // ����������ٴ�ʹ��
        cmd.Parameters.Clear();

        return ds;
      }
      catch
      {
        throw;
      }
      finally
      {
        // �������Ϊ�ڲ��ύ�����ͷ����ݿ����Ӻ��������
        if (sqloperation == SqlOperation.Internal)
          SetDispose(conn, cmd);
      }
    }

    #endregion ExecuteDataSet Methods

    #region -ExecuteDataTable Methods-

    /// <summary>
    /// ִ�����ݲ�ѯ�������ݽ����
    /// </summary>
    /// <param name="text">���ݿ������ַ���</param>
    /// <returns>���ݽ����</returns>
    public static DataTable ExecuteDataTable(string text)
    {
      return ExecuteDataTable(null, null, SqlOperation.Internal, CommandType.Text, text, new ArrayList());
    }

    /// <summary>
    /// ִ�����ݲ�ѯ�������ݽ����
    /// </summary>
    /// <param name="type">��������</param>
    /// <param name="text">t���ݿ������ַ���</param>
    /// <returns>���ݽ����</returns>
    public static DataTable ExecuteDataTable(CommandType type, string text)
    {
      return ExecuteDataTable(null, null, SqlOperation.Internal, type, text, new ArrayList());
    }

    /// <summary>
    /// ִ�����ݲ�ѯ�������ݽ����
    /// </summary>
    /// <param name="text">���ݿ������ַ���</param>
    /// <param name="parameters">��������</param>
    /// <returns>���ݽ����</returns>
    public static DataTable ExecuteDataTable(string text, SqlParameter[] parameters)
    {
      return ExecuteDataTable(null, null, SqlOperation.Internal, CommandType.Text, text, ConvertParameters(parameters));
    }

    /// <summary>
    /// ִ�����ݲ�ѯ�������ݽ����
    /// </summary>
    /// <param name="text">���ݿ������ַ���</param>
    /// <param name="parameters">������̬����</param>
    /// <returns>���ݽ����</returns>
    public static DataTable ExecuteDataTable(string text, ArrayList parameters)
    {
      return ExecuteDataTable(null, null, SqlOperation.Internal, CommandType.Text, text, parameters);
    }

    /// <summary>
    /// ִ�����ݲ�ѯ�������ݽ����
    /// </summary>
    /// <param name="type">��������</param>
    /// <param name="text">���ݿ������ַ���</param>
    /// <param name="parameters">��������</param>
    /// <returns>���ݽ����</returns>
    public static DataTable ExecuteDataTable(CommandType type, string text, SqlParameter[] parameters)
    {
      return ExecuteDataTable(null, null, SqlOperation.Internal, type, text, ConvertParameters(parameters));
    }

    /// <summary>
    /// ִ�����ݲ�ѯ�������ݽ����
    /// </summary>
    /// <param name="type">��������</param>
    /// <param name="text">���ݿ������ַ���</param>
    /// <param name="parameters">������̬����</param>
    /// <returns>���ݽ����</returns>
    public static DataTable ExecuteDataTable(CommandType type, string text, ArrayList parameters)
    {
      return ExecuteDataTable(null, null, SqlOperation.Internal, type, text, parameters);
    }

    /// <summary>
    /// ִ�����ݲ�ѯ�������ݽ����
    /// </summary>
    /// <param name="connection">���ݿ����Ӷ���</param>
    /// <param name="command">���ݿ��������</param>
    /// <param name="text">���ݿ������ַ���</param>
    /// <returns>���ݽ����</returns>
    public static DataTable ExecuteDataTable(SqlConnection connection, SqlCommand command, string text)
    {
      return ExecuteDataTable(connection, command, SqlOperation.External, CommandType.Text, text, new ArrayList());
    }

    /// <summary>
    /// ִ�����ݲ�ѯ�������ݽ����
    /// </summary>
    /// <param name="connection">���ݿ����Ӷ���</param>
    /// <param name="command">���ݿ��������</param>
    /// <param name="type">��������</param>
    /// <param name="text">���ݿ������ַ���</param>
    /// <returns>���ݽ����</returns>
    public static DataTable ExecuteDataTable(SqlConnection connection, SqlCommand command, CommandType type, string text)
    {
      return ExecuteDataTable(connection, command, SqlOperation.External, type, text, new ArrayList());
    }

    /// <summary>
    /// ִ�����ݲ�ѯ�������ݽ����
    /// </summary>
    /// <param name="connection">���ݿ����Ӷ���</param>
    /// <param name="command">���ݿ��������</param>
    /// <param name="text">���ݿ������ַ���</param>
    /// <param name="parameters">��������</param>
    /// <returns>���ݽ����</returns>
    public static DataTable ExecuteDataTable(SqlConnection connection, SqlCommand command, string text, SqlParameter[] parameters)
    {
      return ExecuteDataTable(connection, command, SqlOperation.External, CommandType.Text, text, ConvertParameters(parameters));
    }

    /// <summary>
    /// ִ�����ݲ�ѯ�������ݽ����
    /// </summary>
    /// <param name="connection">���ݿ����Ӷ���</param>
    /// <param name="command">���ݿ��������</param>
    /// <param name="text">���ݿ������ַ���</param>
    /// <param name="parameters">������̬����</param>
    /// <returns>���ݽ����</returns>
    public static DataTable ExecuteDataTable(SqlConnection connection, SqlCommand command, string text, ArrayList parameters)
    {
      return ExecuteDataTable(connection, command, SqlOperation.External, CommandType.Text, text, parameters);
    }

    /// <summary>
    /// ִ�����ݲ�ѯ�������ݽ����
    /// </summary>
    /// <param name="connection">���ݿ����Ӷ���</param>
    /// <param name="command">���ݿ��������</param>
    /// <param name="type">��������</param>
    /// <param name="text">���ݿ������ַ���</param>
    /// <param name="parameters">��������</param>
    /// <returns>���ݽ����</returns>
    public static DataTable ExecuteDataTable(SqlConnection connection, SqlCommand command, CommandType type, string text, SqlParameter[] parameters)
    {
      return ExecuteDataTable(connection, command, SqlOperation.External, type, text, ConvertParameters(parameters));
    }

    /// <summary>
    /// ִ�����ݲ�ѯ�������ݽ����
    /// </summary>
    /// <param name="connection">���ݿ����Ӷ���</param>
    /// <param name="command">���ݿ��������</param>
    /// <param name="type">��������</param>
    /// <param name="text">���ݿ������ַ���</param>
    /// <param name="parameters">������̬����</param>
    /// <returns>���ݽ����</returns>
    public static DataTable ExecuteDataTable(SqlConnection connection, SqlCommand command, CommandType type, string text, ArrayList parameters)
    {
      return ExecuteDataTable(connection, command, SqlOperation.External, type, text, parameters);
    }

    /// <summary>
    /// ִ�����ݲ�ѯ�������ݽ����
    /// </summary>
    /// <param name="connection">���ݿ����Ӷ���</param>
    /// <param name="command">���ݿ��������</param>
    /// <param name="sqloperation">��������</param>
    /// <param name="type">��������</param>
    /// <param name="text">���ݿ������ַ���</param>
    /// <param name="parameters">��������</param>
    /// <returns>���ݽ����</returns>
    public static DataTable ExecuteDataTable(SqlConnection connection, SqlCommand command, SqlOperation sqloperation,
          CommandType type, string text, SqlParameter[] parameters)
    {
      return ExecuteDataTable(connection, command, sqloperation, type, text, ConvertParameters(parameters));
    }

    /// <summary>
    /// ִ�����ݲ�ѯ�������ݽ����
    /// </summary>
    /// <param name="SqlOper">���ݿ�����Զ������</param>
    /// <returns>���ݽ����</returns>
    public static DataTable ExecuteDataTable(SqlTool oper)
    {
      if (oper == null)
        return new DataTable();

      if (oper.Connection == null)
        return ExecuteDataTable(oper.Type, oper.Sql, oper.Parameters);

      return ExecuteDataTable(oper.Connection, oper.Command, oper.Operation, oper.Type, oper.Sql, oper.Parameters);
    }

    /// <summary>
    /// ִ�����ݲ�ѯ�������ݽ����
    /// </summary>
    /// <param name="connection">���ݿ����Ӷ���</param>
    /// <param name="command">���ݿ��������</param>
    /// <param name="sqloperation">��������</param>
    /// <param name="type">��������</param>
    /// <param name="text">���ݿ������ַ���</param>
    /// <param name="parameters">������̬����</param>
    /// <returns>���ݽ����</returns>
    public static DataTable ExecuteDataTable(SqlConnection connection, SqlCommand command, SqlOperation sqloperation,
          CommandType type, string text, ArrayList parameters)
    {
      if ((sqloperation == SqlOperation.External) && ((connection == null) || (command == null)))
      {
        throw new ArgumentNullException("���������ⲿ�ύʱ��ȱ�����ݿ����Ӻ��������");
      }

      SqlConnection conn = connection;
      SqlCommand cmd = command;

      try
      {
        DataTable dt = new DataTable();

        if (sqloperation == SqlOperation.Internal)
        {
          conn = GetConnection();
          cmd = GetCommand();
        }

        // Ԥ׼�����ݿ��������
        PrepareCommand(cmd, conn, type, text, parameters);

        SqlDataAdapter da = GetAdapter(cmd);

        // ��ȡ���ݼ�
        da.Fill(dt);

        // ����������ٴ�ʹ��
        cmd.Parameters.Clear();

        // �������ݱ�
        return dt;
      }
      catch
      {
        throw;
      }
      finally
      {
        // �������Ϊ�ڲ��ύ�����ͷ����ݿ����Ӻ��������
        if (sqloperation == SqlOperation.Internal)
          SetDispose(conn, cmd);
      }
    }

    #endregion ExecuteDataTable Methods

    #region -ExecuteDatareader Methods-

    /// <summary>
    /// ִ�����ݲ�ѯ�������ݶ�ȡ����
    /// </summary>
    /// <param name="text">���ݿ������ַ���</param>
    /// <returns>���ݶ�ȡ����</returns>
    public static SqlDataReader ExecuteReader(string text)
    {
      return ExecuteReader(null, null, SqlOperation.Internal, CommandType.Text, text, new ArrayList());
    }

    /// <summary>
    /// ִ�����ݲ�ѯ�������ݶ�ȡ����
    /// </summary>
    /// <param name="type">��������</param>
    /// <param name="text">���ݿ������ַ���</param>
    /// <returns>���ݶ�ȡ����</returns>
    public static SqlDataReader ExecuteReader(CommandType type, string text)
    {
      return ExecuteReader(null, null, SqlOperation.Internal, type, text, new ArrayList());
    }

    /// <summary>
    /// ִ�����ݲ�ѯ�������ݶ�ȡ����
    /// </summary>
    /// <param name="text">���ݿ������ַ���</param>
    /// <param name="parameters">��������</param>
    /// <returns>���ݶ�ȡ����</returns>
    public static SqlDataReader ExecuteReader(string text, SqlParameter[] parameters)
    {
      return ExecuteReader(null, null, SqlOperation.Internal, CommandType.Text, text, ConvertParameters(parameters));
    }

    /// <summary>
    /// ִ�����ݲ�ѯ�������ݶ�ȡ����
    /// </summary>
    /// <param name="text">���ݿ������ַ���</param>
    /// <param name="parameters">������̬����</param>
    /// <returns>���ݶ�ȡ����</returns>
    public static SqlDataReader ExecuteReader(string text, ArrayList parameters)
    {
      return ExecuteReader(null, null, SqlOperation.Internal, CommandType.Text, text, parameters);
    }

    /// <summary>
    /// ִ�����ݲ�ѯ�������ݶ�ȡ����
    /// </summary>
    /// <param name="type">��������</param>
    /// <param name="text">���ݿ������ַ���</param>
    /// <param name="parameters">��������</param>
    /// <returns>���ݶ�ȡ����</returns>
    public static SqlDataReader ExecuteReader(CommandType type, string text, SqlParameter[] parameters)
    {
      return ExecuteReader(null, null, SqlOperation.Internal, type, text, ConvertParameters(parameters));
    }

    /// <summary>
    /// ִ�����ݲ�ѯ�������ݶ�ȡ����
    /// </summary>
    /// <param name="type">��������</param>
    /// <param name="text">���ݿ������ַ���</param>
    /// <param name="parameters">������̬����</param>
    /// <returns>���ݶ�ȡ����</returns>
    public static SqlDataReader ExecuteReader(CommandType type, string text, ArrayList parameters)
    {
      return ExecuteReader(null, null, SqlOperation.Internal, type, text, parameters);
    }

    /// <summary>
    /// ִ�����ݲ�ѯ�������ݶ�ȡ����
    /// </summary>
    /// <param name="connection">���ݿ����Ӷ���</param>
    /// <param name="command">���ݿ��������</param>
    /// <param name="text">���ݿ������ַ���</param>
    /// <returns>���ݶ�ȡ����</returns>
    public static SqlDataReader ExecuteReader(SqlConnection connection, SqlCommand command, string text)
    {
      return ExecuteReader(connection, command, SqlOperation.External, CommandType.Text, text, new ArrayList());
    }

    /// <summary>
    /// ִ�����ݲ�ѯ�������ݶ�ȡ����
    /// </summary>
    /// <param name="connection">���ݿ����Ӷ���</param>
    /// <param name="command">���ݿ��������</param>
    /// <param name="type">��������</param>
    /// <param name="text">���ݿ������ַ���</param>
    /// <returns>���ݶ�ȡ����</returns>
    public static SqlDataReader ExecuteReader(SqlConnection connection, SqlCommand command, CommandType type, string text)
    {
      return ExecuteReader(connection, command, SqlOperation.External, type, text, new ArrayList());
    }

    /// <summary>
    /// ִ�����ݲ�ѯ�������ݶ�ȡ����
    /// </summary>
    /// <param name="connection">���ݿ����Ӷ���</param>
    /// <param name="command">���ݿ��������</param>
    /// <param name="text">���ݿ������ַ���</param>
    /// <param name="parameters">��������</param>
    /// <returns>���ݶ�ȡ����</returns>
    public static SqlDataReader ExecuteReader(SqlConnection connection, SqlCommand command, string text, SqlParameter[] parameters)
    {
      return ExecuteReader(connection, command, SqlOperation.External, CommandType.Text, text, ConvertParameters(parameters));
    }

    /// <summary>
    /// ִ�����ݲ�ѯ�������ݶ�ȡ����
    /// </summary>
    /// <param name="connection">���ݿ����Ӷ���</param>
    /// <param name="command">���ݿ��������</param>
    /// <param name="text">���ݿ������ַ���</param>
    /// <param name="parameters">������̬����</param>
    /// <returns>���ݶ�ȡ����</returns>
    public static SqlDataReader ExecuteReader(SqlConnection connection, SqlCommand command, string text, ArrayList parameters)
    {
      return ExecuteReader(connection, command, SqlOperation.External, CommandType.Text, text, parameters);
    }

    /// <summary>
    /// ִ�����ݲ�ѯ�������ݶ�ȡ����
    /// </summary>
    /// <param name="connection">���ݿ����Ӷ���</param>
    /// <param name="command">���ݿ��������</param>
    /// <param name="type">��������</param>
    /// <param name="text">���ݿ������ַ���</param>
    /// <param name="parameters">��������</param>
    /// <returns>���ݶ�ȡ����</returns>
    public static SqlDataReader ExecuteReader(SqlConnection connection, SqlCommand command, CommandType type, string text, SqlParameter[] parameters)
    {
      return ExecuteReader(connection, command, SqlOperation.External, type, text, ConvertParameters(parameters));
    }

    /// <summary>
    /// ִ�����ݲ�ѯ�������ݶ�ȡ����
    /// </summary>
    /// <param name="connection">���ݿ����Ӷ���</param>
    /// <param name="command">���ݿ��������</param>
    /// <param name="type">��������</param>
    /// <param name="text">���ݿ������ַ���</param>
    /// <param name="parameters">������̬����</param>
    /// <returns>���ݶ�ȡ����</returns>
    public static SqlDataReader ExecuteReader(SqlConnection connection, SqlCommand command, CommandType type, string text, ArrayList parameters)
    {
      return ExecuteReader(connection, command, SqlOperation.External, type, text, parameters);
    }

    /// <summary>
    /// ִ�����ݲ�ѯ�������ݶ�ȡ����
    /// </summary>
    /// <param name="connection">���ݿ����Ӷ���</param>
    /// <param name="command">���ݿ��������</param>
    /// <param name="sqloperation">��������</param>
    /// <param name="type">��������</param>
    /// <param name="text">���ݿ������ַ���</param>
    /// <param name="parameters">��������</param>
    /// <returns>���ݶ�ȡ����</returns>
    public static SqlDataReader ExecuteReader(SqlConnection connection, SqlCommand command, SqlOperation sqloperation,
          CommandType type, string text, SqlParameter[] parameters)
    {
      return ExecuteReader(connection, command, sqloperation, type, text, ConvertParameters(parameters));
    }

    /// <summary>
    /// ִ�����ݲ�ѯ�������ݶ�ȡ����
    /// </summary>
    /// <param name="SqlOper">���ݿ�����Զ������</param>
    /// <returns>���ݶ�ȡ����</returns>
    public static SqlDataReader ExecuteReader(SqlTool oper)
    {
      if (oper == null)
        return null;

      if (oper.Connection == null)
        return ExecuteReader(oper.Type, oper.Sql, oper.Parameters);

      return ExecuteReader(oper.Connection, oper.Command, oper.Operation, oper.Type, oper.Sql, oper.Parameters);
    }

    /// <summary>
    /// ִ�����ݲ�ѯ�������ݶ�ȡ����
    /// </summary>
    /// <param name="connection">���ݿ����Ӷ���</param>
    /// <param name="command">���ݿ��������</param>
    /// <param name="sqloperation">��������</param>
    /// <param name="type">��������</param>
    /// <param name="text">���ݿ������ַ���</param>
    /// <param name="parameters">������̬����</param>
    /// <returns>���ݶ�ȡ����</returns>
    public static SqlDataReader ExecuteReader(SqlConnection connection, SqlCommand command, SqlOperation sqloperation,
          CommandType type, string text, ArrayList parameters)
    {
      if ((sqloperation == SqlOperation.External) && ((connection == null) || (command == null)))
      {
        throw new ArgumentNullException("���������ⲿ�ύʱ��ȱ�����ݿ����Ӻ��������");
      }

      SqlConnection conn = connection;
      SqlCommand cmd = command;
      SqlDataReader dr;

      try
      {
        if (sqloperation == SqlOperation.Internal)
        {
          conn = GetConnection();
          cmd = GetCommand();
        }

        // Ԥ׼�����ݿ��������
        PrepareCommand(cmd, conn, type, text, parameters);

        if (sqloperation == SqlOperation.Internal)
        {
          dr = cmd.ExecuteReader(CommandBehavior.CloseConnection);
        }
        else
        {
          dr = cmd.ExecuteReader();
        }

        // ����������ٴ�ʹ��
        cmd.Parameters.Clear();

        return dr;
      }
      catch
      {
        throw;
      }
      finally
      {
        // �������Ϊ�ڲ��ύ�����ͷ����ݿ����Ӻ��������
        //if (sqloperation == SqlOperation.Internal) 
        //  SetDispose(conn, cmd);
      }
    }

    #endregion ExecuteDatareader Methods

    #region -ExecuteScalar Methods-

    /// <summary>
    /// ��ȡ����ֵ
    /// </summary>
    /// <param name="text">���ݿ������ַ���</param>
    /// <returns>����ֵ����</returns>
    public static object ExecuteScalar(string text)
    {
      return ExecuteScalar(null, null, SqlOperation.Internal, CommandType.Text, text, new ArrayList());
    }

    /// <summary>
    /// ��ȡ����ֵ
    /// </summary>
    /// <param name="type">��������</param>
    /// <param name="text">���ݿ������ַ���</param>
    /// <returns>����ֵ����</returns>
    public static object ExecuteScalar(CommandType type, string text)
    {
      return ExecuteScalar(null, null, SqlOperation.Internal, type, text, new ArrayList());
    }

    /// <summary>
    /// ��ȡ����ֵ
    /// </summary>
    /// <param name="text">���ݿ������ַ���</param>
    /// <param name="parameters">��������</param>
    /// <returns>����ֵ����</returns>
    public static object ExecuteScalar(string text, SqlParameter[] parameters)
    {
      return ExecuteScalar(null, null, SqlOperation.Internal, CommandType.Text, text, ConvertParameters(parameters));
    }

    /// <summary>
    /// ��ȡ����ֵ
    /// </summary>
    /// <param name="text">���ݿ������ַ���</param>
    /// <param name="parameters">������̬����</param>
    /// <returns>����ֵ����</returns>
    public static object ExecuteScalar(string text, ArrayList parameters)
    {
      return ExecuteScalar(null, null, SqlOperation.Internal, CommandType.Text, text, parameters);
    }

    /// <summary>
    /// ��ȡ����ֵ
    /// </summary>
    /// <param name="type">��������</param>
    /// <param name="text">���ݿ������ַ���</param>
    /// <param name="parameters">��������</param>
    /// <returns>����ֵ����</returns>
    public static object ExecuteScalar(CommandType type, string text, SqlParameter[] parameters)
    {
      return ExecuteScalar(null, null, SqlOperation.Internal, type, text, ConvertParameters(parameters));
    }

    /// <summary>
    /// ��ȡ����ֵ
    /// </summary>
    /// <param name="type">��������</param>
    /// <param name="text">���ݿ������ַ���</param>
    /// <param name="parameters">������̬����</param>
    /// <returns>����ֵ����</returns>
    public static object ExecuteScalar(CommandType type, string text, ArrayList parameters)
    {
      return ExecuteScalar(null, null, SqlOperation.Internal, type, text, parameters);
    }

    /// <summary>
    /// ��ȡ����ֵ
    /// </summary>
    /// <param name="connection">���ݿ����Ӷ���</param>
    /// <param name="command">���ݿ��������</param>
    /// <param name="text">���ݿ������ַ���</param>
    /// <returns>����ֵ����</returns>
    public static object ExecuteScalar(SqlConnection connection, SqlCommand command, string text)
    {
      return ExecuteScalar(connection, command, SqlOperation.External, CommandType.Text, text, new ArrayList());
    }

    /// <summary>
    /// ��ȡ����ֵ
    /// </summary>
    /// <param name="connection">���ݿ����Ӷ���</param>
    /// <param name="command">���ݿ��������</param>
    /// <param name="type">��������</param>
    /// <param name="text">���ݿ������ַ���</param>
    /// <returns>����ֵ����</returns>
    public static object ExecuteScalar(SqlConnection connection, SqlCommand command, CommandType type, string text)
    {
      return ExecuteScalar(connection, command, SqlOperation.External, type, text, new ArrayList());
    }

    /// <summary>
    /// ��ȡ����ֵ
    /// </summary>
    /// <param name="connection">���ݿ����Ӷ���</param>
    /// <param name="command">���ݿ��������</param>
    /// <param name="text">���ݿ������ַ���</param>
    /// <param name="parameters">��������</param>
    /// <returns>����ֵ����</returns>
    public static object ExecuteScalar(SqlConnection connection, SqlCommand command, string text, SqlParameter[] parameters)
    {
      return ExecuteScalar(connection, command, SqlOperation.External, CommandType.Text, text, ConvertParameters(parameters));
    }

    /// <summary>
    /// ��ȡ����ֵ
    /// </summary>
    /// <param name="connection">���ݿ����Ӷ���</param>
    /// <param name="command">���ݿ��������</param>
    /// <param name="text">���ݿ������ַ���</param>
    /// <param name="parameters">������̬����</param>
    /// <returns>����ֵ����</returns>
    public static object ExecuteScalar(SqlConnection connection, SqlCommand command, string text, ArrayList parameters)
    {
      return ExecuteScalar(connection, command, SqlOperation.External, CommandType.Text, text, parameters);
    }

    /// <summary>
    /// ��ȡ����ֵ
    /// </summary>
    /// <param name="connection">���ݿ����Ӷ���</param>
    /// <param name="command">���ݿ��������</param>
    /// <param name="type">��������</param>
    /// <param name="text">���ݿ������ַ���</param>
    /// <param name="parameters">��������</param>
    /// <returns>����ֵ����</returns>
    public static object ExecuteScalar(SqlConnection connection, SqlCommand command, CommandType type, string text, SqlParameter[] parameters)
    {
      return ExecuteScalar(connection, command, SqlOperation.External, type, text, ConvertParameters(parameters));
    }

    /// <summary>
    /// ��ȡ����ֵ
    /// </summary>
    /// <param name="connection">���ݿ����Ӷ���</param>
    /// <param name="command">���ݿ��������</param>
    /// <param name="type">��������</param>
    /// <param name="text">���ݿ������ַ���</param>
    /// <param name="parameters">������̬����</param>
    /// <returns>����ֵ����</returns>
    public static object ExecuteScalar(SqlConnection connection, SqlCommand command, CommandType type, string text, ArrayList parameters)
    {
      return ExecuteScalar(connection, command, SqlOperation.External, type, text, parameters);
    }

    /// <summary>
    /// ��ȡ����ֵ
    /// </summary>
    /// <param name="connection">���ݿ����Ӷ���</param>
    /// <param name="command">���ݿ��������</param>
    /// <param name="sqloperation">��������</param>
    /// <param name="type">��������</param>
    /// <param name="text">���ݿ������ַ���</param>
    /// <param name="parameters">��������</param>
    /// <returns>����ֵ����</returns>
    public static object ExecuteScalar(SqlConnection connection, SqlCommand command, SqlOperation sqloperation,
          CommandType type, string text, SqlParameter[] parameters)
    {
      return ExecuteScalar(connection, command, sqloperation, type, text, ConvertParameters(parameters));
    }

    /// <summary>
    /// ��ȡ����ֵ
    /// </summary>
    /// <param name="SqlOper">���ݿ�����Զ������</param>
    /// <returns>����ֵ����</returns>
    public static object ExecuteScalar(SqlTool oper)
    {
      if (oper == null)
        return String.Empty;

      if (oper.Connection == null)
        return ExecuteScalar(oper.Type, oper.Sql, oper.Parameters);

      return ExecuteScalar(oper.Connection, oper.Command, oper.Operation, oper.Type, oper.Sql, oper.Parameters);
    }

    /// <summary>
    /// ��ȡ����ֵ
    /// </summary>
    /// <param name="connection">���ݿ����Ӷ���</param>
    /// <param name="command">���ݿ��������</param>
    /// <param name="sqloperation">��������</param>
    /// <param name="type">��������</param>
    /// <param name="text">���ݿ������ַ���</param>
    /// <param name="parameters">��������</param>
    /// <returns>����ֵ����</returns>
    public static object ExecuteScalar(SqlConnection connection, SqlCommand command, SqlOperation sqloperation,
          CommandType type, string text, ArrayList parameters)
    {
      if ((sqloperation == SqlOperation.External) && ((connection == null) || (command == null)))
      {
        throw new ArgumentNullException("���������ⲿ�ύʱ��ȱ�����ݿ����Ӻ��������");
      }

      SqlConnection conn = connection;
      SqlCommand cmd = command;

      try
      {
        if (sqloperation == SqlOperation.Internal)
        {
          conn = GetConnection();
          cmd = GetCommand();
        }

        PrepareCommand(cmd, conn, type, text, parameters);

        object retval = cmd.ExecuteScalar();

        if (type == CommandType.StoredProcedure)
          OutPutParameters(cmd, parameters);

        cmd.Parameters.Clear();

        return retval;
      }
      catch
      {
        throw;
      }
      finally
      {
        if (sqloperation == SqlOperation.Internal) SetDispose(conn, cmd);
      }
    }

    #endregion ExecuteScalar Methods

    #region -ExecuteXmlReader Methods-

    /// <summary>
    /// ��ȡXML����
    /// </summary>
    /// <param name="text">���ݿ������ַ���</param>
    /// <returns>XML���ݶ���</returns>
    public static XmlReader ExecuteXmlReader(string text)
    {
      return ExecuteXmlReader(null, null, SqlOperation.Internal, CommandType.Text, text, new ArrayList());
    }

    /// <summary>
    /// ��ȡXML����
    /// </summary>
    /// <param name="type">��������</param>
    /// <param name="text">���ݿ������ַ���</param>
    /// <returns>XML���ݶ���</returns>
    public static XmlReader ExecuteXmlReader(CommandType type, string text)
    {
      return ExecuteXmlReader(null, null, SqlOperation.Internal, type, text, new ArrayList());
    }

    /// <summary>
    /// ��ȡXML����
    /// </summary>
    /// <param name="text">���ݿ������ַ���</param>
    /// <param name="parameters">��������</param>
    /// <returns>XML���ݶ���</returns>
    public static XmlReader ExecuteXmlReader(string text, SqlParameter[] parameters)
    {
      return ExecuteXmlReader(null, null, SqlOperation.Internal, CommandType.Text, text, ConvertParameters(parameters));
    }

    /// <summary>
    /// ��ȡXML����
    /// </summary>
    /// <param name="text">���ݿ������ַ���</param>
    /// <param name="parameters">������̬����</param>
    /// <returns>XML���ݶ���</returns>
    public static XmlReader ExecuteXmlReader(string text, ArrayList parameters)
    {
      return ExecuteXmlReader(null, null, SqlOperation.Internal, CommandType.Text, text, parameters);
    }

    /// <summary>
    /// ��ȡXML����
    /// </summary>
    /// <param name="type">��������</param>
    /// <param name="text">���ݿ������ַ���</param>
    /// <param name="parameters">��������</param>
    /// <returns>XML���ݶ���</returns>
    public static XmlReader ExecuteXmlReader(CommandType type, string text, SqlParameter[] parameters)
    {
      return ExecuteXmlReader(null, null, SqlOperation.Internal, type, text, ConvertParameters(parameters));
    }

    /// <summary>
    /// ��ȡXML����
    /// </summary>
    /// <param name="type">��������</param>
    /// <param name="text">���ݿ������ַ���</param>
    /// <param name="parameters">������̬����</param>
    /// <returns>XML���ݶ���</returns>
    public static XmlReader ExecuteXmlReader(CommandType type, string text, ArrayList parameters)
    {
      return ExecuteXmlReader(null, null, SqlOperation.Internal, type, text, parameters);
    }

    /// <summary>
    /// ��ȡXML����
    /// </summary>
    /// <param name="connection">���ݿ����Ӷ���</param>
    /// <param name="command">���ݿ��������</param>
    /// <param name="text">���ݿ������ַ���</param>
    /// <returns>XML���ݶ���</returns>
    public static XmlReader ExecuteXmlReader(SqlConnection connection, SqlCommand command, string text)
    {
      return ExecuteXmlReader(connection, command, SqlOperation.External, CommandType.Text, text, new ArrayList());
    }

    /// <summary>
    /// ��ȡXML����
    /// </summary>
    /// <param name="connection">���ݿ����Ӷ���</param>
    /// <param name="command">���ݿ��������</param>
    /// <param name="type">��������</param>
    /// <param name="text">���ݿ������ַ���</param>
    /// <returns>XML���ݶ���</returns>
    public static XmlReader ExecuteXmlReader(SqlConnection connection, SqlCommand command, CommandType type, string text)
    {
      return ExecuteXmlReader(connection, command, SqlOperation.External, type, text, new ArrayList());
    }

    /// <summary>
    /// ��ȡXML����
    /// </summary>
    /// <param name="connection">���ݿ����Ӷ���</param>
    /// <param name="command">���ݿ��������</param>
    /// <param name="text">���ݿ������ַ���</param>
    /// <param name="parameters">��������</param>
    /// <returns>XML���ݶ���</returns>
    public static XmlReader ExecuteXmlReader(SqlConnection connection, SqlCommand command, string text, SqlParameter[] parameters)
    {
      return ExecuteXmlReader(connection, command, SqlOperation.External, CommandType.Text, text, ConvertParameters(parameters));
    }

    /// <summary>
    /// ��ȡXML����
    /// </summary>
    /// <param name="connection">���ݿ����Ӷ���</param>
    /// <param name="command">���ݿ��������</param>
    /// <param name="text">���ݿ������ַ���</param>
    /// <param name="parameters">������̬����</param>
    /// <returns>XML���ݶ���</returns>
    public static XmlReader ExecuteXmlReader(SqlConnection connection, SqlCommand command, string text, ArrayList parameters)
    {
      return ExecuteXmlReader(connection, command, SqlOperation.External, CommandType.Text, text, parameters);
    }

    /// <summary>
    /// ��ȡXML����
    /// </summary>
    /// <param name="connection">���ݿ����Ӷ���</param>
    /// <param name="command">���ݿ��������</param>
    /// <param name="type">��������</param>
    /// <param name="text">���ݿ������ַ���</param>
    /// <param name="parameters">��������</param>
    /// <returns>XML���ݶ���</returns>
    public static XmlReader ExecuteXmlReader(SqlConnection connection, SqlCommand command, CommandType type, string text, SqlParameter[] parameters)
    {
      return ExecuteXmlReader(connection, command, SqlOperation.External, type, text, ConvertParameters(parameters));
    }

    /// <summary>
    /// ��ȡXML����
    /// </summary>
    /// <param name="connection">���ݿ����Ӷ���</param>
    /// <param name="command">���ݿ��������</param>
    /// <param name="type">��������</param>
    /// <param name="text">���ݿ������ַ���</param>
    /// <param name="parameters">������̬����</param>
    /// <returns>XML���ݶ���</returns>
    public static XmlReader ExecuteXmlReader(SqlConnection connection, SqlCommand command, CommandType type, string text, ArrayList parameters)
    {
      return ExecuteXmlReader(connection, command, SqlOperation.External, type, text, parameters);
    }

    /// <summary>
    /// ��ȡXML����
    /// </summary>
    /// <param name="connection">���ݿ����Ӷ���</param>
    /// <param name="command">���ݿ��������</param>
    /// <param name="sqloperation">��������</param>
    /// <param name="type">��������</param>
    /// <param name="text">���ݿ������ַ���</param>
    /// <param name="parameters">��������</param>
    /// <returns>XML���ݶ���</returns>
    public static XmlReader ExecuteXmlReader(SqlConnection connection, SqlCommand command, SqlOperation sqloperation,
          CommandType type, string text, SqlParameter[] parameters)
    {
      return ExecuteXmlReader(connection, command, sqloperation, type, text, ConvertParameters(parameters));
    }

    /// <summary>
    /// ��ȡXML����
    /// </summary>
    /// <param name="SqlOper">���ݿ�����Զ������</param>
    /// <returns>XML���ݶ���</returns>
    public static XmlReader ExecuteXmlReader(SqlTool oper)
    {
      if (oper == null)
        return null;

      if (oper.Connection == null)
        return ExecuteXmlReader(oper.Type, oper.Sql, oper.Parameters);

      return ExecuteXmlReader(oper.Connection, oper.Command, oper.Operation, oper.Type, oper.Sql, oper.Parameters);
    }

    /// <summary>
    /// ��ȡXML����
    /// </summary>
    /// <param name="connection">���ݿ����Ӷ���</param>
    /// <param name="command">���ݿ��������</param>
    /// <param name="sqloperation">��������</param>
    /// <param name="type">��������</param>
    /// <param name="text">���ݿ������ַ���</param>
    /// <param name="parameters">��������</param>
    /// <returns>XML���ݶ���</returns>
    public static XmlReader ExecuteXmlReader(SqlConnection connection, SqlCommand command, SqlOperation sqloperation,
          CommandType type, string text, ArrayList parameters)
    {
      if (GetDatabaseType() != DBConst.DB_TYPE_SQL2000)
      {
        throw new ArgumentNullException("���ݿ����ͱ���ΪSql Server 2000��");
      }

      if ((sqloperation == SqlOperation.External) && ((connection == null) || (command == null)))
      {
        throw new ArgumentNullException("���������ⲿ�ύʱ��ȱ�����ݿ����Ӻ��������");
      }

      SqlConnection conn = connection;
      SqlCommand cmd = command;

      try
      {
        if (sqloperation == SqlOperation.Internal)
        {
          conn = GetConnection();
          cmd = GetCommand();
        }

        PrepareCommand(cmd, conn, type, text, parameters);

        XmlReader retval = ((SqlCommand)cmd).ExecuteXmlReader();

        cmd.Parameters.Clear();

        return retval;
      }
      catch
      {
        throw;
      }
      finally
      {
        if (sqloperation == SqlOperation.Internal) SetDispose(conn, cmd);
      }
    }

    #endregion ExecuteXmlReader Methods
  }
}
