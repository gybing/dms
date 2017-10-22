using System;

namespace GuFun.WinCore
{
	public class NewBackFee
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

    private short _backType;

    public short BackType
    {
      get { return _backType; }
      set { _backType = value; }
    }

    private string _nextMan;

    public string NextMan
    {
      get { return _nextMan; }
      set { _nextMan = value; }
    }

    private string _nextManName;

    public string NextManName
    {
      get { return _nextManName; }
      set { _nextManName = value; }
    }

    private short _nextFlow;

    public short NextFlow
    {
      get { return _nextFlow; }
      set { _nextFlow = value; }
    }

    private int _serialID;

    public int SerialID
    {
      get { return _serialID; }
      set { _serialID = value; }
    }

    private short _auditMoney;

    public short AuditMoney
    {
      get { return _auditMoney; }
      set { _auditMoney = value; }
    }

    private string _applyDept;

    public string ApplyDept
    {
      get { return _applyDept; }
      set { _applyDept = value; }
    }

    private string _deptName;

    public string DeptName
    {
      get { return _deptName; }
      set { _deptName = value; }
    }

    private string _nowMan;

    public string NowMan
    {
      get { return _nowMan; }
      set { _nowMan = value; }
    }

    private string _nowManName;

    public string NowManName
    {
      get { return _nowManName; }
      set { _nowManName = value; }
    }

    private DateTime _nowDate;

    public DateTime NowDate
    {
      get { return _nowDate; }
      set { _nowDate = value; }
    }

    private string _nowDesc;

    public string NowDesc
    {
      get { return _nowDesc; }
      set { _nowDesc = value; }
    }

    private short _nowStatus;

    public short NowStatus
    {
      get { return _nowStatus; }
      set { _nowStatus = value; }
    }

    private short _backFeeFlow;

    public short BackFeeFlow
    {
      get { return _backFeeFlow; }
      set { _backFeeFlow = value; }
    }

    private string _backFeeFlowName;

    public string BackFeeFlowName
    {
      get { return _backFeeFlowName; }
      set { _backFeeFlowName = value; }
    }

    private string _nowStatusName;

    public string NowStatusName
    {
      get { return _nowStatusName; }
      set { _nowStatusName = value; }
    }

    private string _backTypeName;

    public string BackTypeName
    {
      get { return _backTypeName; }
      set { _backTypeName = value; }
    }

    private short _nowAuditMoney;

    public short NowAuditMoney
    {
      get { return _nowAuditMoney; }
      set { _nowAuditMoney = value; }
    }

    private short _backFeeBill;

    public short BackFeeBill
    {
      get { return _backFeeBill; }
      set { _backFeeBill = value; }
    }

    private short _bankID;

    public short BankID
    {
      get { return _bankID; }
      set { _bankID = value; }
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

    private string _linkIdent;

    public string LinkIdent
    {
      get { return _linkIdent; }
      set { _linkIdent = value; }
    }

    private short _feebackModel;

    public short FeeBackModel
    {
      get { return _feebackModel; }
      set { _feebackModel = value; }
    }

    private string _feebackModelName;

    public string FeeBackModelName
    {
      get { return _feebackModelName; }
      set { _feebackModelName = value; }
    }

    private string _getShort;

    public string GetShort
    {
      get { return _getShort; }
      set { _getShort = value; }
    }

    // modify by 20151112

    private DateTime? _submitDate;

    public DateTime? SubmitDate
    {
      get { return _submitDate; }
      set { _submitDate = value; }
    }

		#endregion Properties

		public NewBackFee()
		{
      _linkIdent = String.Empty;
      _linkMan = String.Empty;
      _linkTele = String.Empty;
      _feebackModel = 0;
      _feebackModelName = String.Empty;
      _bankID = 0;
      _tranID = String.Empty;
      _serialID = 0;
      _nowStatusName = String.Empty;
      _nowStatus = 0;
      _nowManName = String.Empty;
      _nowMan = String.Empty;
      _nowDesc = String.Empty;
      _nowDate = DateTime.MinValue;
      _nextManName = String.Empty;
      _nextMan = String.Empty;
      _nextFlow = 0;
      _deptName = String.Empty;
      _custID = String.Empty;
      _billNumber = String.Empty;
      _billDeptName = String.Empty;
      _billCode = String.Empty;
      _bankFullName = String.Empty;
      _bankAccount = String.Empty;
      _backType = 0;
      _backFeeWord = String.Empty;
      _backFeeStatusName = String.Empty;
      _backFeeStatus = 0;
      _backFeeFlowName = String.Empty;
      _backFeeFlow = 0;
      _backFeeCode = String.Empty;
      _backFeeCash = 0;
      _auditMoney = 0;
      _applyManName = String.Empty;
      _applyMan = String.Empty;
      _applyDesc = String.Empty;
      _applyDept = String.Empty;
      _applyDate = DateTime.MinValue;
      _backTypeName = String.Empty;
      _nowAuditMoney = 0;
      _getShort = String.Empty;
      _submitDate = null;
		}

		
	}
}