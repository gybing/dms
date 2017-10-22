using System;

namespace GuFun.WinCore
{
	public class BillChange
	{

		#region Properties

		private int _changeID;

		public int ChangeID
		{
			get { return _changeID; }
			set { _changeID = value; }
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

		private string _targetDept;

		public string TargetDept
		{
			get { return _targetDept; }
			set { _targetDept = value; }
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

		private string _sourceDept;

		public string SourceDept
		{
			get { return _sourceDept; }
			set { _sourceDept = value; }
		}

		private string _deptName;

		public string DeptName
		{
			get { return _deptName; }
			set { _deptName = value; }
		}

		private DateTime _changeDate;

		public DateTime ChangeDate
		{
			get { return _changeDate; }
			set { _changeDate = value; }
		}

    private int _cnt;

    public int Cnt
    {
      get { return _cnt; }
      set { _cnt = value; }
    }

    private double _enAmount;

    public double EnAmount
    {
      get { return _enAmount; }
      set { _enAmount = value; }
    }

    private BillChangeDatas _items;

    public BillChangeDatas Items
    {
      get
      {
        if (_items == null)
          _items = new BillChangeDatas();

        return _items;
      }
    }

		#endregion Properties

		public BillChange()
		{
			_changeID = 0;
			_targetMan = String.Empty;
			_targetManName = String.Empty;
			_targetDept = String.Empty;
			_sourceMan = String.Empty;
			_sourceManName = String.Empty;
			_sourceDept = String.Empty;
			_deptName = String.Empty;
			_changeDate = DateTime.MinValue;
      _cnt = 0;
      _enAmount = 0;
		}

		public string Debug()
		{
			string rtn = String.Empty;
			rtn += "[ChangeID] = " + this.ChangeID.ToString() + Environment.NewLine;
			rtn += "[TargetMan] = " + this.TargetMan.ToString() + Environment.NewLine;
			rtn += "[TargetManName] = " + this.TargetManName.ToString() + Environment.NewLine;
			rtn += "[TargetDept] = " + this.TargetDept.ToString() + Environment.NewLine;
			rtn += "[SourceMan] = " + this.SourceMan.ToString() + Environment.NewLine;
			rtn += "[SourceManName] = " + this.SourceManName.ToString() + Environment.NewLine;
			rtn += "[SourceDept] = " + this.SourceDept.ToString() + Environment.NewLine;
			rtn += "[DeptName] = " + this.DeptName.ToString() + Environment.NewLine;
			rtn += "[ChangeDate] = " + this.ChangeDate.ToString() + Environment.NewLine;
			return rtn;
		}
	}
}