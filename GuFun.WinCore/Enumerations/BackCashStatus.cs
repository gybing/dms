using System;

namespace GuFun.WinCore
{
  public enum BackCashStatus
  {
    Apply = 1,
    DeptChecked,   // 2
    DeptUnChecked, // 3
    DeptFinish,    // 4
    Checked,       // 5
    UnChecked,     // 6
    CheckFinish,   // 7
    Audited,       // 8
    UnAudited,     // 9
    Dealing,       // 10
    Finish,        // 11
    Fault,         // 12
    Confirm
  }
}
