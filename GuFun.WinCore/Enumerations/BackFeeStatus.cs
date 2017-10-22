using System;

namespace GuFun.WinCore
{
  public enum BackFeeStatus
  {
    Apply = 1,
    DeptChecked,   // 2
    DeptUnChecked, // 3
    DeptFinish,    // 4
    Direct,        // 5
    Checked,       // 6
    UnChecked,     // 7
    CheckFinish,   // 8
    Audited,       // 9
    UnAudited,     // 10
    Dealing,       // 11
    Finish,        // 12
    Fault,         // 13
    Modify,        // 14
    Back,          // 15
    DirectFinish,   // 16
    ZhuangChecked,
    ZhuangUnChecked,
    BanZuZhangQueRen,
    BanZuZhangUnQueRen
  }
}
