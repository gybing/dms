namespace DMS
{
    partial class ManCompany
    {
        /// <summary>
        /// 必需的设计器变量。
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// 清理所有正在使用的资源。
        /// </summary>
        /// <param name="disposing">如果应释放托管资源，为 true；否则为 false。</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows 窗体设计器生成的代码

        /// <summary>
        /// 设计器支持所需的方法 - 不要
        /// 使用代码编辑器修改此方法的内容。
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(ManCompany));
            this.printDoc = new System.Drawing.Printing.PrintDocument();
            this.printView = new System.Windows.Forms.PrintPreviewDialog();
            this.etcMain.SuspendLayout();
            this.tpList.SuspendLayout();
            this.tpEdit.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.bsList)).BeginInit();
            this.SuspendLayout();
            // 
            // printView
            // 
            this.printView.AutoScrollMargin = new System.Drawing.Size(0, 0);
            this.printView.AutoScrollMinSize = new System.Drawing.Size(0, 0);
            this.printView.ClientSize = new System.Drawing.Size(400, 300);
            this.printView.Document = this.printDoc;
            this.printView.Enabled = true;
            this.printView.Icon = ((System.Drawing.Icon)(resources.GetObject("printView.Icon")));
            this.printView.Name = "printPreviewDialog1";
            this.printView.ShowIcon = false;
            this.printView.Visible = false;
            // 
            // ManCompany
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.ClientSize = new System.Drawing.Size(770, 406);
            this.Name = "ManCompany";
            this.etcMain.ResumeLayout(false);
            this.tpList.ResumeLayout(false);
            this.tpEdit.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.bsList)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Drawing.Printing.PrintDocument printDoc;
        private System.Windows.Forms.PrintPreviewDialog printView;
    }
}
