using System;
using System.Collections;

namespace GuFun.WinCore
{
	public class BillLines : CollectionBase
	{
		public BillLines()
			: base()
		{
		}

		public BillLine this[int index]
		{
			get { return (BillLine)base.List[index]; }
			set { base.List[index] = (BillLine)value; }
		}

		public void Add(BillLine item)
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
