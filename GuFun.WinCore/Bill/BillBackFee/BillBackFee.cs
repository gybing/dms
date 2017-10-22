using System;

namespace GuFun.WinCore
{
	public class BillBackFee
	{

		#region Properties

		private string _tranID;

		public string TranID
		{
			get { return _tranID; }
			set { _tranID = value; }
		}

		private string _backFeeWord;

		public string BackFeeWord
		{
			get { return _backFeeWord; }
			set { _backFeeWord = value; }
		}

		private string _backFeeCode;

		public string BackFeeCode
		{
			get { return _backFeeCode; }
			set { _backFeeCode = value; }
		}

		private string _applyMan;

		public string ApplyMan
		{
			get { return _applyMan; }
			set { _applyMan = value; }
		}

		private string _applyManName;

		public string ApplyManName
		{
			get { return _applyManName; }
			set { _applyManName = value; }
		}

		private string _custID;

		public string CustID
		{
			get { return _custID; }
			set { _custID = value; }
		}

		private string _billDeptName;

		public string BillDeptName
		{
			get { return _billDeptName; }
			set { _billDeptName = value; }
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

		private double _backFeeCash;

		public double BackFeeCash
		{
			get { return _backFeeCash; }
			set { _backFeeCash = value; }
		}

		private string _applyDesc;

		public string ApplyDesc
		{
			get { return _applyDesc; }
			set { _applyDesc = value; }
		}

		private DateTime _applyDate;

		public DateTime ApplyDate
		{
			get { return _applyDate; }
			set { _applyDate = value; }
		}

		private string _checkMan;

		public string CheckMan
		{
			get { return _checkMan; }
			set { _checkMan = value; }
		}

		private string _checkManName;

		public string CheckManName
		{
			get { return _checkManName; }
			set { _checkManName = value; }
		}

		private DateTime _checkDate;

		public DateTime CheckDate
		{
			get { return _checkDate; }
			set { _checkDate = value; }
		}

		private string _checkDesc;

		public string CheckDesc
		{
			get { return _checkDesc; }
			set { _checkDesc = value; }
		}

		private string _auditMan;

		public string AuditMan
		{
			get { return _auditMan; }
			set { _auditMan = value; }
		}

		private string _auditManName;

		public string AuditManName
		{
			get { return _auditManName; }
			set { _auditManName = value; }
		}

		private DateTime _auditDate;

		public DateTime AuditDate
		{
			get { return _auditDate; }
			set { _auditDate = value; }
		}

		private string _auditDesc;

		public string AuditDesc
		{
			get { return _auditDesc; }
			set { _auditDesc = value; }
		}

		private string _dealMan;

		public string DealMan
		{
			get { return _dealMan; }
			set { _dealMan = value; }
		}

		private string _dealManName;

		public string DealManName
		{
			get { return _dealManName; }
			set { _dealManName = value; }
		}

		private DateTime _dealDate;

		public DateTime DealDate
		{
			get { return _dealDate; }
			set { _dealDate = value; }
		}

		private string _dealDesc;

		public string DealDesc
		{
			get { return _dealDesc; }
			set { _dealDesc = value; }
		}

		private string _lastMan;

		public string LastMan
		{
			get { return _lastMan; }
			set { _lastMan = value; }
		}

		private string _lastManName;

		public string LastManName
		{
			get { return _lastManName; }
			set { _lastManName = value; }
		}

		private DateTime _lastDate;

		public DateTime LastDate
		{
			get { return _lastDate; }
			set { _lastDate = value; }
		}

		private string _lastDesc;

		public string LastDesc
		{
			get { return _lastDesc; }
			set { _lastDesc = value; }
		}

		private short _backFeeStatus;

		public short BackFeeStatus
		{
			get { return _backFeeStatus; }
			set { _backFeeStatus = value; }
		}

		private string _backFeeStatusName;

		public string BackFeeStatusName
		{
			get { return _backFeeStatusName; }
			set { _backFeeStatusName = value; }
		}

    private string _deptMan;

    public string DeptMan
    {
      get { return _deptMan; }
      set { _deptMan = value; }
    }

    private string _deptManName;

    public string DeptManName
    {
      get { return _deptManName; }
      set { _deptManName = value; }
    }

    private DateTime _deptDate;

    public DateTime DeptDate
    {
      get { return _deptDate; }
      set { _deptDate = value; }
    }

    private string _deptDesc;

    public string DeptDesc
    {
      get { return _deptDesc; }
      set { _deptDesc = value; }
    }

    private string _billCode;

    public string BillCode
    {
      get { return _billCode; }
      set { _billCode = value; }
    }

    private string _billNumber;

    public string BillNumber
    {
      get { return _billNumber; }
      set { _billNumber = value; }
    }

    private string _backDesc;

    public string BackDesc
    {
      get { return _backDesc; }
      set { _backDesc = value; }
    }

    private DateTime _backDate;

    public DateTime BackDate
    {
      get { return _backDate; }
      set { _backDate = value; }
    }

    private string _backMan;

    public string BackMan
    {
      get { return _backMan; }
      set { _backMan = value; }
    }

    private string _backManName;

    public string BackManName
    {
      get { return _backManName; }
      set { _backManName = value; }
    }

    private short _backType;

    public short BackType
    {
      get { return _backType; }
      set { _backType = value; }
    }

    private short _backFeeFlow;

    public short BackFeeFlow
    {
      get { return _backFeeFlow; }
      set { _backFeeFlow = value; }
    }

    private short _auditMoney;

    public short AuditMoney
    {
      get { return _auditMoney; }
      set { _auditMoney = value; }
    }

		#endregion Properties

		public BillBackFee()
		{
      _backFeeFlow = 0;
			_tranID = String.Empty;
			_backFeeWord = String.Empty;
			_backFeeCode = String.Empty;
			_applyMan = String.Empty;
			_applyManName = String.Empty;
			_custID = String.Empty;
			_billDeptName = String.Empty;
			_bankFullName = String.Empty;
			_bankAccount = String.Empty;
			_backFeeCash = 0;
			_applyDesc = String.Empty;
			_applyDate = DateTime.MinValue;
			_checkMan = String.Empty;
			_checkManName = String.Empty;
			_checkDate = DateTime.MinValue;
			_checkDesc = String.Empty;
			_auditMan = String.Empty;
			_auditManName = String.Empty;
			_auditDate = DateTime.MinValue;
			_auditDesc = String.Empty;
			_dealMan = String.Empty;
			_dealManName = String.Empty;
			_dealDate = DateTime.MinValue;
			_dealDesc = String.Empty;
			_lastMan = String.Empty;
			_lastManName = String.Empty;
			_lastDate = DateTime.MinValue;
			_lastDesc = String.Empty;
			_backFeeStatus = 0;
			_backFeeStatusName = String.Empty;
      _deptDesc = String.Empty;
      _deptMan = String.Empty;
      _deptManName = String.Empty;
      _deptDate = DateTime.MinValue;
      _billNumber = String.Empty;
      _billCode = String.Empty;
      _backDesc = String.Empty;
      _backDate = DateTime.MinValue;
      _backMan = String.Empty;
      _backManName = String.Empty;
      _backType = 0;
		}

		public string Debug()
		{
			string rtn = String.Empty;
			rtn += "[TranID] = " + this.TranID.ToString() + Environment.NewLine;
			rtn += "[BackFeeWord] = " + this.BackFeeWord.ToString() + Environment.NewLine;
			rtn += "[BackFeeCode] = " + this.BackFeeCode.ToString() + Environment.NewLine;
			rtn += "[ApplyMan] = " + this.ApplyMan.ToString() + Environment.NewLine;
			rtn += "[ApplyManName] = " + this.ApplyManName.ToString() + Environment.NewLine;
			rtn += "[CustID] = " + this.CustID.ToString() + Environment.NewLine;
			rtn += "[BillDeptName] = " + this.BillDeptName.ToString() + Environment.NewLine;
			rtn += "[BankFullName] = " + this.BankFullName.ToString() + Environment.NewLine;
			rtn += "[BankAccount] = " + this.BankAccount.ToString() + Environment.NewLine;
			rtn += "[BackFeeCash] = " + this.BackFeeCash.ToString() + Environment.NewLine;
			rtn += "[ApplyDesc] = " + this.ApplyDesc.ToString() + Environment.NewLine;
			rtn += "[ApplyDate] = " + this.ApplyDate.ToString() + Environment.NewLine;
			rtn += "[CheckMan] = " + this.CheckMan.ToString() + Environment.NewLine;
			rtn += "[CheckManName] = " + this.CheckManName.ToString() + Environment.NewLine;
			rtn += "[CheckDate] = " + this.CheckDate.ToString() + Environment.NewLine;
			rtn += "[CheckDesc] = " + this.CheckDesc.ToString() + Environment.NewLine;
			rtn += "[AuditMan] = " + this.AuditMan.ToString() + Environment.NewLine;
			rtn += "[AuditManName] = " + this.AuditManName.ToString() + Environment.NewLine;
			rtn += "[AuditDate] = " + this.AuditDate.ToString() + Environment.NewLine;
			rtn += "[AuditDesc] = " + this.AuditDesc.ToString() + Environment.NewLine;
			rtn += "[DealMan] = " + this.DealMan.ToString() + Environment.NewLine;
			rtn += "[DealManName] = " + this.DealManName.ToString() + Environment.NewLine;
			rtn += "[DealDate] = " + this.DealDate.ToString() + Environment.NewLine;
			rtn += "[DealDesc] = " + this.DealDesc.ToString() + Environment.NewLine;
			rtn += "[LastMan] = " + this.LastMan.ToString() + Environment.NewLine;
			rtn += "[LastManName] = " + this.LastManName.ToString() + Environment.NewLine;
			rtn += "[LastDate] = " + this.LastDate.ToString() + Environment.NewLine;
			rtn += "[LastDesc] = " + this.LastDesc.ToString() + Environment.NewLine;
			rtn += "[BackFeeStatus] = " + this.BackFeeStatus.ToString() + Environment.NewLine;
			rtn += "[BackFeeStatusName] = " + this.BackFeeStatusName.ToString() + Environment.NewLine;
			return rtn;
		}
	}
}