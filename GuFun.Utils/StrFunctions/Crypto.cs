// ***************************************************************************
// ��Ŀ���ƣ�GuFun.Utils 
// ��Ȩ��Ϣ: Copyright (C), 2003-2010, �Ͼ��ŷ��Ƽ����޹�˾
// �汾��Ϣ: 4.0
// �������ƣ�Crypto
// �����������ַ������ܽ��ܶ����û������ṩ�ܳ׶������Լ�����Ϣ���м��ܣ���
//           �������Լ�����Ϣ����δ����ɵ��˲�ѯ���û�˽���ܳ׿���ͨ���Լ���
//           ��ļ��ܺ������ܣ�����������ĸ�����ֵ���ϣ������û����ԵǼ�һ��
//           �ܳ׶��𵽱�����Ϣ�����á�
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
// �� cloudy  �� 20090102 ��  V4.0   �� ��������                     ��
// ����������������������������������������������������������������������
// ***************************************************************************

using System;
using System.Text;
using System.IO;
using System.Security.Cryptography;
using System.Configuration;

namespace GuFun.Utils
{
  /// <summary>
  /// �ַ������ܽ���
  /// </summary>
  /// <remarks>
  /// �û������ṩ�ܳ׶������Լ�����Ϣ���м��ܣ��Ӷ������Լ�����Ϣ����δ����ɵ���
  /// ��ѯ���û�˽���ܳ׿���ͨ���Լ�����ļ��ܺ������ܣ�����������ĸ�����ֵ���ϣ�
  /// �����û����ԵǼ�һ���ܳ׶��𵽱�����Ϣ�����á�
  /// </remarks>
  public sealed class Crypto
  {
    #region Private Secret Key

    private static byte[] KEY = { 2, 252, 6, 51, 53, 91, 193, 134, 193, 121, 222, 164, 
      57, 128, 91, 91, 19, 39, 111, 197, 125, 98, 89, 48, 97, 154, 83, 187, 222, 167, 171, 74};

    private static byte[] IV = { 9, 61, 235, 120, 122, 120, 80, 248, 13, 182, 196, 212, 176, 46, 28, 85 };

    private static string InKey = "bA@rHaBqJI$QpCcRzP#sK1_doSe2O3DhtnfT5LiguY4Em7UvMjX6yFl0wV8ZNxkGW9";
    private static string OutKey = "o3J@bI4qNmHK2pcMn15LFlGrQOd6kEaPsR7j$eZDtSzU8iyTY9WB_f0VuAxX#Chwgv";

    #endregion Private Secret Key

    #region String Encrypt Methods

    /// <summary>
    /// �����ַ�������˽���ܳף�
    /// </summary>
    /// <param name="CryptoString">��Ҫ���м��ܵ��ַ���</param>
    /// <param name="PrivateKey">˽���ܳ�</param>
    /// <returns>���ܺ�Ľ��</returns>
    private string EncryptString(string CryptoString, byte[] PrivateKey)
    {
      byte[] bCrypto = Encoding.ASCII.GetBytes(CryptoString.ToCharArray());
      byte[] bEncode = new byte[0];
      byte[] bKey = PrivateKey;

      MemoryStream MS = new MemoryStream();
      RijndaelManaged RM = new RijndaelManaged();
      CryptoStream CS = new CryptoStream(MS, RM.CreateEncryptor(bKey, IV), CryptoStreamMode.Write);

      try
      {
        CS.Write(bCrypto, 0, bCrypto.Length);
        CS.FlushFinalBlock();
        bEncode = MS.ToArray();
      }
      finally
      {
        MS.Close();
        CS.Close();
      }

      return System.Convert.ToBase64String(bEncode);
    }

    /// <summary>
    /// �����ַ�����ʹ��ȱʡ���ܳף�
    /// </summary>
    /// <param name="CryptoString">��Ҫ���м��ܵ��ַ���</param>
    /// <returns>���ܺ�Ľ��</returns>
    public static string EncryptString(string CryptoString)
    {
      return new Crypto().EncryptString(CryptoString, KEY);
    }

    /// <summary>
    /// �����ַ�������˽���ܳף� ˽���ܳ�Ϊ�ַ�����
    /// </summary>
    /// <param name="CryptoString">��Ҫ���м��ܵ��ַ���</param>
    /// <param name="PrivateKey">˽���ܳף��˴�ָ��Ϊ�ַ���</param>
    /// <returns>���ܺ�Ľ��</returns>
    public static string EncryptString(string CryptoString, string PrivateKey)
    {
      byte[] bKey = Encoding.ASCII.GetBytes(PrivateKey.ToCharArray()); ;
      return new Crypto().EncryptString(CryptoString, bKey);
    }

    /// <summary>
    /// �����ַ�����ʹ��ȱʡ���ܳף�
    /// </summary>
    /// <param name="CryptoString">��Ҫ���н��ܵ��ַ���</param>
    /// <param name="PrivateKey">˽���ܳ�</param>
    /// <returns>���ܺ�Ľ��</returns>
    private string DecryptoString(string CryptoString, byte[] PrivateKey)
    {
      byte[] bCrypto = System.Convert.FromBase64String(CryptoString);
      byte[] bKey = PrivateKey;
      byte[] Init = new byte[bCrypto.Length + 1];

      MemoryStream MS = new MemoryStream(bCrypto);
      RijndaelManaged RM = new RijndaelManaged();
      CryptoStream CS = new CryptoStream(MS, RM.CreateDecryptor(bKey, IV), CryptoStreamMode.Read);
      StringBuilder SB = new StringBuilder();

      try
      {
        CS.Read(Init, 0, Init.Length);
      }
      finally
      {
        MS.Close();
        CS.Close();
      }

      for (int i = 0; i < Init.Length; i++)
      {
        if (Init[i] != 0)
        {
          char cConvert = System.Convert.ToChar(Init[i]);
          SB.Append(cConvert);
        }
      }

      return SB.ToString();
    }

    /// <summary>
    /// �����ַ�����ʹ��ȱʡ���ܳף�
    /// </summary>
    /// <param name="CryptoString">��Ҫ���н��ܵ��ַ���</param>
    /// <returns>���ܺ�Ľ��</returns>
    public static string DecryptoString(string CryptoString)
    {
      return new Crypto().DecryptoString(CryptoString, KEY);
    }

    /// <summary>
    /// �����ַ�������˽���ܳף� ˽���ܳ�Ϊ�ַ�����
    /// </summary>
    /// <param name="CryptoString">��Ҫ���н��ܵ��ַ���</param>
    /// <param name="PrivateKey">˽���ܳף��˴�ָ��Ϊ�ַ���</param>
    /// <returns>���ܺ�Ľ��</returns>
    public static string DecryptoString(string CryptoString, string PrivateKey)
    {
      byte[] bKey = Encoding.ASCII.GetBytes(PrivateKey.ToCharArray()); ;
      return new Crypto().DecryptoString(CryptoString, bKey);
    }

    #endregion String Encrypt Methods

    #region MD5 Methods

    /// <summary>
    /// MD5���ܣ����ܺ���ָ�����
    /// </summary>
    /// <param name="CryptoString">��Ҫ����MD5���ܵ��ַ���</param>
    /// <returns>���ָ����ľ���MD5���ܵ��ַ���</returns>
    public static string MD5CryptoSplit(string CryptoString)
    {
      UTF8Encoding Enc = new UTF8Encoding();
      byte[] Data = new MD5CryptoServiceProvider().ComputeHash(Enc.GetBytes(CryptoString));

      return System.BitConverter.ToString(Data);
    }

    /// <summary>
    /// MD5���ܣ����ܺ���ָ�����16λ
    /// </summary>
    /// <param name="CryptoString">��Ҫ����MD5���ܵ��ַ���</param>
    /// <returns>���ָ����ľ���MD5���ܵ��ַ���</returns>
    public static string MD5CryptoSplit16(string CryptoString)
    {
      UTF8Encoding Enc = new UTF8Encoding();
      byte[] Data = new MD5CryptoServiceProvider().ComputeHash(Enc.GetBytes(CryptoString));

      return System.BitConverter.ToString(Data, 4, 8);
    }

    /// <summary>
    /// MD5���ܣ����ܺ󲻴��ָ�����
    /// </summary>
    /// <param name="CryptoString">��Ҫ����MD5���ܵ��ַ���</param>
    /// <returns>���ָ����ľ���MD5���ܵ��ַ���</returns>
    public static string MD5Crypto(string CryptoString)
    {
      string CryptoSplit = MD5CryptoSplit(CryptoString);

      CryptoSplit = CryptoSplit.Replace("-", "");
      return CryptoSplit;
    }

    /// <summary>
    /// MD5���ܣ����ܺ󲻴��ָ�����16λ
    /// </summary>
    /// <param name="CryptoString">��Ҫ����MD5���ܵ��ַ���</param>
    /// <returns>���ָ����ľ���MD5���ܵ��ַ���</returns>
    public static string MD5Crypto16(string CryptoString)
    {
      string CryptoSplit = MD5CryptoSplit16(CryptoString);

      CryptoSplit = CryptoSplit.Replace("-", "");
      return CryptoSplit;
    }

    #endregion MD5 Methods

    #region Config Secret Methods

    public static string ConfigSecret(string str)
    {
      // ��ȡ�����ļ��е���Ϣ�жϹؼ����Ƿ�����˼���
      string secret = ConfigurationManager.AppSettings["IsSecret"];

      if (!String.IsNullOrEmpty(secret) && bool.Parse(secret))
      {
        // ��������˼��ܴ������ȡ���ܷ�ʽ
        //string decrypt = ConfigurationManager.AppSettings["DecryptMethod"];

        //if (!String.IsNullOrEmpty(decrypt))
        // ��ȡ��һ��ʽ���ܣ�����ʹ��Elib����� - 20090102
        return DecryptoString(str);
      }

      return str;
    }

    #endregion Config Secret Methods

    #region Custom Secret Methods

    /// <summary>
    /// �ڽ����Զ���ӽ���ʱ�����ַ�����ת������
    /// </summary>
    /// <param name="Out">ת�����ַ�������Ϊ����ֵ</param>
    /// <param name="Begin">��ʼ��ƥ���ַ�</param>
    /// <param name="End">������ƥ���ַ�</param>
    /// <returns>���ز����ַ���ת���Ƿ�ɹ�</returns>
    public static bool PasswdConvert(string Out, string Begin, string End)
    {
      string Tmp = Out;
      string Link = String.Empty;
      int offset = 0;

      for (int i = 0; i < Tmp.Length; i++)
      {
        for (offset = 1; offset <= 65; offset++)
        {
          if (Out[i] == Begin[offset]) break;
        }
        Link += End[offset].ToString();
      }

      Out = Link;

      return true;
    }

    /// <summary>
    /// �Զ������
    /// </summary>
    /// <param name="In">��Ҫ���ܵ��ַ���</param>
    /// <param name="Out">���ܺ�Ľ��</param>
    /// <returns>�Զ�����ܲ����Ƿ�ɹ�</returns>
    public static bool PasswdTo(string In, string Out)
    {
      if (In == null || In == string.Empty)
      {
        Out = string.Empty;
        return true;
      }

      int offset = DateTime.Now.Second + Convert.ToInt16((new Random()).Next() * 5 + 1);
      string Tmp = In;
      string ToKey = InKey;
      char cTmp;

      for (offset = 0; offset <= 66; offset++)
      {
        if (ToKey[offset] == Tmp[0]) break;
      }

      ToKey += ToKey;
      cTmp = ToKey[0];
      ToKey = ToKey.Substring(offset, 66);
      Out = In;
      PasswdConvert(Out, OutKey, InKey);
      Out = cTmp.ToString() + Out;

      return true;
    }

    /// <summary>
    /// �Զ������
    /// </summary>
    /// <param name="In">��Ҫ���ܵ��ַ���</param>
    /// <param name="Out">���ܺ�Ľ��</param>
    /// <returns>�Զ�����ܲ����Ƿ�ɹ�</returns>
    public static bool PasswdFrom(string In, string Out)
    {
      if (In == null || In == string.Empty)
      {
        Out = string.Empty;
        return true;
      }

      int offset = 0;
      string Tmp = In;
      string ToKey = InKey;

      for (offset = 0; offset <= 66; offset++)
      {
        if (ToKey[offset] == Tmp[0]) break;
      }

      ToKey += ToKey;
      ToKey = ToKey.Substring(offset, 66);
      Out = ToKey.Substring(2, In.Length);
      PasswdConvert(Out, OutKey, InKey);

      return true;
    }

    #endregion Custom Secret Methods
  }
}
