namespace LiveUpdate
{
  partial class DownloadProgress
  {
    /// <summary>
    /// ����������������
    /// </summary>
    private System.ComponentModel.IContainer components = null;

    /// <summary>
    /// ������������ʹ�õ���Դ��
    /// </summary>
    /// <param name="disposing">���Ӧ�ͷ��й���Դ��Ϊ true������Ϊ false��</param>
    protected override void Dispose(bool disposing)
    {
      if (disposing && (components != null))
      {
        components.Dispose();
      }
      base.Dispose(disposing);
    }

    #region Windows ������������ɵĴ���

    /// <summary>
    /// �����֧������ķ��� - ��Ҫ
    /// ʹ�ô���༭���޸Ĵ˷��������ݡ�
    /// </summary>
    private void InitializeComponent()
    {
      System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(DownloadProgress));
      this.buttonOk = new System.Windows.Forms.Button();
      this.progressBarTotal = new System.Windows.Forms.ProgressBar();
      this.progressBarCurrent = new System.Windows.Forms.ProgressBar();
      this.labelCurrentItem = new System.Windows.Forms.Label();
      this.label1 = new System.Windows.Forms.Label();
      this.labelCurrent = new System.Windows.Forms.Label();
      this.SuspendLayout();
      // 
      // buttonOk
      // 
      this.buttonOk.Location = new System.Drawing.Point(376, 87);
      this.buttonOk.Name = "buttonOk";
      this.buttonOk.Size = new System.Drawing.Size(75, 23);
      this.buttonOk.TabIndex = 8;
      this.buttonOk.Text = "ȡ��";
      this.buttonOk.UseVisualStyleBackColor = true;
      this.buttonOk.Click += new System.EventHandler(this.OnCancel);
      // 
      // progressBarTotal
      // 
      this.progressBarTotal.Location = new System.Drawing.Point(14, 66);
      this.progressBarTotal.Name = "progressBarTotal";
      this.progressBarTotal.Size = new System.Drawing.Size(438, 12);
      this.progressBarTotal.Step = 1;
      this.progressBarTotal.TabIndex = 6;
      // 
      // progressBarCurrent
      // 
      this.progressBarCurrent.Location = new System.Drawing.Point(13, 27);
      this.progressBarCurrent.Name = "progressBarCurrent";
      this.progressBarCurrent.Size = new System.Drawing.Size(438, 12);
      this.progressBarCurrent.Step = 1;
      this.progressBarCurrent.TabIndex = 7;
      // 
      // labelCurrentItem
      // 
      this.labelCurrentItem.AutoSize = true;
      this.labelCurrentItem.Location = new System.Drawing.Point(83, 12);
      this.labelCurrentItem.Name = "labelCurrentItem";
      this.labelCurrentItem.Size = new System.Drawing.Size(0, 12);
      this.labelCurrentItem.TabIndex = 3;
      // 
      // label1
      // 
      this.label1.AutoSize = true;
      this.label1.Location = new System.Drawing.Point(12, 51);
      this.label1.Name = "label1";
      this.label1.Size = new System.Drawing.Size(53, 12);
      this.label1.TabIndex = 4;
      this.label1.Text = "�ܽ��ȣ�";
      // 
      // labelCurrent
      // 
      this.labelCurrent.AutoSize = true;
      this.labelCurrent.Location = new System.Drawing.Point(12, 12);
      this.labelCurrent.Name = "labelCurrent";
      this.labelCurrent.Size = new System.Drawing.Size(65, 12);
      this.labelCurrent.TabIndex = 5;
      this.labelCurrent.Text = "�������أ�";
      // 
      // DownloadProgress
      // 
      this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
      this.ClientSize = new System.Drawing.Size(464, 118);
      this.Controls.Add(this.buttonOk);
      this.Controls.Add(this.progressBarTotal);
      this.Controls.Add(this.progressBarCurrent);
      this.Controls.Add(this.labelCurrentItem);
      this.Controls.Add(this.label1);
      this.Controls.Add(this.labelCurrent);
      this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
      this.Name = "DownloadProgress";
      this.ShowInTaskbar = true;
      this.Text = "���½���";
      this.FormClosing += new System.Windows.Forms.FormClosingEventHandler(this.OnFormClosing);
      this.Load += new System.EventHandler(this.OnFormLoad);
      this.ResumeLayout(false);
      this.PerformLayout();

    }

    #endregion

    private System.Windows.Forms.Button buttonOk;
    private System.Windows.Forms.ProgressBar progressBarTotal;
    private System.Windows.Forms.ProgressBar progressBarCurrent;
    private System.Windows.Forms.Label labelCurrentItem;
    private System.Windows.Forms.Label label1;
    private System.Windows.Forms.Label labelCurrent;
  }
}
