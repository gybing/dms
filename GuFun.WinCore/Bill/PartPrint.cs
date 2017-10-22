using System;

namespace GuFun.WinCore
{
  public class PartPrint
  {
    private bool _isFullName;

    public bool IsFullName
    {
      get { return _isFullName; }
      set { _isFullName = value; }
    }

    private bool _isAccount;

    public bool IsAccount
    {
      get { return _isAccount; }
      set { _isAccount = value; }
    }

    private bool _isShortName;

    public bool IsShortName
    {
      get { return _isShortName; }
      set { _isShortName = value; }
    }

    private bool _isCnAmount;

    public bool IsCnAmount
    {
      get { return _isCnAmount; }
      set { _isCnAmount = value; }
    }

    private bool _isEnAmount;

    public bool IsEnAmount
    {
      get { return _isEnAmount; }
      set { _isEnAmount = value; }
    }

    private bool _isUse;

    public bool IsUse
    {
      get { return _isUse; }
      set { _isUse = value; }
    }

    private int _position;

    public int Position
    {
      get { return _position; }
      set { _position = value; }
    }

    private bool _isHalf;

    public bool IsHalf
    {
      get { return _isHalf; }
      set { _isHalf = value; }
    }

    private bool _isCust;

    public bool IsCust
    {
      get { return _isCust; }
      set { _isCust = value; }
    }

    private bool _isBillNo;

    public bool IsBillNo
    {
      get { return _isBillNo; }
      set { _isBillNo = value; }
    }

    private bool _isCnDate;

    public bool IsCnDate
    {
      get { return _isCnDate; }
      set { _isCnDate = value; }
    }

    private bool _isEnDate;

    public bool IsEnDate
    {
      get { return _isEnDate; }
      set { _isEnDate = value; }
    }

    public PartPrint()
    {
      _position = 0;
      _isUse = true;
      _isShortName = true;
      _isFullName = true;
      _isEnAmount = true;
      _isCnAmount = true;
      _isAccount = true;
      _isHalf = false;
      _isCust = false;
      _isBillNo = false;
      _isEnDate = true;
      _isCnDate = true;
    }

    public void Init()
    {
      _position = 0;
      _isUse = true;
      _isShortName = true;
      _isFullName = true;
      _isEnAmount = true;
      _isCnAmount = true;
      _isAccount = true;
      _isHalf = false;
      _isCust = false;
      _isBillNo = false;
      _isCnDate = true;
      _isEnDate = true;
    }
  }
}
