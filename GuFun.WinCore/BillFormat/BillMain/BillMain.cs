using System;

namespace GuFun.WinCore
{
	public class BillMain
	{

		#region Properties

		private int _billFormat;

		public int BillFormat
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

		private short _mainSerial;

		public short MainSerial
		{
			get { return _mainSerial; }
			set { _mainSerial = value; }
		}

		private short _mainLeft;

		public short MainLeft
		{
			get { return _mainLeft; }
			set { _mainLeft = value; }
		}

		private short _mainTop;

		public short MainTop
		{
			get { return _mainTop; }
			set { _mainTop = value; }
		}

		private short _mainWidth;

		public short MainWidth
		{
			get { return _mainWidth; }
			set { _mainWidth = value; }
		}

		private short _mainHeight;

		public short MainHeight
		{
			get { return _mainHeight; }
			set { _mainHeight = value; }
		}

		private string _mainCode;

		public string MainCode
		{
			get { return _mainCode; }
			set { _mainCode = value; }
		}

		private string _mainName;

		public string MainName
		{
			get { return _mainName; }
			set { _mainName = value; }
		}

		private string _mainFont;

		public string MainFont
		{
			get { return _mainFont; }
			set { _mainFont = value; }
		}

		private double _mainSize;

		public double MainSize
		{
			get { return _mainSize; }
			set { _mainSize = value; }
		}

		private short _wordType;

		public short WordType
		{
			get { return _wordType; }
			set { _wordType = value; }
		}

		private bool _isWarp;

		public bool IsWarp
		{
			get { return _isWarp; }
			set { _isWarp = value; }
		}

    private string _printValue;

    public string PrintValue
    {
      get { return _printValue; }
      set { _printValue = value; }
    }

		#endregion Properties

		public BillMain()
		{
			_billFormat = 0;
			_billFormatName = String.Empty;
			_mainSerial = 0;
			_mainLeft = 0;
			_mainTop = 0;
			_mainWidth = 0;
			_mainHeight = 0;
			_mainCode = String.Empty;
			_mainName = String.Empty;
			_mainFont = String.Empty;
			_mainSize = 0;
			_wordType = 0;
			_isWarp = false;
      _printValue = String.Empty;
		}

		public string Debug()
		{
			string rtn = String.Empty;
			rtn += "[BillFormat] = " + this.BillFormat.ToString() + Environment.NewLine;
			rtn += "[BillFormatName] = " + this.BillFormatName.ToString() + Environment.NewLine;
			rtn += "[MainSerial] = " + this.MainSerial.ToString() + Environment.NewLine;
			rtn += "[MainLeft] = " + this.MainLeft.ToString() + Environment.NewLine;
			rtn += "[MainTop] = " + this.MainTop.ToString() + Environment.NewLine;
			rtn += "[MainWidth] = " + this.MainWidth.ToString() + Environment.NewLine;
			rtn += "[MainHeight] = " + this.MainHeight.ToString() + Environment.NewLine;
			rtn += "[MainCode] = " + this.MainCode.ToString() + Environment.NewLine;
			rtn += "[MainName] = " + this.MainName.ToString() + Environment.NewLine;
			rtn += "[MainFont] = " + this.MainFont.ToString() + Environment.NewLine;
			rtn += "[MainSize] = " + this.MainSize.ToString() + Environment.NewLine;
			rtn += "[WordType] = " + this.WordType.ToString() + Environment.NewLine;
			rtn += "[IsWarp] = " + this.IsWarp.ToString() + Environment.NewLine;
			return rtn;
		}
	}
}