using System;

namespace GuFun.WinCore
{
  public class BillDayBill
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

    public double cash00 { get; set; }
    public double cash01 { get; set; }
    public double cash02 { get; set; }
    public double cash03 { get; set; }
    public double bill00 { get; set; }
    public double bill01 { get; set; }
    public double bill02 { get; set; }

    public int cash00count { get; set; }
    public int cash01count { get; set; }
    public int cash02count { get; set; }
    public int cash03count { get; set; }
    public int bill00count { get; set; }
    public int bill01count { get; set; }
    public int bill02count { get; set; }

    public String dayremark { get; set; }

    #endregion Properties

    public BillDayBill()
		{
      _manID = String.Empty;
			_manName = String.Empty;
			_deptID = String.Empty;
			_deptName = String.Empty;
			_recoDate = DateTime.MinValue;
			_dayCashDay = String.Empty;
      this.cash00 = 0;
      this.cash01 = 0;
      this.cash02 = 0;
      this.cash03 = 0;
      this.bill00 = 0;
      this.bill01 = 0;
      this.bill02 = 0;
      this.cash00count = 0;
      this.cash01count = 0;
      this.cash02count = 0;
      this.cash03count = 0;
      this.bill00count = 0;
      this.bill01count = 0;
      this.bill02count = 0;
      this.dayremark = String.Empty;
		}

		public string Debug()
		{
			string rtn = String.Empty;

			return rtn;
		}
  }
}
