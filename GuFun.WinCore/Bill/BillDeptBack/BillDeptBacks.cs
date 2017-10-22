using System;
using System.Collections;

namespace GuFun.WinCore
{
  public class BillDeptBacks : CollectionBase
  {
    public BillDeptBacks()
      : base()
    {
    }

    public BillDeptBack this[int index]
    {
      get { return (BillDeptBack)base.List[index]; }
      set { base.List[index] = (BillDeptBack)value; }
    }

    public void Add(BillDeptBack item)
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
