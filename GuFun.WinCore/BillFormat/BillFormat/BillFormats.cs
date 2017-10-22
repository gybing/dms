using System;
using System.Collections;
using System.Text;

namespace GuFun.WinCore
{
  public class BillFormats : CollectionBase
  {
    public BillFormats()
      : base()
    {
    }

    public BillFormat this[int index]
    {
      get { return (BillFormat)base.List[index]; }
      set { base.List[index] = (BillFormat)value; }
    }

    public void Add(BillFormat item)
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

    public BillFormat FindFormat(short type, short bank, bool ishalf)
    {
      foreach (BillFormat item in this.List)
      {
        if ((item.BillType == type) && (item.BankID == bank) && (item.IsHalf = ishalf))
        {
          return item;
        }
      }

      return null;
    }
  }
}
