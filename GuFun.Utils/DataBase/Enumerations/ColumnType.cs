using System;

namespace GuFun.Utils
{
  /// <summary>
  /// ���ݿ��ֶ����ͣ�����ֻ��ʾ���õ��ֶ����͡�
  /// </summary>
  public enum ColumnType
  {
    /// <summary>
    /// �� -2^31 (-2,147,483,648) �� 2^31 - 1 (2,147,483,647) ���������ݣ��������֣���
    /// </summary>
    Int = 1,
    /// <summary>
    /// �� -2^15 (-32,768) �� 2^15 - 1 (32,767) ���������ݡ�
    /// </summary>
    SmallInt,
    /// <summary>
    /// �� -2^63 (-9223372036854775808) �� 2^63-1 (9223372036854775807) ���������ݣ��������֣���
    /// </summary>
    BigInt,
    /// <summary>
    /// �� 0 �� 255 ���������ݡ�
    /// </summary>
    TinyInt,
    /// <summary>
    /// �ɱ䳤�� Unicode ���ݣ�����󳤶�Ϊ 4,000 �ַ���
    /// </summary>
    NVarChar,
    /// <summary>
    /// �ɱ䳤�ȵķ� Unicode ���ݣ��Ϊ 8,000 ���ַ���
    /// </summary>
    VarChar,
    /// <summary>
    /// �ɱ䳤�� Unicode ���ݣ�����󳤶�Ϊ 2^30 - 1 (1,073,741,823) ���ַ���
    /// </summary>
    NText,
    /// <summary>
    /// �ɱ䳤�ȵķ� Unicode ���ݣ���󳤶�Ϊ 2^31 - 1 (2,147,483,647) ���ַ���
    /// </summary>
    Text,
    /// <summary>
    /// �� 1753 �� 1 �� 1 �յ� 9999 �� 12 �� 31 �յ����ں�ʱ�����ݣ���ȷ���ٷ�֮���루�� 3.33 ���룩��
    /// </summary>
    DateTime,
    /// <summary>
    /// �� 1900 �� 1 �� 1 �յ� 2079 �� 6 �� 6 �յ����ں�ʱ�����ݣ���ȷ�����ӡ�
    /// </summary>
    SmallDateTime,
    /// <summary>
    /// �� -10^38 +1 �� 10^38 �C1 �Ĺ̶����Ⱥ�С��λ���������ݡ�
    /// </summary>
    Decimal,
    /// <summary>
    /// 1 �� 0 ���������ݡ�
    /// </summary>
    Bit,
    /// <summary>
    /// �ɱ䳤�ȵĶ��������ݣ�����󳤶�Ϊ 2^31 - 1 (2,147,483,647) ���ֽڡ�
    /// </summary>
    Image,
    /// <summary>
    /// ȫ��Ψһ��ʶ�� (GUID)��
    /// </summary>
    UniqueIdentifier
  }
}
