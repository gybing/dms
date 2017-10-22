using System;

namespace GuFun.WinCore
{
	public class BillSelfDetail
	{

		#region Properties

		private int _billNo;

		public int BillNo
		{
			get { return _billNo; }
			set { _billNo = value; }
		}

		private string _manID;

		public string ManID
		{
			get { return _manID; }
			set { _manID = value; }
		}

		private string _manName;

		public string ManName
		{
			get { return _manName; }
			set { _manName = value; }
		}

		private string _deptID;

		public string DeptID
		{
			get { return _deptID; }
			set { _deptID = value; }
		}

		private string _deptName;

		public string DeptName
		{
			get { return _deptName; }
			set { _deptName = value; }
		}

		private DateTime _recoDate;

		public DateTime RecoDate
		{
			get { return _recoDate; }
			set { _recoDate = value; }
		}

		private string _selfID;

		public string SelfID
		{
			get { return _selfID; }
			set { _selfID = value; }
		}

		private string _selfName;

		public string SelfName
		{
			get { return _selfName; }
			set { _selfName = value; }
		}

		private string _operDesc;

		public string OperDesc
		{
			get { return _operDesc; }
			set { _operDesc = value; }
		}

		#endregion Properties

		public BillSelfDetail()
		{
			_billNo = 0;
			_manID = String.Empty;
			_manName = String.Empty;
			_deptID = String.Empty;
			_deptName = String.Empty;
			_recoDate = DateTime.MinValue;
			_selfID = String.Empty;
			_selfName = String.Empty;
			_operDesc = String.Empty;
		}

		public string Debug()
		{
			string rtn = String.Empty;
			rtn += "[BillNo] = " + this.BillNo.ToString() + Environment.NewLine;
			rtn += "[ManID] = " + this.ManID.ToString() + Environment.NewLine;
			rtn += "[ManName] = " + this.ManName.ToString() + Environment.NewLine;
			rtn += "[DeptID] = " + this.DeptID.ToString() + Environment.NewLine;
			rtn += "[DeptName] = " + this.DeptName.ToString() + Environment.NewLine;
			rtn += "[RecoDate] = " + this.RecoDate.ToString() + Environment.NewLine;
			rtn += "[SelfID] = " + this.SelfID.ToString() + Environment.NewLine;
			rtn += "[SelfName] = " + this.SelfName.ToString() + Environment.NewLine;
			rtn += "[OperDesc] = " + this.OperDesc.ToString() + Environment.NewLine;
			return rtn;
		}
	}
}