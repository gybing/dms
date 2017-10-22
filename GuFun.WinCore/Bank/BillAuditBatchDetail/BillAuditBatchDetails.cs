using System;
using System.Collections;

namespace GuFun.WinCore
{
	public class BillAuditBatchDetails : CollectionBase
	{
		public BillAuditBatchDetails()
			: base()
		{
		}

		public BillAuditBatchDetail this[int index]
		{
			get { return (BillAuditBatchDetail)base.List[index]; }
			set { base.List[index] = (BillAuditBatchDetail)value; }
		}

		public void Add(BillAuditBatchDetail item)
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
