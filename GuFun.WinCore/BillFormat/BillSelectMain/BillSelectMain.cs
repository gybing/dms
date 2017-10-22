using System;

namespace GuFun.WinCore
{
	public class BillSelectMain
	{

		#region Properties

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

		private short _mainSerial;

		public short MainSerial
		{
			get { return _mainSerial; }
			set { _mainSerial = value; }
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

		#endregion Properties

		public BillSelectMain()
		{
			_billType = 0;
			_billTypeName = String.Empty;
			_mainSerial = 0;
			_mainCode = String.Empty;
			_mainName = String.Empty;
		}

		public string Debug()
		{
			string rtn = String.Empty;
			rtn += "[BillType] = " + this.BillType.ToString() + Environment.NewLine;
			rtn += "[BillTypeName] = " + this.BillTypeName.ToString() + Environment.NewLine;
			rtn += "[MainSerial] = " + this.MainSerial.ToString() + Environment.NewLine;
			rtn += "[MainCode] = " + this.MainCode.ToString() + Environment.NewLine;
			rtn += "[MainName] = " + this.MainName.ToString() + Environment.NewLine;
			return rtn;
		}
	}
}