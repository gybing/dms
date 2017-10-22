using System;

namespace GuFun.WinCore
{
  public class BackCashCheck
  {

    #region Properties

    private string _tranID;

    public string TranID
    {
      get { return _tranID; }
      set { _tranID = value; }
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

    private short _backCashStatus;

    public short BackCashStatus
    {
      get { return _backCashStatus; }
      set { _backCashStatus = value; }
    }

    private short _backCashFlow;

    public short BackCashFlow
    {
      get { return _backCashFlow; }
      set { _backCashFlow = value; }
    }

    private string _backCashFlowName;

    public string BackCashFlowName
    {
      get { return _backCashFlowName; }
      set { _backCashFlowName = value; }
    }

    private string _backCashStatusName;

    public string BackFeeStatusName
    {
      get { return _backCashStatusName; }
      set { _backCashStatusName = value; }
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

    #endregion Properties

    public BackCashCheck()
    {
      _tranID = String.Empty;
      _serialID = 0;
      _backCashStatusName = String.Empty;
      _backCashStatus = 0;
      _nowManName = String.Empty;
      _nowMan = String.Empty;
      _nowDesc = String.Empty;
      _nowDate = DateTime.MinValue;
      _auditMoney = 0;
      _backCashFlow = 0;
      _backCashFlowName = String.Empty;
      _deptName = String.Empty;
      _deptID = String.Empty;
    }


  }
}
