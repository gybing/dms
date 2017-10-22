using System;
using System.Collections.Generic;
using System.Text;

namespace GuFun.WinCore
{
  public class DatBank
  {
    public string TranKey { get; set; }
    public string BankID { get; set; }
    public string BankName { get; set; }
    public string TranDate { get; set; }
    public string TranYear { get; set; }
    public string TranMonth { get; set; }
    public string TranTime { get; set; }
    public double TranDebit { get; set; }
    public double TranCredit { get; set; }
    public double TranBalance { get; set; }
    public string CheckStatus { get; set; }
    public string CheckStatusName { get; set; }
    public string CheckType { get; set; }
    public string CheckTypeName { get; set; }
    public string TranType { get; set; }
    public string TranAbs { get; set; }
    public string TranSerial { get; set; }
    public string BusType { get; set; }
    public string PayerBank { get; set; }
    public string PayerAccount { get; set; }
    public string PayeeName { get; set; }
    public string PayeeAccount { get; set; }
    public string BillType { get; set; }
    public string BillNo { get; set; }
    public string TranReamrk { get; set; }

    public DatBank()
    {
      this.TranKey =  String.Empty;
      this.BankID =  String.Empty;
      this.BankName =  String.Empty;
      this.TranDate =  String.Empty;
      this.TranYear =  String.Empty;
      this.TranMonth =  String.Empty;
      this.TranTime =  String.Empty;
      this.TranDebit =  0;
      this.TranCredit =  0;
      this.TranBalance =  0;
      this.CheckStatus =  String.Empty;
      this.CheckStatusName =  String.Empty;
      this.CheckType =  String.Empty;
      this.CheckTypeName =  String.Empty;
      this.TranType =  String.Empty;
      this.TranAbs =  String.Empty;
      this.TranSerial =  String.Empty;
      this.BusType =  String.Empty;
      this.PayerBank =  String.Empty;
      this.PayerAccount =  String.Empty;
      this.PayeeName =  String.Empty;
      this.PayeeAccount =  String.Empty;
      this.BillType =  String.Empty;
      this.BillNo =  String.Empty;
      this.TranReamrk =  String.Empty;
    }

    public string Debug()
    {
      string rtn = String.Empty;

      return rtn;
    }
  }
}
