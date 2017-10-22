using System;

namespace GuFun.WinCore
{
	public class BillDayCash
	{

		#region Properties

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

		private double _dayCash;

		public double DayCash
		{
			get { return _dayCash; }
			set { _dayCash = value; }
		}

    private double _dayBank;

    public double DayBank
    {
      get { return _dayBank; }
      set { _dayBank = value; }
    }

    private double _dayAmount;

    public double DayAmount
    {
      get { return _dayAmount; }
      set { _dayAmount = value; }
    }

    private double _dayNonow;

    public double DayNonow
    {
      get { return _dayNonow; }
      set { _dayNonow = value; }
    }

    private double _dayError;

    public double DayError
    {
      get { return _dayError; }
      set { _dayError = value; }
    }

    private double _dayBack;

    public double DayBack
    {
      get { return _dayBack; }
      set { _dayBack = value; }
    }

    private double _dayAdjust;

    public double DayAdjust
    {
      get { return _dayAdjust; }
      set { _dayAdjust = value; }
    }

    private double _dayRela;

    public double DayRela
    {
      get { return _dayRela; }
      set { _dayRela = value; }
    }

    private double _backCash;

    public double BackCash
    {
      get { return _backCash; }
      set { _backCash = value; }
    }

    private double _dayLast;

    public double DayLast
    {
      get { return _dayLast; }
      set { _dayLast = value; }
    }

    private double _beforeCash;

    public double BeforeCash
    {
      get { return _beforeCash; }
      set { _beforeCash = value; }
    }

    private double _beforeBank;

    public double BeforeBank
    {
      get { return _beforeBank; }
      set { _beforeBank = value; }
    }

    private double _beforeAmount;

    public double BeforeAmount
    {
      get { return _beforeAmount; }
      set { _beforeAmount = value; }
    }

    private double _beforeNonow;

    public double BeforeNonow
    {
      get { return _beforeNonow; }
      set { _beforeNonow = value; }
    }

    private double _beforeError;

    public double BeforeError
    {
      get { return _beforeError; }
      set { _beforeError = value; }
    }

    private double _beforeBack;

    public double BeforeBack
    {
      get { return _beforeBack; }
      set { _beforeBack = value; }
    }

    private double _beforeRela;

    public double BeforeRela
    {
      get { return _beforeRela; }
      set { _beforeRela = value; }
    }

    private double _beforeAdjust;

    public double BeforeAdjust
    {
      get { return _beforeAdjust; }
      set { _beforeAdjust = value; }
    }

    private double _beforeBackCash;

    public double BeforeBackCash
    {
      get { return _beforeBackCash; }
      set { _beforeBackCash = value; }
    }

    private double _beforeLast;

    public double BeforeLast
    {
      get { return _beforeLast; }
      set { _beforeLast = value; }
    }

    

    private string _preWorkDate;

    public string PreWorkDate
    {
      get { return _preWorkDate; }
      set { _preWorkDate = value; }
    }

		private DateTime _recoDate;

		public DateTime RecoDate
		{
			get { return _recoDate; }
			set { _recoDate = value; }
		}

		private string _dayCashDay;

		public string DayCashDay
		{
			get { return _dayCashDay; }
			set { _dayCashDay = value; }
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

    private double _dayRepair;

    public double DayRepair
    {
      get { return _dayRepair; }
      set { _dayRepair = value; }
    }

    private double _dayReplace;

    public double DayReplace
    {
      get { return _dayReplace; }
      set { _dayReplace = value; }
    }

    private double _beforeRepair;

    public double BeforeRepair
    {
      get { return _beforeRepair; }
      set { _beforeRepair = value; }
    }

    private double _beforeReplace;

    public double BeforeReplace
    {
      get { return _beforeReplace; }
      set { _beforeReplace = value; }
    }

    private double _dayBackFee;

    public double DayBackFee
    {
      get { return _dayBackFee; }
      set { _dayBackFee = value; }
    }

    private double _beforeBackFee;

    public double BeforeBackFee
    {
      get { return _beforeBackFee; }
      set { _beforeBackFee = value; }
    }

    private double _dayDesign;

    public double DayDesign
    {
      get { return _dayDesign; }
      set { _dayDesign = value; }
    }

    private double _beforeDesign;

    public double BeforeDesign
    {
      get { return _beforeDesign; }
      set { _beforeDesign = value; }
    }

    private double _dayDirect;

    public double DayDirect
    {
      get { return _dayDirect; }
      set { _dayDirect = value; }
    }

    private double _beforeDirect;

    public double BeforeDirect
    {
      get { return _beforeDirect; }
      set { _beforeDirect = value; }
    }

    private double _dayApplyBack;

    public double DayApplyBack
    {
      get { return _dayApplyBack; }
      set { _dayApplyBack = value; }
    }

    private double _beforeApplyBack;

    public double BeforeApplyBack
    {
      get { return _beforeApplyBack; }
      set { _beforeApplyBack = value; }
    }

		#endregion Properties

		public BillDayCash()
		{
      _beforeApplyBack = 0;
      _dayApplyBack = 0;
      _dayDirect = 0;
      _beforeDirect = 0;
      _beforeDesign = 0;
      _dayDesign = 0;
      _dayBackFee = 0;
      _beforeBackFee = 0;
			_manID = String.Empty;
			_manName = String.Empty;
			_deptID = String.Empty;
			_deptName = String.Empty;
			_dayCash = 0;
			_recoDate = DateTime.MinValue;
			_dayCashDay = String.Empty;
			_recoMan = String.Empty;
			_recoManName = String.Empty;
      _beforeCash = 0;
      _preWorkDate = String.Empty;
      _dayAmount = 0;
      _dayBank = 0;
      _dayLast = 0;
      _backCash = 0;
      _beforeAmount = 0;
      _beforeBack = 0;
      _beforeLast = 0;
      _dayAdjust = 0;
      _dayNonow = 0;
      _dayRela = 0;
      _beforeNonow = 0;
      _beforeRela = 0;
      _dayError = 0;
      _dayBack = 0;
      _beforeBank = 0;
      _beforeError = 0;
      _beforeAdjust = 0;
      _beforeBackCash = 0;
      _beforeRepair = 0;
      _beforeReplace = 0;
      _dayRepair = 0;
      _dayReplace = 0;
		}

		public string Debug()
		{
			string rtn = String.Empty;
			rtn += "[ManID] = " + this.ManID.ToString() + Environment.NewLine;
			rtn += "[ManName] = " + this.ManName.ToString() + Environment.NewLine;
			rtn += "[DeptID] = " + this.DeptID.ToString() + Environment.NewLine;
			rtn += "[DeptName] = " + this.DeptName.ToString() + Environment.NewLine;
			rtn += "[DayCash] = " + this.DayCash.ToString() + Environment.NewLine;
			rtn += "[RecoDate] = " + this.RecoDate.ToString() + Environment.NewLine;
			rtn += "[DayCashDay] = " + this.DayCashDay.ToString() + Environment.NewLine;
			rtn += "[RecoMan] = " + this.RecoMan.ToString() + Environment.NewLine;
			rtn += "[RecoManName] = " + this.RecoManName.ToString() + Environment.NewLine;
			return rtn;
		}
	}
}