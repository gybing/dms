using System;
using System.Data;

namespace GuFun.WinCore
{
  public class BillExcelDetail
  {

    #region Properties

    private int _billNo;

    public int BillNo
    {
      get { return _billNo; }
      set { _billNo = value; }
    }

    private int _excelRow;

    public int ExcelRow
    {
      get { return _excelRow; }
      set { _excelRow = value; }
    }

    private string _excelCol1;

    public string ExcelCol1
    {
      get { return _excelCol1; }
      set { _excelCol1 = value; }
    }

    private string _excelCol2;

    public string ExcelCol2
    {
      get { return _excelCol2; }
      set { _excelCol2 = value; }
    }

    private string _excelCol3;

    public string ExcelCol3
    {
      get { return _excelCol3; }
      set { _excelCol3 = value; }
    }

    private string _excelCol4;

    public string ExcelCol4
    {
      get { return _excelCol4; }
      set { _excelCol4 = value; }
    }

    private string _excelCol5;

    public string ExcelCol5
    {
      get { return _excelCol5; }
      set { _excelCol5 = value; }
    }

    private string _excelCol6;

    public string ExcelCol6
    {
      get { return _excelCol6; }
      set { _excelCol6 = value; }
    }

    private string _excelCol7;

    public string ExcelCol7
    {
      get { return _excelCol7; }
      set { _excelCol7 = value; }
    }

    private string _excelCol8;

    public string ExcelCol8
    {
      get { return _excelCol8; }
      set { _excelCol8 = value; }
    }

    #endregion Properties

    public BillExcelDetail()
    {
      InitBillExcelDetail();
    }

    public void InitBillExcelDetail()
    {
      _billNo = 0;
      _excelRow = 0;
      _excelCol1 = String.Empty;
      _excelCol2 = String.Empty;
      _excelCol3 = String.Empty;
      _excelCol4 = String.Empty;
      _excelCol5 = String.Empty;
      _excelCol6 = String.Empty;
      _excelCol7 = String.Empty;
      _excelCol8 = String.Empty;

    }

    public string Debug()
    {
      string rtn = String.Empty;
      return rtn;
    }
  }
}