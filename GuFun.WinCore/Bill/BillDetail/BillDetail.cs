using System;
using System.Data;

namespace GuFun.WinCore
{
	public class BillDetail
	{

		#region Properties

		private int _billNo;

		public int BillNo
		{
			get { return _billNo; }
			set { _billNo = value; }
		}

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

		private string _actBillNo;

		public string ActBillNo
		{
			get { return _actBillNo; }
			set { _actBillNo = value; }
		}

		private string _relaBillNo;

		public string RelaBillNo
		{
			get { return _relaBillNo; }
			set { _relaBillNo = value; }
		}

		private DateTime _billDate;

		public DateTime BillDate
		{
			get { return _billDate; }
			set { _billDate = value; }
		}

		private DateTime _actDate;

		public DateTime ActDate
		{
			get { return _actDate; }
			set { _actDate = value; }
		}

		private string _billMan;

		public string BillMan
		{
			get { return _billMan; }
			set { _billMan = value; }
		}

		private string _billManName;

		public string BillManName
		{
			get { return _billManName; }
			set { _billManName = value; }
		}

		private string _deptID	;

		public string DeptID	
		{
			get { return _deptID	; }
			set { _deptID	 = value; }
		}

		private short _operType;

		public short OperType
		{
			get { return _operType; }
			set { _operType = value; }
		}

		private string _operTypeName;

		public string OperTypeName
		{
			get { return _operTypeName; }
			set { _operTypeName = value; }
		}

		private bool _isSum;

		public bool IsSum
		{
			get { return _isSum; }
			set { _isSum = value; }
		}

		private string _enDate;

		public string EnDate
		{
			get { return _enDate; }
			set { _enDate = value; }
		}

		private string _enYearMonth;

		public string EnYearMonth
		{
			get { return _enYearMonth; }
			set { _enYearMonth = value; }
		}

		private string _enYear;

		public string EnYear
		{
			get { return _enYear; }
			set { _enYear = value; }
		}

		private string _enMonth;

		public string EnMonth
		{
			get { return _enMonth; }
			set { _enMonth = value; }
		}

		private string _enDay;

		public string EnDay
		{
			get { return _enDay; }
			set { _enDay = value; }
		}

		private string _cnYear;

		public string CnYear
		{
			get { return _cnYear; }
			set { _cnYear = value; }
		}

		private string _cnMonth;

		public string CnMonth
		{
			get { return _cnMonth; }
			set { _cnMonth = value; }
		}

		private string _cnDay;

		public string CnDay
		{
			get { return _cnDay; }
			set { _cnDay = value; }
		}

		private double _enAmount;

		public double EnAmount
		{
			get { return _enAmount; }
			set { _enAmount = value; }
		}

		private double _relaAmount;

		public double RelaAmount
		{
			get { return _relaAmount; }
			set { _relaAmount = value; }
		}

		private double _sumAmount;

		public double SumAmount
		{
			get { return _sumAmount; }
			set { _sumAmount = value; }
		}

		private string _cnAmount;

		public string CnAmount
		{
			get { return _cnAmount; }
			set { _cnAmount = value; }
		}

		private string _en01;

		public string En01
		{
			get { return _en01; }
			set { _en01 = value; }
		}

		private string _en02;

		public string En02
		{
			get { return _en02; }
			set { _en02 = value; }
		}

		private string _en03;

		public string En03
		{
			get { return _en03; }
			set { _en03 = value; }
		}

		private string _en04;

		public string En04
		{
			get { return _en04; }
			set { _en04 = value; }
		}

		private string _en05;

		public string En05
		{
			get { return _en05; }
			set { _en05 = value; }
		}

		private string _en06;

		public string En06
		{
			get { return _en06; }
			set { _en06 = value; }
		}

		private string _en07;

		public string En07
		{
			get { return _en07; }
			set { _en07 = value; }
		}

		private string _en08;

		public string En08
		{
			get { return _en08; }
			set { _en08 = value; }
		}

		private string _en09;

		public string En09
		{
			get { return _en09; }
			set { _en09 = value; }
		}

		private string _en10;

		public string En10
		{
			get { return _en10; }
			set { _en10 = value; }
		}

		private string _en11;

		public string En11
		{
			get { return _en11; }
			set { _en11 = value; }
		}

		private string _en12;

		public string En12
		{
			get { return _en12; }
			set { _en12 = value; }
		}

		private string _billPassword;

		public string BillPassword
		{
			get { return _billPassword; }
			set { _billPassword = value; }
		}

		private string _custID;

		public string CustID
		{
			get { return _custID; }
			set { _custID = value; }
		}

		private string _billSource;

		public string BillSource
		{
			get { return _billSource; }
			set { _billSource = value; }
		}

		private string _billUse;

		public string BillUse
		{
			get { return _billUse; }
			set { _billUse = value; }
		}

		private int _sendDept;

		public int SendDept
		{
			get { return _sendDept; }
			set { _sendDept = value; }
		}

		private string _sendName;

		public string SendName
		{
			get { return _sendName; }
			set { _sendName = value; }
		}

		private string _sendBank;

		public string SendBank
		{
			get { return _sendBank; }
			set { _sendBank = value; }
		}

		private string _sendAccount;

		public string SendAccount
		{
			get { return _sendAccount; }
			set { _sendAccount = value; }
		}

		private string _sendShort;

		public string SendShort
		{
			get { return _sendShort; }
			set { _sendShort = value; }
		}

		private int _getDept;

		public int GetDept
		{
			get { return _getDept; }
			set { _getDept = value; }
		}

		private string _getName;

		public string GetName
		{
			get { return _getName; }
			set { _getName = value; }
		}

		private string _getBank;

		public string GetBank
		{
			get { return _getBank; }
			set { _getBank = value; }
		}

		private string _getAccount;

		public string GetAccount
		{
			get { return _getAccount; }
			set { _getAccount = value; }
		}

		private string _getShort;

		public string GetShort
		{
			get { return _getShort; }
			set { _getShort = value; }
		}

		private string _re01;

		public string Re01
		{
			get { return _re01; }
			set { _re01 = value; }
		}

		private string _re02;

		public string Re02
		{
			get { return _re02; }
			set { _re02 = value; }
		}

		private string _re03;

		public string Re03
		{
			get { return _re03; }
			set { _re03 = value; }
		}

		private string _re04;

		public string Re04
		{
			get { return _re04; }
			set { _re04 = value; }
		}

		private string _re05;

		public string Re05
		{
			get { return _re05; }
			set { _re05 = value; }
		}

		private string _re06;

		public string Re06
		{
			get { return _re06; }
			set { _re06 = value; }
		}

		private string _re07;

		public string Re07
		{
			get { return _re07; }
			set { _re07 = value; }
		}

		private string _re08;

		public string Re08
		{
			get { return _re08; }
			set { _re08 = value; }
		}

		private string _re09;

		public string Re09
		{
			get { return _re09; }
			set { _re09 = value; }
		}

		private string _re10;

		public string Re10
		{
			get { return _re10; }
			set { _re10 = value; }
		}

		private string _re11;

		public string Re11
		{
			get { return _re11; }
			set { _re11 = value; }
		}

		private string _re12;

		public string Re12
		{
			get { return _re12; }
			set { _re12 = value; }
		}

		private string _re13;

		public string Re13
		{
			get { return _re13; }
			set { _re13 = value; }
		}

		private string _re14;

		public string Re14
		{
			get { return _re14; }
			set { _re14 = value; }
		}

		private string _re15;

		public string Re15
		{
			get { return _re15; }
			set { _re15 = value; }
		}

		private string _re16;

		public string Re16
		{
			get { return _re16; }
			set { _re16 = value; }
		}

		private string _re17;

		public string Re17
		{
			get { return _re17; }
			set { _re17 = value; }
		}

		private string _re18;

		public string Re18
		{
			get { return _re18; }
			set { _re18 = value; }
		}

		private string _re19;

		public string Re19
		{
			get { return _re19; }
			set { _re19 = value; }
		}

		private string _re20;

		public string Re20
		{
			get { return _re20; }
			set { _re20 = value; }
		}

    private string _re21;

    public string Re21
    {
      get { return _re21; }
      set { _re21 = value; }
    }

    private string _re22;

    public string Re22
    {
      get { return _re22; }
      set { _re22 = value; }
    }

    private string _re23;

    public string Re23
    {
      get { return _re23; }
      set { _re23 = value; }
    }

    private string _re24;

    public string Re24
    {
      get { return _re24; }
      set { _re24 = value; }
    }

    private string _re25;

    public string Re25
    {
      get { return _re25; }
      set { _re25 = value; }
    }

    private short _otherBank;

    public short OtherBank
    {
      get { return _otherBank; }
      set { _otherBank = value; }
    }

    private bool _isPrint;

    public bool IsPrint
    {
      get { return _isPrint; }
      set { _isPrint = value; }
    }

    private short _billStatus;

    public short BillStatus
    {
      get { return _billStatus; }
      set { _billStatus = value; }
    }

    private bool _isModify;

    public bool IsModify
    {
      get { return _isModify; }
      set { _isModify = value; }
    }

    private int _otherBillNo;

    public int OtherBillNo
    {
      get { return _otherBillNo; }
      set { _otherBillNo = value; }
    }

    private short _manType;

    public short ManType
    {
      get { return _manType; }
      set { _manType = value; }
    }

    private DateTime _recoDate;

    public DateTime RecoDate
    {
      get { return _recoDate; }
      set { _recoDate = value; }
    }

    private string _recoYear;

    public string RecoYear
    {
      get { return _recoYear; }
      set { _recoYear = value; }
    }

    private short _billNowStatus;

    public short BillNowStatus
    {
      get { return _billNowStatus; }
      set { _billNowStatus = value; }
    }

    private bool _isMulti;

    public bool IsMulti
    {
      get { return _isMulti; }
      set { _isMulti = value; }
    }

    private bool _isCust;

    public bool IsCust
    {
      get { return _isCust; }
      set { _isCust = value; }
    }

    private double _dAmount;

    public double DAmount
    {
      get { return _dAmount; }
      set { _dAmount = value; }
    }

    private string _dUse;

    public string DUse
    {
      get { return _dUse; }
      set { _dUse = value; }
    }

    private string _dJinUse;

    public string DJinUse
    {
      get { return _dJinUse; }
      set { _dJinUse = value; }
    }

    private double _yAmount;

    public double YAmount
    {
      get { return _yAmount; }
      set { _yAmount = value; }
    }

    private string _yUse;

    public string YUse
    {
      get { return _yUse; }
      set { _yUse = value; }
    }

    private string _yJinUse;

    public string YJinUse
    {
      get { return _yJinUse; }
      set { _yJinUse = value; }
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

    private DataTable _tranDetail;

    public DataTable TranDetail
    {
      get { return _tranDetail; }
      set { _tranDetail = value; }
    }

    private DateTime _inDate;

    public DateTime InDate
    {
      get { return _inDate; }
      set { _inDate = value; }
    }

    private short _cancelType;

    public short CancelType
    {
      get { return _cancelType; }
      set { _cancelType = value; }
    }

    private string _cancelTypeName;

    public string CancelTypeName
    {
      get { return _cancelTypeName; }
      set { _cancelTypeName = value; }
    }

    public string _trankey;

    public string TranKey
    {
      get { return _trankey; }
      set { _trankey = value; }
    }

		#endregion Properties

		public BillDetail()
		{
      InitBillDetail();
		}

    public BillDetail(bool DetailFlash)
    {
      InitBillDetail(DetailFlash);
    }

    public void InitBillDetail()
    {
      InitBillDetail(true);
    }

    public void InitBillDetail(bool DetailFlash)
    {
      _billNo = 0;
      _billType = 0;
      _billTypeName = String.Empty;
      _bankID = 0;
      _bankName = String.Empty;
      _actBillNo = String.Empty;
      _relaBillNo = String.Empty;
      _billDate = DateTime.MinValue;
      _actDate = DateTime.MinValue;
      _billMan = String.Empty;
      _billManName = String.Empty;
      _deptID = String.Empty;
      _operType = 0;
      _operTypeName = String.Empty;
      _isSum = true;
      _enDate = String.Empty;
      _enYearMonth = String.Empty;
      _enYear = String.Empty;
      _enMonth = String.Empty;
      _enDay = String.Empty;
      _cnYear = String.Empty;
      _cnMonth = String.Empty;
      _cnDay = String.Empty;
      _enAmount = 0;
      _relaAmount = 0;
      _sumAmount = 0;
      _cnAmount = String.Empty;
      _en01 = String.Empty;
      _en02 = String.Empty;
      _en03 = String.Empty;
      _en04 = String.Empty;
      _en05 = String.Empty;
      _en06 = String.Empty;
      _en07 = String.Empty;
      _en08 = String.Empty;
      _en09 = String.Empty;
      _en10 = String.Empty;
      _en11 = String.Empty;
      _en12 = String.Empty;
      _billPassword = String.Empty;
      _custID = String.Empty;
      _billSource = String.Empty;
      _billUse = String.Empty;
      _sendDept = 0;
      _sendName = String.Empty;
      _sendBank = String.Empty;
      _sendAccount = String.Empty;
      _sendShort = String.Empty;
      _getDept = 0;
      _getName = String.Empty;
      _getBank = String.Empty;
      _getAccount = String.Empty;
      _getShort = String.Empty;
      _re01 = String.Empty;
      _re02 = String.Empty;
      _re03 = String.Empty;
      _re04 = String.Empty;
      _re05 = String.Empty;
      _re06 = String.Empty;
      _re07 = String.Empty;
      _re08 = String.Empty;
      _re09 = String.Empty;
      _re10 = String.Empty;
      _re11 = String.Empty;
      _re12 = String.Empty;
      _re13 = String.Empty;
      _re14 = String.Empty;
      _re15 = String.Empty;
      _re16 = String.Empty;
      _re17 = String.Empty;
      _re18 = String.Empty;
      _re19 = String.Empty;
      _re20 = String.Empty;
      _re21 = String.Empty;
      _re22 = String.Empty;
      _re23 = String.Empty;
      _re24 = String.Empty;
      _re25 = String.Empty;
      _otherBank = 0;
      _isPrint = false;
      _billStatus = 0;
      _isModify = false;
      _otherBillNo = 0;
      _manType = 0;
      _recoDate = DateTime.MinValue;
      _recoYear = String.Empty;
      _billNowStatus = 0;
      _isCust = false;
      _isMulti = false;
      _dAmount = 0;
      _dJinUse = String.Empty;
      _dUse = String.Empty;
      _yAmount = 0;
      _yJinUse = String.Empty;
      _yUse = String.Empty;
      _linkTele = String.Empty;
      _linkMan = String.Empty;
      _inDate = DateTime.MinValue;
      _cancelType = 0;
      _cancelTypeName = String.Empty;
      _trankey = String.Empty;

      if (DetailFlash)
        _tranDetail = SqlBaseProvider.GetBillTranDetail(this._billNo);
    }

		public string Debug()
		{
			string rtn = String.Empty;
			rtn += "[BillNo] = " + this.BillNo.ToString() + Environment.NewLine;
			rtn += "[BillType] = " + this.BillType.ToString() + Environment.NewLine;
			rtn += "[BillTypeName] = " + this.BillTypeName.ToString() + Environment.NewLine;
			rtn += "[BankID] = " + this.BankID.ToString() + Environment.NewLine;
			rtn += "[BankName] = " + this.BankName.ToString() + Environment.NewLine;
			rtn += "[ActBillNo] = " + this.ActBillNo.ToString() + Environment.NewLine;
			rtn += "[RelaBillNo] = " + this.RelaBillNo.ToString() + Environment.NewLine;
			rtn += "[BillDate] = " + this.BillDate.ToString() + Environment.NewLine;
			rtn += "[ActDate] = " + this.ActDate.ToString() + Environment.NewLine;
			rtn += "[BillMan] = " + this.BillMan.ToString() + Environment.NewLine;
			rtn += "[BillManName] = " + this.BillManName.ToString() + Environment.NewLine;
			rtn += "[DeptID	] = " + this.DeptID	.ToString() + Environment.NewLine;
			rtn += "[OperType] = " + this.OperType.ToString() + Environment.NewLine;
			rtn += "[OperTypeName] = " + this.OperTypeName.ToString() + Environment.NewLine;
			rtn += "[IsSum] = " + this.IsSum.ToString() + Environment.NewLine;
			rtn += "[EnDate] = " + this.EnDate.ToString() + Environment.NewLine;
			rtn += "[EnYearMonth] = " + this.EnYearMonth.ToString() + Environment.NewLine;
			rtn += "[EnYear] = " + this.EnYear.ToString() + Environment.NewLine;
			rtn += "[EnMonth] = " + this.EnMonth.ToString() + Environment.NewLine;
			rtn += "[EnDay] = " + this.EnDay.ToString() + Environment.NewLine;
			rtn += "[CnYear] = " + this.CnYear.ToString() + Environment.NewLine;
			rtn += "[CnMonth] = " + this.CnMonth.ToString() + Environment.NewLine;
			rtn += "[CnDay] = " + this.CnDay.ToString() + Environment.NewLine;
			rtn += "[EnAmount] = " + this.EnAmount.ToString() + Environment.NewLine;
			rtn += "[RelaAmount] = " + this.RelaAmount.ToString() + Environment.NewLine;
			rtn += "[SumAmount] = " + this.SumAmount.ToString() + Environment.NewLine;
			rtn += "[CnAmount] = " + this.CnAmount.ToString() + Environment.NewLine;
			rtn += "[En01] = " + this.En01.ToString() + Environment.NewLine;
			rtn += "[En02] = " + this.En02.ToString() + Environment.NewLine;
			rtn += "[En03] = " + this.En03.ToString() + Environment.NewLine;
			rtn += "[En04] = " + this.En04.ToString() + Environment.NewLine;
			rtn += "[En05] = " + this.En05.ToString() + Environment.NewLine;
			rtn += "[En06] = " + this.En06.ToString() + Environment.NewLine;
			rtn += "[En07] = " + this.En07.ToString() + Environment.NewLine;
			rtn += "[En08] = " + this.En08.ToString() + Environment.NewLine;
			rtn += "[En09] = " + this.En09.ToString() + Environment.NewLine;
			rtn += "[En10] = " + this.En10.ToString() + Environment.NewLine;
			rtn += "[En11] = " + this.En11.ToString() + Environment.NewLine;
			rtn += "[En12] = " + this.En12.ToString() + Environment.NewLine;
			rtn += "[BillPassword] = " + this.BillPassword.ToString() + Environment.NewLine;
			rtn += "[CustID] = " + this.CustID.ToString() + Environment.NewLine;
			rtn += "[BillSource] = " + this.BillSource.ToString() + Environment.NewLine;
			rtn += "[BillUse] = " + this.BillUse.ToString() + Environment.NewLine;
			rtn += "[SendDept] = " + this.SendDept.ToString() + Environment.NewLine;
			rtn += "[SendName] = " + this.SendName.ToString() + Environment.NewLine;
			rtn += "[SendBank] = " + this.SendBank.ToString() + Environment.NewLine;
			rtn += "[SendAccount] = " + this.SendAccount.ToString() + Environment.NewLine;
			rtn += "[SendShort] = " + this.SendShort.ToString() + Environment.NewLine;
			rtn += "[GetDept] = " + this.GetDept.ToString() + Environment.NewLine;
			rtn += "[GetName] = " + this.GetName.ToString() + Environment.NewLine;
			rtn += "[GetBank] = " + this.GetBank.ToString() + Environment.NewLine;
			rtn += "[GetAccount] = " + this.GetAccount.ToString() + Environment.NewLine;
			rtn += "[GetShort] = " + this.GetShort.ToString() + Environment.NewLine;
			rtn += "[Re01] = " + this.Re01.ToString() + Environment.NewLine;
			rtn += "[Re02] = " + this.Re02.ToString() + Environment.NewLine;
			rtn += "[Re03] = " + this.Re03.ToString() + Environment.NewLine;
			rtn += "[Re04] = " + this.Re04.ToString() + Environment.NewLine;
			rtn += "[Re05] = " + this.Re05.ToString() + Environment.NewLine;
			rtn += "[Re06] = " + this.Re06.ToString() + Environment.NewLine;
			rtn += "[Re07] = " + this.Re07.ToString() + Environment.NewLine;
			rtn += "[Re08] = " + this.Re08.ToString() + Environment.NewLine;
			rtn += "[Re09] = " + this.Re09.ToString() + Environment.NewLine;
			rtn += "[Re10] = " + this.Re10.ToString() + Environment.NewLine;
			rtn += "[Re11] = " + this.Re11.ToString() + Environment.NewLine;
			rtn += "[Re12] = " + this.Re12.ToString() + Environment.NewLine;
			rtn += "[Re13] = " + this.Re13.ToString() + Environment.NewLine;
			rtn += "[Re14] = " + this.Re14.ToString() + Environment.NewLine;
			rtn += "[Re15] = " + this.Re15.ToString() + Environment.NewLine;
			rtn += "[Re16] = " + this.Re16.ToString() + Environment.NewLine;
			rtn += "[Re17] = " + this.Re17.ToString() + Environment.NewLine;
			rtn += "[Re18] = " + this.Re18.ToString() + Environment.NewLine;
			rtn += "[Re19] = " + this.Re19.ToString() + Environment.NewLine;
			rtn += "[Re20] = " + this.Re20.ToString() + Environment.NewLine;
      rtn += "[CancelType] = " + this.CancelType.ToString() + Environment.NewLine;
      rtn += "[CancelTypeName] = " + this.CancelTypeName.ToString() + Environment.NewLine;

			return rtn;
		}
	}
}