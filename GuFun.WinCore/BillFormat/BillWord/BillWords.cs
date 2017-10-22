using System;
using System.Collections;

namespace GuFun.WinCore
{
	public class BillWords : CollectionBase
	{
		public BillWords()
			: base()
		{
		}

		public BillWord this[int index]
		{
			get { return (BillWord)base.List[index]; }
			set { base.List[index] = (BillWord)value; }
		}

		public void Add(BillWord item)
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
