using System;

namespace GuFun.WinCore
{
  public class ExcelChangeData
  {
    private int _changeID;

    public int ChangeID
    {
      get { return _changeID; }
      set { _changeID = value; }
    }

    private int _billNo;

    public int BillNo
    {
      get { return _billNo; }
      set { _billNo = value; }
    }

    public ExcelChangeData()
    {
      _changeID = 0;
      _billNo = 0;
    }
  }
}
