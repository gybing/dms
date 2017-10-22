using System;

namespace GuFun.WinCore
{
  public class BillBackType
  {
    private short _backType;

    public short BackType
    {
      get { return _backType; }
      set { _backType = value; }
    }

    private string _backTypeName;

    public string BackTypeName
    {
      get { return _backTypeName; }
      set { _backTypeName = value; }
    }

    private short _feeBackModel;

    public short FeeBackModel
    {
      get { return _feeBackModel; }
      set { _feeBackModel = value; }
    }

    private string _feeBackModelName;

    public string FeeBackModelName
    {
      get { return _feeBackModelName; }
      set { _feeBackModelName = value; }
    }

    public BillBackType()
    {
      _feeBackModelName = String.Empty;
      _feeBackModel = 0;
      _backTypeName = String.Empty;
      _backType = 0;
    }
  }
}
