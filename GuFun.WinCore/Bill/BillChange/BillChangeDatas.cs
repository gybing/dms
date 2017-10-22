using System;
using System.Collections;

namespace GuFun.WinCore
{
  public class BillChangeDatas : CollectionBase
  {
    public BillChangeDatas()
      : base()
    {
    }

    public BillChangeData this[int index]
    {
      get { return (BillChangeData)base.List[index]; }
      set { base.List[index] = (BillChangeData)value; }
    }

    public void Add(BillChangeData item)
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
