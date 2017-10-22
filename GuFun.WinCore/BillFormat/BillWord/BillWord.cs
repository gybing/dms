using System;

namespace GuFun.WinCore
{
	public class BillWord
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

		private short _wordSerial;

		public short WordSerial
		{
			get { return _wordSerial; }
			set { _wordSerial = value; }
		}

		private string _wordContent;

		public string WordContent
		{
			get { return _wordContent; }
			set { _wordContent = value; }
		}

		private short _wordLeft;

		public short WordLeft
		{
			get { return _wordLeft; }
			set { _wordLeft = value; }
		}

		private short _wordTop;

		public short WordTop
		{
			get { return _wordTop; }
			set { _wordTop = value; }
		}

		private string _wordFont;

		public string WordFont
		{
			get { return _wordFont; }
			set { _wordFont = value; }
		}

		private double _wordSize;

		public double WordSize
		{
			get { return _wordSize; }
			set { _wordSize = value; }
		}

		private short _wordType;

		public short WordType
		{
			get { return _wordType; }
			set { _wordType = value; }
		}

		private bool _isPrint;

		public bool IsPrint
		{
			get { return _isPrint; }
			set { _isPrint = value; }
		}

		#endregion Properties

		public BillWord()
		{
			_billFormat = 0;
			_billFormatName = String.Empty;
			_wordSerial = 0;
			_wordContent = String.Empty;
			_wordLeft = 0;
			_wordTop = 0;
			_wordFont = String.Empty;
			_wordSize = 0;
			_wordType = 0;
			_isPrint = false;
		}

		public string Debug()
		{
			string rtn = String.Empty;
			rtn += "[BillFormat] = " + this.BillFormat.ToString() + Environment.NewLine;
			rtn += "[BillFormatName] = " + this.BillFormatName.ToString() + Environment.NewLine;
			rtn += "[WordSerial] = " + this.WordSerial.ToString() + Environment.NewLine;
			rtn += "[WordContent] = " + this.WordContent.ToString() + Environment.NewLine;
			rtn += "[WordLeft] = " + this.WordLeft.ToString() + Environment.NewLine;
			rtn += "[WordTop] = " + this.WordTop.ToString() + Environment.NewLine;
			rtn += "[WordFont] = " + this.WordFont.ToString() + Environment.NewLine;
			rtn += "[WordSize] = " + this.WordSize.ToString() + Environment.NewLine;
			rtn += "[WordType] = " + this.WordType.ToString() + Environment.NewLine;
			rtn += "[IsPrint] = " + this.IsPrint.ToString() + Environment.NewLine;
			return rtn;
		}
	}
}