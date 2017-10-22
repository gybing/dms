using System;

namespace GuFun.WinCore
{
  public class BankAccept
  {
    #region Properties

		private int _acceptID;

		public int AcceptID
		{
			get { return _acceptID; }
			set { _acceptID = value; }
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

		private string _deptName;

		public string DeptName
		{
			get { return _deptName; }
			set { _deptName = value; }
		}

		private DateTime _acceptDate;

		public DateTime AcceptDate
		{
			get { return _acceptDate; }
			set { _acceptDate = value; }
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

    private BankAcceptDatas _items;

    public BankAcceptDatas Items
    {
      get
      {
        if (_items == null)
          _items = new BankAcceptDatas();

        return _items;
      }
    }

		#endregion Properties

		public BankAccept()
		{
			_acceptID = 0;
			_targetMan = String.Empty;
			_targetManName = String.Empty;
			_targetDept = String.Empty;
			_deptName = String.Empty;
			_acceptDate = DateTime.MinValue;
      _cnt = 0;
      _enAmount = 0;
		}

		public string Debug()
		{
			string rtn = String.Empty;
			rtn += "[AcceptID] = " + this.AcceptID.ToString() + Environment.NewLine;
			rtn += "[TargetMan] = " + this.TargetMan.ToString() + Environment.NewLine;
			rtn += "[TargetManName] = " + this.TargetManName.ToString() + Environment.NewLine;
			rtn += "[TargetDept] = " + this.TargetDept.ToString() + Environment.NewLine;
			rtn += "[DeptName] = " + this.DeptName.ToString() + Environment.NewLine;
			rtn += "[AcceptDate] = " + this.AcceptDate.ToString() + Environment.NewLine;
			return rtn;
		}
  }
}
