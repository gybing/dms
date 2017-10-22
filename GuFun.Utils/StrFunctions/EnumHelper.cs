// ***************************************************************************
// ��Ŀ���ƣ�GuFun.Utils 
// ��Ȩ��Ϣ: Copyright (C), 2003-2010, �Ͼ��ŷ��Ƽ����޹�˾
// �汾��Ϣ: 4.0
// �������ƣ�EnumHelper
// ��������������ö������ʹ�õĹ���������
// ��дʱ�䣺2003-05-05
// ��д��Ա��cloudy
// ��    ע��
// ����������������������������������������������������������������������
// ��   ����  ��   ʱ��   ��  �汾   ��              ˵��              ��
// �ǩ�������������������������������������������������������������������
// �� cloudy  �� 20090102 ��  V4.0   �� ��������                     ��
// ����������������������������������������������������������������������
// ***************************************************************************
using System;

namespace GuFun.Utils
{
  public class EnumHelper
  {
    /// <summary>
    /// ��Enum������ȡһ��Intֵ������ת����ö������ֵ
    /// </summary>
    /// <param name="Type">ö������</param>
    /// <param name="Value">ת����ֵ</param>
    /// <returns>ת�����ö������ֵ</returns>
    /// <example>ExampleNormalEnum status = (ExampleNormalEnum)EnumHelper.ToEnum(typeof( ExampleNormalEnum ),1); �õ�ֵΪ ExampleNormalEnum.Online </example>
    public static object ToEnum(Type Type, int Value)
    {
      return Enum.Parse(Type, Enum.GetName(Type, Value));
    }

    /// <summary>
    /// ��Enum������ȡһ��Stringֵ������ת����ö������ֵ
    /// </summary>
    /// <param name="Type">ö������</param>
    /// <param name="Value">ת����ֵ</param>
    /// <returns>ת�����ö������ֵ</returns>
    /// <example>ExampleNormalEnum status = (ExampleNormalEnum)EnumHelper.ToEnum( typeof( ExampleNormalEnum ),"Offline");�õ�ֵΪ ExampleNormalEnum.Offline</example>
    public static object ToEnum(Type Type, string Value)
    {
      return Enum.Parse(Type, Value, true);
    }

    /// <summary>
    /// �õ�һ��Enum�е�����Intֵ
    /// </summary>
    /// <param name="Type">ö������</param>
    /// <returns>ö������������ֵ����</returns>
    public static int[] ToInts(Type Type)
    {
      int[] rtn = new int[Enum.GetValues(Type).Length];
      Array.Copy(Enum.GetValues(Type), rtn, Enum.GetValues(Type).Length);

      return rtn;
    }

    /// <summary>
    /// ��̬����,����ö�����ͷ���ASCII���ַ���ֵ
    /// </summary>
    /// <param name="Type">ö������</param>
    /// <param name="Value">ö��ֵ</param>
    /// <returns>ASCII�ַ���ֵ</returns>
    /// <example>EnumHelper.ToAscii( typeof( ExampleHexEnum ),ExampleHexEnum.Hide );�õ���ֵΪ"("</example>
    public static string ToAscii(Type Type, object Value)
    {
      return StringHelper.HexToAscii(ToHex(Type, Value));
    }

    /// <summary>
    /// ��̬����,����ö�����ͷ���16���Ƶ��ַ���ֵ
    /// </summary>
    /// <param name="Type">ö������</param>
    /// <param name="Value">ö��ֵ</param>
    /// <returns>ת�����16�����ַ���ֵ</returns>
    /// <example>EnumHelper.ToHex(typeof( ExampleHexEnum ),ExampleHexEnum.Hide);�õ�ֵ"00000028"</example>
    public static string ToHex(Type Type, object Value)
    {
      return Enum.Format(Type, Enum.Parse(Type, Enum.GetName(Type, Value)), "X");
    }

    /// <summary>
    /// ��ASCII�ַ���ת���� Enum ��ֵ
    /// </summary>
    /// <param name="Type">ö������</param>
    /// <param name="Value">ת����ֵ</param>
    /// <returns>ת�����ö������ֵ</returns>
    /// <example> EnumHelper.ToEnumByAscii( typeof( ExampleHexEnum ),"(") �õ�ֵ "ExampleHexEnum.Hide" </example>
    public static object ToEnumByAscii(Type Type, string Ascii)
    {
      return ToEnumByHex(Type, StringHelper.AsciiToHex(Ascii));
    }    

    /// <summary>
    /// ��16����ת��Ϊ Enum ��ֵ
    /// </summary>
    /// <param name="Type">ö������</param>
    /// <param name="Hex">ת����ֵ</param>
    /// <returns>ת�����ö������ֵ</returns>
    /// <example>EnumHelper.ToEnumByHex( typeof( ExampleHexEnum ),"28");�õ�ֵ "ExampleHexEnum.Hide"</example>
    public static object ToEnumByHex(Type Type, string Hex)
    {
      return Enum.Parse(Type, Enum.GetName(Type, Int16.Parse(Hex, System.Globalization.NumberStyles.AllowHexSpecifier)));
    }
  }
}
