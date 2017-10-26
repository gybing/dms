namespace DMS.SqlServer
{
    partial class CodeBuild
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(CodeBuild));
            this.dgvColumn = new System.Windows.Forms.DataGridView();
            this.ColumnID = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.ColumnName = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.ColumnCode = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.DataType = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.ColumnLength = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.ColumnPrecision = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.ColumnIdentity = new System.Windows.Forms.DataGridViewCheckBoxColumn();
            this.ColumnNotNull = new System.Windows.Forms.DataGridViewCheckBoxColumn();
            this.dgvPmtSet = new System.Windows.Forms.DataGridView();
            this.TableSet = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.txtResult = new System.Windows.Forms.RichTextBox();
            this.txtSet = new System.Windows.Forms.RichTextBox();
            this.exPanel1 = new GuFun.WinControls.ExPanel();
            this.btnAction = new GuFun.WinControls.VistaButton();
            this.btnService = new GuFun.WinControls.VistaButton();
            this.btnDao = new GuFun.WinControls.VistaButton();
            this.btnMapper = new GuFun.WinControls.VistaButton();
            this.btnBean = new GuFun.WinControls.VistaButton();
            this.btnExit = new GuFun.WinControls.VistaButton();
            this.btnXml = new GuFun.WinControls.VistaButton();
            this.btnJs = new GuFun.WinControls.VistaButton();
            this.btnSaveSql = new GuFun.WinControls.VistaButton();
            this.btnGetSql = new GuFun.WinControls.VistaButton();
            this.cbDelete = new System.Windows.Forms.CheckBox();
            this.cbEdit = new System.Windows.Forms.CheckBox();
            this.cbInsert = new System.Windows.Forms.CheckBox();
            this.cbPage = new System.Windows.Forms.CheckBox();
            this.txtValue = new System.Windows.Forms.TextBox();
            this.lbparam = new System.Windows.Forms.Label();
            this.cbNo = new System.Windows.Forms.CheckBox();
            this.btnSet = new GuFun.WinControls.VistaButton();
            this.btnSave = new GuFun.WinControls.VistaButton();
            this.cbSearch = new System.Windows.Forms.CheckBox();
            this.btnRead = new GuFun.WinControls.VistaButton();
            this.txtClassName = new System.Windows.Forms.TextBox();
            this.txtPrefix = new System.Windows.Forms.TextBox();
            this.txtCatalog = new System.Windows.Forms.TextBox();
            this.txtPackage = new System.Windows.Forms.TextBox();
            this.ddlTable = new System.Windows.Forms.ComboBox();
            this.ddlDB = new System.Windows.Forms.ComboBox();
            this.lbclassname = new System.Windows.Forms.Label();
            this.pbprefix = new System.Windows.Forms.Label();
            this.lbclass = new System.Windows.Forms.Label();
            this.lbpkg = new System.Windows.Forms.Label();
            this.lbtb = new System.Windows.Forms.Label();
            this.lbdb = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.dgvColumn)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dgvPmtSet)).BeginInit();
            this.exPanel1.SuspendLayout();
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
            // dgvColumn
            // 
            this.dgvColumn.AllowUserToAddRows = false;
            this.dgvColumn.AllowUserToDeleteRows = false;
            this.dgvColumn.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
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
            this.dgvColumn.Location = new System.Drawing.Point(0, 533);
            this.dgvColumn.Name = "dgvColumn";
            this.dgvColumn.RowTemplate.Height = 23;
            this.dgvColumn.Size = new System.Drawing.Size(1424, 210);
            this.dgvColumn.TabIndex = 4;
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
            // dgvPmtSet
            // 
            this.dgvPmtSet.AllowUserToAddRows = false;
            this.dgvPmtSet.AllowUserToDeleteRows = false;
            this.dgvPmtSet.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.dgvPmtSet.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvPmtSet.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.TableSet});
            this.dgvPmtSet.Location = new System.Drawing.Point(1095, 130);
            this.dgvPmtSet.Name = "dgvPmtSet";
            this.dgvPmtSet.ReadOnly = true;
            this.dgvPmtSet.RowTemplate.Height = 23;
            this.dgvPmtSet.Size = new System.Drawing.Size(329, 404);
            this.dgvPmtSet.TabIndex = 3;
            // 
            // TableSet
            // 
            this.TableSet.DataPropertyName = "TableSet";
            this.TableSet.HeaderText = "配置信息";
            this.TableSet.Name = "TableSet";
            this.TableSet.ReadOnly = true;
            this.TableSet.Width = 400;
            // 
            // txtResult
            // 
            this.txtResult.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.txtResult.Location = new System.Drawing.Point(400, 130);
            this.txtResult.Name = "txtResult";
            this.txtResult.Size = new System.Drawing.Size(697, 404);
            this.txtResult.TabIndex = 2;
            this.txtResult.Text = "";
            // 
            // txtSet
            // 
            this.txtSet.Location = new System.Drawing.Point(0, 130);
            this.txtSet.Name = "txtSet";
            this.txtSet.Size = new System.Drawing.Size(400, 404);
            this.txtSet.TabIndex = 1;
            this.txtSet.Text = "";
            this.txtSet.WordWrap = false;
            // 
            // exPanel1
            // 
            this.exPanel1.Controls.Add(this.btnAction);
            this.exPanel1.Controls.Add(this.btnService);
            this.exPanel1.Controls.Add(this.btnDao);
            this.exPanel1.Controls.Add(this.btnMapper);
            this.exPanel1.Controls.Add(this.btnBean);
            this.exPanel1.Controls.Add(this.btnExit);
            this.exPanel1.Controls.Add(this.btnXml);
            this.exPanel1.Controls.Add(this.btnJs);
            this.exPanel1.Controls.Add(this.btnSaveSql);
            this.exPanel1.Controls.Add(this.btnGetSql);
            this.exPanel1.Controls.Add(this.cbDelete);
            this.exPanel1.Controls.Add(this.cbEdit);
            this.exPanel1.Controls.Add(this.cbInsert);
            this.exPanel1.Controls.Add(this.cbPage);
            this.exPanel1.Controls.Add(this.txtValue);
            this.exPanel1.Controls.Add(this.lbparam);
            this.exPanel1.Controls.Add(this.cbNo);
            this.exPanel1.Controls.Add(this.btnSet);
            this.exPanel1.Controls.Add(this.btnSave);
            this.exPanel1.Controls.Add(this.cbSearch);
            this.exPanel1.Controls.Add(this.btnRead);
            this.exPanel1.Controls.Add(this.txtClassName);
            this.exPanel1.Controls.Add(this.txtPrefix);
            this.exPanel1.Controls.Add(this.txtCatalog);
            this.exPanel1.Controls.Add(this.txtPackage);
            this.exPanel1.Controls.Add(this.ddlTable);
            this.exPanel1.Controls.Add(this.ddlDB);
            this.exPanel1.Controls.Add(this.lbclassname);
            this.exPanel1.Controls.Add(this.pbprefix);
            this.exPanel1.Controls.Add(this.lbclass);
            this.exPanel1.Controls.Add(this.lbpkg);
            this.exPanel1.Controls.Add(this.lbtb);
            this.exPanel1.Controls.Add(this.lbdb);
            this.exPanel1.Dock = System.Windows.Forms.DockStyle.Top;
            this.exPanel1.Location = new System.Drawing.Point(0, 0);
            this.exPanel1.Name = "exPanel1";
            this.exPanel1.Size = new System.Drawing.Size(1425, 130);
            this.exPanel1.TabIndex = 0;
            // 
            // btnAction
            // 
            this.btnAction.BackColor = System.Drawing.Color.Transparent;
            this.btnAction.BaseColor = System.Drawing.SystemColors.Highlight;
            this.btnAction.ButtonColor = System.Drawing.SystemColors.GradientActiveCaption;
            this.btnAction.ButtonText = "生成Action";
            this.btnAction.Font = new System.Drawing.Font("微软雅黑", 10.5F, System.Drawing.FontStyle.Bold);
            this.btnAction.ForeColor = System.Drawing.Color.Black;
            this.btnAction.Location = new System.Drawing.Point(1098, 66);
            this.btnAction.Name = "btnAction";
            this.btnAction.Size = new System.Drawing.Size(74, 48);
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
            this.btnService.Location = new System.Drawing.Point(1018, 66);
            this.btnService.Name = "btnService";
            this.btnService.Size = new System.Drawing.Size(74, 48);
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
            this.btnDao.Location = new System.Drawing.Point(938, 66);
            this.btnDao.Name = "btnDao";
            this.btnDao.Size = new System.Drawing.Size(74, 48);
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
            this.btnMapper.Location = new System.Drawing.Point(852, 66);
            this.btnMapper.Name = "btnMapper";
            this.btnMapper.Size = new System.Drawing.Size(80, 48);
            this.btnMapper.TabIndex = 22;
            this.btnMapper.Click += new System.EventHandler(this.btnMapper_Click);
            // 
            // btnBean
            // 
            this.btnBean.BackColor = System.Drawing.Color.Transparent;
            this.btnBean.BaseColor = System.Drawing.SystemColors.Highlight;
            this.btnBean.ButtonColor = System.Drawing.SystemColors.GradientActiveCaption;
            this.btnBean.ButtonText = "生成BEAN";
            this.btnBean.Font = new System.Drawing.Font("微软雅黑", 10.5F, System.Drawing.FontStyle.Bold);
            this.btnBean.ForeColor = System.Drawing.Color.Black;
            this.btnBean.Location = new System.Drawing.Point(692, 66);
            this.btnBean.Name = "btnBean";
            this.btnBean.Size = new System.Drawing.Size(74, 48);
            this.btnBean.TabIndex = 21;
            this.btnBean.Click += new System.EventHandler(this.btnBean_Click);
            // 
            // btnExit
            // 
            this.btnExit.BackColor = System.Drawing.Color.Transparent;
            this.btnExit.BaseColor = System.Drawing.SystemColors.Highlight;
            this.btnExit.ButtonColor = System.Drawing.SystemColors.GradientActiveCaption;
            this.btnExit.ButtonText = "退出";
            this.btnExit.Font = new System.Drawing.Font("微软雅黑", 10.5F, System.Drawing.FontStyle.Bold);
            this.btnExit.ForeColor = System.Drawing.Color.Black;
            this.btnExit.Location = new System.Drawing.Point(932, 12);
            this.btnExit.Name = "btnExit";
            this.btnExit.Size = new System.Drawing.Size(74, 48);
            this.btnExit.TabIndex = 26;
            this.btnExit.Click += new System.EventHandler(this.btnExit_Click);
            // 
            // btnXml
            // 
            this.btnXml.BackColor = System.Drawing.Color.Transparent;
            this.btnXml.BaseColor = System.Drawing.SystemColors.Highlight;
            this.btnXml.ButtonColor = System.Drawing.SystemColors.GradientActiveCaption;
            this.btnXml.ButtonText = "生成XML";
            this.btnXml.Font = new System.Drawing.Font("微软雅黑", 10.5F, System.Drawing.FontStyle.Bold);
            this.btnXml.ForeColor = System.Drawing.Color.Black;
            this.btnXml.Location = new System.Drawing.Point(772, 66);
            this.btnXml.Name = "btnXml";
            this.btnXml.Size = new System.Drawing.Size(74, 48);
            this.btnXml.TabIndex = 20;
            this.btnXml.Click += new System.EventHandler(this.btnXml_Click);
            // 
            // btnJs
            // 
            this.btnJs.BackColor = System.Drawing.Color.Transparent;
            this.btnJs.BaseColor = System.Drawing.SystemColors.Highlight;
            this.btnJs.ButtonColor = System.Drawing.SystemColors.GradientActiveCaption;
            this.btnJs.ButtonText = "生成JS语句";
            this.btnJs.Font = new System.Drawing.Font("微软雅黑", 10.5F, System.Drawing.FontStyle.Bold);
            this.btnJs.ForeColor = System.Drawing.Color.Black;
            this.btnJs.Location = new System.Drawing.Point(852, 12);
            this.btnJs.Name = "btnJs";
            this.btnJs.Size = new System.Drawing.Size(74, 48);
            this.btnJs.TabIndex = 19;
            this.btnJs.Click += new System.EventHandler(this.btnJs_Click);
            // 
            // btnSaveSql
            // 
            this.btnSaveSql.BackColor = System.Drawing.Color.Transparent;
            this.btnSaveSql.BaseColor = System.Drawing.SystemColors.Highlight;
            this.btnSaveSql.ButtonColor = System.Drawing.SystemColors.GradientActiveCaption;
            this.btnSaveSql.ButtonText = "生成保存语句";
            this.btnSaveSql.Font = new System.Drawing.Font("微软雅黑", 10.5F, System.Drawing.FontStyle.Bold);
            this.btnSaveSql.ForeColor = System.Drawing.Color.Black;
            this.btnSaveSql.Location = new System.Drawing.Point(772, 12);
            this.btnSaveSql.Name = "btnSaveSql";
            this.btnSaveSql.Size = new System.Drawing.Size(74, 48);
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
            this.btnGetSql.Location = new System.Drawing.Point(692, 12);
            this.btnGetSql.Name = "btnGetSql";
            this.btnGetSql.Size = new System.Drawing.Size(74, 48);
            this.btnGetSql.TabIndex = 17;
            this.btnGetSql.Click += new System.EventHandler(this.btnGetSql_Click);
            // 
            // cbDelete
            // 
            this.cbDelete.AutoSize = true;
            this.cbDelete.Checked = true;
            this.cbDelete.CheckState = System.Windows.Forms.CheckState.Checked;
            this.cbDelete.Location = new System.Drawing.Point(637, 40);
            this.cbDelete.Name = "cbDelete";
            this.cbDelete.Size = new System.Drawing.Size(48, 16);
            this.cbDelete.TabIndex = 14;
            this.cbDelete.Text = "删除";
            this.cbDelete.UseVisualStyleBackColor = true;
            // 
            // cbEdit
            // 
            this.cbEdit.AutoSize = true;
            this.cbEdit.Checked = true;
            this.cbEdit.CheckState = System.Windows.Forms.CheckState.Checked;
            this.cbEdit.Location = new System.Drawing.Point(637, 14);
            this.cbEdit.Name = "cbEdit";
            this.cbEdit.Size = new System.Drawing.Size(48, 16);
            this.cbEdit.TabIndex = 12;
            this.cbEdit.Text = "修改";
            this.cbEdit.UseVisualStyleBackColor = true;
            // 
            // cbInsert
            // 
            this.cbInsert.AutoSize = true;
            this.cbInsert.Checked = true;
            this.cbInsert.CheckState = System.Windows.Forms.CheckState.Checked;
            this.cbInsert.Location = new System.Drawing.Point(583, 40);
            this.cbInsert.Name = "cbInsert";
            this.cbInsert.Size = new System.Drawing.Size(48, 16);
            this.cbInsert.TabIndex = 13;
            this.cbInsert.Text = "新增";
            this.cbInsert.UseVisualStyleBackColor = true;
            this.cbInsert.CheckedChanged += new System.EventHandler(this.cbInsert_CheckedChanged);
            // 
            // cbPage
            // 
            this.cbPage.AutoSize = true;
            this.cbPage.Location = new System.Drawing.Point(583, 14);
            this.cbPage.Name = "cbPage";
            this.cbPage.Size = new System.Drawing.Size(48, 16);
            this.cbPage.TabIndex = 11;
            this.cbPage.Text = "分页";
            this.cbPage.UseVisualStyleBackColor = true;
            this.cbPage.CheckedChanged += new System.EventHandler(this.cbPage_CheckedChanged);
            // 
            // txtValue
            // 
            this.txtValue.Location = new System.Drawing.Point(535, 96);
            this.txtValue.Name = "txtValue";
            this.txtValue.Size = new System.Drawing.Size(150, 21);
            this.txtValue.TabIndex = 8;
            // 
            // lbparam
            // 
            this.lbparam.AutoSize = true;
            this.lbparam.Location = new System.Drawing.Point(476, 100);
            this.lbparam.Name = "lbparam";
            this.lbparam.Size = new System.Drawing.Size(41, 12);
            this.lbparam.TabIndex = 0;
            this.lbparam.Text = "变量：";
            // 
            // cbNo
            // 
            this.cbNo.AutoSize = true;
            this.cbNo.Location = new System.Drawing.Point(589, 69);
            this.cbNo.Name = "cbNo";
            this.cbNo.Size = new System.Drawing.Size(84, 16);
            this.cbNo.TabIndex = 16;
            this.cbNo.Text = "List无参数";
            this.cbNo.UseVisualStyleBackColor = true;
            // 
            // btnSet
            // 
            this.btnSet.BackColor = System.Drawing.Color.Transparent;
            this.btnSet.BaseColor = System.Drawing.SystemColors.Highlight;
            this.btnSet.ButtonColor = System.Drawing.SystemColors.GradientActiveCaption;
            this.btnSet.ButtonText = "分析配置";
            this.btnSet.Font = new System.Drawing.Font("微软雅黑", 10.5F, System.Drawing.FontStyle.Bold);
            this.btnSet.ForeColor = System.Drawing.Color.Black;
            this.btnSet.Location = new System.Drawing.Point(430, 12);
            this.btnSet.Name = "btnSet";
            this.btnSet.Size = new System.Drawing.Size(63, 48);
            this.btnSet.TabIndex = 9;
            this.btnSet.Click += new System.EventHandler(this.btnSet_Click);
            // 
            // btnSave
            // 
            this.btnSave.BackColor = System.Drawing.Color.Transparent;
            this.btnSave.BaseColor = System.Drawing.SystemColors.Highlight;
            this.btnSave.ButtonColor = System.Drawing.SystemColors.GradientActiveCaption;
            this.btnSave.ButtonText = "保存配置";
            this.btnSave.Font = new System.Drawing.Font("微软雅黑", 10.5F, System.Drawing.FontStyle.Bold);
            this.btnSave.ForeColor = System.Drawing.Color.Black;
            this.btnSave.Location = new System.Drawing.Point(508, 12);
            this.btnSave.Name = "btnSave";
            this.btnSave.Size = new System.Drawing.Size(63, 48);
            this.btnSave.TabIndex = 10;
            this.btnSave.Click += new System.EventHandler(this.btnSave_Click);
            // 
            // cbSearch
            // 
            this.cbSearch.AutoSize = true;
            this.cbSearch.Checked = true;
            this.cbSearch.CheckState = System.Windows.Forms.CheckState.Checked;
            this.cbSearch.Location = new System.Drawing.Point(478, 71);
            this.cbSearch.Name = "cbSearch";
            this.cbSearch.Size = new System.Drawing.Size(96, 16);
            this.cbSearch.TabIndex = 15;
            this.cbSearch.Text = "是否含Search";
            this.cbSearch.UseVisualStyleBackColor = true;
            // 
            // btnRead
            // 
            this.btnRead.BackColor = System.Drawing.Color.Transparent;
            this.btnRead.BaseColor = System.Drawing.SystemColors.Highlight;
            this.btnRead.ButtonColor = System.Drawing.SystemColors.GradientActiveCaption;
            this.btnRead.ButtonText = "读取字段";
            this.btnRead.Font = new System.Drawing.Font("微软雅黑", 10.5F, System.Drawing.FontStyle.Bold);
            this.btnRead.ForeColor = System.Drawing.Color.Black;
            this.btnRead.Location = new System.Drawing.Point(350, 12);
            this.btnRead.Name = "btnRead";
            this.btnRead.Size = new System.Drawing.Size(63, 48);
            this.btnRead.TabIndex = 3;
            this.btnRead.Click += new System.EventHandler(this.btnRead_Click);
            // 
            // txtClassName
            // 
            this.txtClassName.Location = new System.Drawing.Point(302, 96);
            this.txtClassName.Name = "txtClassName";
            this.txtClassName.Size = new System.Drawing.Size(150, 21);
            this.txtClassName.TabIndex = 7;
            // 
            // txtPrefix
            // 
            this.txtPrefix.Location = new System.Drawing.Point(302, 69);
            this.txtPrefix.Name = "txtPrefix";
            this.txtPrefix.Size = new System.Drawing.Size(150, 21);
            this.txtPrefix.TabIndex = 5;
            // 
            // txtCatalog
            // 
            this.txtCatalog.Location = new System.Drawing.Point(77, 96);
            this.txtCatalog.Name = "txtCatalog";
            this.txtCatalog.Size = new System.Drawing.Size(150, 21);
            this.txtCatalog.TabIndex = 6;
            // 
            // txtPackage
            // 
            this.txtPackage.Location = new System.Drawing.Point(77, 69);
            this.txtPackage.Name = "txtPackage";
            this.txtPackage.Size = new System.Drawing.Size(150, 21);
            this.txtPackage.TabIndex = 4;
            // 
            // ddlTable
            // 
            this.ddlTable.FormattingEnabled = true;
            this.ddlTable.Location = new System.Drawing.Point(77, 38);
            this.ddlTable.Name = "ddlTable";
            this.ddlTable.Size = new System.Drawing.Size(255, 20);
            this.ddlTable.TabIndex = 2;
            // 
            // ddlDB
            // 
            this.ddlDB.FormattingEnabled = true;
            this.ddlDB.Location = new System.Drawing.Point(77, 12);
            this.ddlDB.Name = "ddlDB";
            this.ddlDB.Size = new System.Drawing.Size(255, 20);
            this.ddlDB.TabIndex = 1;
            // 
            // lbclassname
            // 
            this.lbclassname.AutoSize = true;
            this.lbclassname.Location = new System.Drawing.Point(243, 100);
            this.lbclassname.Name = "lbclassname";
            this.lbclassname.Size = new System.Drawing.Size(41, 12);
            this.lbclassname.TabIndex = 0;
            this.lbclassname.Text = "类名：";
            // 
            // pbprefix
            // 
            this.pbprefix.AutoSize = true;
            this.pbprefix.Location = new System.Drawing.Point(243, 73);
            this.pbprefix.Name = "pbprefix";
            this.pbprefix.Size = new System.Drawing.Size(41, 12);
            this.pbprefix.TabIndex = 0;
            this.pbprefix.Text = "前缀：";
            // 
            // lbclass
            // 
            this.lbclass.AutoSize = true;
            this.lbclass.Location = new System.Drawing.Point(18, 100);
            this.lbclass.Name = "lbclass";
            this.lbclass.Size = new System.Drawing.Size(53, 12);
            this.lbclass.TabIndex = 0;
            this.lbclass.Text = "类目录：";
            // 
            // lbpkg
            // 
            this.lbpkg.AutoSize = true;
            this.lbpkg.Location = new System.Drawing.Point(18, 73);
            this.lbpkg.Name = "lbpkg";
            this.lbpkg.Size = new System.Drawing.Size(41, 12);
            this.lbpkg.TabIndex = 0;
            this.lbpkg.Text = "包名：";
            // 
            // lbtb
            // 
            this.lbtb.AutoSize = true;
            this.lbtb.Location = new System.Drawing.Point(18, 42);
            this.lbtb.Name = "lbtb";
            this.lbtb.Size = new System.Drawing.Size(53, 12);
            this.lbtb.TabIndex = 0;
            this.lbtb.Text = "数据表：";
            // 
            // lbdb
            // 
            this.lbdb.AutoSize = true;
            this.lbdb.Location = new System.Drawing.Point(18, 16);
            this.lbdb.Name = "lbdb";
            this.lbdb.Size = new System.Drawing.Size(53, 12);
            this.lbdb.TabIndex = 0;
            this.lbdb.Text = "数据库：";
            // 
            // CodeBuild
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.ClientSize = new System.Drawing.Size(1425, 743);
            this.Controls.Add(this.dgvColumn);
            this.Controls.Add(this.dgvPmtSet);
            this.Controls.Add(this.txtResult);
            this.Controls.Add(this.txtSet);
            this.Controls.Add(this.exPanel1);
            this.KeyPreview = false;
            this.MaximizeBox = true;
            this.MinimizeBox = true;
            this.Name = "CodeBuild";
            this.StartPosition = System.Windows.Forms.FormStartPosition.WindowsDefaultLocation;
            this.Text = "生成存储过程";
            ((System.ComponentModel.ISupportInitialize)(this.dgvColumn)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dgvPmtSet)).EndInit();
            this.exPanel1.ResumeLayout(false);
            this.exPanel1.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private GuFun.WinControls.ExPanel exPanel1;
        private System.Windows.Forms.Label lbclassname;
        private System.Windows.Forms.Label pbprefix;
        private System.Windows.Forms.Label lbclass;
        private System.Windows.Forms.Label lbpkg;
        private System.Windows.Forms.Label lbtb;
        private System.Windows.Forms.Label lbdb;
        private System.Windows.Forms.TextBox txtClassName;
        private System.Windows.Forms.TextBox txtPrefix;
        private System.Windows.Forms.TextBox txtCatalog;
        private System.Windows.Forms.TextBox txtPackage;
        private System.Windows.Forms.ComboBox ddlTable;
        private System.Windows.Forms.ComboBox ddlDB;
        private GuFun.WinControls.VistaButton btnRead;
        private GuFun.WinControls.VistaButton btnSet;
        private GuFun.WinControls.VistaButton btnSave;
        private System.Windows.Forms.CheckBox cbSearch;
        private System.Windows.Forms.CheckBox cbNo;
        private System.Windows.Forms.Label lbparam;
        private System.Windows.Forms.TextBox txtValue;
        private System.Windows.Forms.CheckBox cbDelete;
        private System.Windows.Forms.CheckBox cbEdit;
        private System.Windows.Forms.CheckBox cbInsert;
        private System.Windows.Forms.CheckBox cbPage;
        private GuFun.WinControls.VistaButton btnAction;
        private GuFun.WinControls.VistaButton btnService;
        private GuFun.WinControls.VistaButton btnDao;
        private GuFun.WinControls.VistaButton btnMapper;
        private GuFun.WinControls.VistaButton btnBean;
        private GuFun.WinControls.VistaButton btnExit;
        private GuFun.WinControls.VistaButton btnXml;
        private GuFun.WinControls.VistaButton btnJs;
        private GuFun.WinControls.VistaButton btnSaveSql;
        private GuFun.WinControls.VistaButton btnGetSql;
        private System.Windows.Forms.RichTextBox txtSet;
        private System.Windows.Forms.RichTextBox txtResult;
        private System.Windows.Forms.DataGridView dgvPmtSet;
        private System.Windows.Forms.DataGridViewTextBoxColumn TableSet;
        private System.Windows.Forms.DataGridView dgvColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn ColumnID;
        private System.Windows.Forms.DataGridViewTextBoxColumn ColumnName;
        private System.Windows.Forms.DataGridViewTextBoxColumn ColumnCode;
        private System.Windows.Forms.DataGridViewTextBoxColumn DataType;
        private System.Windows.Forms.DataGridViewTextBoxColumn ColumnLength;
        private System.Windows.Forms.DataGridViewTextBoxColumn ColumnPrecision;
        private System.Windows.Forms.DataGridViewCheckBoxColumn ColumnIdentity;
        private System.Windows.Forms.DataGridViewCheckBoxColumn ColumnNotNull;
    }
}
