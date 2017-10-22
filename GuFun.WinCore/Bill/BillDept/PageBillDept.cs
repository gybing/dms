using System;

namespace GuFun.WinCore
{
  public class PageBillDept
  {
    private string _deptID;

    public string DeptID
    {
      get { return _deptID; }
      set { _deptID = value; }
    }

    private string _search;

    public string Search
    {
      get { return _search; }
      set { _search = value; }
    }

    private int _pageRow;

    public int PageRow
    {
      get { return _pageRow; }
      set { _pageRow = value; }
    }

    private int _firstCount;

    public int FirstCount
    {
      get { return _firstCount; }
      set { _firstCount = value; }
    }

    private int _allCount;

    public int AllCount
    {
      get { return _allCount; }
      set { _allCount = value; }
    }

    public PageBillDept()
    {
      _allCount = 0;
      _deptID = String.Empty;
      _search = String.Empty;
      _pageRow = 0;
      _firstCount = 0;
    }
  }
}
