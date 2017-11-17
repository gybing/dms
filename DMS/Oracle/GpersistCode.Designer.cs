namespace DMS.Oracle
{
    partial class GpersistCode
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(GpersistCode));
            this.plCenter = new System.Windows.Forms.Panel();
            this.txtResult = new System.Windows.Forms.RichTextBox();
            this.txtSet = new System.Windows.Forms.RichTextBox();
            this.plRight = new System.Windows.Forms.Panel();
            this.dgvPmtSet = new System.Windows.Forms.DataGridView();
            this.TableSet = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.plColumn = new System.Windows.Forms.Panel();
            this.dgvColumn = new System.Windows.Forms.DataGridView();
            this.ColumnID = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.ColumnName = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.ColumnCode = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.DataType = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.ColumnLength = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.ColumnPrecision = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.ColumnIdentity = new System.Windows.Forms.DataGridViewCheckBoxColumn();
            this.ColumnNotNull = new System.Windows.Forms.DataGridViewCheckBoxColumn();
            this.dataGridViewTextBoxColumn1 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn2 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn3 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn4 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn5 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn6 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn7 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.plTop = new GuFun.WinControls.ExPanel();
            this.btnAction = new GuFun.WinControls.VistaButton();
            this.btnService = new GuFun.WinControls.VistaButton();
            this.btnDao = new GuFun.WinControls.VistaButton();
            this.btnMapper = new GuFun.WinControls.VistaButton();
            this.btnXml = new GuFun.WinControls.VistaButton();
            this.btnExit = new GuFun.WinControls.VistaButton();
            this.btnWork = new GuFun.WinControls.VistaButton();
            this.btnBean = new GuFun.WinControls.VistaButton();
            this.btnJs = new GuFun.WinControls.VistaButton();
            this.btnKey = new GuFun.WinControls.VistaButton();
            this.btnSaveSql = new GuFun.WinControls.VistaButton();
            this.btnGetSql = new GuFun.WinControls.VistaButton();
            this.cbNo = new System.Windows.Forms.CheckBox();
            this.cbDelete = new System.Windows.Forms.CheckBox();
            this.cbInsert = new System.Windows.Forms.CheckBox();
            this.cbEdit = new System.Windows.Forms.CheckBox();
            this.cbPage = new System.Windows.Forms.CheckBox();
            this.cbSearch = new System.Windows.Forms.CheckBox();
            this.btnSave = new GuFun.WinControls.VistaButton();
            this.btnSet = new GuFun.WinControls.VistaButton();
            this.btnRead = new GuFun.WinControls.VistaButton();
            this.txtValue = new System.Windows.Forms.TextBox();
            this.lbValue = new System.Windows.Forms.Label();
            this.txtClassName = new System.Windows.Forms.TextBox();
            this.txtPrefix = new System.Windows.Forms.TextBox();
            this.lbClassName = new System.Windows.Forms.Label();
            this.lbPrefix = new System.Windows.Forms.Label();
            this.txtCatalog = new System.Windows.Forms.TextBox();
            this.lbCatalog = new System.Windows.Forms.Label();
            this.txtPackage = new System.Windows.Forms.TextBox();
            this.lbPackage = new System.Windows.Forms.Label();
            this.ddlTable = new System.Windows.Forms.ComboBox();
            this.lbTable = new System.Windows.Forms.Label();
            this.ddlDB = new System.Windows.Forms.ComboBox();
            this.lbDB = new System.Windows.Forms.Label();
            this.plCenter.SuspendLayout();
            this.plRight.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvPmtSet)).BeginInit();
            this.plColumn.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvColumn)).BeginInit();
            this.plTop.SuspendLayout();
            this.SuspendLayout();
            // 
            // ilTools
            // 
            this.ilTools.ImageStream = ((System.Windows.Forms.ImageListStreamer)(resources.GetObject("ilTools.ImageStream")));
            this.ilTools.Images.SetKeyName(0, "exit.gif");
            this.ilTools.Images.SetKeyName(1, "first.gif");
            this.ilTools.Images.SetKeyName(2, "prev.gif");
            this.ilTools.Images.SetKeyName(3, "next.gif");
            this.ilTools.Images.SetKeyName(4, "last.gif");
            this.ilTools.Images.SetKeyName(5, "search.gif");
            this.ilTools.Images.SetKeyName(6, "detail.gif");
            this.ilTools.Images.SetKeyName(7, "add.gif");
            this.ilTools.Images.SetKeyName(8, "edit.gif");
            this.ilTools.Images.SetKeyName(9, "del.gif");
            this.ilTools.Images.SetKeyName(10, "copy.gif");
            this.ilTools.Images.SetKeyName(11, "save.gif");
            this.ilTools.Images.SetKeyName(12, "cancel.gif");
            this.ilTools.Images.SetKeyName(13, "print.gif");
            this.ilTools.Images.SetKeyName(14, "export.gif");
            // 
            // plCenter
            // 
            this.plCenter.Controls.Add(this.txtResult);
            this.plCenter.Controls.Add(this.txtSet);
            this.plCenter.Controls.Add(this.plRight);
            this.plCenter.Dock = System.Windows.Forms.DockStyle.Fill;
            this.plCenter.Location = new System.Drawing.Point(0, 130);
            this.plCenter.Name = "plCenter";
            this.plCenter.Size = new System.Drawing.Size(1424, 250);
            this.plCenter.TabIndex = 2;
            // 
            // txtResult
            // 
            this.txtResult.Dock = System.Windows.Forms.DockStyle.Fill;
            this.txtResult.Location = new System.Drawing.Point(310, 0);
            this.txtResult.Name = "txtResult";
            this.txtResult.Size = new System.Drawing.Size(874, 250);
            this.txtResult.TabIndex = 2;
            this.txtResult.Text = "";
            this.txtResult.WordWrap = false;
            // 
            // txtSet
            // 
            this.txtSet.Dock = System.Windows.Forms.DockStyle.Left;
            this.txtSet.Location = new System.Drawing.Point(0, 0);
            this.txtSet.Name = "txtSet";
            this.txtSet.Size = new System.Drawing.Size(310, 250);
            this.txtSet.TabIndex = 1;
            this.txtSet.Text = "";
            this.txtSet.WordWrap = false;
            // 
            // plRight
            // 
            this.plRight.Controls.Add(this.dgvPmtSet);
            this.plRight.Dock = System.Windows.Forms.DockStyle.Right;
            this.plRight.Location = new System.Drawing.Point(1184, 0);
            this.plRight.Name = "plRight";
            this.plRight.Size = new System.Drawing.Size(240, 250);
            this.plRight.TabIndex = 0;
            // 
            // dgvPmtSet
            // 
            this.dgvPmtSet.AllowUserToAddRows = false;
            this.dgvPmtSet.AllowUserToDeleteRows = false;
            this.dgvPmtSet.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvPmtSet.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.TableSet});
            this.dgvPmtSet.Dock = System.Windows.Forms.DockStyle.Fill;
            this.dgvPmtSet.Location = new System.Drawing.Point(0, 0);
            this.dgvPmtSet.Name = "dgvPmtSet";
            this.dgvPmtSet.ReadOnly = true;
            this.dgvPmtSet.RowTemplate.Height = 23;
            this.dgvPmtSet.Size = new System.Drawing.Size(240, 250);
            this.dgvPmtSet.TabIndex = 0;
            // 
            // TableSet
            // 
            this.TableSet.DataPropertyName = "TableSet";
            this.TableSet.HeaderText = "配置信息";
            this.TableSet.Name = "TableSet";
            this.TableSet.ReadOnly = true;
            this.TableSet.Width = 400;
            // 
            // plColumn
            // 
            this.plColumn.Controls.Add(this.dgvColumn);
            this.plColumn.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.plColumn.Location = new System.Drawing.Point(0, 380);
            this.plColumn.Name = "plColumn";
            this.plColumn.Size = new System.Drawing.Size(1424, 260);
            this.plColumn.TabIndex = 1;
            // 
            // dgvColumn
            // 
            this.dgvColumn.AllowUserToAddRows = false;
            this.dgvColumn.AllowUserToDeleteRows = false;
            this.dgvColumn.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvColumn.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.ColumnID,
            this.ColumnName,
            this.ColumnCode,
            this.DataType,
            this.ColumnLength,
            this.ColumnPrecision,
            this.ColumnIdentity,
            this.ColumnNotNull});
            this.dgvColumn.Dock = System.Windows.Forms.DockStyle.Fill;
            this.dgvColumn.Location = new System.Drawing.Point(0, 0);
            this.dgvColumn.Name = "dgvColumn";
            this.dgvColumn.RowTemplate.Height = 23;
            this.dgvColumn.Size = new System.Drawing.Size(1424, 260);
            this.dgvColumn.TabIndex = 0;
            // 
            // ColumnID
            // 
            this.ColumnID.DataPropertyName = "ColumnID";
            this.ColumnID.HeaderText = "序号";
            this.ColumnID.Name = "ColumnID";
            this.ColumnID.Width = 60;
            // 
            // ColumnName
            // 
            this.ColumnName.DataPropertyName = "ColumnName";
            this.ColumnName.HeaderText = "名称";
            this.ColumnName.Name = "ColumnName";
            this.ColumnName.Width = 150;
            // 
            // ColumnCode
            // 
            this.ColumnCode.DataPropertyName = "ColumnCode";
            this.ColumnCode.HeaderText = "代码";
            this.ColumnCode.Name = "ColumnCode";
            this.ColumnCode.Width = 150;
            // 
            // DataType
            // 
            this.DataType.DataPropertyName = "DataType";
            this.DataType.HeaderText = "数据类型";
            this.DataType.Name = "DataType";
            // 
            // ColumnLength
            // 
            this.ColumnLength.DataPropertyName = "ColumnLength";
            this.ColumnLength.HeaderText = "长度";
            this.ColumnLength.Name = "ColumnLength";
            this.ColumnLength.Width = 60;
            // 
            // ColumnPrecision
            // 
            this.ColumnPrecision.DataPropertyName = "ColumnPrecision";
            this.ColumnPrecision.HeaderText = "精度";
            this.ColumnPrecision.Name = "ColumnPrecision";
            this.ColumnPrecision.Width = 60;
            // 
            // ColumnIdentity
            // 
            this.ColumnIdentity.DataPropertyName = "ColumnIdentity";
            this.ColumnIdentity.HeaderText = "自增";
            this.ColumnIdentity.Name = "ColumnIdentity";
            this.ColumnIdentity.Width = 60;
            // 
            // ColumnNotNull
            // 
            this.ColumnNotNull.DataPropertyName = "ColumnNotNull";
            this.ColumnNotNull.HeaderText = "非空";
            this.ColumnNotNull.Name = "ColumnNotNull";
            this.ColumnNotNull.Width = 60;
            // 
            // dataGridViewTextBoxColumn1
            // 
            this.dataGridViewTextBoxColumn1.DataPropertyName = "ColumnID";
            this.dataGridViewTextBoxColumn1.HeaderText = "序号";
            this.dataGridViewTextBoxColumn1.Name = "dataGridViewTextBoxColumn1";
            this.dataGridViewTextBoxColumn1.Width = 60;
            // 
            // dataGridViewTextBoxColumn2
            // 
            this.dataGridViewTextBoxColumn2.DataPropertyName = "ColumnName";
            this.dataGridViewTextBoxColumn2.HeaderText = "名称";
            this.dataGridViewTextBoxColumn2.Name = "dataGridViewTextBoxColumn2";
            this.dataGridViewTextBoxColumn2.Width = 150;
            // 
            // dataGridViewTextBoxColumn3
            // 
            this.dataGridViewTextBoxColumn3.DataPropertyName = "ColumnCode";
            this.dataGridViewTextBoxColumn3.HeaderText = "代码";
            this.dataGridViewTextBoxColumn3.Name = "dataGridViewTextBoxColumn3";
            this.dataGridViewTextBoxColumn3.Width = 150;
            // 
            // dataGridViewTextBoxColumn4
            // 
            this.dataGridViewTextBoxColumn4.DataPropertyName = "DataType";
            this.dataGridViewTextBoxColumn4.HeaderText = "数据类型";
            this.dataGridViewTextBoxColumn4.Name = "dataGridViewTextBoxColumn4";
            // 
            // dataGridViewTextBoxColumn5
            // 
            this.dataGridViewTextBoxColumn5.DataPropertyName = "ColumnLength";
            this.dataGridViewTextBoxColumn5.HeaderText = "长度";
            this.dataGridViewTextBoxColumn5.Name = "dataGridViewTextBoxColumn5";
            this.dataGridViewTextBoxColumn5.Width = 60;
            // 
            // dataGridViewTextBoxColumn6
            // 
            this.dataGridViewTextBoxColumn6.DataPropertyName = "ColumnPrecision";
            this.dataGridViewTextBoxColumn6.HeaderText = "精度";
            this.dataGridViewTextBoxColumn6.Name = "dataGridViewTextBoxColumn6";
            this.dataGridViewTextBoxColumn6.Width = 60;
            // 
            // dataGridViewTextBoxColumn7
            // 
            this.dataGridViewTextBoxColumn7.HeaderText = "配置信息";
            this.dataGridViewTextBoxColumn7.Name = "dataGridViewTextBoxColumn7";
            this.dataGridViewTextBoxColumn7.Width = 400;
            // 
            // plTop
            // 
            this.plTop.Border3DStyle = System.Windows.Forms.Border3DStyle.Raised;
            this.plTop.Controls.Add(this.btnAction);
            this.plTop.Controls.Add(this.btnService);
            this.plTop.Controls.Add(this.btnDao);
            this.plTop.Controls.Add(this.btnMapper);
            this.plTop.Controls.Add(this.btnXml);
            this.plTop.Controls.Add(this.btnExit);
            this.plTop.Controls.Add(this.btnWork);
            this.plTop.Controls.Add(this.btnBean);
            this.plTop.Controls.Add(this.btnJs);
            this.plTop.Controls.Add(this.btnKey);
            this.plTop.Controls.Add(this.btnSaveSql);
            this.plTop.Controls.Add(this.btnGetSql);
            this.plTop.Controls.Add(this.cbNo);
            this.plTop.Controls.Add(this.cbDelete);
            this.plTop.Controls.Add(this.cbInsert);
            this.plTop.Controls.Add(this.cbEdit);
            this.plTop.Controls.Add(this.cbPage);
            this.plTop.Controls.Add(this.cbSearch);
            this.plTop.Controls.Add(this.btnSave);
            this.plTop.Controls.Add(this.btnSet);
            this.plTop.Controls.Add(this.btnRead);
            this.plTop.Controls.Add(this.txtValue);
            this.plTop.Controls.Add(this.lbValue);
            this.plTop.Controls.Add(this.txtClassName);
            this.plTop.Controls.Add(this.txtPrefix);
            this.plTop.Controls.Add(this.lbClassName);
            this.plTop.Controls.Add(this.lbPrefix);
            this.plTop.Controls.Add(this.txtCatalog);
            this.plTop.Controls.Add(this.lbCatalog);
            this.plTop.Controls.Add(this.txtPackage);
            this.plTop.Controls.Add(this.lbPackage);
            this.plTop.Controls.Add(this.ddlTable);
            this.plTop.Controls.Add(this.lbTable);
            this.plTop.Controls.Add(this.ddlDB);
            this.plTop.Controls.Add(this.lbDB);
            this.plTop.Dock = System.Windows.Forms.DockStyle.Top;
            this.plTop.Location = new System.Drawing.Point(0, 0);
            this.plTop.Name = "plTop";
            this.plTop.Size = new System.Drawing.Size(1424, 130);
            this.plTop.TabIndex = 0;
            // 
            // btnAction
            // 
            this.btnAction.BackColor = System.Drawing.Color.Transparent;
            this.btnAction.BaseColor = System.Drawing.SystemColors.Highlight;
            this.btnAction.ButtonColor = System.Drawing.SystemColors.GradientActiveCaption;
            this.btnAction.ButtonText = "生成Action";
            this.btnAction.Font = new System.Drawing.Font("微软雅黑", 10.5F, System.Drawing.FontStyle.Bold);
            this.btnAction.ForeColor = System.Drawing.Color.Black;
            this.btnAction.Location = new System.Drawing.Point(1044, 68);
            this.btnAction.Name = "btnAction";
            this.btnAction.Size = new System.Drawing.Size(70, 48);
            this.btnAction.TabIndex = 25;
            this.btnAction.Click += new System.EventHandler(this.btnAction_Click);
            // 
            // btnService
            // 
            this.btnService.BackColor = System.Drawing.Color.Transparent;
            this.btnService.BaseColor = System.Drawing.SystemColors.Highlight;
            this.btnService.ButtonColor = System.Drawing.SystemColors.GradientActiveCaption;
            this.btnService.ButtonText = "生成Service";
            this.btnService.Font = new System.Drawing.Font("微软雅黑", 10.5F, System.Drawing.FontStyle.Bold);
            this.btnService.ForeColor = System.Drawing.Color.Black;
            this.btnService.Location = new System.Drawing.Point(963, 68);
            this.btnService.Name = "btnService";
            this.btnService.Size = new System.Drawing.Size(75, 48);
            this.btnService.TabIndex = 24;
            this.btnService.Click += new System.EventHandler(this.btnService_Click);
            // 
            // btnDao
            // 
            this.btnDao.BackColor = System.Drawing.Color.Transparent;
            this.btnDao.BaseColor = System.Drawing.SystemColors.Highlight;
            this.btnDao.ButtonColor = System.Drawing.SystemColors.GradientActiveCaption;
            this.btnDao.ButtonText = "生成Dao";
            this.btnDao.Font = new System.Drawing.Font("微软雅黑", 10.5F, System.Drawing.FontStyle.Bold);
            this.btnDao.ForeColor = System.Drawing.Color.Black;
            this.btnDao.Location = new System.Drawing.Point(891, 68);
            this.btnDao.Name = "btnDao";
            this.btnDao.Size = new System.Drawing.Size(66, 48);
            this.btnDao.TabIndex = 23;
            this.btnDao.Click += new System.EventHandler(this.btnDao_Click);
            // 
            // btnMapper
            // 
            this.btnMapper.BackColor = System.Drawing.Color.Transparent;
            this.btnMapper.BaseColor = System.Drawing.SystemColors.Highlight;
            this.btnMapper.ButtonColor = System.Drawing.SystemColors.GradientActiveCaption;
            this.btnMapper.ButtonText = "生成Mapper";
            this.btnMapper.Font = new System.Drawing.Font("微软雅黑", 10.5F, System.Drawing.FontStyle.Bold);
            this.btnMapper.ForeColor = System.Drawing.Color.Black;
            this.btnMapper.Location = new System.Drawing.Point(805, 68);
            this.btnMapper.Name = "btnMapper";
            this.btnMapper.Size = new System.Drawing.Size(80, 48);
            this.btnMapper.TabIndex = 22;
            this.btnMapper.Click += new System.EventHandler(this.btnMapper_Click);
            // 
            // btnXml
            // 
            this.btnXml.BackColor = System.Drawing.Color.Transparent;
            this.btnXml.BaseColor = System.Drawing.SystemColors.Highlight;
            this.btnXml.ButtonColor = System.Drawing.SystemColors.GradientActiveCaption;
            this.btnXml.ButtonText = "生成XML";
            this.btnXml.Font = new System.Drawing.Font("微软雅黑", 10.5F, System.Drawing.FontStyle.Bold);
            this.btnXml.ForeColor = System.Drawing.Color.Black;
            this.btnXml.Location = new System.Drawing.Point(733, 68);
            this.btnXml.Name = "btnXml";
            this.btnXml.Size = new System.Drawing.Size(66, 48);
            this.btnXml.TabIndex = 21;
            this.btnXml.Click += new System.EventHandler(this.btnXml_Click);
            // 
            // btnExit
            // 
            this.btnExit.BackColor = System.Drawing.Color.Transparent;
            this.btnExit.BaseColor = System.Drawing.SystemColors.Highlight;
            this.btnExit.ButtonColor = System.Drawing.SystemColors.GradientActiveCaption;
            this.btnExit.ButtonText = "退出";
            this.btnExit.Font = new System.Drawing.Font("微软雅黑", 10.5F, System.Drawing.FontStyle.Bold);
            this.btnExit.ForeColor = System.Drawing.Color.Black;
            this.btnExit.Location = new System.Drawing.Point(1044, 12);
            this.btnExit.Name = "btnExit";
            this.btnExit.Size = new System.Drawing.Size(70, 48);
            this.btnExit.TabIndex = 26;
            this.btnExit.Click += new System.EventHandler(this.btnExit_Click);
            // 
            // btnWork
            // 
            this.btnWork.BackColor = System.Drawing.Color.Transparent;
            this.btnWork.BaseColor = System.Drawing.SystemColors.Highlight;
            this.btnWork.ButtonColor = System.Drawing.SystemColors.GradientActiveCaption;
            this.btnWork.ButtonText = "打卡";
            this.btnWork.Font = new System.Drawing.Font("微软雅黑", 10.5F, System.Drawing.FontStyle.Bold);
            this.btnWork.ForeColor = System.Drawing.Color.Black;
            this.btnWork.Location = new System.Drawing.Point(963, 12);
            this.btnWork.Name = "btnWork";
            this.btnWork.Size = new System.Drawing.Size(75, 48);
            this.btnWork.TabIndex = 15;
            this.btnWork.Click += new System.EventHandler(this.btnWork_Click);
            // 
            // btnBean
            // 
            this.btnBean.BackColor = System.Drawing.Color.Transparent;
            this.btnBean.BaseColor = System.Drawing.SystemColors.Highlight;
            this.btnBean.ButtonColor = System.Drawing.SystemColors.GradientActiveCaption;
            this.btnBean.ButtonText = "生成BEAN";
            this.btnBean.Font = new System.Drawing.Font("微软雅黑", 10.5F, System.Drawing.FontStyle.Bold);
            this.btnBean.ForeColor = System.Drawing.Color.Black;
            this.btnBean.Location = new System.Drawing.Point(661, 68);
            this.btnBean.Name = "btnBean";
            this.btnBean.Size = new System.Drawing.Size(66, 48);
            this.btnBean.TabIndex = 20;
            this.btnBean.Click += new System.EventHandler(this.btnBean_Click);
            // 
            // btnJs
            // 
            this.btnJs.BackColor = System.Drawing.Color.Transparent;
            this.btnJs.BaseColor = System.Drawing.SystemColors.Highlight;
            this.btnJs.ButtonColor = System.Drawing.SystemColors.GradientActiveCaption;
            this.btnJs.ButtonText = "生成JS语句";
            this.btnJs.Font = new System.Drawing.Font("微软雅黑", 10.5F, System.Drawing.FontStyle.Bold);
            this.btnJs.ForeColor = System.Drawing.Color.Black;
            this.btnJs.Location = new System.Drawing.Point(891, 12);
            this.btnJs.Name = "btnJs";
            this.btnJs.Size = new System.Drawing.Size(66, 48);
            this.btnJs.TabIndex = 19;
            this.btnJs.Click += new System.EventHandler(this.btnJs_Click);
            // 
            // btnKey
            // 
            this.btnKey.BackColor = System.Drawing.Color.Transparent;
            this.btnKey.BaseColor = System.Drawing.SystemColors.Highlight;
            this.btnKey.ButtonColor = System.Drawing.SystemColors.GradientActiveCaption;
            this.btnKey.ButtonText = "生成主键";
            this.btnKey.Font = new System.Drawing.Font("微软雅黑", 10.5F, System.Drawing.FontStyle.Bold);
            this.btnKey.ForeColor = System.Drawing.Color.Black;
            this.btnKey.Location = new System.Drawing.Point(733, 12);
            this.btnKey.Name = "btnKey";
            this.btnKey.Size = new System.Drawing.Size(66, 48);
            this.btnKey.TabIndex = 17;
            this.btnKey.Click += new System.EventHandler(this.btnKey_Click);
            // 
            // btnSaveSql
            // 
            this.btnSaveSql.BackColor = System.Drawing.Color.Transparent;
            this.btnSaveSql.BaseColor = System.Drawing.SystemColors.Highlight;
            this.btnSaveSql.ButtonColor = System.Drawing.SystemColors.GradientActiveCaption;
            this.btnSaveSql.ButtonText = "生成保存语句";
            this.btnSaveSql.Font = new System.Drawing.Font("微软雅黑", 10.5F, System.Drawing.FontStyle.Bold);
            this.btnSaveSql.ForeColor = System.Drawing.Color.Black;
            this.btnSaveSql.Location = new System.Drawing.Point(805, 12);
            this.btnSaveSql.Name = "btnSaveSql";
            this.btnSaveSql.Size = new System.Drawing.Size(80, 48);
            this.btnSaveSql.TabIndex = 18;
            this.btnSaveSql.Click += new System.EventHandler(this.btnSaveSql_Click);
            // 
            // btnGetSql
            // 
            this.btnGetSql.BackColor = System.Drawing.Color.Transparent;
            this.btnGetSql.BaseColor = System.Drawing.SystemColors.Highlight;
            this.btnGetSql.ButtonColor = System.Drawing.SystemColors.GradientActiveCaption;
            this.btnGetSql.ButtonText = "生成读取语句";
            this.btnGetSql.Font = new System.Drawing.Font("微软雅黑", 10.5F, System.Drawing.FontStyle.Bold);
            this.btnGetSql.ForeColor = System.Drawing.Color.Black;
            this.btnGetSql.Location = new System.Drawing.Point(661, 12);
            this.btnGetSql.Name = "btnGetSql";
            this.btnGetSql.Size = new System.Drawing.Size(66, 48);
            this.btnGetSql.TabIndex = 16;
            this.btnGetSql.Click += new System.EventHandler(this.btnGetSql_Click);
            // 
            // cbNo
            // 
            this.cbNo.AutoSize = true;
            this.cbNo.Location = new System.Drawing.Point(571, 70);
            this.cbNo.Name = "cbNo";
            this.cbNo.Size = new System.Drawing.Size(84, 16);
            this.cbNo.TabIndex = 12;
            this.cbNo.Text = "List无参数";
            this.cbNo.UseVisualStyleBackColor = true;
            // 
            // cbDelete
            // 
            this.cbDelete.AutoSize = true;
            this.cbDelete.Checked = true;
            this.cbDelete.CheckState = System.Windows.Forms.CheckState.Checked;
            this.cbDelete.Location = new System.Drawing.Point(607, 42);
            this.cbDelete.Name = "cbDelete";
            this.cbDelete.Size = new System.Drawing.Size(48, 16);
            this.cbDelete.TabIndex = 0;
            this.cbDelete.Text = "删除";
            this.cbDelete.UseVisualStyleBackColor = true;
            // 
            // cbInsert
            // 
            this.cbInsert.AutoSize = true;
            this.cbInsert.Checked = true;
            this.cbInsert.CheckState = System.Windows.Forms.CheckState.Checked;
            this.cbInsert.Location = new System.Drawing.Point(553, 43);
            this.cbInsert.Name = "cbInsert";
            this.cbInsert.Size = new System.Drawing.Size(48, 16);
            this.cbInsert.TabIndex = 14;
            this.cbInsert.Text = "新增";
            this.cbInsert.UseVisualStyleBackColor = true;
            this.cbInsert.CheckedChanged += new System.EventHandler(this.cbInsert_CheckedChanged);
            // 
            // cbEdit
            // 
            this.cbEdit.AutoSize = true;
            this.cbEdit.Checked = true;
            this.cbEdit.CheckState = System.Windows.Forms.CheckState.Checked;
            this.cbEdit.Location = new System.Drawing.Point(607, 15);
            this.cbEdit.Name = "cbEdit";
            this.cbEdit.Size = new System.Drawing.Size(48, 16);
            this.cbEdit.TabIndex = 0;
            this.cbEdit.Text = "修改";
            this.cbEdit.UseVisualStyleBackColor = true;
            // 
            // cbPage
            // 
            this.cbPage.AutoSize = true;
            this.cbPage.Location = new System.Drawing.Point(553, 15);
            this.cbPage.Name = "cbPage";
            this.cbPage.Size = new System.Drawing.Size(48, 16);
            this.cbPage.TabIndex = 13;
            this.cbPage.Text = "分页";
            this.cbPage.UseVisualStyleBackColor = true;
            this.cbPage.CheckedChanged += new System.EventHandler(this.cbPage_CheckedChanged);
            // 
            // cbSearch
            // 
            this.cbSearch.AutoSize = true;
            this.cbSearch.Checked = true;
            this.cbSearch.CheckState = System.Windows.Forms.CheckState.Checked;
            this.cbSearch.Location = new System.Drawing.Point(447, 70);
            this.cbSearch.Name = "cbSearch";
            this.cbSearch.Size = new System.Drawing.Size(96, 16);
            this.cbSearch.TabIndex = 11;
            this.cbSearch.Text = "是否含Search";
            this.cbSearch.UseVisualStyleBackColor = true;
            // 
            // btnSave
            // 
            this.btnSave.BackColor = System.Drawing.Color.Transparent;
            this.btnSave.BaseColor = System.Drawing.SystemColors.Highlight;
            this.btnSave.ButtonColor = System.Drawing.SystemColors.GradientActiveCaption;
            this.btnSave.ButtonText = "保存配置";
            this.btnSave.Font = new System.Drawing.Font("微软雅黑", 10.5F, System.Drawing.FontStyle.Bold);
            this.btnSave.ForeColor = System.Drawing.Color.Black;
            this.btnSave.Location = new System.Drawing.Point(475, 12);
            this.btnSave.Name = "btnSave";
            this.btnSave.Size = new System.Drawing.Size(64, 48);
            this.btnSave.TabIndex = 10;
            this.btnSave.Click += new System.EventHandler(this.btnSave_Click);
            // 
            // btnSet
            // 
            this.btnSet.BackColor = System.Drawing.Color.Transparent;
            this.btnSet.BaseColor = System.Drawing.SystemColors.Highlight;
            this.btnSet.ButtonColor = System.Drawing.SystemColors.GradientActiveCaption;
            this.btnSet.ButtonText = "分析配置";
            this.btnSet.Font = new System.Drawing.Font("微软雅黑", 10.5F, System.Drawing.FontStyle.Bold);
            this.btnSet.ForeColor = System.Drawing.Color.Black;
            this.btnSet.Location = new System.Drawing.Point(405, 12);
            this.btnSet.Name = "btnSet";
            this.btnSet.Size = new System.Drawing.Size(64, 48);
            this.btnSet.TabIndex = 9;
            this.btnSet.Click += new System.EventHandler(this.btnSet_Click);
            // 
            // btnRead
            // 
            this.btnRead.BackColor = System.Drawing.Color.Transparent;
            this.btnRead.BaseColor = System.Drawing.SystemColors.Highlight;
            this.btnRead.ButtonColor = System.Drawing.SystemColors.GradientActiveCaption;
            this.btnRead.ButtonText = "读取字段";
            this.btnRead.Font = new System.Drawing.Font("微软雅黑", 10.5F, System.Drawing.FontStyle.Bold);
            this.btnRead.ForeColor = System.Drawing.Color.Black;
            this.btnRead.Location = new System.Drawing.Point(335, 12);
            this.btnRead.Name = "btnRead";
            this.btnRead.Size = new System.Drawing.Size(64, 48);
            this.btnRead.TabIndex = 8;
            this.btnRead.Click += new System.EventHandler(this.btnRead_Click);
            // 
            // txtValue
            // 
            this.txtValue.Location = new System.Drawing.Point(492, 96);
            this.txtValue.Name = "txtValue";
            this.txtValue.Size = new System.Drawing.Size(153, 21);
            this.txtValue.TabIndex = 7;
            // 
            // lbValue
            // 
            this.lbValue.AutoSize = true;
            this.lbValue.Location = new System.Drawing.Point(445, 100);
            this.lbValue.Name = "lbValue";
            this.lbValue.Size = new System.Drawing.Size(41, 12);
            this.lbValue.TabIndex = 0;
            this.lbValue.Text = "变量：";
            // 
            // txtClassName
            // 
            this.txtClassName.Location = new System.Drawing.Point(280, 96);
            this.txtClassName.Name = "txtClassName";
            this.txtClassName.Size = new System.Drawing.Size(150, 21);
            this.txtClassName.TabIndex = 6;
            // 
            // txtPrefix
            // 
            this.txtPrefix.Location = new System.Drawing.Point(280, 68);
            this.txtPrefix.Name = "txtPrefix";
            this.txtPrefix.Size = new System.Drawing.Size(150, 21);
            this.txtPrefix.TabIndex = 4;
            // 
            // lbClassName
            // 
            this.lbClassName.AutoSize = true;
            this.lbClassName.Location = new System.Drawing.Point(235, 100);
            this.lbClassName.Name = "lbClassName";
            this.lbClassName.Size = new System.Drawing.Size(41, 12);
            this.lbClassName.TabIndex = 0;
            this.lbClassName.Text = "类名：";
            // 
            // lbPrefix
            // 
            this.lbPrefix.AutoSize = true;
            this.lbPrefix.Location = new System.Drawing.Point(235, 72);
            this.lbPrefix.Name = "lbPrefix";
            this.lbPrefix.Size = new System.Drawing.Size(41, 12);
            this.lbPrefix.TabIndex = 0;
            this.lbPrefix.Text = "前缀：";
            // 
            // txtCatalog
            // 
            this.txtCatalog.Location = new System.Drawing.Point(72, 96);
            this.txtCatalog.Name = "txtCatalog";
            this.txtCatalog.Size = new System.Drawing.Size(150, 21);
            this.txtCatalog.TabIndex = 5;
            // 
            // lbCatalog
            // 
            this.lbCatalog.AutoSize = true;
            this.lbCatalog.Location = new System.Drawing.Point(18, 100);
            this.lbCatalog.Name = "lbCatalog";
            this.lbCatalog.Size = new System.Drawing.Size(53, 12);
            this.lbCatalog.TabIndex = 0;
            this.lbCatalog.Text = "类目录：";
            // 
            // txtPackage
            // 
            this.txtPackage.Location = new System.Drawing.Point(72, 68);
            this.txtPackage.Name = "txtPackage";
            this.txtPackage.Size = new System.Drawing.Size(150, 21);
            this.txtPackage.TabIndex = 3;
            // 
            // lbPackage
            // 
            this.lbPackage.AutoSize = true;
            this.lbPackage.Location = new System.Drawing.Point(18, 72);
            this.lbPackage.Name = "lbPackage";
            this.lbPackage.Size = new System.Drawing.Size(41, 12);
            this.lbPackage.TabIndex = 0;
            this.lbPackage.Text = "包名：";
            // 
            // ddlTable
            // 
            this.ddlTable.FormattingEnabled = true;
            this.ddlTable.Location = new System.Drawing.Point(72, 40);
            this.ddlTable.Name = "ddlTable";
            this.ddlTable.Size = new System.Drawing.Size(255, 20);
            this.ddlTable.TabIndex = 2;
            // 
            // lbTable
            // 
            this.lbTable.AutoSize = true;
            this.lbTable.Location = new System.Drawing.Point(18, 44);
            this.lbTable.Name = "lbTable";
            this.lbTable.Size = new System.Drawing.Size(53, 12);
            this.lbTable.TabIndex = 0;
            this.lbTable.Text = "数据表：";
            // 
            // ddlDB
            // 
            this.ddlDB.FormattingEnabled = true;
            this.ddlDB.Location = new System.Drawing.Point(72, 12);
            this.ddlDB.Name = "ddlDB";
            this.ddlDB.Size = new System.Drawing.Size(255, 20);
            this.ddlDB.TabIndex = 1;
            // 
            // lbDB
            // 
            this.lbDB.AutoSize = true;
            this.lbDB.Location = new System.Drawing.Point(18, 16);
            this.lbDB.Name = "lbDB";
            this.lbDB.Size = new System.Drawing.Size(53, 12);
            this.lbDB.TabIndex = 0;
            this.lbDB.Text = "数据库：";
            // 
            // GpersistForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.ClientSize = new System.Drawing.Size(1424, 640);
            this.Controls.Add(this.plCenter);
            this.Controls.Add(this.plColumn);
            this.Controls.Add(this.plTop);
            this.MaximizeBox = true;
            this.MinimizeBox = true;
            this.Name = "GpersistForm";
            this.Text = "生成存储过程";
            this.plCenter.ResumeLayout(false);
            this.plRight.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dgvPmtSet)).EndInit();
            this.plColumn.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dgvColumn)).EndInit();
            this.plTop.ResumeLayout(false);
            this.plTop.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private GuFun.WinControls.ExPanel plTop;
        private System.Windows.Forms.Panel plColumn;
        private System.Windows.Forms.Panel plCenter;
        private System.Windows.Forms.Panel plRight;
        private System.Windows.Forms.DataGridView dgvPmtSet;
        private System.Windows.Forms.RichTextBox txtSet;
        private System.Windows.Forms.RichTextBox txtResult;
        private System.Windows.Forms.DataGridView dgvColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn ColumnID;
        private System.Windows.Forms.DataGridViewTextBoxColumn ColumnName;
        private System.Windows.Forms.DataGridViewTextBoxColumn ColumnCode;
        private System.Windows.Forms.DataGridViewTextBoxColumn DataType;
        private System.Windows.Forms.DataGridViewTextBoxColumn ColumnLength;
        private System.Windows.Forms.DataGridViewTextBoxColumn ColumnPrecision;
        private System.Windows.Forms.DataGridViewCheckBoxColumn ColumnIdentity;
        private System.Windows.Forms.DataGridViewCheckBoxColumn ColumnNotNull;
        private System.Windows.Forms.Label lbDB;
        private System.Windows.Forms.ComboBox ddlDB;
        private System.Windows.Forms.Label lbTable;
        private System.Windows.Forms.ComboBox ddlTable;
        private System.Windows.Forms.Label lbPackage;
        private System.Windows.Forms.TextBox txtPackage;
        private System.Windows.Forms.Label lbCatalog;
        private System.Windows.Forms.TextBox txtCatalog;
        private System.Windows.Forms.Label lbPrefix;
        private System.Windows.Forms.Label lbClassName;
        private System.Windows.Forms.TextBox txtPrefix;
        private System.Windows.Forms.TextBox txtClassName;
        private System.Windows.Forms.Label lbValue;
        private System.Windows.Forms.TextBox txtValue;
        private GuFun.WinControls.VistaButton btnRead;
        private GuFun.WinControls.VistaButton btnSet;
        private GuFun.WinControls.VistaButton btnSave;
        private System.Windows.Forms.CheckBox cbSearch;
        private System.Windows.Forms.CheckBox cbPage;
        private System.Windows.Forms.CheckBox cbEdit;
        private System.Windows.Forms.CheckBox cbInsert;
        private System.Windows.Forms.CheckBox cbDelete;
        private System.Windows.Forms.CheckBox cbNo;
        private GuFun.WinControls.VistaButton btnAction;
        private GuFun.WinControls.VistaButton btnService;
        private GuFun.WinControls.VistaButton btnDao;
        private GuFun.WinControls.VistaButton btnMapper;
        private GuFun.WinControls.VistaButton btnXml;
        private GuFun.WinControls.VistaButton btnExit;
        private GuFun.WinControls.VistaButton btnWork;
        private GuFun.WinControls.VistaButton btnBean;
        private GuFun.WinControls.VistaButton btnJs;
        private GuFun.WinControls.VistaButton btnKey;
        private GuFun.WinControls.VistaButton btnSaveSql;
        private GuFun.WinControls.VistaButton btnGetSql;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn1;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn2;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn3;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn4;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn5;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn6;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn7;
        private System.Windows.Forms.DataGridViewTextBoxColumn TableSet;
    }
}
