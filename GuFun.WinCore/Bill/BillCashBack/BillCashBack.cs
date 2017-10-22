using System;

namespace GuFun.WinCore
{
  public class BillCashBack
  {

    #region Properties

    private int _billNo;

    public int BillNo
    {
      get { return _billNo; }
      set { _billNo = value; }
    }

    private DateTime _backDate;

    public DateTime BackDate
    {
      get { return _backDate; }
      set { _backDate = value; }
    }

    private string _backReason;

    public string BackReason
    {
      get { return _backReason; }
      set { _backReason = value; }
    }

    private string _recoMan;

    public string RecoMan
    {
      get { return _recoMan; }
      set { _recoMan = value; }
    }

    private string _manName;

    public string ManName
    {
      get { return _manName; }
      set { _manName = value; }
    }

    private DateTime _recoDate;

    public DateTime RecoDate
    {
      get { return _recoDate; }
      set { _recoDate = value; }
    }

    private BillDetail _detail;

    public BillDetail Detail
    {
      get { return _detail; }
      set { _detail = value; }
    }

    #endregion Properties

    public BillCashBack()
    {
      _billNo = 0;
      _backDate = DateTime.MinValue;
      _backReason = String.Empty;
      _recoMan = String.Empty;
      _manName = String.Empty;
      _recoDate = DateTime.MinValue;
    }

    public string Debug()
    {
      string rtn = String.Empty;
      rtn += "[BillNo] = " + this.BillNo.ToString() + Environment.NewLine;
      rtn += "[BackDate] = " + this.BackDate.ToString() + Environment.NewLine;
      rtn += "[BackReason] = " + this.BackReason.ToString() + Environment.NewLine;
      rtn += "[RecoMan] = " + this.RecoMan.ToString() + Environment.NewLine;
      rtn += "[ManName] = " + this.ManName.ToString() + Environment.NewLine;
      rtn += "[RecoDate] = " + this.RecoDate.ToString() + Environment.NewLine;
      return rtn;
    }
  }
}