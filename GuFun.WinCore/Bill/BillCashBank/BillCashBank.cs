using System;
using System.Collections;

namespace GuFun.WinCore
{
	public class BillCashBank
	{

		#region Properties

		private int _sendID;

		public int SendID
		{
			get { return _sendID; }
			set { _sendID = value; }
		}

		private string _deptID;

		public string DeptID
		{
			get { return _deptID; }
			set { _deptID = value; }
		}

		private string _deptName;

		public string DeptName
		{
			get { return _deptName; }
			set { _deptName = value; }
		}

		private string _manID;

		public string ManID
		{
			get { return _manID; }
			set { _manID = value; }
		}

		private DateTime _sendDate;

		public DateTime SendDate
		{
			get { return _sendDate; }
			set { _sendDate = value; }
		}

		private string _workDate;

		public string WorkDate
		{
			get { return _workDate; }
			set { _workDate = value; }
		}

    private ArrayList _billNos;

    public ArrayList BillNo
    {
      get
      {
        if (_billNos == null)
          _billNos = new ArrayList();

        return _billNos;
      }
    }

		#endregion Properties

		public BillCashBank()
		{
			_sendID = 0;
			_deptID = String.Empty;
			_deptName = String.Empty;
			_manID = String.Empty;
			_sendDate = DateTime.MinValue;
			_workDate = String.Empty;
      
		}

		public string Debug()
		{
			string rtn = String.Empty;
			rtn += "[SendID] = " + this.SendID.ToString() + Environment.NewLine;
			rtn += "[DeptID] = " + this.DeptID.ToString() + Environment.NewLine;
			rtn += "[DeptName] = " + this.DeptName.ToString() + Environment.NewLine;
			rtn += "[ManID] = " + this.ManID.ToString() + Environment.NewLine;
			rtn += "[SendDate] = " + this.SendDate.ToString() + Environment.NewLine;
			rtn += "[WorkDate] = " + this.WorkDate.ToString() + Environment.NewLine;
			return rtn;
		}
	}
}