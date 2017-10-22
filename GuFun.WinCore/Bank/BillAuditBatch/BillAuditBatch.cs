using System;

namespace GuFun.WinCore
{
	public class BillAuditBatch
	{

		#region Properties

		private int _auditBatch;

		public int AuditBatch
		{
			get { return _auditBatch; }
			set { _auditBatch = value; }
		}

		private short _bankID;

		public short BankID
		{
			get { return _bankID; }
			set { _bankID = value; }
		}

		private DateTime _recoDate;

		public DateTime RecoDate
		{
			get { return _recoDate; }
			set { _recoDate = value; }
		}

		private string _recoMan;

		public string RecoMan
		{
			get { return _recoMan; }
			set { _recoMan = value; }
		}

		private string _manName;

		public string ManName
		{
			get { return _manName; }
			set { _manName = value; }
		}

		private string _auditDate;

		public string AuditDate
		{
			get { return _auditDate; }
			set { _auditDate = value; }
		}

    private BillAuditBatchDetails _items;

    public BillAuditBatchDetails Items
    {
      get
      {
        if (_items == null)
          _items = new BillAuditBatchDetails();

        return _items;
      }
    }

    private string _bankName;

    public string BankName
    {
      get { return _bankName; }
      set { _bankName = value; }
    }
		#endregion Properties

		public BillAuditBatch()
		{
			_auditBatch = 0;
			_bankID = 0;
			_recoDate = DateTime.MinValue;
			_recoMan = String.Empty;
			_manName = String.Empty;
			_auditDate = String.Empty;
      _bankName = String.Empty;
		}

		public string Debug()
		{
			string rtn = String.Empty;
			rtn += "[AuditBatch] = " + this.AuditBatch.ToString() + Environment.NewLine;
			rtn += "[BankID] = " + this.BankID.ToString() + Environment.NewLine;
			rtn += "[RecoDate] = " + this.RecoDate.ToString() + Environment.NewLine;
			rtn += "[RecoMan] = " + this.RecoMan.ToString() + Environment.NewLine;
			rtn += "[ManName] = " + this.ManName.ToString() + Environment.NewLine;
			rtn += "[AuditDate] = " + this.AuditDate.ToString() + Environment.NewLine;
			return rtn;
		}
	}
}