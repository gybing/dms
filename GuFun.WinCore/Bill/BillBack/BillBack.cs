using System;

namespace GuFun.WinCore
{
	public class BillBack
	{

		#region Properties

		private int _billNo;

		public int BillNo
		{
			get { return _billNo; }
			set { _billNo = value; }
		}

		private DateTime _backDate;

		public DateTime BackDate
		{
			get { return _backDate; }
			set { _backDate = value; }
		}

		private string _backReason;

		public string BackReason
		{
			get { return _backReason; }
			set { _backReason = value; }
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

		private DateTime _recoDate;

		public DateTime RecoDate
		{
			get { return _recoDate; }
			set { _recoDate = value; }
		}

		private DateTime _feedbackDate;

		public DateTime FeedbackDate
		{
			get { return _feedbackDate; }
			set { _feedbackDate = value; }
		}

		private bool _isFeedback;

		public bool IsFeedback
		{
			get { return _isFeedback; }
			set { _isFeedback = value; }
		}

    private BillDetail _detail;

    public BillDetail Detail
    {
      get { return _detail; }
      set { _detail = value; }
    }

    private string _feedBackInfo;

    public string FeedBackInfo
    {
      get { return _feedBackInfo; }
      set { _feedBackInfo = value; }
    }

    private string _newBillNo;

    public string NewBillNo
    {
      get { return _newBillNo; }
      set { _newBillNo = value; }
    }

    private short _finishType;

    public short FinishType
    {
      get { return _finishType; }
      set { _finishType = value; }
    }

    private DateTime _finishDate;

    public DateTime FinishDate
    {
      get { return _finishDate; }
      set { _finishDate = value; }
    }

    private string _finishTypeName;

    public string FinishTypeName
    {
      get { return _finishTypeName; }
      set { _finishTypeName = value; }
    }

		#endregion Properties

		public BillBack()
		{
			_billNo = 0;
			_backDate = DateTime.MinValue;
			_backReason = String.Empty;
			_recoMan = String.Empty;
			_manName = String.Empty;
			_recoDate = DateTime.MinValue;
			_feedbackDate = DateTime.MinValue;
			_isFeedback = false;
      _feedBackInfo = String.Empty;
      _newBillNo = String.Empty;
      _finishType = 0;
      _finishTypeName = String.Empty;
      _finishDate = DateTime.MinValue;
		}

		public string Debug()
		{
			string rtn = String.Empty;
			rtn += "[BillNo] = " + this.BillNo.ToString() + Environment.NewLine;
			rtn += "[BackDate] = " + this.BackDate.ToString() + Environment.NewLine;
			rtn += "[BackReason] = " + this.BackReason.ToString() + Environment.NewLine;
			rtn += "[RecoMan] = " + this.RecoMan.ToString() + Environment.NewLine;
			rtn += "[ManName] = " + this.ManName.ToString() + Environment.NewLine;
			rtn += "[RecoDate] = " + this.RecoDate.ToString() + Environment.NewLine;
			rtn += "[FeedbackDate] = " + this.FeedbackDate.ToString() + Environment.NewLine;
			rtn += "[IsFeedback] = " + this.IsFeedback.ToString() + Environment.NewLine;
			return rtn;
		}
	}
}