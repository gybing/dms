using System;
using System.Data;

namespace GuFun.WinCore
{
  public class BillExcel
  {

    #region Properties

    private int _billNo;

    public int BillNo
    {
      get { return _billNo; }
      set { _billNo = value; }
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

    private string _deptID;

    public string DeptID
    {
      get { return _deptID; }
      set { _deptID = value; }
    }

    private DateTime _billDate;

    public DateTime BillDate
    {
      get { return _billDate; }
      set { _billDate = value; }
    }

    private short _excelStatus;

    public short ExcelStatus
    {
      get { return _excelStatus; }
      set { _excelStatus = value; }
    }

    private short _excelNowStatus;

    public short ExcelNowStatus
    {
      get { return _excelNowStatus; }
      set { _excelNowStatus = value; }
    }

    private bool _isPrint;

    public bool IsPrint
    {
      get { return _isPrint; }
      set { _isPrint = value; }
    }

    private string _fileName;

    public string FileName
    {
      get { return _fileName; }
      set { _fileName = value; }
    }

    #endregion Properties

    public BillExcel()
    {
      InitBillExcel();
    }

    public void InitBillExcel()
    {
      _billNo = 0;
      _billMan = String.Empty;
      _billManName = String.Empty;
      _deptID = String.Empty;
      _billDate = DateTime.MinValue;
      _excelStatus = 0;
      _excelNowStatus = 0;
      _isPrint = false;
      _fileName = String.Empty;

    }

    public string Debug()
    {
      string rtn = String.Empty;
      return rtn;
    }
  }
}