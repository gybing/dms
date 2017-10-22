using System;

namespace GuFun.WinCore
{
	public class BillAdjustCash
	{

		#region Properties

		private int _adjustID;

		public int AdjustID
		{
			get { return _adjustID; }
			set { _adjustID = value; }
		}

		private string _sourceMan;

		public string SourceMan
		{
			get { return _sourceMan; }
			set { _sourceMan = value; }
		}

		private string _sourceManName;

		public string SourceManName
		{
			get { return _sourceManName; }
			set { _sourceManName = value; }
		}

		private string _targetMan;

		public string TargetMan
		{
			get { return _targetMan; }
			set { _targetMan = value; }
		}

		private string _targetManName;

		public string TargetManName
		{
			get { return _targetManName; }
			set { _targetManName = value; }
		}

		private double _adjustCash;

		public double AdjustCash
		{
			get { return _adjustCash; }
			set { _adjustCash = value; }
		}

		private DateTime _recoDate;

		public DateTime RecoDate
		{
			get { return _recoDate; }
			set { _recoDate = value; }
		}

		private string _recoMan;

		public string RecoMan
		{
			get { return _recoMan; }
			set { _recoMan = value; }
		}

		private string _recoManName;

		public string RecoManName
		{
			get { return _recoManName; }
			set { _recoManName = value; }
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

		#endregion Properties

		public BillAdjustCash()
		{
			_adjustID = 0;
			_sourceMan = String.Empty;
			_sourceManName = String.Empty;
			_targetMan = String.Empty;
			_targetManName = String.Empty;
			_adjustCash = 0;
			_recoDate = DateTime.MinValue;
			_recoMan = String.Empty;
			_recoManName = String.Empty;
			_deptID = String.Empty;
			_deptName = String.Empty;
		}

		public string Debug()
		{
			string rtn = String.Empty;
			rtn += "[AdjustID] = " + this.AdjustID.ToString() + Environment.NewLine;
			rtn += "[SourceMan] = " + this.SourceMan.ToString() + Environment.NewLine;
			rtn += "[SourceManName] = " + this.SourceManName.ToString() + Environment.NewLine;
			rtn += "[TargetMan] = " + this.TargetMan.ToString() + Environment.NewLine;
			rtn += "[TargetManName] = " + this.TargetManName.ToString() + Environment.NewLine;
			rtn += "[AdjustCash] = " + this.AdjustCash.ToString() + Environment.NewLine;
			rtn += "[RecoDate] = " + this.RecoDate.ToString() + Environment.NewLine;
			rtn += "[RecoMan] = " + this.RecoMan.ToString() + Environment.NewLine;
			rtn += "[RecoManName] = " + this.RecoManName.ToString() + Environment.NewLine;
			rtn += "[DeptID] = " + this.DeptID.ToString() + Environment.NewLine;
			rtn += "[DeptName] = " + this.DeptName.ToString() + Environment.NewLine;
			return rtn;
		}
	}
}