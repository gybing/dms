using System;

namespace GuFun.Utils
{
  /// <summary>
  /// ���ݲ�ѯ��ʽ������ָͨ��Sql�����ߴ洢���̽������ݿ����ݼ���ʱ����õķ�ʽ��
  /// </summary>
  public enum DataGetAction
  {
    /// <summary>
    /// ȫ������
    /// </summary>
    Full = 1,
    /// <summary>
    /// ���ĳ�е�����
    /// </summary>
    Row,
    /// <summary>
    /// ���������������������������м���
    /// </summary>
    ListRows,
    /// <summary>
    /// ���ĳ�е�ĳ��ֵ
    /// </summary>
    Scalar,
    /// <summary>
    /// ����ɸѡ
    /// </summary>
    Condition,
    /// <summary>
    /// ���ݲ�ѯ��ʽ�����������������
    /// </summary>
    SearchType,
    /// <summary>
    /// ���WinForm��DataGridView���м�SQL��ѯ
    /// </summary>
    SimpleList,
    /// <summary>
    /// �����ض������ݻ��״̬���������е����ݣ�ָ����������ɾ���ģ�
    /// </summary>
    ValidList,
    /// <summary>
    /// ���WinForm��DataGridView���м�SQL��ѯ�Ի�ȡ����������
    /// </summary>
    SimpleValid,
    /// <summary>
    /// �Զ���
    /// </summary>
    Custom
  }
}
