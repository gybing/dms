using System;
using System.Collections;

namespace GuFun.WinCore
{
	public class BillMains : CollectionBase
	{
		public BillMains()
			: base()
		{
		}

		public BillMain this[int index]
		{
			get { return (BillMain)base.List[index]; }
			set { base.List[index] = (BillMain)value; }
		}

		public void Add(BillMain item)
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
