using System;
using System.Collections;
using System.Text;

namespace GuFun.WinCore
{
  public class ImportItems :CollectionBase
  {
    public ImportItems()
			: base()
		{
		}

    public ImportItem this[int index]
		{
      get { return (ImportItem)base.List[index]; }
      set { base.List[index] = (ImportItem)value; }
		}

    public void Add(ImportItem item)
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

