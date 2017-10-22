using System;

namespace GuFun.WinCore
{
	public class BillGet
	{

		#region Properties

		private int _billNo;

		public int BillNo
		{
			get { return _billNo; }
			set { _billNo = value; }
		}

		private string _actBillNo;

		public string ActBillNo
		{
			get { return _actBillNo; }
			set { _actBillNo = value; }
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

		private DateTime _getDate;

		public DateTime GetDate
		{
			get { return _getDate; }
			set { _getDate = value; }
		}

		private bool _isGet;

		public bool IsGet
		{
			get { return _isGet; }
			set { _isGet = value; }
		}

    private short _billStatus;

    public short BillStatus
    {
      get { return _billStatus; }
      set { _billStatus = value; }
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

    private string _beforeMan;

    public string BeforeMan
    {
      get { return _beforeMan; }
      set { _beforeMan = value; }
    }

    private string _beforeManName;

    public string BeforeManName
    {
      get { return _beforeManName; }
      set { _beforeManName = value; }
    }

    private string _deptID;

    public string DeptID
    {
      get { return _deptID; }
      set { _deptID = value; }
    }

    private string _beforeDept;

    public string BeforeDept
    {
      get { return _beforeDept; }
      set { _beforeDept = value; }
    }

    private short _billNowStatus;

    public short BillNowStatus
    {
      get { return _billNowStatus; }
      set { _billNowStatus = value; }
    }

    private DateTime _sendDate;

    public DateTime SendDate
    {
      get { return _sendDate; }
      set { _sendDate = value; }
    }

		#endregion Properties

		public BillGet()
		{
			_billNo = 0;
			_actBillNo = String.Empty;
			_manID = String.Empty;
			_manName = String.Empty;
			_getDate = DateTime.MinValue;
			_isGet = false;
      _billStatus = 0;
      _billType = 0;
      _billTypeName = String.Empty;
      _bankID = 0;
      _bankName = String.Empty;
      _operType = 0;
      _operTypeName = String.Empty;
      _enDate = String.Empty;
      _enYearMonth = String.Empty;
      _enAmount = 0;
      _relaAmount = 0;
      _sumAmount = 0;
      _beforeDept = String.Empty;
      _beforeMan = String.Empty;
      _beforeManName = String.Empty;
      _deptID = String.Empty;
      _billNowStatus = 0;
      _sendDate = DateTime.MinValue;
		}

		public string Debug()
		{
			string rtn = String.Empty;
			rtn += "[BillNo] = " + this.BillNo.ToString() + Environment.NewLine;
			rtn += "[ActBillNo] = " + this.ActBillNo.ToString() + Environment.NewLine;
			rtn += "[ManID] = " + this.ManID.ToString() + Environment.NewLine;
			rtn += "[ManName] = " + this.ManName.ToString() + Environment.NewLine;
			rtn += "[GetDate] = " + this.GetDate.ToString() + Environment.NewLine;
			rtn += "[IsGet] = " + this.IsGet.ToString() + Environment.NewLine;
			return rtn;
		}
	}
}