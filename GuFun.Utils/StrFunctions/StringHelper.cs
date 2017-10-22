// ***************************************************************************
// ��Ŀ���ƣ�GuFun.Utils 
// ��Ȩ��Ϣ: Copyright (C), 2003-2010, �Ͼ��ŷ��Ƽ����޹�˾
// �汾��Ϣ: 4.0
// �������ƣ�StringHelper
// ���������������ַ�����ز����Ĺ���������
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
using System.Collections;
using System.Text;
using System.Text.RegularExpressions;
using System.Drawing;
using Microsoft.VisualBasic;
using System.Net;

namespace GuFun.Utils
{
  public class StringHelper
  {
    #region Type Methods

    /// <summary>
    /// ת��16�����ַ���ΪASCII�ַ���
    /// </summary>
    /// <param name="Hex">����ת����16�����ַ���</param>
    /// <returns>ת�����ASCII�ַ���</returns>
    public static string HexToAscii(string Hex)
    {
      int rtn = int.Parse(Hex, System.Globalization.NumberStyles.AllowHexSpecifier);
      return ((char)rtn).ToString();
    }

    /// <summary>
    /// ת��ASCI���ַ���Ϊ16�����ַ���
    /// </summary>
    /// <param name="Ascii">����ת����ASCII�ַ���</param>
    /// <returns>ת�����16�����ַ���</returns>
    public static string AsciiToHex(string Ascii)
    {
      System.Text.Encoding enc = System.Text.Encoding.GetEncoding("ASCII");

      for (int i = 0; i < Ascii.Length; ++i)
      {
        byte[] bs = enc.GetBytes(Ascii[i].ToString());
        if (bs.Length > 0)
        {
          return bs[0].ToString("X2");
        }
      }

      return "FF";
    }

    /// <summary>
    /// ת��16�����ַ���Ϊ����
    /// </summary>
    /// <param name="Hex">����ת����16�����ַ���</param>
    /// <returns>ת���������</returns>
    public static int HexToInt(string Hex)
    {
      if (String.IsNullOrEmpty(Hex))
        return 0;

      return Convert.ToInt32((Conversion.Val("&H" + Hex)));
    }

    #endregion Type Methods

    #region Color Methods

    /// <summary>
    /// ����ɫ�ַ���ת������ɫ��
    /// </summary>
    /// <param name="Color">����ת�����ַ���</param>
    /// <returns>ת�������ɫ����</returns>
    public static Color GetColor(string Name)
    {
      try
      {
        return Color.FromArgb(HexToInt(Name.Substring(1, 2)), HexToInt(Name.Substring(3, 2)), HexToInt(Name.Substring(5, 2)));
      }
      catch
      {
        return Color.FromArgb(0, 0, 0);
      }
    }

    #endregion Color Methods

    /// <summary>
    /// ��ȡ�ַ����ĳ��ȣ������ģ�
    /// </summary>
    /// <param name="Value">��Ҫ���㳤�ȵ��ַ���</param>
    /// <returns>�ַ����ĳ���</returns>
    public static int GetStringLength(string Value)
    {
      char[] chars = Value.ToCharArray();
      int len = 0;
      Regex regex = new Regex("[\u4e00-\u9fa5]+", RegexOptions.Compiled);

      for (int i = 0; i < chars.Length; i++)
      {
        if ((regex.IsMatch((chars[i]).ToString())) || (chars[i] > 65280 && chars[i] < 65375) || (chars[i] > 64 && chars[i] < 91))
        {
          len += 2;
        }
        else
        {
          len += 1;
        }
      }

      return len;
    }

    /// <summary>
    /// ��ָ�����Ƚ�ȡ�ַ���
    /// </summary>
    /// <param name="Value">��Ҫ���н�ȡ���ַ���</param>
    /// <param name="Len">��������</param>
    /// <param name="End">��ȡ���Ƿ�����׺��ʾ</param>
    /// <returns>��ȡ����ַ���</returns>
    public static string TruncatString(string Value, int Len, string End)
    {
      char[] chars = Value.ToCharArray();
      int nLength = 0;
      StringBuilder sb = new StringBuilder();
      Regex regex = new Regex("[\u4e00-\u9fa5]+", RegexOptions.Compiled);
      bool isCut = false;

      for (int i = 0; i < chars.Length; i++)
      {
        if ((regex.IsMatch((chars[i]).ToString())) || (chars[i] > 65280 && chars[i] < 65375) || (chars[i] > 64 && chars[i] < 91))
        {
          nLength += 2;

          if (nLength > Len)
          {
            isCut = true;
            break;
          }
          sb.Append(chars[i]);
        }
        else
        {
          nLength += 1;

          if (nLength > Len)
          {
            isCut = true;
            break;
          }
          sb.Append(chars[i]);
        }
      }

      if (isCut)
      {
        return sb.ToString() + End;
      }
      else
      {
        return sb.ToString();
      }
    }

    /// <summary>
    /// ��ȡ�ַ���ƴ��
    /// </summary>
    /// <param name="Value">��Ҫת��Ϊƴ�����ַ�</param>
    /// <returns>ת�����ƴ��</returns>
    public static string GetPY(string Value)
    {
      byte[] array = new byte[2];
      array = System.Text.Encoding.Default.GetBytes(Value);
      int i = (short)(array[0] - '\0') * 256 + ((short)(array[1] - '\0'));

      if (i < 0xB0A1) return "*";
      if (i < 0xB0C5) return "a";
      if (i < 0xB2C1) return "b";
      if (i < 0xB4EE) return "c";
      if (i < 0xB6EA) return "d";
      if (i < 0xB7A2) return "e";
      if (i < 0xB8C1) return "f";
      if (i < 0xB9FE) return "g";
      if (i < 0xBBF7) return "h";
      if (i < 0xBFA6) return "g";
      if (i < 0xC0AC) return "k";
      if (i < 0xC2E8) return "l";
      if (i < 0xC4C3) return "m";
      if (i < 0xC5B6) return "n";
      if (i < 0xC5BE) return "o";
      if (i < 0xC6DA) return "p";
      if (i < 0xC8BB) return "q";
      if (i < 0xC8F6) return "r";
      if (i < 0xCBFA) return "s";
      if (i < 0xCDDA) return "t";
      if (i < 0xCEF4) return "w";
      if (i < 0xD1B9) return "x";
      if (i < 0xD4D1) return "y";
      if (i < 0xD7FA) return "z";

      return "*";
    }

    /// <summary>
    /// ��ȡ�ַ�����ƴ��
    /// </summary>
    /// <param name="Value">��Ҫת��Ϊƴ�����ַ���</param>
    /// <returns>ת�����ƴ��</returns>
    public static string GetPYString(string Value)
    {
      foreach (char c in Value)
      {
        if ((int)c >= 33 && (int)c <= 126)
        {
          return c.ToString();
        }
        else
        {
          return GetPY(c.ToString());
        }
      }

      return String.Empty;
    }

    private static int[] pyValue = new int[] 
      { -20319, -20317, -20304, -20295, -20292, -20283, -20265, -20257, -20242, 
        -20230, -20051, -20036, -20032, -20026, -20002, -19990, -19986, -19982,
        -19976, -19805, -19784, -19775, -19774, -19763, -19756, -19751, -19746, 
        -19741, -19739, -19728, -19725, -19715, -19540, -19531, -19525, -19515, 
        -19500, -19484, -19479, -19467, -19289, -19288, -19281, -19275, -19270, 
        -19263, -19261, -19249, -19243, -19242, -19238, -19235, -19227, -19224, 
        -19218, -19212, -19038, -19023, -19018, -19006, -19003, -18996, -18977,
        -18961, -18952, -18783, -18774, -18773, -18763, -18756, -18741, -18735, 
        -18731, -18722, -18710, -18697, -18696, -18526, -18518, -18501, -18490,
        -18478, -18463, -18448, -18447, -18446, -18239, -18237, -18231, -18220,
        -18211, -18201, -18184, -18183, -18181, -18012, -17997, -17988, -17970, 
        -17964, -17961, -17950, -17947, -17931, -17928, -17922, -17759, -17752, 
        -17733, -17730, -17721, -17703, -17701, -17697, -17692, -17683, -17676,
        -17496, -17487, -17482, -17468, -17454, -17433, -17427, -17417, -17202, 
        -17185, -16983, -16970, -16942, -16915, -16733, -16708, -16706, -16689, 
        -16664, -16657, -16647, -16474, -16470, -16465, -16459, -16452, -16448, 
        -16433, -16429, -16427, -16423, -16419, -16412, -16407, -16403, -16401, 
        -16393, -16220, -16216, -16212, -16205, -16202, -16187, -16180, -16171,
        -16169, -16158, -16155, -15959, -15958, -15944, -15933, -15920, -15915, 
        -15903, -15889, -15878, -15707, -15701, -15681, -15667, -15661, -15659, 
        -15652, -15640, -15631, -15625, -15454, -15448, -15436, -15435, -15419,
        -15416, -15408, -15394, -15385, -15377, -15375, -15369, -15363, -15362, 
        -15183, -15180, -15165, -15158, -15153, -15150, -15149, -15144, -15143, 
        -15141, -15140, -15139, -15128, -15121, -15119, -15117, -15110, -15109, 
        -14941, -14937, -14933, -14930, -14929, -14928, -14926, -14922, -14921,
        -14914, -14908, -14902, -14894, -14889, -14882, -14873, -14871, -14857, 
        -14678, -14674, -14670, -14668, -14663, -14654, -14645, -14630, -14594,
        -14429, -14407, -14399, -14384, -14379, -14368, -14355, -14353, -14345,
        -14170, -14159, -14151, -14149, -14145, -14140, -14137, -14135, -14125, 
        -14123, -14122, -14112, -14109, -14099, -14097, -14094, -14092, -14090, 
        -14087, -14083, -13917, -13914, -13910, -13907, -13906, -13905, -13896, 
        -13894, -13878, -13870, -13859, -13847, -13831, -13658, -13611, -13601,
        -13406, -13404, -13400, -13398, -13395, -13391, -13387, -13383, -13367, 
        -13359, -13356, -13343, -13340, -13329, -13326, -13318, -13147, -13138, 
        -13120, -13107, -13096, -13095, -13091, -13076, -13068, -13063, -13060, 
        -12888, -12875, -12871, -12860, -12858, -12852, -12849, -12838, -12831,
        -12829, -12812, -12802, -12607, -12597, -12594, -12585, -12556, -12359,
        -12346, -12320, -12300, -12120, -12099, -12089, -12074, -12067, -12058,
        -12039, -11867, -11861, -11847, -11831, -11798, -11781, -11604, -11589, 
        -11536, -11358, -11340, -11339, -11324, -11303, -11097, -11077, -11067,
        -11055, -11052, -11045, -11041, -11038, -11024, -11020, -11019, -11018,
        -11014, -10838, -10832, -10815, -10800, -10790, -10780, -10764, -10587,
        -10544, -10533, -10519, -10331, -10329, -10328, -10322, -10315, -10309, 
        -10307, -10296, -10281, -10274, -10270, -10262, -10260, -10256, -10254 
      };

    private static string[] pyName = new string[]
      { "A", "Ai", "An", "Ang", "Ao", "Ba", "Bai", "Ban", "Bang", "Bao", "Bei", 
       "Ben", "Beng", "Bi", "Bian", "Biao", "Bie", "Bin", "Bing", "Bo", "Bu",
       "Ba", "Cai", "Can", "Cang", "Cao", "Ce", "Ceng", "Cha", "Chai", "Chan",
       "Chang", "Chao", "Che", "Chen", "Cheng", "Chi", "Chong", "Chou", "Chu",
       "Chuai", "Chuan", "Chuang", "Chui", "Chun", "Chuo", "Ci", "Cong", "Cou",
       "Cu", "Cuan", "Cui", "Cun", "Cuo", "Da", "Dai", "Dan", "Dang", "Dao", "De", 
       "Deng", "Di", "Dian", "Diao", "Die", "Ding", "Diu", "Dong", "Dou", "Du", 
       "Duan", "Dui", "Dun", "Duo", "E", "En", "Er", "Fa", "Fan", "Fang", "Fei", 
       "Fen", "Feng", "Fo", "Fou", "Fu", "Ga", "Gai", "Gan", "Gang", "Gao", "Ge", 
       "Gei", "Gen", "Geng", "Gong", "Gou", "Gu", "Gua", "Guai", "Guan", "Guang", 
       "Gui", "Gun", "Guo", "Ha", "Hai", "Han", "Hang", "Hao", "He", "Hei", "Hen", 
       "Heng", "Hong", "Hou", "Hu", "Hua", "Huai", "Huan", "Huang", "Hui", "Hun",
       "Huo", "Ji", "Jia", "Jian", "Jiang", "Jiao", "Jie", "Jin", "Jing", "Jiong", 
       "Jiu", "Ju", "Juan", "Jue", "Jun", "Ka", "Kai", "Kan", "Kang", "Kao", "Ke",
       "Ken", "Keng", "Kong", "Kou", "Ku", "Kua", "Kuai", "Kuan", "Kuang", "Kui", 
       "Kun", "Kuo", "La", "Lai", "Lan", "Lang", "Lao", "Le", "Lei", "Leng", "Li",
       "Lia", "Lian", "Liang", "Liao", "Lie", "Lin", "Ling", "Liu", "Long", "Lou", 
       "Lu", "Lv", "Luan", "Lue", "Lun", "Luo", "Ma", "Mai", "Man", "Mang", "Mao",
       "Me", "Mei", "Men", "Meng", "Mi", "Mian", "Miao", "Mie", "Min", "Ming", "Miu",
       "Mo", "Mou", "Mu", "Na", "Nai", "Nan", "Nang", "Nao", "Ne", "Nei", "Nen", 
       "Neng", "Ni", "Nian", "Niang", "Niao", "Nie", "Nin", "Ning", "Niu", "Nong", 
       "Nu", "Nv", "Nuan", "Nue", "Nuo", "O", "Ou", "Pa", "Pai", "Pan", "Pang",
       "Pao", "Pei", "Pen", "Peng", "Pi", "Pian", "Piao", "Pie", "Pin", "Ping", 
       "Po", "Pu", "Qi", "Qia", "Qian", "Qiang", "Qiao", "Qie", "Qin", "Qing",
       "Qiong", "Qiu", "Qu", "Quan", "Que", "Qun", "Ran", "Rang", "Rao", "Re",
       "Ren", "Reng", "Ri", "Rong", "Rou", "Ru", "Ruan", "Rui", "Run", "Ruo", 
       "Sa", "Sai", "San", "Sang", "Sao", "Se", "Sen", "Seng", "Sha", "Shai", 
       "Shan", "Shang", "Shao", "She", "Shen", "Sheng", "Shi", "Shou", "Shu", 
       "Shua", "Shuai", "Shuan", "Shuang", "Shui", "Shun", "Shuo", "Si", "Song", 
       "Sou", "Su", "Suan", "Sui", "Sun", "Suo", "Ta", "Tai", "Tan", "Tang", 
       "Tao", "Te", "Teng", "Ti", "Tian", "Tiao", "Tie", "Ting", "Tong", "Tou",
       "Tu", "Tuan", "Tui", "Tun", "Tuo", "Wa", "Wai", "Wan", "Wang", "Wei",
       "Wen", "Weng", "Wo", "Wu", "Xi", "Xia", "Xian", "Xiang", "Xiao", "Xie",
       "Xin", "Xing", "Xiong", "Xiu", "Xu", "Xuan", "Xue", "Xun", "Ya", "Yan",
       "Yang", "Yao", "Ye", "Yi", "Yin", "Ying", "Yo", "Yong", "You", "Yu", 
       "Yuan", "Yue", "Yun", "Za", "Zai", "Zan", "Zang", "Zao", "Ze", "Zei",
       "Zen", "Zeng", "Zha", "Zhai", "Zhan", "Zhang", "Zhao", "Zhe", "Zhen", 
       "Zheng", "Zhi", "Zhong", "Zhou", "Zhu", "Zhua", "Zhuai", "Zhuan", 
       "Zhuang", "Zhui", "Zhun", "Zhuo", "Zi", "Zong", "Zou", "Zu", "Zuan",
       "Zui", "Zun", "Zuo" };

    public static string ConvertPY(string hzString)
    {
      return ConvertPY(hzString, true);
    }

    public static string ConvertPY(string hzString, bool first)
    {
      char str = '"';//Ӣ��״̬˫���Ŵ���

      if (String.IsNullOrEmpty(hzString))//����Ϊ��
        return String.Empty;

      //�ַ�����
      hzString = hzString.Trim().Replace(" ", "").Replace("?", "_").Replace("\\", "_").Replace("/", "_").Replace(":", "").Replace("*", "").Replace(">", "").Replace("<", "").Replace("?", "").Replace("|", "").Replace("\"", "'").Replace("(", "_").Replace(")", "_").Replace(";", "_");
      hzString = hzString.Replace("��", ",").Replace(str.ToString(), "").Replace(str.ToString(), "").Replace("��", "_").Replace("��", "_").Replace("[", "").Replace("]", "").Replace("��", "").Replace("��", "");
      hzString = hzString.Replace("{", "").Replace("}", "").Replace("^", "").Replace("&", "_").Replace("=", "").Replace("~", "_").Replace("@", "_").Replace("��", "");
      
      Regex regex = new Regex(@"([a-zA-Z0-9\._]+)", RegexOptions.IgnoreCase);
      if (regex.IsMatch(hzString))
      {
        if (hzString.Equals(regex.Match(hzString).Groups[1].Value, StringComparison.OrdinalIgnoreCase))
        {
          return hzString;
        }
      }

      // ƥ�������ַ�          
      regex = new Regex("^[\u4e00-\u9fa5]$");
      byte[] array = new byte[2];
      string pyString = "";
      int chrAsc = 0;
      int i1 = 0;
      int i2 = 0;
      char[] noWChar = hzString.ToCharArray();
      for (int j = 0; j < noWChar.Length; j++)
      {// �����ַ�          
        if (regex.IsMatch(noWChar[j].ToString()))
        {
          array = System.Text.Encoding.Default.GetBytes(noWChar[j].ToString());

          if (array.Length >= 2)
          {
            i1 = (short)(array[0]);
            i2 = (short)(array[1]);
            chrAsc = i1 * 256 + i2 - 65536;
            if (chrAsc > 0 && chrAsc < 160)
            {
              pyString += noWChar[j];
            }
            else
            {
              // ������������          
              if (chrAsc == -9254)  // ����"��"��      
              {
                if (first)
                  pyString += "z";
                else
                  pyString += "Zhen";
              }
              else
              {
                for (int i = (pyValue.Length - 1); i >= 0; i--)
                {
                  if (pyValue[i] <= chrAsc)
                  {
                    if (first)
                      pyString += pyName[i].Substring(0, 1);
                    else
                      pyString += pyName[i];
                    break;
                  }
                }
              }
            }
          }
        }
        // �������ַ�      
        else
        {
          pyString += noWChar[j].ToString();
        }
      }

      return pyString.ToLower();
    }

    #region Fill Methods

    /// <summary>
    /// ������ַ�����Ĭ�����0��
    /// </summary>
    /// <param name="Value">��Ҫ���������ַ���</param>
    /// <param name="Len">����ĳ���</param>
    /// <returns>������ַ���</returns>
    public static string LeftFill(string Value, int Len)
    {
      return LeftFill(Value, Len, '0');
    }

    /// <summary>
    /// ��ָ���ַ���������ַ���
    /// </summary>
    /// <param name="Value">��Ҫ���������ַ���</param>
    /// <param name="Len">����ĳ���</param>
    /// <param name="Fill">ָ�������ַ�</param>
    /// <returns>������ַ���</returns>
    public static string LeftFill(string Value, int Len, char Fill)
    {
      int j = 0;
      if (String.IsNullOrEmpty(Value))
        j = 0;
      else
        j = Value.Length;

      for (int i = 0; i < Len - j; i++)
      {
        Value = Fill.ToString() + Value;
      }

      return Value;
    }

    /// <summary>
    /// ������ַ�����Ĭ�����0��
    /// </summary>
    /// <param name="Value">��Ҫ���������ַ���</param>
    /// <param name="Len">����ĳ���</param>
    /// <returns>������ַ���</returns>
    public static string RightFill(string Value, int Len)
    {
      return RightFill(Value, Len, '0');
    }

    /// <summary>
    /// ��ָ���ַ���������ַ���
    /// </summary>
    /// <param name="Value">��Ҫ���������ַ���</param>
    /// <param name="Len">����ĳ���</param>
    /// <param name="Fill">ָ�������ַ�</param>
    /// <returns>������ַ���</returns>
    public static string RightFill(string Value, int Len, char Fill)
    {
      int j = 0;
      if (String.IsNullOrEmpty(Value))
        j = 0;
      else
        j = Value.Length;

      for (int i = 0; i < Len - j; i++)
      {
        Value += Fill.ToString();
      }

      return Value;
    }

    #endregion Fill Methods

    #region IP Methods

    /// <summary>
    /// ���ַ��͵�IP��ַת��Ϊ������
    /// </summary>
    /// <param name="IP">����ת����IP��ַ</param>
    /// <returns>ת����ĳ�����</returns>
    public static long IpToNumber(string IP)
    {
      long rtn = 0;

      try
      {
        rtn = IPAddress.Parse(IP).Address;
      }
      catch
      {
        rtn = -1;
      }

      return rtn;
    }

    /// <summary>
    /// ��������ת����IP���ַ���
    /// </summary>
    /// <param name="IP">����ת����IP��ַ</param>
    /// <returns>ת����ĳ�����</returns>
    public static string NumberToIp(long IP)
    {
      string rtn = String.Empty;

      try
      {
        IPAddress ipaddress = new IPAddress(IP);

        rtn = ipaddress.ToString();
      }
      catch { }

      return rtn;
    }

    #endregion IP Methods

    #region CapNumber Methods

    /// <summary>
    /// ת�����ֽ��������������С����
    /// </summary>
    /// <param name="Value">�����ַ���</param>
    /// <returns>ת�������Ĵ�д����ַ������߳�����Ϣ��ʾ�ַ���</returns>
    public static string ToCapMoneyNum(string Value)
    {
      if (!IsPositveDecimal(Value))
        return "����Ĳ��������֣�";
      if (Double.Parse(Value) > 999999999999.99)
        return "����̫���޷����㣬������һ����Ԫ���µĽ��";

      string[] splits = Value.Split('.');//��С����ָ��ַ���

      string rtn = String.Empty;

      if (splits.Length == 1) //ֻ����������
        rtn = ToZhengShu(Value) + "Ԫ��";
      else //��С������
        rtn = ToZhengShu(splits[0]) + "Ԫ" + ToXiaoShu(splits[1]);

      rtn = rtn.Replace("ʰԪ", "ʰԪ��");
      rtn = rtn.Replace("��Ԫ", "��Ԫ��");
      rtn = rtn.Replace("ǪԪ", "ǪԪ��");
      rtn = rtn.Replace("��Ԫ", "��Ԫ��");
      rtn = rtn.Replace("ʰ��", "ʰ����");
      rtn = rtn.Replace("����", "������");
      rtn = rtn.Replace("Ǫ��", "Ǫ����");
      rtn = rtn.Replace("��Ԫ", "��Ԫ��");
      rtn = rtn.Replace("����Ԫ", "��Ԫ");
      rtn = rtn.Replace("����", "��");

      if (rtn.Contains("��") && rtn.Contains("Ԫ") && !rtn.Contains("��"))
        rtn = rtn.Replace("Ԫ", "Ԫ��");

      rtn = rtn.Replace("����", "��").Replace("����", "��");
      return rtn;
    }

    /// <summary>
    /// �ж��Ƿ����������ַ���
    /// </summary>
    /// <param name="Value"> �ж��ַ���</param>
    /// <returns>��������֣�����true�����򷵻�false</returns>
    public static bool IsPositveDecimal(string Value)
    {
      try
      {
        Decimal d = Decimal.Parse(Value);

        if (d >= 0)
          return true;
      }
      catch { }

      return false;
    }

    /// <summary>
    /// ת�����֣�������
    /// </summary>
    /// <param name="Value">��Ҫת�������������ַ���</param>
    /// <returns>ת�������Ĵ�д����ַ���</returns>
    public static string ToZhengShu(string Value)
    {
      string tmp = String.Empty;
      string rtn = String.Empty;

      if (Value.Length <= 4)//���ֳ���С����λ
      {
        rtn = ToDigit(Value);
      }
      else
      {
        if (Value.Length <= 8)//���ֳ��ȴ�����λ��С�ڰ�λ
        {
          rtn = ToDigit(Value.Substring(0, Value.Length - 4)) + "��" + ToDigit(Value.Substring(Value.Length - 4, 4));

          rtn = rtn.Replace("����", "��").Replace("����", "��");

        }
        else
          if (Value.Length <= 12)//���ֳ��ȴ��ڰ�λ��С��ʮ��λ
          {
            rtn = ToDigit(Value.Substring(0, Value.Length - 8)) + "��" + ToDigit(Value.Substring(Value.Length - 8, 4)) + "��" + ToDigit(Value.Substring(Value.Length - 4, 4));
            rtn = rtn.Replace("����", "��").Replace("����", "��").Replace("����", "��").Replace("����", "��");
          }
      }

      if (rtn.Length >= 2)
      {
        switch (rtn.Substring(rtn.Length - 2, 2)) //��ȡ����λ����
        {
          case "����": 
          case "Ǫ��": 
          case "����": 
          case "����": 
            rtn = rtn.Substring(0, rtn.Length - 1); 
            break;
        }
      }

      return rtn;
    }

    /// <summary>
    /// ת�����֣�С�����֣�
    /// </summary>
    /// <param name="Value">��Ҫת����С�����������ַ���</param>
    /// <returns>ת�������Ĵ�д����ַ���</returns>
    public static string ToXiaoShu(string Value)
    {
      string rtn = String.Empty;

      if (Value.Length == 1)
      {
        rtn = ToChinese(Value) + "��";
        rtn = rtn.Replace("���", "");
      }
      else if (Value.Length > 1)
      {
        rtn = ToChinese(Value.Substring(0, 1)) + "��" + ToChinese(Value.Substring(1, 1)) + "��";
        rtn = rtn.Replace("���", "").Replace("���", "");
      }

      if (String.IsNullOrEmpty(rtn))
        rtn = "��";

      if (!rtn.Contains("��"))
        rtn += "��";

      return rtn;
    }

    /// <summary>
    /// ת������
    /// </summary>
    /// <param name="Value">ת�����ַ�������λ���ڣ�</param>
    /// <returns></returns>
    public static string ToDigit(string Value)
    {
      string rtn = String.Empty;

      switch (Value.Length)
      {
        case 1: rtn = ToChinese(Value); break;
        case 2: rtn = To2Digit(Value); break;
        case 3: rtn = To3Digit(Value); break;
        case 4: rtn = To4Digit(Value); break;
      }

      return rtn.Replace("ʰ��", "ʰ");
    }

    /// <summary>
    /// ת����λ����
    /// </summary>
    /// <param name="Value">ת�����ַ�������λ��</param>
    /// <returns>ת������ַ���</returns>
    public static string To4Digit(string Value)
    {
      string rtn = String.Empty;
      rtn = ToChinese(Value.Substring(0, 1)) + "Ǫ" + ToChinese(Value.Substring(1, 1)) + "��" + ToChinese(Value.Substring(2, 1)) + "ʰ" + ToChinese(Value.Substring(3, 1));
      return rtn.Replace("��Ǫ", "��").Replace("���", "��").Replace("��ʰ", "��").Replace("����", "��").Replace("����", "��").Replace("����", "��");
    }

    /// <summary>
    /// ת����λ����
    /// </summary>
    /// <param name="Value">ת�����ַ�������λ��</param>
    /// <returns>ת������ַ���</returns>
    public static string To3Digit(string Value)
    {
      string rtn = String.Empty;
      rtn = ToChinese(Value.Substring(0, 1)) + "��" + ToChinese(Value.Substring(1, 1)) + "ʰ" + ToChinese(Value.Substring(2, 1));
      return rtn.Replace("���", "��").Replace("��ʰ", "��").Replace("����", "��").Replace("����", "��");
    }

    /// <summary>
    /// ת����λ����
    /// </summary>
    /// <param name="Value">ת�����ַ�������λ��</param>
    /// <returns>ת������ַ���</returns>
    public static string To2Digit(string Value)
    {
      string rtn = String.Empty;
      rtn = ToChinese(Value.Substring(0, 1)) + "ʰ" + ToChinese(Value.Substring(1, 1));
      return rtn.Replace("��ʰ", "��").Replace("����", "��");
    }

    /// <summary>
    /// ��һλ����ת�������Ĵ�д����
    /// </summary>
    /// <param name="Value">ת�����ַ���</param>
    /// <returns>ת������ַ���</returns>
    public static string ToChinese(string Value)
    {
      //"��Ҽ��������½��ƾ�ʰ��Ǫ�f�|Բ���Ƿ�"
      switch (Value)
      {
        case "0": return "��"; 
        case "1": return "Ҽ"; 
        case "2": return "��"; 
        case "3": return "��"; 
        case "4": return "��"; 
        case "5": return "��"; 
        case "6": return "½"; 
        case "7": return "��"; 
        case "8": return "��"; 
        case "9": return "��"; 
        default: return String.Empty;
      }
    }

    #endregion CapNumber Methods

    public static string WriteTab(int cnt)
    {
      string rtn = String.Empty;

      for (int i = 0; i < cnt; i++)
      {
        rtn = rtn + "\t";
      }

      return rtn;
    }

    public static string WriteEnter()
    {
      return WriteEnter(1);
    }

    public static string WriteEnter(int cnt)
    {
      string rtn = String.Empty;

      for (int i = 0; i < cnt; i++)
      {
        rtn = rtn + Environment.NewLine;
      }

      return rtn;
    }
  }
}
