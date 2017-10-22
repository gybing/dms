using System;

namespace GuFun.WinCore
{
	public class BillAuthDetail
	{

		#region Properties

		private int _authID;

		public int AuthID
		{
			get { return _authID; }
			set { _authID = value; }
		}

		private string _manID;

		public string ManID
		{
			get { return _manID; }
			set { _manID = value; }
		}

		private string _manName;

		public string ManName
		{
			get { return _manName; }
			set { _manName = value; }
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

		private DateTime _authDate;

		public DateTime AuthDate
		{
			get { return _authDate; }
			set { _authDate = value; }
		}

		private string _authMan;

		public string AuthMan
		{
			get { return _authMan; }
			set { _authMan = value; }
		}

		private string _authManName;

		public string AuthManName
		{
      get { return _authManName; }
      set { _authManName = value; }
		}

		private string _authInfo;

		public string AuthInfo
		{
			get { return _authInfo; }
			set { _authInfo = value; }
		}

		#endregion Properties

		public BillAuthDetail()
		{
			_authID = 0;
			_manID = String.Empty;
			_manName = String.Empty;
			_deptID = String.Empty;
			_deptName = String.Empty;
			_authDate = DateTime.MinValue;
			_authMan = String.Empty;
      _authManName = String.Empty;
			_authInfo = String.Empty;
		}

		public string Debug()
		{
			string rtn = String.Empty;
			rtn += "[AuthID] = " + this.AuthID.ToString() + Environment.NewLine;
			rtn += "[ManID] = " + this.ManID.ToString() + Environment.NewLine;
			rtn += "[ManName] = " + this.ManName.ToString() + Environment.NewLine;
			rtn += "[DeptID] = " + this.DeptID.ToString() + Environment.NewLine;
			rtn += "[DeptName] = " + this.DeptName.ToString() + Environment.NewLine;
			rtn += "[AuthDate] = " + this.AuthDate.ToString() + Environment.NewLine;
			rtn += "[AuthMan] = " + this.AuthMan.ToString() + Environment.NewLine;
			rtn += "[ManName] = " + this.AuthManName.ToString() + Environment.NewLine;
			rtn += "[AuthInfo] = " + this.AuthInfo.ToString() + Environment.NewLine;
			return rtn;
		}
	}
}