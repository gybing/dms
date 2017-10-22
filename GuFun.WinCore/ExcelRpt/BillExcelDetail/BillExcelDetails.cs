using System;
using System.Collections;

namespace GuFun.WinCore
{
  public class BillExcelDetails : CollectionBase
  {
    public BillExcelDetails()
      : base()
    {
    }

    public BillExcelDetail this[int index]
    {
      get { return (BillExcelDetail)base.List[index]; }
      set { base.List[index] = (BillExcelDetail)value; }
    }

    public void Add(BillExcelDetail item)
    {
      base.List.Add(item);

    }

    public void Remove(int index)
    {
      if (index > -1 && index < base.Count)
      {
        base.List.RemoveAt(index);
      }
    }
  }
}
