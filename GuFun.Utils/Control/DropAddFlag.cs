using System;

namespace GuFun.Utils
{
  /// <summary>
  /// ���������б�����ݹ�������������
  /// </summary>
  public enum DropAddFlag
  {
    /// <summary>
    /// ���κβ���
    /// </summary>
    None = 0,

    /// <summary>
    /// ������ѡ��ѡ��
    /// </summary>
    Select = -1,

    /// <summary>
    /// ����ѡ��ȫ��ѡ��
    /// </summary>
    All = -2,

    /// <summary>
    /// ���ӿ�ѡ��
    /// </summary>
    Null = -3,
    /// <summary>
    /// �Զ���
    /// </summary>
    Custom = -4
  }
}
