using System;

namespace GuFun.WinCore
{
	public class BillDept
	{

		#region Properties

		private int _id;

		public int ID
		{
			get { return _id; }
			set { _id = value; }
		}

		private string _billDeptName;

		public string BillDeptName
		{
			get { return _billDeptName; }
			set { _billDeptName = value; }
		}

		private string _billDeptShort;

		public string BillDeptShort
		{
			get { return _billDeptShort; }
			set { _billDeptShort = value; }
		}

		private string _billDeptCn;

		public string BillDeptCn
		{
			get { return _billDeptCn; }
			set { _billDeptCn = value; }
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

		private string _bankFullName;

		public string BankFullName
		{
			get { return _bankFullName; }
			set { _bankFullName = value; }
		}

		private string _bankAccount;

		public string BankAccount
		{
			get { return _bankAccount; }
			set { _bankAccount = value; }
		}

		private bool _isSelf;

		public bool IsSelf
		{
			get { return _isSelf; }
			set { _isSelf = value; }
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

		private string _custID;

		public string CustID
		{
			get { return _custID; }
			set { _custID = value; }
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

    private short _billDeptStatus;

    public short BillDeptStatus
    {
      get { return _billDeptStatus; }
      set { _billDeptStatus = value; }
    }

    private string _isSelfName;

    public string IsSelfName
    {
      get { return _isSelfName; }
      set { _isSelfName = value; }
    }

    private string _linkMan;

    public string LinkMan
    {
      get { return _linkMan; }
      set { _linkMan = value; }
    }

    private string _linkTele;

    public string LinkTele
    {
      get { return _linkTele; }
      set { _linkTele = value; }
    }

		#endregion Properties

		public BillDept()
		{
			_id = 0;
			_billDeptName = String.Empty;
			_billDeptShort = String.Empty;
			_billDeptCn = String.Empty;
			_bankID = 0;
			_bankName = String.Empty;
			_bankFullName = String.Empty;
			_bankAccount = String.Empty;
			_isSelf = false;
			_deptID = String.Empty;
			_deptName = String.Empty;
			_custID = String.Empty;
			_crtDate = DateTime.MinValue;
			_manID = String.Empty;
      _billDeptStatus = 0;
      _isSelfName = String.Empty;
      _linkTele = String.Empty;
      _linkMan = String.Empty;
		}

		public string Debug()
		{
			string rtn = String.Empty;
			rtn += "[ID] = " + this.ID.ToString() + Environment.NewLine;
			rtn += "[BillDeptName] = " + this.BillDeptName.ToString() + Environment.NewLine;
			rtn += "[BillDeptShort] = " + this.BillDeptShort.ToString() + Environment.NewLine;
			rtn += "[BillDeptCn] = " + this.BillDeptCn.ToString() + Environment.NewLine;
			rtn += "[BankID] = " + this.BankID.ToString() + Environment.NewLine;
			rtn += "[BankName] = " + this.BankName.ToString() + Environment.NewLine;
			rtn += "[BankFullName] = " + this.BankFullName.ToString() + Environment.NewLine;
			rtn += "[BankAccount] = " + this.BankAccount.ToString() + Environment.NewLine;
			rtn += "[IsSelf] = " + this.IsSelf.ToString() + Environment.NewLine;
			rtn += "[DeptID] = " + this.DeptID.ToString() + Environment.NewLine;
			rtn += "[DeptName] = " + this.DeptName.ToString() + Environment.NewLine;
			rtn += "[CustID] = " + this.CustID.ToString() + Environment.NewLine;
			rtn += "[CrtDate] = " + this.CrtDate.ToString() + Environment.NewLine;
			rtn += "[ManID] = " + this.ManID.ToString() + Environment.NewLine;
			return rtn;
		}
	}
}