using System;

namespace GuFun.WinCore
{
  public class ImportItem
  {
    private int _id;

    public int ID
    {
      get { return _id; }
      set { _id = value; }
    }

    private short _type;

    public short Type
    {
      get { return _type; }
      set { _type = value; }
    }

    private string _actBillNo;

    public string ActBillNo
    {
      get { return _actBillNo; }
      set { _actBillNo = value; }
    }

    private double _amount;

    public double Amount
    {
      get { return _amount; }
      set { _amount = value; }
    }

    private double _sumAmount;

    public double SumAmount
    {
      get { return _sumAmount; }
      set { _sumAmount = value; }
    }

    private DateTime _date;

    public DateTime Date
    {
      get { return _date; }
      set { _date = value; }
    }

    public ImportItem()
    {
      _id = 0;
      _type = 0;
      _actBillNo = String.Empty;
      _amount = 0;
      _sumAmount = 0;
      _date = DateTime.MinValue;
    }
  }
}
