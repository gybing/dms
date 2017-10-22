// ***************************************************************************
// ��Ŀ���ƣ�GuFun.Utils 
// ��Ȩ��Ϣ: Copyright (C), 2003-2010, �Ͼ��ŷ��Ƽ����޹�˾
// �汾��Ϣ: 4.0
// �������ƣ�SqlTool
// �����������Զ������ݲ���������Է�װ�࣬���Sql Server 2000��
// ��дʱ�䣺2003-05-05
// ��д��Ա��cloudy
// ��    ע��
// ����������������������������������������������������������������������
// ��   ����  ��   ʱ��   ��  �汾   ��              ˵��              ��
// �ǩ�������������������������������������������������������������������
// �� cloudy  �� 20080808 ��  V3.1   �� �Զ���ķ�ʽ�������ݵ��ò����� ��
// �ǩ�������������������������������������������������������������������
// �� cloudy  �� 20090102 ��  V4.0   �� ��������                     ��
// ����������������������������������������������������������������������
// ***************************************************************************

using System;
using System.Data;
using System.Data.Common;
using System.Data.OleDb;
using System.Data.SqlClient;
using System.Runtime.InteropServices;
using System.Collections;

namespace GuFun.Utils
{
  public class SqlTool
  {
    #region Public Property

    private SqlConnection _connection;

    /// <summary>
    /// ���ݿ����Ӷ���
    /// </summary>
    public SqlConnection Connection
    {
      get { return _connection; }
      set { _connection = value; }
    }

    private SqlCommand _command;

    /// <summary>
    /// ���ݿ��������
    /// </summary>
    public SqlCommand Command
    {
      get { return _command; }
      set { _command = value; }
    }

    private SqlOperation _operation;

    /// <summary>
    /// ��������
    /// </summary>
    public SqlOperation Operation
    {
      get { return _operation; }
      set { _operation = value; }
    }

    private CommandType _type;

    /// <summary>
    /// ��������
    /// </summary>
    public CommandType Type
    {
      get { return _type; }
      set { _type = value; }
    }

    private string _sql;

    /// <summary>
    /// ���ݿ������ַ���
    /// </summary>
    public string Sql
    {
      get { return _sql; }
      set { _sql = value; }
    }

    private ArrayList _parameters;

    /// <summary>
    /// ���������̬����
    /// </summary>
    public ArrayList Parameters
    {
      get
      {
        if (_parameters == null)
          _parameters = new ArrayList();

        return _parameters;
      }
    }

    #endregion Public Property

    #region .ctor

    public SqlTool()
    {
      _connection = null;
      _command = null;
      _operation = SqlOperation.Internal;
      _type = CommandType.Text;
      _sql = String.Empty;
    }

    #endregion .ctor
  }
}
