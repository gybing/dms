using System;

namespace GuFun.WinCore
{
	public class BillFormat
	{

		#region Properties

		private int _billFormat;

		public int ID
		{
			get { return _billFormat; }
			set { _billFormat = value; }
		}

		private string _billFormatName;

		public string BillFormatName
		{
			get { return _billFormatName; }
			set { _billFormatName = value; }
		}

		private short _billType;

		public short BillType
		{
			get { return _billType; }
			set { _billType = value; }
		}

		private string _billTypeName;

		public string BillTypeName
		{
			get { return _billTypeName; }
			set { _billTypeName = value; }
		}

		private short _bankID;

		public short BankID
		{
			get { return _bankID; }
			set { _bankID = value; }
		}

		private string _bankName;

		public string BankName
		{
			get { return _bankName; }
			set { _bankName = value; }
		}

		private short _billWidth;

		public short BillWidth
		{
			get { return _billWidth; }
			set { _billWidth = value; }
		}

		private short _billHeight;

		public short BillHeight
		{
			get { return _billHeight; }
			set { _billHeight = value; }
		}

		private short _billLeft;

		public short BillLeft
		{
			get { return _billLeft; }
			set { _billLeft = value; }
		}

		private short _billTop;

		public short BillTop
		{
			get { return _billTop; }
			set { _billTop = value; }
		}

		private bool _isPrint;

		public bool IsPrint
		{
			get { return _isPrint; }
			set { _isPrint = value; }
		}

		private int _billShare;

		public int BillShare
		{
			get { return _billShare; }
			set { _billShare = value; }
		}


    private BillLines lines;

    public BillLines Lines
    {
      get
      {
        if (lines == null)
          lines = new BillLines();

        return lines;
      }
    }

    private BillWords words;

    public BillWords Words
    {
      get
      {
        if (words == null)
          words = new BillWords();

        return words;
      }
    }

    private BillMains mains;

    public BillMains Mains
    {
      get
      {
        if (mains == null)
          mains = new BillMains();

        return mains;
      }
    }   

    private bool _isHalf;

    public bool IsHalf
    {
      get { return _isHalf; }
      set { _isHalf = value; }
    }

		#endregion Properties

    public BillFormat()
		{
			_billFormat = 0;
			_billFormatName = String.Empty;
			_billType = 0;
			_billTypeName = String.Empty;
			_bankID = 0;
			_bankName = String.Empty;
			_billWidth = 0;
			_billHeight = 0;
			_billLeft = 0;
			_billTop = 0;
			_isPrint = false;
			_billShare = 0;
      _isHalf = false;
		}

		public string Debug()
		{
			string rtn = String.Empty;
			rtn += "[BillFormat] = " + this.ID.ToString() + Environment.NewLine;
			rtn += "[BillFormatName] = " + this.BillFormatName.ToString() + Environment.NewLine;
			rtn += "[BillType] = " + this.BillType.ToString() + Environment.NewLine;
			rtn += "[BillTypeName] = " + this.BillTypeName.ToString() + Environment.NewLine;
			rtn += "[BankID] = " + this.BankID.ToString() + Environment.NewLine;
			rtn += "[BankName] = " + this.BankName.ToString() + Environment.NewLine;
			rtn += "[BillWidth] = " + this.BillWidth.ToString() + Environment.NewLine;
			rtn += "[BillHeight] = " + this.BillHeight.ToString() + Environment.NewLine;
			rtn += "[BillLeft] = " + this.BillLeft.ToString() + Environment.NewLine;
			rtn += "[BillTop] = " + this.BillTop.ToString() + Environment.NewLine;
			rtn += "[IsPrint] = " + this.IsPrint.ToString() + Environment.NewLine;
			rtn += "[BillShare] = " + this.BillShare.ToString() + Environment.NewLine;
			return rtn;
		}
	}
}