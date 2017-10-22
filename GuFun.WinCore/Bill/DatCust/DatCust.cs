using System;

namespace GuFun.WinCore
{
  public class DatCust
  {
    public int relaid { get; set; }
    public int billno { get; set; }
    public string trankey { get; set; }
    public string manid { get; set; }
    public DateTime reladate { get; set; }

    public DatCust()
		{
			this.manid = String.Empty;
      this.relaid = 0;
      this.billno = 0;
      this.trankey = String.Empty;
      this.reladate = DateTime.Now;
		}

		public string Debug()
		{
			string rtn = String.Empty;

			return rtn;
		}

  }
}
