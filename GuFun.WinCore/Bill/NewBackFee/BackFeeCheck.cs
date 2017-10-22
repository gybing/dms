using System;

namespace GuFun.WinCore
{
  public class BackFeeCheck
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

    private short _backFeeStatus;

    public short BackFeeStatus
    {
      get { return _backFeeStatus; }
      set { _backFeeStatus = value; }
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

    private string _backFeeStatusName;

    public string BackFeeStatusName
    {
      get { return _backFeeStatusName; }
      set { _backFeeStatusName = value; }
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

    public BackFeeCheck()
    {
      _tranID = String.Empty;
      _serialID = 0;
      _backFeeStatusName = String.Empty;
      _backFeeStatus = 0;
      _nowManName = String.Empty;
      _nowMan = String.Empty;
      _nowDesc = String.Empty;
      _nowDate = DateTime.MinValue;
      _auditMoney = 0;
      _backFeeFlow = 0;
      _backFeeFlowName = String.Empty;
      _deptName = String.Empty;
      _deptID = String.Empty;
    }


  }
}
