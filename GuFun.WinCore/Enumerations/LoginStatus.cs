using System;
namespace GuFun.WinCore
{
  public enum LoginStatus
  {
    Valid = 1,
    /// <summary>
    /// ��ǰ�û��Ѿ�����
    /// </summary>
    Online,
    /// <summary>
    /// �û�����ע��
    /// </summary>
    NoRegister,
    /// <summary>
    /// ��˾״̬������
    /// </summary>
    InValidCompany,
    /// <summary>
    /// ����״̬������
    /// </summary>
    InValidDept,
    /// <summary>
    /// Ա��״̬������
    /// </summary>
    InValidMan,
    /// <summary>
    /// �޷���ֵ
    /// </summary>
    NoReturn,
    /// <summary>
    /// ϵͳ����
    /// </summary>
    SystemError
  }
}
