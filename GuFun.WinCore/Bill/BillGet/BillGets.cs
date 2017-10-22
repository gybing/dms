using System;
using System.Collections;

namespace GuFun.WinCore
{
	public class BillGets : CollectionBase
	{
		public BillGets()
			: base()
		{
		}

		public BillGet this[int index]
		{
			get { return (BillGet)base.List[index]; }
			set { base.List[index] = (BillGet)value; }
		}

		public void Add(BillGet item)
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

    public BillGet this[string index]
    {
      get
      {
        foreach(BillGet item in this.List)
        {
          if (item.ActBillNo == index)
            return item;
        }

        return null;
      }
    }
	}
}
