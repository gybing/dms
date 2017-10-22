using System;

namespace GuFun.WinCore
{
	public class BillAuditBatchDetail
	{

		#region Properties

		private int _auditBatch;

		public int AuditBatch
		{
			get { return _auditBatch; }
			set { _auditBatch = value; }
		}

		private int _abSerial;

		public int AbSerial
		{
			get { return _abSerial; }
			set { _abSerial = value; }
		}

		private short _abType;

		public short AbType
		{
			get { return _abType; }
			set { _abType = value; }
		}

    private string _abTypeName;

    public string AbTypeName
    {
      get { return _abTypeName; }
      set { _abTypeName = value; }
    }

		private DateTime _abDate;

		public DateTime AbDate
		{
			get { return _abDate; }
			set { _abDate = value; }
		}

		private string _abYear;

		public string AbYear
		{
			get { return _abYear; }
			set { _abYear = value; }
		}

		private double _enAmount;

		public double EnAmount
		{
			get { return _enAmount; }
			set { _enAmount = value; }
		}

		private double _sumAmount;

		public double SumAmount
		{
			get { return _sumAmount; }
			set { _sumAmount = value; }
		}

		private string _actBillNo;

		public string ActBillNo
		{
			get { return _actBillNo; }
			set { _actBillNo = value; }
		}

		#endregion Properties

		public BillAuditBatchDetail()
		{
			_auditBatch = 0;
			_abSerial = 0;
			_abType = 0;
			_abDate = DateTime.MinValue;
			_abYear = String.Empty;
			_enAmount = 0;
			_sumAmount = 0;
			_actBillNo = String.Empty;
      _abTypeName = String.Empty;
		}

		public string Debug()
		{
			string rtn = String.Empty;
			rtn += "[AuditBatch] = " + this.AuditBatch.ToString() + Environment.NewLine;
			rtn += "[AbSerial] = " + this.AbSerial.ToString() + Environment.NewLine;
			rtn += "[AbType] = " + this.AbType.ToString() + Environment.NewLine;
			rtn += "[AbDate] = " + this.AbDate.ToString() + Environment.NewLine;
			rtn += "[AbYear] = " + this.AbYear.ToString() + Environment.NewLine;
			rtn += "[EnAmount] = " + this.EnAmount.ToString() + Environment.NewLine;
			rtn += "[SumAmount] = " + this.SumAmount.ToString() + Environment.NewLine;
			rtn += "[ActBillNo] = " + this.ActBillNo.ToString() + Environment.NewLine;
			return rtn;
		}
	}
}