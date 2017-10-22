using System;

namespace GuFun.WinCore
{
  public class BankAcceptData
  {
    private int _acceptID;

    public int AcceptID
    {
      get { return _acceptID; }
      set { _acceptID = value; }
    }

    private int _billNo;

    public int BillNo
    {
      get { return _billNo; }
      set { _billNo = value; }
    }

    public BankAcceptData()
    {
      _acceptID = 0;
      _billNo = 0;
    }
  }
}
