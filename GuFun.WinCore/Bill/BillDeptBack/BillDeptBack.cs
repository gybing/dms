using System;

namespace GuFun.WinCore
{
	public class BillDeptBack
	{

		#region Properties

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

		private double _backStandard;

		public double BackStandard
		{
			get { return _backStandard; }
			set { _backStandard = value; }
		}

		private short _backPercent;

		public short BackPercent
		{
			get { return _backPercent; }
			set { _backPercent = value; }
		}

		private double _backMax;

		public double BackMax
		{
			get { return _backMax; }
			set { _backMax = value; }
		}

		private double _backMin;

		public double BackMin
		{
			get { return _backMin; }
			set { _backMin = value; }
		}

		private DateTime _crtDate;

		public DateTime CrtDate
		{
			get { return _crtDate; }
			set { _crtDate = value; }
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

		#endregion Properties

		public BillDeptBack()
		{
			_deptID = String.Empty;
			_deptName = String.Empty;
			_backStandard = 0;
			_backPercent = 0;
			_backMax = 0;
			_backMin = 0;
			_crtDate = DateTime.MinValue;
			_manID = String.Empty;
			_manName = String.Empty;
		}

		public string Debug()
		{
			string rtn = String.Empty;
			rtn += "[DeptID] = " + this.DeptID.ToString() + Environment.NewLine;
			rtn += "[DeptName] = " + this.DeptName.ToString() + Environment.NewLine;
			rtn += "[BackStandard] = " + this.BackStandard.ToString() + Environment.NewLine;
			rtn += "[BackPercent] = " + this.BackPercent.ToString() + Environment.NewLine;
			rtn += "[BackMax] = " + this.BackMax.ToString() + Environment.NewLine;
			rtn += "[BackMin] = " + this.BackMin.ToString() + Environment.NewLine;
			rtn += "[CrtDate] = " + this.CrtDate.ToString() + Environment.NewLine;
			rtn += "[ManID] = " + this.ManID.ToString() + Environment.NewLine;
			rtn += "[ManName] = " + this.ManName.ToString() + Environment.NewLine;
			return rtn;
		}
	}
}