using System;
using System.Collections;

namespace GuFun.WinCore
{
  public class BankAcceptDatas : CollectionBase
  {
    public BankAcceptDatas()
      : base()
    {
    }

    public BankAcceptData this[int index]
    {
      get { return (BankAcceptData)base.List[index]; }
      set { base.List[index] = (BankAcceptData)value; }
    }

    public void Add(BankAcceptData item)
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
