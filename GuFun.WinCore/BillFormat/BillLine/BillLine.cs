using System;

namespace GuFun.WinCore
{
	public class BillLine
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

		private short _lineSerial;

		public short LineSerial
		{
			get { return _lineSerial; }
			set { _lineSerial = value; }
		}

		private short _lineLeft;

		public short LineLeft
		{
			get { return _lineLeft; }
			set { _lineLeft = value; }
		}

		private short _lineTop;

		public short LineTop
		{
			get { return _lineTop; }
			set { _lineTop = value; }
		}

		private short _lineRight;

		public short LineRight
		{
			get { return _lineRight; }
			set { _lineRight = value; }
		}

		private short _lineBottom;

		public short LineBottom
		{
			get { return _lineBottom; }
			set { _lineBottom = value; }
		}

		private short _lineWidth;

		public short LineWidth
		{
			get { return _lineWidth; }
			set { _lineWidth = value; }
		}

		private short _lineType;

		public short LineType
		{
			get { return _lineType; }
			set { _lineType = value; }
		}

		private bool _isPrint;

		public bool IsPrint
		{
			get { return _isPrint; }
			set { _isPrint = value; }
		}

		#endregion Properties

		public BillLine()
		{
			_billFormat = 0;
			_billFormatName = String.Empty;
			_lineSerial = 0;
			_lineLeft = 0;
			_lineTop = 0;
			_lineRight = 0;
			_lineBottom = 0;
			_lineWidth = 0;
			_lineType = 0;
			_isPrint = false;
		}

		public string Debug()
		{
			string rtn = String.Empty;
			rtn += "[BillFormat] = " + this.BillFormat.ToString() + Environment.NewLine;
			rtn += "[BillFormatName] = " + this.BillFormatName.ToString() + Environment.NewLine;
			rtn += "[LineSerial] = " + this.LineSerial.ToString() + Environment.NewLine;
			rtn += "[LineLeft] = " + this.LineLeft.ToString() + Environment.NewLine;
			rtn += "[LineTop] = " + this.LineTop.ToString() + Environment.NewLine;
			rtn += "[LineRight] = " + this.LineRight.ToString() + Environment.NewLine;
			rtn += "[LineBottom] = " + this.LineBottom.ToString() + Environment.NewLine;
			rtn += "[LineWidth] = " + this.LineWidth.ToString() + Environment.NewLine;
			rtn += "[LineType] = " + this.LineType.ToString() + Environment.NewLine;
			rtn += "[IsPrint] = " + this.IsPrint.ToString() + Environment.NewLine;
			return rtn;
		}
	}
}