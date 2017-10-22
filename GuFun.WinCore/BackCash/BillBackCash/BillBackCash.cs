using System;

namespace GuFun.WinCore
{
  public class BillBackCash
  {

    #region Properties

    private string _tranID;

    public string TranID
    {
      get { return _tranID; }
      set { _tranID = value; }
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

    private double _backCashCash;

    public double BackCashCash
    {
      get { return _backCashCash; }
      set { _backCashCash = value; }
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

    private short _backCashStatus;

    public short BackCashStatus
    {
      get { return _backCashStatus; }
      set { _backCashStatus = value; }
    }

    private string _backCashStatusName;

    public string BackCashStatusName
    {
      get { return _backCashStatusName; }
      set { _backCashStatusName = value; }
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

    private string _nowStatusName;

    public string NowStatusName
    {
      get { return _nowStatusName; }
      set { _nowStatusName = value; }
    }

    
    #endregion Properties

    public BillBackCash()
    {
      _applyDate = DateTime.MinValue;
      _applyDept = String.Empty;
      _applyDesc = String.Empty;
      _applyMan = String.Empty;
      _applyManName = String.Empty;
      _backCashCash = 0;
      _backCashFlow = 0;
      _backCashFlowName = String.Empty;
      _backCashStatus = 0;
      _backCashStatusName = String.Empty;
      _deptName = String.Empty;
      _nextFlow = 0;
      _nextMan = String.Empty;
      _nextManName = String.Empty;
      _nowDate = DateTime.MinValue;
      _nowDesc = String.Empty;
      _nowMan = String.Empty;
      _nowManName = String.Empty;
      _nowStatus = 0;
      _nowStatusName = String.Empty;
      _serialID = 0;
      _tranID = String.Empty;
    }


  }
}