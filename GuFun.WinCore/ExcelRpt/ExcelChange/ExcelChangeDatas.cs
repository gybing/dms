using System;
using System.Collections;

namespace GuFun.WinCore
{
  public class ExcelChangeDatas : CollectionBase
  {
    public ExcelChangeDatas()
      : base()
    {
    }

    public ExcelChangeData this[int index]
    {
      get { return (ExcelChangeData)base.List[index]; }
      set { base.List[index] = (ExcelChangeData)value; }
    }

    public void Add(ExcelChangeData item)
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
