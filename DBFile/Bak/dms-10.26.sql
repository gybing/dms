/*
Navicat SQL Server Data Transfer

Source Server         : DB
Source Server Version : 105000
Source Host           : 127.0.0.1:1433
Source Database       : jhdms
Source Schema         : dbo

Target Server Type    : SQL Server
Target Server Version : 105000
File Encoding         : 65001

Date: 2017-10-26 15:27:59
*/


-- ----------------------------
-- Table structure for H_DMS_COLUMN
-- ----------------------------
DROP TABLE [dbo].[H_DMS_COLUMN]
GO
CREATE TABLE [dbo].[H_DMS_COLUMN] (
[DBID] int NOT NULL ,
[TableCode] nvarchar(40) NOT NULL ,
[ColumnID] int NOT NULL ,
[ColumnName] nvarchar(40) NOT NULL ,
[ColumnCode] nvarchar(40) NOT NULL ,
[DataType] nvarchar(40) NOT NULL ,
[ColumnLength] int NOT NULL ,
[ColumnPrecision] int NOT NULL ,
[ColumnIdentity] bit NOT NULL ,
[ColumnNotNull] bit NOT NULL ,
[NowSerial] int NOT NULL ,
[PreSerial] int NOT NULL ,
[RecoDate] datetime NOT NULL 
)


GO

-- ----------------------------
-- Records of H_DMS_COLUMN
-- ----------------------------
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'1', N'T_Bus_Ask', N'1', N'答案编号', N'AskID', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1', N'2017-10-24 13:24:14.077')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'1', N'T_Bus_Ask', N'2', N'问题内容', N'AskContent', N'varchar(200)', N'200', N'0', N'0', N'0', N'1', N'1', N'2017-10-24 13:24:14.077')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'1', N'T_Bus_Ask', N'3', N'答案内容', N'AnswerContent', N'text', N'0', N'0', N'0', N'0', N'1', N'1', N'2017-10-24 13:24:14.077')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'1', N'T_Bus_Ask', N'4', N'是否已回答', N'IsAnswered', N'bit', N'0', N'0', N'0', N'0', N'1', N'1', N'2017-10-24 13:24:14.077')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'1', N'T_Bus_Ask', N'5', N'填写人', N'TranUser', N'varchar(14)', N'14', N'0', N'0', N'0', N'1', N'1', N'2017-10-24 13:24:14.077')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'1', N'T_Bus_Ask', N'6', N'填写人姓名', N'TranUserName', N'nvarchar(10)', N'10', N'0', N'0', N'0', N'1', N'1', N'2017-10-24 13:24:14.077')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'1', N'T_Bus_Ask', N'7', N'填写时间', N'TranDate', N'datetime', N'0', N'0', N'0', N'0', N'1', N'1', N'2017-10-24 13:24:14.077')
GO
GO

-- ----------------------------
-- Table structure for H_DMS_INDEX
-- ----------------------------
DROP TABLE [dbo].[H_DMS_INDEX]
GO
CREATE TABLE [dbo].[H_DMS_INDEX] (
[DBID] int NOT NULL ,
[TableCode] nvarchar(40) NOT NULL ,
[IndexID] int NOT NULL ,
[IndexName] nvarchar(40) NOT NULL ,
[IndexCode] nvarchar(40) NOT NULL ,
[IsUnique] bit NOT NULL ,
[NowSerial] int NOT NULL 
)


GO

-- ----------------------------
-- Records of H_DMS_INDEX
-- ----------------------------

-- ----------------------------
-- Table structure for H_DMS_INDEX_COLUMN
-- ----------------------------
DROP TABLE [dbo].[H_DMS_INDEX_COLUMN]
GO
CREATE TABLE [dbo].[H_DMS_INDEX_COLUMN] (
[DBID] int NOT NULL ,
[TableCode] nvarchar(40) NOT NULL ,
[IndexCode] nvarchar(40) NOT NULL ,
[ColumnCode] nvarchar(40) NOT NULL ,
[NowSerial] int NOT NULL 
)


GO

-- ----------------------------
-- Records of H_DMS_INDEX_COLUMN
-- ----------------------------

-- ----------------------------
-- Table structure for H_DMS_KEY
-- ----------------------------
DROP TABLE [dbo].[H_DMS_KEY]
GO
CREATE TABLE [dbo].[H_DMS_KEY] (
[DBID] int NOT NULL ,
[TableCode] nvarchar(40) NOT NULL ,
[KeyID] int NOT NULL ,
[KeyName] nvarchar(40) NOT NULL ,
[KeyCode] nvarchar(40) NOT NULL ,
[IsPrimary] bit NOT NULL ,
[NowSerial] int NOT NULL 
)


GO

-- ----------------------------
-- Records of H_DMS_KEY
-- ----------------------------

-- ----------------------------
-- Table structure for H_DMS_KEY_COLUMN
-- ----------------------------
DROP TABLE [dbo].[H_DMS_KEY_COLUMN]
GO
CREATE TABLE [dbo].[H_DMS_KEY_COLUMN] (
[DBID] int NOT NULL ,
[TableCode] nvarchar(40) NOT NULL ,
[KeyCode] nvarchar(40) NOT NULL ,
[ColumnCode] nvarchar(40) NOT NULL ,
[NowSerial] int NOT NULL 
)


GO

-- ----------------------------
-- Records of H_DMS_KEY_COLUMN
-- ----------------------------
INSERT INTO [dbo].[H_DMS_KEY_COLUMN] ([DBID], [TableCode], [KeyCode], [ColumnCode], [NowSerial]) VALUES (N'1', N'T_Bus_Ask', N'K_Bus_Ask', N'AskID', N'1')
GO
GO

-- ----------------------------
-- Table structure for H_DMS_TABLE
-- ----------------------------
DROP TABLE [dbo].[H_DMS_TABLE]
GO
CREATE TABLE [dbo].[H_DMS_TABLE] (
[DBID] int NOT NULL ,
[TableName] nvarchar(40) NOT NULL ,
[TableCode] nvarchar(40) NOT NULL ,
[IsPmt] bit NOT NULL ,
[NowSerial] int NOT NULL ,
[RecoDate] datetime NOT NULL ,
[PreSerial] int NOT NULL ,
[Comment] nvarchar(400) NULL 
)


GO

-- ----------------------------
-- Records of H_DMS_TABLE
-- ----------------------------
INSERT INTO [dbo].[H_DMS_TABLE] ([DBID], [TableName], [TableCode], [IsPmt], [NowSerial], [RecoDate], [PreSerial], [Comment]) VALUES (N'1', N'问题表', N'T_Bus_Ask', N'0', N'1', N'2017-10-24 13:24:14.043', N'1', N'')
GO
GO

-- ----------------------------
-- Table structure for T_DMS_COLUMN
-- ----------------------------
DROP TABLE [dbo].[T_DMS_COLUMN]
GO
CREATE TABLE [dbo].[T_DMS_COLUMN] (
[DBID] int NOT NULL ,
[TableCode] nvarchar(40) NOT NULL ,
[ColumnID] int NOT NULL ,
[ColumnName] nvarchar(40) NOT NULL ,
[ColumnCode] nvarchar(40) NOT NULL ,
[DataType] nvarchar(40) NOT NULL ,
[ColumnLength] int NOT NULL ,
[ColumnPrecision] int NOT NULL ,
[ColumnIdentity] bit NOT NULL ,
[ColumnNotNull] bit NOT NULL ,
[NowSerial] int NOT NULL ,
[PreSerial] int NOT NULL 
)


GO

-- ----------------------------
-- Records of T_DMS_COLUMN
-- ----------------------------
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'1', N'T_Bus_Ask', N'1', N'答案编号', N'AskID', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'1', N'T_Bus_Ask', N'2', N'问题内容', N'AskContent', N'varchar(200)', N'200', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'1', N'T_Bus_Ask', N'3', N'答案内容', N'AnswerContent', N'text', N'0', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'1', N'T_Bus_Ask', N'4', N'是否已回答', N'IsAnswered', N'bit', N'0', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'1', N'T_Bus_Ask', N'5', N'填写人', N'TranUser', N'varchar(14)', N'14', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'1', N'T_Bus_Ask', N'6', N'填写人姓名', N'TranUserName', N'nvarchar(10)', N'10', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'1', N'T_Bus_Ask', N'7', N'填写时间', N'TranDate', N'datetime', N'0', N'0', N'0', N'0', N'1', N'1')
GO
GO

-- ----------------------------
-- Table structure for T_DMS_COLUMNTABLE
-- ----------------------------
DROP TABLE [dbo].[T_DMS_COLUMNTABLE]
GO
CREATE TABLE [dbo].[T_DMS_COLUMNTABLE] (
[DBID] int NOT NULL ,
[TableCode] nvarchar(40) NOT NULL ,
[ColumnSerial] int NOT NULL ,
[ColumnCode] nvarchar(40) NOT NULL ,
[RelaTable] nvarchar(40) NOT NULL ,
[RelaColumn] nvarchar(40) NOT NULL ,
[DisplayColumn] nvarchar(40) NOT NULL ,
[Prefix] nvarchar(2) NOT NULL 
)


GO

-- ----------------------------
-- Records of T_DMS_COLUMNTABLE
-- ----------------------------
INSERT INTO [dbo].[T_DMS_COLUMNTABLE] ([DBID], [TableCode], [ColumnSerial], [ColumnCode], [RelaTable], [RelaColumn], [DisplayColumn], [Prefix]) VALUES (N'1', N'T_Bus_Farmer_Land', N'1', N'FarmerID', N'T_Bus_Farmer_Land', N'FarmerID', N'FarmerID', N'a')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMNTABLE] ([DBID], [TableCode], [ColumnSerial], [ColumnCode], [RelaTable], [RelaColumn], [DisplayColumn], [Prefix]) VALUES (N'1', N'T_Bus_Farmer_Land', N'2', N'AmendsType', N'T_Bus_Farmer_Land', N'AmendsType', N'AmendsType', N'a')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMNTABLE] ([DBID], [TableCode], [ColumnSerial], [ColumnCode], [RelaTable], [RelaColumn], [DisplayColumn], [Prefix]) VALUES (N'1', N'T_Bus_Farmer_Land', N'3', N'AmendsTypeName', N'T_Bus_Farmer_Land', N'AmendsTypeName', N'AmendsTypeName', N'a')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMNTABLE] ([DBID], [TableCode], [ColumnSerial], [ColumnCode], [RelaTable], [RelaColumn], [DisplayColumn], [Prefix]) VALUES (N'1', N'T_Bus_Farmer_Land', N'4', N'LandArea', N'T_Bus_Farmer_Land', N'LandArea', N'LandArea', N'a')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMNTABLE] ([DBID], [TableCode], [ColumnSerial], [ColumnCode], [RelaTable], [RelaColumn], [DisplayColumn], [Prefix]) VALUES (N'1', N'T_Bus_Farmer_Land', N'5', N'AmendsStand', N'T_Bus_Farmer_Land', N'AmendsStand', N'AmendsStand', N'a')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMNTABLE] ([DBID], [TableCode], [ColumnSerial], [ColumnCode], [RelaTable], [RelaColumn], [DisplayColumn], [Prefix]) VALUES (N'1', N'T_Bus_Farmer_Land', N'6', N'AmendsDate', N'T_Bus_Farmer_Land', N'AmendsDate', N'AmendsDate', N'a')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMNTABLE] ([DBID], [TableCode], [ColumnSerial], [ColumnCode], [RelaTable], [RelaColumn], [DisplayColumn], [Prefix]) VALUES (N'1', N'T_Bus_Farmer_Land', N'7', N'Remark', N'T_Bus_Farmer_Land', N'Remark', N'Remark', N'a')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMNTABLE] ([DBID], [TableCode], [ColumnSerial], [ColumnCode], [RelaTable], [RelaColumn], [DisplayColumn], [Prefix]) VALUES (N'1', N'T_Bus_Ask', N'1', N'AskID', N'T_Bus_Ask', N'AskID', N'AskID', N'a')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMNTABLE] ([DBID], [TableCode], [ColumnSerial], [ColumnCode], [RelaTable], [RelaColumn], [DisplayColumn], [Prefix]) VALUES (N'1', N'T_Bus_Ask', N'2', N'AskContent', N'T_Bus_Ask', N'AskContent', N'AskContent', N'a')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMNTABLE] ([DBID], [TableCode], [ColumnSerial], [ColumnCode], [RelaTable], [RelaColumn], [DisplayColumn], [Prefix]) VALUES (N'1', N'T_Bus_Ask', N'3', N'AnswerContent', N'T_Bus_Ask', N'AnswerContent', N'AnswerContent', N'a')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMNTABLE] ([DBID], [TableCode], [ColumnSerial], [ColumnCode], [RelaTable], [RelaColumn], [DisplayColumn], [Prefix]) VALUES (N'1', N'T_Bus_Ask', N'4', N'IsAnswered', N'T_Bus_Ask', N'IsAnswered', N'IsAnswered', N'a')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMNTABLE] ([DBID], [TableCode], [ColumnSerial], [ColumnCode], [RelaTable], [RelaColumn], [DisplayColumn], [Prefix]) VALUES (N'1', N'T_Bus_Ask', N'5', N'TranUser', N'T_Bus_Ask', N'TranUser', N'TranUser', N'a')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMNTABLE] ([DBID], [TableCode], [ColumnSerial], [ColumnCode], [RelaTable], [RelaColumn], [DisplayColumn], [Prefix]) VALUES (N'1', N'T_Bus_Ask', N'6', N'TranUserName', N'T_Bus_Ask', N'TranUserName', N'TranUserName', N'a')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMNTABLE] ([DBID], [TableCode], [ColumnSerial], [ColumnCode], [RelaTable], [RelaColumn], [DisplayColumn], [Prefix]) VALUES (N'1', N'T_Bus_Ask', N'7', N'TranDate', N'T_Bus_Ask', N'TranDate', N'TranDate', N'a')
GO
GO

-- ----------------------------
-- Table structure for T_DMS_DB
-- ----------------------------
DROP TABLE [dbo].[T_DMS_DB]
GO
CREATE TABLE [dbo].[T_DMS_DB] (
[DBID] int NOT NULL ,
[DBName] nvarchar(40) NOT NULL ,
[DBCode] nvarchar(40) NOT NULL ,
[DBSerial] int NOT NULL 
)


GO

-- ----------------------------
-- Records of T_DMS_DB
-- ----------------------------
INSERT INTO [dbo].[T_DMS_DB] ([DBID], [DBName], [DBCode], [DBSerial]) VALUES (N'1', N'生产力', N'生产力', N'1')
GO
GO

-- ----------------------------
-- Table structure for T_DMS_INDEX
-- ----------------------------
DROP TABLE [dbo].[T_DMS_INDEX]
GO
CREATE TABLE [dbo].[T_DMS_INDEX] (
[DBID] int NOT NULL ,
[TableCode] nvarchar(40) NOT NULL ,
[IndexID] int NOT NULL ,
[IndexName] nvarchar(40) NOT NULL ,
[IndexCode] nvarchar(40) NOT NULL ,
[IsUnique] bit NOT NULL 
)


GO

-- ----------------------------
-- Records of T_DMS_INDEX
-- ----------------------------

-- ----------------------------
-- Table structure for T_DMS_INDEX_COLUMN
-- ----------------------------
DROP TABLE [dbo].[T_DMS_INDEX_COLUMN]
GO
CREATE TABLE [dbo].[T_DMS_INDEX_COLUMN] (
[DBID] int NOT NULL ,
[TableCode] nvarchar(40) NOT NULL ,
[IndexCode] nvarchar(40) NOT NULL ,
[ColumnCode] nvarchar(40) NOT NULL 
)


GO

-- ----------------------------
-- Records of T_DMS_INDEX_COLUMN
-- ----------------------------

-- ----------------------------
-- Table structure for T_DMS_KEY
-- ----------------------------
DROP TABLE [dbo].[T_DMS_KEY]
GO
CREATE TABLE [dbo].[T_DMS_KEY] (
[DBID] int NOT NULL ,
[TableCode] nvarchar(40) NOT NULL ,
[KeyID] int NOT NULL ,
[KeyName] nvarchar(40) NOT NULL ,
[KeyCode] nvarchar(40) NOT NULL ,
[IsPrimary] bit NOT NULL 
)


GO

-- ----------------------------
-- Records of T_DMS_KEY
-- ----------------------------
INSERT INTO [dbo].[T_DMS_KEY] ([DBID], [TableCode], [KeyID], [KeyName], [KeyCode], [IsPrimary]) VALUES (N'1', N'T_Bus_Ask', N'1', N'K_Bus_Ask', N'K_Bus_Ask', N'1')
GO
GO

-- ----------------------------
-- Table structure for T_DMS_KEY_COLUMN
-- ----------------------------
DROP TABLE [dbo].[T_DMS_KEY_COLUMN]
GO
CREATE TABLE [dbo].[T_DMS_KEY_COLUMN] (
[DBID] int NOT NULL ,
[TableCode] nvarchar(40) NOT NULL ,
[KeyCode] nvarchar(40) NOT NULL ,
[ColumnCode] nvarchar(40) NOT NULL 
)


GO

-- ----------------------------
-- Records of T_DMS_KEY_COLUMN
-- ----------------------------
INSERT INTO [dbo].[T_DMS_KEY_COLUMN] ([DBID], [TableCode], [KeyCode], [ColumnCode]) VALUES (N'1', N'T_Bus_Ask', N'K_Bus_Ask', N'AskID')
GO
GO

-- ----------------------------
-- Table structure for T_DMS_PMTSET
-- ----------------------------
DROP TABLE [dbo].[T_DMS_PMTSET]
GO
CREATE TABLE [dbo].[T_DMS_PMTSET] (
[DBID] int NOT NULL ,
[TableSet] nvarchar(400) NOT NULL 
)


GO

-- ----------------------------
-- Records of T_DMS_PMTSET
-- ----------------------------

-- ----------------------------
-- Table structure for T_DMS_TABLE
-- ----------------------------
DROP TABLE [dbo].[T_DMS_TABLE]
GO
CREATE TABLE [dbo].[T_DMS_TABLE] (
[DBID] int NOT NULL ,
[TableName] nvarchar(40) NOT NULL ,
[TableCode] nvarchar(40) NOT NULL ,
[IsPmt] bit NOT NULL ,
[NowSerial] int NOT NULL ,
[PreSerial] int NOT NULL ,
[Comment] nvarchar(400) NULL 
)


GO

-- ----------------------------
-- Records of T_DMS_TABLE
-- ----------------------------
INSERT INTO [dbo].[T_DMS_TABLE] ([DBID], [TableName], [TableCode], [IsPmt], [NowSerial], [PreSerial], [Comment]) VALUES (N'1', N'问题表', N'T_Bus_Ask', N'0', N'1', N'1', N'')
GO
GO

-- ----------------------------
-- Table structure for T_DMS_TABLESET
-- ----------------------------
DROP TABLE [dbo].[T_DMS_TABLESET]
GO
CREATE TABLE [dbo].[T_DMS_TABLESET] (
[DBID] int NOT NULL ,
[TableCode] nvarchar(40) NOT NULL ,
[TableSet] nvarchar(1000) NOT NULL 
)


GO

-- ----------------------------
-- Records of T_DMS_TABLESET
-- ----------------------------
INSERT INTO [dbo].[T_DMS_TABLESET] ([DBID], [TableCode], [TableSet]) VALUES (N'1', N'T_Bus_Ask', N'G|BusAsk|AskID
S|BusAsk|AskID')
GO
GO

-- ----------------------------
-- Table structure for T_Pmt_Auth_Bound
-- ----------------------------
DROP TABLE [dbo].[T_Pmt_Auth_Bound]
GO
CREATE TABLE [dbo].[T_Pmt_Auth_Bound] (
[Auth_Bound] smallint NOT NULL ,
[Auth_Bound_Name] nvarchar(10) NOT NULL 
)


GO

-- ----------------------------
-- Records of T_Pmt_Auth_Bound
-- ----------------------------
INSERT INTO [dbo].[T_Pmt_Auth_Bound] ([Auth_Bound], [Auth_Bound_Name]) VALUES (N'1', N'所有数据')
GO
GO
INSERT INTO [dbo].[T_Pmt_Auth_Bound] ([Auth_Bound], [Auth_Bound_Name]) VALUES (N'2', N'本部门')
GO
GO
INSERT INTO [dbo].[T_Pmt_Auth_Bound] ([Auth_Bound], [Auth_Bound_Name]) VALUES (N'3', N'本人')
GO
GO

-- ----------------------------
-- Table structure for T_Pmt_Co_Status
-- ----------------------------
DROP TABLE [dbo].[T_Pmt_Co_Status]
GO
CREATE TABLE [dbo].[T_Pmt_Co_Status] (
[Co_Status] smallint NOT NULL ,
[Co_Status_Name] nvarchar(10) NOT NULL 
)


GO

-- ----------------------------
-- Records of T_Pmt_Co_Status
-- ----------------------------
INSERT INTO [dbo].[T_Pmt_Co_Status] ([Co_Status], [Co_Status_Name]) VALUES (N'0', N'正常')
GO
GO
INSERT INTO [dbo].[T_Pmt_Co_Status] ([Co_Status], [Co_Status_Name]) VALUES (N'1', N'无效')
GO
GO

-- ----------------------------
-- Table structure for T_Pmt_Dept_Level
-- ----------------------------
DROP TABLE [dbo].[T_Pmt_Dept_Level]
GO
CREATE TABLE [dbo].[T_Pmt_Dept_Level] (
[Dept_Level] smallint NOT NULL ,
[Dept_Level_Name] nvarchar(10) NOT NULL 
)


GO

-- ----------------------------
-- Records of T_Pmt_Dept_Level
-- ----------------------------
INSERT INTO [dbo].[T_Pmt_Dept_Level] ([Dept_Level], [Dept_Level_Name]) VALUES (N'1', N'一级')
GO
GO
INSERT INTO [dbo].[T_Pmt_Dept_Level] ([Dept_Level], [Dept_Level_Name]) VALUES (N'2', N'二级')
GO
GO
INSERT INTO [dbo].[T_Pmt_Dept_Level] ([Dept_Level], [Dept_Level_Name]) VALUES (N'3', N'三级')
GO
GO
INSERT INTO [dbo].[T_Pmt_Dept_Level] ([Dept_Level], [Dept_Level_Name]) VALUES (N'4', N'四级')
GO
GO
INSERT INTO [dbo].[T_Pmt_Dept_Level] ([Dept_Level], [Dept_Level_Name]) VALUES (N'5', N'五级')
GO
GO

-- ----------------------------
-- Table structure for T_Pmt_Dept_Status
-- ----------------------------
DROP TABLE [dbo].[T_Pmt_Dept_Status]
GO
CREATE TABLE [dbo].[T_Pmt_Dept_Status] (
[Dept_Status] smallint NOT NULL ,
[Dept_Status_Name] nvarchar(10) NOT NULL 
)


GO

-- ----------------------------
-- Records of T_Pmt_Dept_Status
-- ----------------------------
INSERT INTO [dbo].[T_Pmt_Dept_Status] ([Dept_Status], [Dept_Status_Name]) VALUES (N'0', N'正常')
GO
GO
INSERT INTO [dbo].[T_Pmt_Dept_Status] ([Dept_Status], [Dept_Status_Name]) VALUES (N'1', N'无效')
GO
GO

-- ----------------------------
-- Table structure for T_Pmt_Dept_Type
-- ----------------------------
DROP TABLE [dbo].[T_Pmt_Dept_Type]
GO
CREATE TABLE [dbo].[T_Pmt_Dept_Type] (
[Dept_Type] smallint NOT NULL ,
[Dept_Type_Name] nvarchar(10) NOT NULL 
)


GO

-- ----------------------------
-- Records of T_Pmt_Dept_Type
-- ----------------------------
INSERT INTO [dbo].[T_Pmt_Dept_Type] ([Dept_Type], [Dept_Type_Name]) VALUES (N'1', N'管理')
GO
GO
INSERT INTO [dbo].[T_Pmt_Dept_Type] ([Dept_Type], [Dept_Type_Name]) VALUES (N'2', N'财务')
GO
GO
INSERT INTO [dbo].[T_Pmt_Dept_Type] ([Dept_Type], [Dept_Type_Name]) VALUES (N'3', N'营销')
GO
GO
INSERT INTO [dbo].[T_Pmt_Dept_Type] ([Dept_Type], [Dept_Type_Name]) VALUES (N'4', N'收费')
GO
GO
INSERT INTO [dbo].[T_Pmt_Dept_Type] ([Dept_Type], [Dept_Type_Name]) VALUES (N'5', N'农电')
GO
GO
INSERT INTO [dbo].[T_Pmt_Dept_Type] ([Dept_Type], [Dept_Type_Name]) VALUES (N'6', N'测试')
GO
GO

-- ----------------------------
-- Table structure for T_Pmt_Man_Level
-- ----------------------------
DROP TABLE [dbo].[T_Pmt_Man_Level]
GO
CREATE TABLE [dbo].[T_Pmt_Man_Level] (
[Man_Level] smallint NOT NULL ,
[Man_Level_Name] nvarchar(10) NOT NULL 
)


GO

-- ----------------------------
-- Records of T_Pmt_Man_Level
-- ----------------------------
INSERT INTO [dbo].[T_Pmt_Man_Level] ([Man_Level], [Man_Level_Name]) VALUES (N'1', N'一级')
GO
GO
INSERT INTO [dbo].[T_Pmt_Man_Level] ([Man_Level], [Man_Level_Name]) VALUES (N'2', N'二级')
GO
GO
INSERT INTO [dbo].[T_Pmt_Man_Level] ([Man_Level], [Man_Level_Name]) VALUES (N'3', N'三级')
GO
GO
INSERT INTO [dbo].[T_Pmt_Man_Level] ([Man_Level], [Man_Level_Name]) VALUES (N'4', N'四级')
GO
GO

-- ----------------------------
-- Table structure for T_Pmt_Man_Sex
-- ----------------------------
DROP TABLE [dbo].[T_Pmt_Man_Sex]
GO
CREATE TABLE [dbo].[T_Pmt_Man_Sex] (
[Man_Sex] smallint NOT NULL ,
[Man_Sex_Name] nvarchar(10) NOT NULL 
)


GO

-- ----------------------------
-- Records of T_Pmt_Man_Sex
-- ----------------------------
INSERT INTO [dbo].[T_Pmt_Man_Sex] ([Man_Sex], [Man_Sex_Name]) VALUES (N'1', N'男')
GO
GO
INSERT INTO [dbo].[T_Pmt_Man_Sex] ([Man_Sex], [Man_Sex_Name]) VALUES (N'2', N'女')
GO
GO
INSERT INTO [dbo].[T_Pmt_Man_Sex] ([Man_Sex], [Man_Sex_Name]) VALUES (N'3', N'未知')
GO
GO

-- ----------------------------
-- Table structure for T_Pmt_Man_Status
-- ----------------------------
DROP TABLE [dbo].[T_Pmt_Man_Status]
GO
CREATE TABLE [dbo].[T_Pmt_Man_Status] (
[Man_Status] smallint NOT NULL ,
[Man_Status_Name] nvarchar(10) NOT NULL 
)


GO

-- ----------------------------
-- Records of T_Pmt_Man_Status
-- ----------------------------
INSERT INTO [dbo].[T_Pmt_Man_Status] ([Man_Status], [Man_Status_Name]) VALUES (N'0', N'正常')
GO
GO
INSERT INTO [dbo].[T_Pmt_Man_Status] ([Man_Status], [Man_Status_Name]) VALUES (N'1', N'无效')
GO
GO

-- ----------------------------
-- Table structure for T_Pmt_Man_Title
-- ----------------------------
DROP TABLE [dbo].[T_Pmt_Man_Title]
GO
CREATE TABLE [dbo].[T_Pmt_Man_Title] (
[Man_Title] smallint NOT NULL ,
[Man_Title_Name] nvarchar(10) NOT NULL 
)


GO

-- ----------------------------
-- Records of T_Pmt_Man_Title
-- ----------------------------
INSERT INTO [dbo].[T_Pmt_Man_Title] ([Man_Title], [Man_Title_Name]) VALUES (N'1', N'正式员工')
GO
GO
INSERT INTO [dbo].[T_Pmt_Man_Title] ([Man_Title], [Man_Title_Name]) VALUES (N'2', N'聘用人员')
GO
GO

-- ----------------------------
-- Table structure for T_Pmt_Man_Type
-- ----------------------------
DROP TABLE [dbo].[T_Pmt_Man_Type]
GO
CREATE TABLE [dbo].[T_Pmt_Man_Type] (
[Man_Type] smallint NOT NULL ,
[Man_Type_Name] nvarchar(10) NOT NULL 
)


GO

-- ----------------------------
-- Records of T_Pmt_Man_Type
-- ----------------------------
INSERT INTO [dbo].[T_Pmt_Man_Type] ([Man_Type], [Man_Type_Name]) VALUES (N'27', N'银行业务员')
GO
GO
INSERT INTO [dbo].[T_Pmt_Man_Type] ([Man_Type], [Man_Type_Name]) VALUES (N'25', N'农电走收员')
GO
GO
INSERT INTO [dbo].[T_Pmt_Man_Type] ([Man_Type], [Man_Type_Name]) VALUES (N'23', N'自助收费员')
GO
GO
INSERT INTO [dbo].[T_Pmt_Man_Type] ([Man_Type], [Man_Type_Name]) VALUES (N'21', N'业务收费员')
GO
GO
INSERT INTO [dbo].[T_Pmt_Man_Type] ([Man_Type], [Man_Type_Name]) VALUES (N'19', N'电费收费员')
GO
GO
INSERT INTO [dbo].[T_Pmt_Man_Type] ([Man_Type], [Man_Type_Name]) VALUES (N'17', N'副班组长')
GO
GO
INSERT INTO [dbo].[T_Pmt_Man_Type] ([Man_Type], [Man_Type_Name]) VALUES (N'15', N'班组长')
GO
GO
INSERT INTO [dbo].[T_Pmt_Man_Type] ([Man_Type], [Man_Type_Name]) VALUES (N'14', N'核算员')
GO
GO
INSERT INTO [dbo].[T_Pmt_Man_Type] ([Man_Type], [Man_Type_Name]) VALUES (N'13', N'交换出纳')
GO
GO
INSERT INTO [dbo].[T_Pmt_Man_Type] ([Man_Type], [Man_Type_Name]) VALUES (N'11', N'财务出纳')
GO
GO
INSERT INTO [dbo].[T_Pmt_Man_Type] ([Man_Type], [Man_Type_Name]) VALUES (N'9', N'财务会计')
GO
GO
INSERT INTO [dbo].[T_Pmt_Man_Type] ([Man_Type], [Man_Type_Name]) VALUES (N'7', N'系统管理员')
GO
GO
INSERT INTO [dbo].[T_Pmt_Man_Type] ([Man_Type], [Man_Type_Name]) VALUES (N'6', N'农电所长')
GO
GO
INSERT INTO [dbo].[T_Pmt_Man_Type] ([Man_Type], [Man_Type_Name]) VALUES (N'5', N'客服中心主任')
GO
GO
INSERT INTO [dbo].[T_Pmt_Man_Type] ([Man_Type], [Man_Type_Name]) VALUES (N'4', N'电费中心主任')
GO
GO
INSERT INTO [dbo].[T_Pmt_Man_Type] ([Man_Type], [Man_Type_Name]) VALUES (N'3', N'营销主任')
GO
GO
INSERT INTO [dbo].[T_Pmt_Man_Type] ([Man_Type], [Man_Type_Name]) VALUES (N'2', N'财务主任')
GO
GO
INSERT INTO [dbo].[T_Pmt_Man_Type] ([Man_Type], [Man_Type_Name]) VALUES (N'1', N'公司领导')
GO
GO

-- ----------------------------
-- Table structure for T_Pmt_Parameter_Table
-- ----------------------------
DROP TABLE [dbo].[T_Pmt_Parameter_Table]
GO
CREATE TABLE [dbo].[T_Pmt_Parameter_Table] (
[Parameter_ID] smallint NOT NULL ,
[Parameter_Name] nvarchar(30) NOT NULL ,
[Parameter_Display] nvarchar(50) NULL 
)


GO

-- ----------------------------
-- Records of T_Pmt_Parameter_Table
-- ----------------------------
INSERT INTO [dbo].[T_Pmt_Parameter_Table] ([Parameter_ID], [Parameter_Name], [Parameter_Display]) VALUES (N'1', N'P_Get_CoStatus', N'Co_Status_Name,Co_Status')
GO
GO
INSERT INTO [dbo].[T_Pmt_Parameter_Table] ([Parameter_ID], [Parameter_Name], [Parameter_Display]) VALUES (N'2', N'P_Get_DeptStatus', N'Dept_Status_Name,Dept_Status')
GO
GO
INSERT INTO [dbo].[T_Pmt_Parameter_Table] ([Parameter_ID], [Parameter_Name], [Parameter_Display]) VALUES (N'3', N'P_Get_DeptType', N'Dept_Type_Name,Dept_Type')
GO
GO
INSERT INTO [dbo].[T_Pmt_Parameter_Table] ([Parameter_ID], [Parameter_Name], [Parameter_Display]) VALUES (N'4', N'P_Select_Company', N'Co_Name,Co_ID')
GO
GO
INSERT INTO [dbo].[T_Pmt_Parameter_Table] ([Parameter_ID], [Parameter_Name], [Parameter_Display]) VALUES (N'5', N'P_Get_DeptLevel', N'Dept_Level_Name,Dept_Level')
GO
GO
INSERT INTO [dbo].[T_Pmt_Parameter_Table] ([Parameter_ID], [Parameter_Name], [Parameter_Display]) VALUES (N'6', N'P_Get_Bank', N'Bank_Name,Bank_ID')
GO
GO
INSERT INTO [dbo].[T_Pmt_Parameter_Table] ([Parameter_ID], [Parameter_Name], [Parameter_Display]) VALUES (N'7', N'P_Get_ManType', N'Man_Type_Name,Man_Type')
GO
GO
INSERT INTO [dbo].[T_Pmt_Parameter_Table] ([Parameter_ID], [Parameter_Name], [Parameter_Display]) VALUES (N'8', N'P_Get_ManTitle', N'Man_Title_Name,Man_Title')
GO
GO
INSERT INTO [dbo].[T_Pmt_Parameter_Table] ([Parameter_ID], [Parameter_Name], [Parameter_Display]) VALUES (N'9', N'P_Get_ManLevel', N'Man_Level_Name,Man_Level')
GO
GO
INSERT INTO [dbo].[T_Pmt_Parameter_Table] ([Parameter_ID], [Parameter_Name], [Parameter_Display]) VALUES (N'10', N'P_Get_ManSex', N'Man_Sex_Name,Man_Sex')
GO
GO
INSERT INTO [dbo].[T_Pmt_Parameter_Table] ([Parameter_ID], [Parameter_Name], [Parameter_Display]) VALUES (N'11', N'P_Get_ManStatus', N'Man_Status_Name,Man_Status')
GO
GO
INSERT INTO [dbo].[T_Pmt_Parameter_Table] ([Parameter_ID], [Parameter_Name], [Parameter_Display]) VALUES (N'12', N'P_Get_AuthBound', N'Auth_Bound_Name,Auth_Bound')
GO
GO
INSERT INTO [dbo].[T_Pmt_Parameter_Table] ([Parameter_ID], [Parameter_Name], [Parameter_Display]) VALUES (N'13', N'P_Get_GetType', N'Get_Type_Name,Get_Type')
GO
GO
INSERT INTO [dbo].[T_Pmt_Parameter_Table] ([Parameter_ID], [Parameter_Name], [Parameter_Display]) VALUES (N'14', N'P_Get_UseType', N'Use_Type_Name,Use_Type')
GO
GO
INSERT INTO [dbo].[T_Pmt_Parameter_Table] ([Parameter_ID], [Parameter_Name], [Parameter_Display]) VALUES (N'15', N'P_Get_BeforeType', N'Before_Type_Name,Before_Type')
GO
GO
INSERT INTO [dbo].[T_Pmt_Parameter_Table] ([Parameter_ID], [Parameter_Name], [Parameter_Display]) VALUES (N'16', N'P_Get_TranType', N'Tran_Type_Name,Tran_Type')
GO
GO
INSERT INTO [dbo].[T_Pmt_Parameter_Table] ([Parameter_ID], [Parameter_Name], [Parameter_Display]) VALUES (N'17', N'P_Get_BillBillType', N'Bill_Type_Name,Bill_Type')
GO
GO
INSERT INTO [dbo].[T_Pmt_Parameter_Table] ([Parameter_ID], [Parameter_Name], [Parameter_Display]) VALUES (N'18', N'P_Get_RptBillType', N'Bill_Type_Name,Bill_Type')
GO
GO
INSERT INTO [dbo].[T_Pmt_Parameter_Table] ([Parameter_ID], [Parameter_Name], [Parameter_Display]) VALUES (N'19', N'P_Get_BackReason', N'Back_Reason_Name,Back_Reason')
GO
GO
INSERT INTO [dbo].[T_Pmt_Parameter_Table] ([Parameter_ID], [Parameter_Name], [Parameter_Display]) VALUES (N'20', N'P_Get_OtherSource', N'Other_Source_Name,Other_Source')
GO
GO
INSERT INTO [dbo].[T_Pmt_Parameter_Table] ([Parameter_ID], [Parameter_Name], [Parameter_Display]) VALUES (N'21', N'P_Get_GetTran', N'Get_Tran_Name,Get_Tran')
GO
GO
INSERT INTO [dbo].[T_Pmt_Parameter_Table] ([Parameter_ID], [Parameter_Name], [Parameter_Display]) VALUES (N'22', N'P_Get_NowStatus', N'Now_Status_Name,Now_Status')
GO
GO
INSERT INTO [dbo].[T_Pmt_Parameter_Table] ([Parameter_ID], [Parameter_Name], [Parameter_Display]) VALUES (N'23', N'P_Get_BackFinish', N'Finish_Type_Name,Finish_Type')
GO
GO
INSERT INTO [dbo].[T_Pmt_Parameter_Table] ([Parameter_ID], [Parameter_Name], [Parameter_Display]) VALUES (N'24', N'P_Get_AuditMoney', N'Audit_Money_Name,Audit_Money')
GO
GO
INSERT INTO [dbo].[T_Pmt_Parameter_Table] ([Parameter_ID], [Parameter_Name], [Parameter_Display]) VALUES (N'25', N'P_Get_BackType', N'Back_Type_Name,Back_Type')
GO
GO
INSERT INTO [dbo].[T_Pmt_Parameter_Table] ([Parameter_ID], [Parameter_Name], [Parameter_Display]) VALUES (N'26', N'P_Get_BackFeeBill', N'BackFee_Bill_Name,BackFee_Bill')
GO
GO
INSERT INTO [dbo].[T_Pmt_Parameter_Table] ([Parameter_ID], [Parameter_Name], [Parameter_Display]) VALUES (N'27', N'P_Get_FeeBackBill', N'BackFee_Bill_Name,BackFee_Bill')
GO
GO
INSERT INTO [dbo].[T_Pmt_Parameter_Table] ([Parameter_ID], [Parameter_Name], [Parameter_Display]) VALUES (N'28', N'P_Get_FeeBackModel', N'FeeBack_Model_Name,FeeBack_Model')
GO
GO
INSERT INTO [dbo].[T_Pmt_Parameter_Table] ([Parameter_ID], [Parameter_Name], [Parameter_Display]) VALUES (N'29', N'P_Get_RptOperType', N'Oper_Type_Name,Oper_Type')
GO
GO
INSERT INTO [dbo].[T_Pmt_Parameter_Table] ([Parameter_ID], [Parameter_Name], [Parameter_Display]) VALUES (N'30', N'P_Get_RptAccount', N'Rpt_Account_ID,Rpt_Account')
GO
GO
INSERT INTO [dbo].[T_Pmt_Parameter_Table] ([Parameter_ID], [Parameter_Name], [Parameter_Display]) VALUES (N'31', N'P_Get_RptUse', N'Rpt_Use_ID,Rpt_Use')
GO
GO
INSERT INTO [dbo].[T_Pmt_Parameter_Table] ([Parameter_ID], [Parameter_Name], [Parameter_Display]) VALUES (N'32', N'P_Get_CancelType', N'Cancel_Type_Name,Cancel_Type')
GO
GO
INSERT INTO [dbo].[T_Pmt_Parameter_Table] ([Parameter_ID], [Parameter_Name], [Parameter_Display]) VALUES (N'33', N'P_Get_ErsBank', N'BankName,BankID')
GO
GO

-- ----------------------------
-- Table structure for T_Rib_Button
-- ----------------------------
DROP TABLE [dbo].[T_Rib_Button]
GO
CREATE TABLE [dbo].[T_Rib_Button] (
[Rib_Btn] smallint NOT NULL IDENTITY(1,1) ,
[Rib_Btn_Name] nvarchar(20) NOT NULL ,
[Rib_Btn_Type] smallint NOT NULL ,
[Rib_Order] smallint NOT NULL ,
[Rib_Panel] smallint NOT NULL ,
[Rib_Tab] smallint NOT NULL ,
[Rib_Image] nvarchar(20) NULL ,
[Rib_Image_Index] smallint NOT NULL ,
[M_Function] nvarchar(64) NULL ,
[M_Code] nvarchar(12) NULL ,
[M_ID] smallint NOT NULL ,
[Rib_Code] nvarchar(12) NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[T_Rib_Button]', RESEED, 98)
GO

-- ----------------------------
-- Records of T_Rib_Button
-- ----------------------------
SET IDENTITY_INSERT [dbo].[T_Rib_Button] ON
GO
INSERT INTO [dbo].[T_Rib_Button] ([Rib_Btn], [Rib_Btn_Name], [Rib_Btn_Type], [Rib_Order], [Rib_Panel], [Rib_Tab], [Rib_Image], [Rib_Image_Index], [M_Function], [M_Code], [M_ID], [Rib_Code]) VALUES (N'1', N'缴款单管理', N'1', N'1', N'1', N'1', null, N'0', N'ManCashList', N'', N'0', N'')
GO
GO
INSERT INTO [dbo].[T_Rib_Button] ([Rib_Btn], [Rib_Btn_Name], [Rib_Btn_Type], [Rib_Order], [Rib_Panel], [Rib_Tab], [Rib_Image], [Rib_Image_Index], [M_Function], [M_Code], [M_ID], [Rib_Code]) VALUES (N'2', N'补缴前日', N'1', N'2', N'1', N'1', null, N'1', N'EditCashLast', N'', N'0', N'')
GO
GO
INSERT INTO [dbo].[T_Rib_Button] ([Rib_Btn], [Rib_Btn_Name], [Rib_Btn_Type], [Rib_Order], [Rib_Panel], [Rib_Tab], [Rib_Image], [Rib_Image_Index], [M_Function], [M_Code], [M_ID], [Rib_Code]) VALUES (N'3', N'当日应缴', N'1', N'3', N'1', N'1', null, N'2', N'EditCashNow', N'', N'0', N'')
GO
GO
INSERT INTO [dbo].[T_Rib_Button] ([Rib_Btn], [Rib_Btn_Name], [Rib_Btn_Type], [Rib_Order], [Rib_Panel], [Rib_Tab], [Rib_Image], [Rib_Image_Index], [M_Function], [M_Code], [M_ID], [Rib_Code]) VALUES (N'4', N'代打缴款单', N'1', N'4', N'1', N'1', null, N'3', N'EditCashReplace', N'', N'0', N'')
GO
GO
INSERT INTO [dbo].[T_Rib_Button] ([Rib_Btn], [Rib_Btn_Name], [Rib_Btn_Type], [Rib_Order], [Rib_Panel], [Rib_Tab], [Rib_Image], [Rib_Image_Index], [M_Function], [M_Code], [M_ID], [Rib_Code]) VALUES (N'5', N'补录缴款单', N'1', N'5', N'1', N'1', null, N'4', N'EditCashRepair', N'', N'0', N'')
GO
GO
INSERT INTO [dbo].[T_Rib_Button] ([Rib_Btn], [Rib_Btn_Name], [Rib_Btn_Type], [Rib_Order], [Rib_Panel], [Rib_Tab], [Rib_Image], [Rib_Image_Index], [M_Function], [M_Code], [M_ID], [Rib_Code]) VALUES (N'6', N'差错打印', N'1', N'6', N'1', N'1', null, N'31', N'EditCashError', N'', N'0', N'')
GO
GO
INSERT INTO [dbo].[T_Rib_Button] ([Rib_Btn], [Rib_Btn_Name], [Rib_Btn_Type], [Rib_Order], [Rib_Panel], [Rib_Tab], [Rib_Image], [Rib_Image_Index], [M_Function], [M_Code], [M_ID], [Rib_Code]) VALUES (N'7', N'退票转现金', N'1', N'7', N'1', N'1', null, N'2', N'EditCashBackFee', N'', N'0', N'')
GO
GO
INSERT INTO [dbo].[T_Rib_Button] ([Rib_Btn], [Rib_Btn_Name], [Rib_Btn_Type], [Rib_Order], [Rib_Panel], [Rib_Tab], [Rib_Image], [Rib_Image_Index], [M_Function], [M_Code], [M_ID], [Rib_Code]) VALUES (N'8', N'补缴前日', N'1', N'1', N'2', N'1', null, N'8', N'EditSelfLast', N'', N'0', N'')
GO
GO
INSERT INTO [dbo].[T_Rib_Button] ([Rib_Btn], [Rib_Btn_Name], [Rib_Btn_Type], [Rib_Order], [Rib_Panel], [Rib_Tab], [Rib_Image], [Rib_Image_Index], [M_Function], [M_Code], [M_ID], [Rib_Code]) VALUES (N'9', N'当日应缴', N'1', N'2', N'2', N'1', null, N'9', N'EditSelfNow', N'', N'0', N'')
GO
GO
INSERT INTO [dbo].[T_Rib_Button] ([Rib_Btn], [Rib_Btn_Name], [Rib_Btn_Type], [Rib_Order], [Rib_Panel], [Rib_Tab], [Rib_Image], [Rib_Image_Index], [M_Function], [M_Code], [M_ID], [Rib_Code]) VALUES (N'10', N'日结盘点', N'1', N'1', N'3', N'1', null, N'10', N'ManDayCash', N'', N'0', N'')
GO
GO
INSERT INTO [dbo].[T_Rib_Button] ([Rib_Btn], [Rib_Btn_Name], [Rib_Btn_Type], [Rib_Order], [Rib_Panel], [Rib_Tab], [Rib_Image], [Rib_Image_Index], [M_Function], [M_Code], [M_ID], [Rib_Code]) VALUES (N'11', N'现金回单', N'1', N'2', N'3', N'1', null, N'45', N'ManBankAccept', N'', N'0', N'')
GO
GO
INSERT INTO [dbo].[T_Rib_Button] ([Rib_Btn], [Rib_Btn_Name], [Rib_Btn_Type], [Rib_Order], [Rib_Panel], [Rib_Tab], [Rib_Image], [Rib_Image_Index], [M_Function], [M_Code], [M_ID], [Rib_Code]) VALUES (N'12', N'现金退票', N'1', N'3', N'3', N'1', null, N'22', N'ManCashBack', N'', N'0', N'')
GO
GO
INSERT INTO [dbo].[T_Rib_Button] ([Rib_Btn], [Rib_Btn_Name], [Rib_Btn_Type], [Rib_Order], [Rib_Panel], [Rib_Tab], [Rib_Image], [Rib_Image_Index], [M_Function], [M_Code], [M_ID], [Rib_Code]) VALUES (N'45', N'公司', N'1', N'1', N'15', N'6', null, N'35', N'ManCompany', N'', N'0', N'')
GO
GO
INSERT INTO [dbo].[T_Rib_Button] ([Rib_Btn], [Rib_Btn_Name], [Rib_Btn_Type], [Rib_Order], [Rib_Panel], [Rib_Tab], [Rib_Image], [Rib_Image_Index], [M_Function], [M_Code], [M_ID], [Rib_Code]) VALUES (N'46', N'部门', N'1', N'2', N'15', N'6', null, N'38', N'ManDept', N'', N'0', N'')
GO
GO
INSERT INTO [dbo].[T_Rib_Button] ([Rib_Btn], [Rib_Btn_Name], [Rib_Btn_Type], [Rib_Order], [Rib_Panel], [Rib_Tab], [Rib_Image], [Rib_Image_Index], [M_Function], [M_Code], [M_ID], [Rib_Code]) VALUES (N'47', N'员工', N'1', N'1', N'15', N'6', null, N'40', N'ManMan', N'', N'0', N'')
GO
GO
INSERT INTO [dbo].[T_Rib_Button] ([Rib_Btn], [Rib_Btn_Name], [Rib_Btn_Type], [Rib_Order], [Rib_Panel], [Rib_Tab], [Rib_Image], [Rib_Image_Index], [M_Function], [M_Code], [M_ID], [Rib_Code]) VALUES (N'48', N'角色', N'1', N'2', N'16', N'6', null, N'41', N'ManRole', N'', N'0', N'')
GO
GO
INSERT INTO [dbo].[T_Rib_Button] ([Rib_Btn], [Rib_Btn_Name], [Rib_Btn_Type], [Rib_Order], [Rib_Panel], [Rib_Tab], [Rib_Image], [Rib_Image_Index], [M_Function], [M_Code], [M_ID], [Rib_Code]) VALUES (N'49', N'角色分配', N'1', N'3', N'16', N'6', null, N'42', N'SetRole', N'', N'0', N'')
GO
GO
INSERT INTO [dbo].[T_Rib_Button] ([Rib_Btn], [Rib_Btn_Name], [Rib_Btn_Type], [Rib_Order], [Rib_Panel], [Rib_Tab], [Rib_Image], [Rib_Image_Index], [M_Function], [M_Code], [M_ID], [Rib_Code]) VALUES (N'50', N'票据号查询', N'1', N'4', N'17', N'6', null, N'43', N'RptSearchBill', N'', N'0', N'')
GO
GO
INSERT INTO [dbo].[T_Rib_Button] ([Rib_Btn], [Rib_Btn_Name], [Rib_Btn_Type], [Rib_Order], [Rib_Panel], [Rib_Tab], [Rib_Image], [Rib_Image_Index], [M_Function], [M_Code], [M_ID], [Rib_Code]) VALUES (N'51', N'持有票据', N'1', N'6', N'17', N'6', null, N'46', N'RptSelfBill', N'', N'0', N'')
GO
GO
INSERT INTO [dbo].[T_Rib_Button] ([Rib_Btn], [Rib_Btn_Name], [Rib_Btn_Type], [Rib_Order], [Rib_Panel], [Rib_Tab], [Rib_Image], [Rib_Image_Index], [M_Function], [M_Code], [M_ID], [Rib_Code]) VALUES (N'52', N'银行交接', N'1', N'7', N'17', N'6', null, N'41', N'RptBankCash', N'', N'0', N'')
GO
GO
INSERT INTO [dbo].[T_Rib_Button] ([Rib_Btn], [Rib_Btn_Name], [Rib_Btn_Type], [Rib_Order], [Rib_Panel], [Rib_Tab], [Rib_Image], [Rib_Image_Index], [M_Function], [M_Code], [M_ID], [Rib_Code]) VALUES (N'53', N'自助缴款', N'1', N'8', N'17', N'6', null, N'42', N'RptSelfCash', N'', N'0', N'')
GO
GO
INSERT INTO [dbo].[T_Rib_Button] ([Rib_Btn], [Rib_Btn_Name], [Rib_Btn_Type], [Rib_Order], [Rib_Panel], [Rib_Tab], [Rib_Image], [Rib_Image_Index], [M_Function], [M_Code], [M_ID], [Rib_Code]) VALUES (N'54', N'退费报表', N'1', N'9', N'17', N'6', null, N'43', N'RptBackFee', N'', N'0', N'')
GO
GO
INSERT INTO [dbo].[T_Rib_Button] ([Rib_Btn], [Rib_Btn_Name], [Rib_Btn_Type], [Rib_Order], [Rib_Panel], [Rib_Tab], [Rib_Image], [Rib_Image_Index], [M_Function], [M_Code], [M_ID], [Rib_Code]) VALUES (N'55', N'超时报表', N'1', N'10', N'17', N'6', null, N'44', N'RptOverTime', N'', N'0', N'')
GO
GO
INSERT INTO [dbo].[T_Rib_Button] ([Rib_Btn], [Rib_Btn_Name], [Rib_Btn_Type], [Rib_Order], [Rib_Panel], [Rib_Tab], [Rib_Image], [Rib_Image_Index], [M_Function], [M_Code], [M_ID], [Rib_Code]) VALUES (N'71', N'持有票据分析', N'1', N'11', N'17', N'6', null, N'44', N'RptAnalysis', N'', N'0', N'')
GO
GO
INSERT INTO [dbo].[T_Rib_Button] ([Rib_Btn], [Rib_Btn_Name], [Rib_Btn_Type], [Rib_Order], [Rib_Panel], [Rib_Tab], [Rib_Image], [Rib_Image_Index], [M_Function], [M_Code], [M_ID], [Rib_Code]) VALUES (N'72', N'用户入帐查询', N'1', N'12', N'17', N'6', null, N'42', N'RptBillCust', N'', N'0', N'')
GO
GO
INSERT INTO [dbo].[T_Rib_Button] ([Rib_Btn], [Rib_Btn_Name], [Rib_Btn_Type], [Rib_Order], [Rib_Panel], [Rib_Tab], [Rib_Image], [Rib_Image_Index], [M_Function], [M_Code], [M_ID], [Rib_Code]) VALUES (N'73', N'出票人查询', N'1', N'13', N'17', N'6', null, N'42', N'RptBillDept', N'', N'0', N'')
GO
GO
INSERT INTO [dbo].[T_Rib_Button] ([Rib_Btn], [Rib_Btn_Name], [Rib_Btn_Type], [Rib_Order], [Rib_Panel], [Rib_Tab], [Rib_Image], [Rib_Image_Index], [M_Function], [M_Code], [M_ID], [Rib_Code]) VALUES (N'78', N'按银行已收时间', N'1', N'14', N'17', N'6', null, N'42', N'RptBillDetailGet', N'', N'0', N'')
GO
GO
INSERT INTO [dbo].[T_Rib_Button] ([Rib_Btn], [Rib_Btn_Name], [Rib_Btn_Type], [Rib_Order], [Rib_Panel], [Rib_Tab], [Rib_Image], [Rib_Image_Index], [M_Function], [M_Code], [M_ID], [Rib_Code]) VALUES (N'84', N'票据日结', N'1', N'1', N'3', N'1', null, N'10', N'ManDayBill', N'', N'0', N'')
GO
GO
INSERT INTO [dbo].[T_Rib_Button] ([Rib_Btn], [Rib_Btn_Name], [Rib_Btn_Type], [Rib_Order], [Rib_Panel], [Rib_Tab], [Rib_Image], [Rib_Image_Index], [M_Function], [M_Code], [M_ID], [Rib_Code]) VALUES (N'97', N'票据日结报表', N'1', N'10', N'17', N'6', null, N'44', N'RptBillDay', N'', N'0', N'')
GO
GO
SET IDENTITY_INSERT [dbo].[T_Rib_Button] OFF
GO

-- ----------------------------
-- Table structure for T_Rib_Panel
-- ----------------------------
DROP TABLE [dbo].[T_Rib_Panel]
GO
CREATE TABLE [dbo].[T_Rib_Panel] (
[Rib_Panel] smallint NOT NULL IDENTITY(1,1) ,
[Rib_Panel_Name] nvarchar(12) NOT NULL ,
[Rib_Order] smallint NOT NULL ,
[Rib_Tab] smallint NOT NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[T_Rib_Panel]', RESEED, 23)
GO

-- ----------------------------
-- Records of T_Rib_Panel
-- ----------------------------
SET IDENTITY_INSERT [dbo].[T_Rib_Panel] ON
GO
INSERT INTO [dbo].[T_Rib_Panel] ([Rib_Panel], [Rib_Panel_Name], [Rib_Order], [Rib_Tab]) VALUES (N'1', N'现金缴款', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_Rib_Panel] ([Rib_Panel], [Rib_Panel_Name], [Rib_Order], [Rib_Tab]) VALUES (N'2', N'自助缴款', N'2', N'1')
GO
GO
INSERT INTO [dbo].[T_Rib_Panel] ([Rib_Panel], [Rib_Panel_Name], [Rib_Order], [Rib_Tab]) VALUES (N'3', N'现金管理', N'3', N'1')
GO
GO
INSERT INTO [dbo].[T_Rib_Panel] ([Rib_Panel], [Rib_Panel_Name], [Rib_Order], [Rib_Tab]) VALUES (N'15', N'公司部门', N'1', N'6')
GO
GO
INSERT INTO [dbo].[T_Rib_Panel] ([Rib_Panel], [Rib_Panel_Name], [Rib_Order], [Rib_Tab]) VALUES (N'16', N'角色', N'2', N'6')
GO
GO
INSERT INTO [dbo].[T_Rib_Panel] ([Rib_Panel], [Rib_Panel_Name], [Rib_Order], [Rib_Tab]) VALUES (N'17', N'其他', N'3', N'6')
GO
GO
SET IDENTITY_INSERT [dbo].[T_Rib_Panel] OFF
GO

-- ----------------------------
-- Table structure for T_Rib_Tab
-- ----------------------------
DROP TABLE [dbo].[T_Rib_Tab]
GO
CREATE TABLE [dbo].[T_Rib_Tab] (
[Rib_Tab] smallint NOT NULL IDENTITY(1,1) ,
[Rib_Tab_Name] nvarchar(12) NOT NULL ,
[Rib_Order] smallint NOT NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[T_Rib_Tab]', RESEED, 9)
GO

-- ----------------------------
-- Records of T_Rib_Tab
-- ----------------------------
SET IDENTITY_INSERT [dbo].[T_Rib_Tab] ON
GO
INSERT INTO [dbo].[T_Rib_Tab] ([Rib_Tab], [Rib_Tab_Name], [Rib_Order]) VALUES (N'1', N'现金管理', N'1')
GO
GO
INSERT INTO [dbo].[T_Rib_Tab] ([Rib_Tab], [Rib_Tab_Name], [Rib_Order]) VALUES (N'6', N'系统管理', N'6')
GO
GO
SET IDENTITY_INSERT [dbo].[T_Rib_Tab] OFF
GO

-- ----------------------------
-- Table structure for T_Set_Col_Foot
-- ----------------------------
DROP TABLE [dbo].[T_Set_Col_Foot]
GO
CREATE TABLE [dbo].[T_Set_Col_Foot] (
[Col_Foot] smallint NOT NULL ,
[Col_Foot_Name] nvarchar(10) NOT NULL 
)


GO

-- ----------------------------
-- Records of T_Set_Col_Foot
-- ----------------------------
INSERT INTO [dbo].[T_Set_Col_Foot] ([Col_Foot], [Col_Foot_Name]) VALUES (N'1', N'平均')
GO
GO
INSERT INTO [dbo].[T_Set_Col_Foot] ([Col_Foot], [Col_Foot_Name]) VALUES (N'2', N'个数')
GO
GO
INSERT INTO [dbo].[T_Set_Col_Foot] ([Col_Foot], [Col_Foot_Name]) VALUES (N'3', N'字段值')
GO
GO
INSERT INTO [dbo].[T_Set_Col_Foot] ([Col_Foot], [Col_Foot_Name]) VALUES (N'4', N'汇总')
GO
GO
INSERT INTO [dbo].[T_Set_Col_Foot] ([Col_Foot], [Col_Foot_Name]) VALUES (N'5', N'文字')
GO
GO

-- ----------------------------
-- Table structure for T_Set_Col_Type
-- ----------------------------
DROP TABLE [dbo].[T_Set_Col_Type]
GO
CREATE TABLE [dbo].[T_Set_Col_Type] (
[Col_Type] smallint NOT NULL ,
[Col_Type_Name] nvarchar(10) NOT NULL 
)


GO

-- ----------------------------
-- Records of T_Set_Col_Type
-- ----------------------------
INSERT INTO [dbo].[T_Set_Col_Type] ([Col_Type], [Col_Type_Name]) VALUES (N'1', N'逻辑型')
GO
GO
INSERT INTO [dbo].[T_Set_Col_Type] ([Col_Type], [Col_Type_Name]) VALUES (N'2', N'下拉型')
GO
GO
INSERT INTO [dbo].[T_Set_Col_Type] ([Col_Type], [Col_Type_Name]) VALUES (N'3', N'日期型')
GO
GO
INSERT INTO [dbo].[T_Set_Col_Type] ([Col_Type], [Col_Type_Name]) VALUES (N'4', N'实数型')
GO
GO
INSERT INTO [dbo].[T_Set_Col_Type] ([Col_Type], [Col_Type_Name]) VALUES (N'5', N'整数型')
GO
GO
INSERT INTO [dbo].[T_Set_Col_Type] ([Col_Type], [Col_Type_Name]) VALUES (N'6', N'短整型')
GO
GO
INSERT INTO [dbo].[T_Set_Col_Type] ([Col_Type], [Col_Type_Name]) VALUES (N'7', N'字符型')
GO
GO
INSERT INTO [dbo].[T_Set_Col_Type] ([Col_Type], [Col_Type_Name]) VALUES (N'8', N'时间日期型')
GO
GO
INSERT INTO [dbo].[T_Set_Col_Type] ([Col_Type], [Col_Type_Name]) VALUES (N'9', N'金额型')
GO
GO

-- ----------------------------
-- Table structure for T_Set_Man_Level
-- ----------------------------
DROP TABLE [dbo].[T_Set_Man_Level]
GO
CREATE TABLE [dbo].[T_Set_Man_Level] (
[Man_Level] smallint NOT NULL 
)


GO

-- ----------------------------
-- Records of T_Set_Man_Level
-- ----------------------------
INSERT INTO [dbo].[T_Set_Man_Level] ([Man_Level]) VALUES (N'3')
GO
GO

-- ----------------------------
-- Table structure for T_Set_Sql
-- ----------------------------
DROP TABLE [dbo].[T_Set_Sql]
GO
CREATE TABLE [dbo].[T_Set_Sql] (
[Sql_ID] nvarchar(30) NOT NULL ,
[Sql_Name] nvarchar(50) NOT NULL ,
[Sql_Type] smallint NOT NULL ,
[Sql_Text] nvarchar(512) NULL ,
[Sql_Main_Table] nvarchar(40) NOT NULL ,
[Sql_Keys] nvarchar(20) NULL ,
[Sql_Order] nvarchar(200) NULL ,
[Sql_Group] nvarchar(200) NULL ,
[Sql_Having] nvarchar(200) NULL ,
[Sql_Dropdown] nvarchar(60) NULL ,
[Crt_Date] datetime NOT NULL DEFAULT (getdate()) ,
[Sql_Page_Size] smallint NOT NULL ,
[Sql_Page_Heigh] smallint NOT NULL ,
[Sql_Page_Width] smallint NOT NULL ,
[Sql_Orietation] smallint NOT NULL ,
[Sql_Top_Margin] smallint NOT NULL ,
[Sql_Bottom_Margin] smallint NOT NULL ,
[Sql_Left_Margin] smallint NOT NULL ,
[Sql_Right_Margin] smallint NOT NULL ,
[Sql_Title] nvarchar(80) NULL ,
[Sql_Top_Font] nvarchar(40) NULL ,
[Sql_Font] nvarchar(40) NULL ,
[Sql_ISO] nvarchar(30) NULL ,
[Is_Print_Company] bit NOT NULL DEFAULT ((0)) ,
[Sql_Print_Set] smallint NOT NULL DEFAULT ((0)) 
)


GO

-- ----------------------------
-- Records of T_Set_Sql
-- ----------------------------
INSERT INTO [dbo].[T_Set_Sql] ([Sql_ID], [Sql_Name], [Sql_Type], [Sql_Text], [Sql_Main_Table], [Sql_Keys], [Sql_Order], [Sql_Group], [Sql_Having], [Sql_Dropdown], [Crt_Date], [Sql_Page_Size], [Sql_Page_Heigh], [Sql_Page_Width], [Sql_Orietation], [Sql_Top_Margin], [Sql_Bottom_Margin], [Sql_Left_Margin], [Sql_Right_Margin], [Sql_Title], [Sql_Top_Font], [Sql_Font], [Sql_ISO], [Is_Print_Company], [Sql_Print_Set]) VALUES (N'P_Get_SetSql', N'查询显示SQL设置', N'2', N'P_Get_SetSql', N'T_Set_Sql', N'Sql_ID', null, null, null, N'Sql_ID, Sql_Name', N'2009-05-30 05:10:36.013', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', null, null, null, null, N'0', N'0')
GO
GO
INSERT INTO [dbo].[T_Set_Sql] ([Sql_ID], [Sql_Name], [Sql_Type], [Sql_Text], [Sql_Main_Table], [Sql_Keys], [Sql_Order], [Sql_Group], [Sql_Having], [Sql_Dropdown], [Crt_Date], [Sql_Page_Size], [Sql_Page_Heigh], [Sql_Page_Width], [Sql_Orietation], [Sql_Top_Margin], [Sql_Bottom_Margin], [Sql_Left_Margin], [Sql_Right_Margin], [Sql_Title], [Sql_Top_Font], [Sql_Font], [Sql_ISO], [Is_Print_Company], [Sql_Print_Set]) VALUES (N'P_Get_ColType', N'字段类型', N'2', N'P_Get_ColType', N'T_Set_Col_Type', null, null, null, null, N'Col_Type_Name,Col_Type', N'2009-06-07 11:11:10.490', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', null, null, null, null, N'0', N'0')
GO
GO
INSERT INTO [dbo].[T_Set_Sql] ([Sql_ID], [Sql_Name], [Sql_Type], [Sql_Text], [Sql_Main_Table], [Sql_Keys], [Sql_Order], [Sql_Group], [Sql_Having], [Sql_Dropdown], [Crt_Date], [Sql_Page_Size], [Sql_Page_Heigh], [Sql_Page_Width], [Sql_Orietation], [Sql_Top_Margin], [Sql_Bottom_Margin], [Sql_Left_Margin], [Sql_Right_Margin], [Sql_Title], [Sql_Top_Font], [Sql_Font], [Sql_ISO], [Is_Print_Company], [Sql_Print_Set]) VALUES (N'P_Get_Company', N'公司管理', N'2', N'P_Get_Company', N'T_Sys_Company', null, null, null, null, N'Co_Name,Co_ID', N'2009-07-14 17:19:34.790', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', null, null, null, null, N'0', N'0')
GO
GO
INSERT INTO [dbo].[T_Set_Sql] ([Sql_ID], [Sql_Name], [Sql_Type], [Sql_Text], [Sql_Main_Table], [Sql_Keys], [Sql_Order], [Sql_Group], [Sql_Having], [Sql_Dropdown], [Crt_Date], [Sql_Page_Size], [Sql_Page_Heigh], [Sql_Page_Width], [Sql_Orietation], [Sql_Top_Margin], [Sql_Bottom_Margin], [Sql_Left_Margin], [Sql_Right_Margin], [Sql_Title], [Sql_Top_Font], [Sql_Font], [Sql_ISO], [Is_Print_Company], [Sql_Print_Set]) VALUES (N'P_Get_SysMan', N'员工管理', N'2', N'P_Get_SysMan', N'T_Sys_Man', null, null, null, null, N'Man_Name,Man_ID', N'2009-11-22 23:50:15.530', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', null, null, null, null, N'0', N'0')
GO
GO
INSERT INTO [dbo].[T_Set_Sql] ([Sql_ID], [Sql_Name], [Sql_Type], [Sql_Text], [Sql_Main_Table], [Sql_Keys], [Sql_Order], [Sql_Group], [Sql_Having], [Sql_Dropdown], [Crt_Date], [Sql_Page_Size], [Sql_Page_Heigh], [Sql_Page_Width], [Sql_Orietation], [Sql_Top_Margin], [Sql_Bottom_Margin], [Sql_Left_Margin], [Sql_Right_Margin], [Sql_Title], [Sql_Top_Font], [Sql_Font], [Sql_ISO], [Is_Print_Company], [Sql_Print_Set]) VALUES (N'P_Get_SysRole', N'角色管理', N'2', N'P_Get_SysRole', N'T_Sys_Role', null, null, null, null, N'Role_Name,Role_ID', N'2009-07-14 17:19:13.680', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', null, null, null, null, N'0', N'0')
GO
GO
INSERT INTO [dbo].[T_Set_Sql] ([Sql_ID], [Sql_Name], [Sql_Type], [Sql_Text], [Sql_Main_Table], [Sql_Keys], [Sql_Order], [Sql_Group], [Sql_Having], [Sql_Dropdown], [Crt_Date], [Sql_Page_Size], [Sql_Page_Heigh], [Sql_Page_Width], [Sql_Orietation], [Sql_Top_Margin], [Sql_Bottom_Margin], [Sql_Left_Margin], [Sql_Right_Margin], [Sql_Title], [Sql_Top_Font], [Sql_Font], [Sql_ISO], [Is_Print_Company], [Sql_Print_Set]) VALUES (N'P_Get_SetSqlDetail', N'查询显示设置字段明细', N'2', N'P_Get_SetSqlDetail', N'T_Set_Sql_Detail', null, null, null, null, null, N'2009-07-14 17:19:50.600', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', null, null, null, null, N'0', N'0')
GO
GO

-- ----------------------------
-- Table structure for T_Set_Sql_Detail
-- ----------------------------
DROP TABLE [dbo].[T_Set_Sql_Detail]
GO
CREATE TABLE [dbo].[T_Set_Sql_Detail] (
[Sql_ID] nvarchar(30) NOT NULL ,
[Col_ID] smallint NOT NULL ,
[Col_Name] nvarchar(20) NOT NULL ,
[Col_Code] nvarchar(20) NOT NULL ,
[Col_Base_Code] nvarchar(20) NOT NULL ,
[Col_Type] smallint NOT NULL ,
[Disp_Size] smallint NOT NULL ,
[Disp_Order] smallint NOT NULL ,
[Disp_Auth] smallint NOT NULL ,
[Is_Visible] bit NOT NULL DEFAULT ((1)) ,
[Is_Print] bit NOT NULL DEFAULT ((1)) ,
[Is_Order] bit NOT NULL DEFAULT ((0)) ,
[Is_Lock] bit NOT NULL DEFAULT ((0)) ,
[Is_Alias] bit NOT NULL DEFAULT ((0)) ,
[Col_Foot] smallint NULL ,
[Col_Foot_Value] nvarchar(30) NULL ,
[Rela_Sql] nvarchar(20) NULL ,
[Col_Format] nvarchar(30) NULL 
)


GO

-- ----------------------------
-- Records of T_Set_Sql_Detail
-- ----------------------------
INSERT INTO [dbo].[T_Set_Sql_Detail] ([Sql_ID], [Col_ID], [Col_Name], [Col_Code], [Col_Base_Code], [Col_Type], [Disp_Size], [Disp_Order], [Disp_Auth], [Is_Visible], [Is_Print], [Is_Order], [Is_Lock], [Is_Alias], [Col_Foot], [Col_Foot_Value], [Rela_Sql], [Col_Format]) VALUES (N'P_Get_SetSql', N'1', N'SQL语句编码', N'Sql_ID', N'Sql_ID', N'7', N'200', N'1', N'0', N'1', N'1', N'1', N'0', N'0', N'1', N'', null, null)
GO
GO
INSERT INTO [dbo].[T_Set_Sql_Detail] ([Sql_ID], [Col_ID], [Col_Name], [Col_Code], [Col_Base_Code], [Col_Type], [Disp_Size], [Disp_Order], [Disp_Auth], [Is_Visible], [Is_Print], [Is_Order], [Is_Lock], [Is_Alias], [Col_Foot], [Col_Foot_Value], [Rela_Sql], [Col_Format]) VALUES (N'P_Get_SetSql', N'2', N'SQL语句名称', N'Sql_Name', N'Sql_Name', N'7', N'200', N'1', N'0', N'1', N'1', N'1', N'0', N'0', N'1', N'', null, null)
GO
GO
INSERT INTO [dbo].[T_Set_Sql_Detail] ([Sql_ID], [Col_ID], [Col_Name], [Col_Code], [Col_Base_Code], [Col_Type], [Disp_Size], [Disp_Order], [Disp_Auth], [Is_Visible], [Is_Print], [Is_Order], [Is_Lock], [Is_Alias], [Col_Foot], [Col_Foot_Value], [Rela_Sql], [Col_Format]) VALUES (N'P_Get_SetSql', N'3', N'SQL语句类型', N'Sql_Type', N'Sql_Type', N'7', N'200', N'1', N'0', N'1', N'1', N'1', N'0', N'0', N'1', N'', null, null)
GO
GO
INSERT INTO [dbo].[T_Set_Sql_Detail] ([Sql_ID], [Col_ID], [Col_Name], [Col_Code], [Col_Base_Code], [Col_Type], [Disp_Size], [Disp_Order], [Disp_Auth], [Is_Visible], [Is_Print], [Is_Order], [Is_Lock], [Is_Alias], [Col_Foot], [Col_Foot_Value], [Rela_Sql], [Col_Format]) VALUES (N'P_Get_SetSqlDetail', N'1', N'SQL语句编码', N'Sql_ID', N'Sql_ID', N'7', N'100', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'', N'', N'')
GO
GO
INSERT INTO [dbo].[T_Set_Sql_Detail] ([Sql_ID], [Col_ID], [Col_Name], [Col_Code], [Col_Base_Code], [Col_Type], [Disp_Size], [Disp_Order], [Disp_Auth], [Is_Visible], [Is_Print], [Is_Order], [Is_Lock], [Is_Alias], [Col_Foot], [Col_Foot_Value], [Rela_Sql], [Col_Format]) VALUES (N'P_Get_SetSqlDetail', N'2', N'次序', N'Col_ID', N'Col_ID', N'6', N'40', N'2', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'', N'', N'')
GO
GO
INSERT INTO [dbo].[T_Set_Sql_Detail] ([Sql_ID], [Col_ID], [Col_Name], [Col_Code], [Col_Base_Code], [Col_Type], [Disp_Size], [Disp_Order], [Disp_Auth], [Is_Visible], [Is_Print], [Is_Order], [Is_Lock], [Is_Alias], [Col_Foot], [Col_Foot_Value], [Rela_Sql], [Col_Format]) VALUES (N'P_Get_SetSqlDetail', N'3', N'名称', N'Col_Name', N'Col_Name', N'7', N'100', N'3', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'', N'', N'')
GO
GO
INSERT INTO [dbo].[T_Set_Sql_Detail] ([Sql_ID], [Col_ID], [Col_Name], [Col_Code], [Col_Base_Code], [Col_Type], [Disp_Size], [Disp_Order], [Disp_Auth], [Is_Visible], [Is_Print], [Is_Order], [Is_Lock], [Is_Alias], [Col_Foot], [Col_Foot_Value], [Rela_Sql], [Col_Format]) VALUES (N'P_Get_SetSqlDetail', N'4', N'编码', N'Col_Code', N'Col_Code', N'7', N'120', N'4', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'', N'', N'')
GO
GO
INSERT INTO [dbo].[T_Set_Sql_Detail] ([Sql_ID], [Col_ID], [Col_Name], [Col_Code], [Col_Base_Code], [Col_Type], [Disp_Size], [Disp_Order], [Disp_Auth], [Is_Visible], [Is_Print], [Is_Order], [Is_Lock], [Is_Alias], [Col_Foot], [Col_Foot_Value], [Rela_Sql], [Col_Format]) VALUES (N'P_Get_SetSqlDetail', N'5', N'原始编码', N'Col_Base_Code', N'Col_Base_Code', N'7', N'120', N'5', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'', N'', N'')
GO
GO
INSERT INTO [dbo].[T_Set_Sql_Detail] ([Sql_ID], [Col_ID], [Col_Name], [Col_Code], [Col_Base_Code], [Col_Type], [Disp_Size], [Disp_Order], [Disp_Auth], [Is_Visible], [Is_Print], [Is_Order], [Is_Lock], [Is_Alias], [Col_Foot], [Col_Foot_Value], [Rela_Sql], [Col_Format]) VALUES (N'P_Get_SetSqlDetail', N'6', N'字段类型', N'Col_Type', N'Col_Type', N'2', N'100', N'6', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'', N'P_Get_ColType', N'')
GO
GO
INSERT INTO [dbo].[T_Set_Sql_Detail] ([Sql_ID], [Col_ID], [Col_Name], [Col_Code], [Col_Base_Code], [Col_Type], [Disp_Size], [Disp_Order], [Disp_Auth], [Is_Visible], [Is_Print], [Is_Order], [Is_Lock], [Is_Alias], [Col_Foot], [Col_Foot_Value], [Rela_Sql], [Col_Format]) VALUES (N'P_Get_SetSqlDetail', N'7', N'显示长度', N'Disp_Size', N'Disp_Size', N'6', N'100', N'7', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'', N'', N'')
GO
GO
INSERT INTO [dbo].[T_Set_Sql_Detail] ([Sql_ID], [Col_ID], [Col_Name], [Col_Code], [Col_Base_Code], [Col_Type], [Disp_Size], [Disp_Order], [Disp_Auth], [Is_Visible], [Is_Print], [Is_Order], [Is_Lock], [Is_Alias], [Col_Foot], [Col_Foot_Value], [Rela_Sql], [Col_Format]) VALUES (N'P_Get_SetSqlDetail', N'8', N'显示次序', N'Disp_Order', N'Disp_Order', N'6', N'100', N'8', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'', N'', N'')
GO
GO
INSERT INTO [dbo].[T_Set_Sql_Detail] ([Sql_ID], [Col_ID], [Col_Name], [Col_Code], [Col_Base_Code], [Col_Type], [Disp_Size], [Disp_Order], [Disp_Auth], [Is_Visible], [Is_Print], [Is_Order], [Is_Lock], [Is_Alias], [Col_Foot], [Col_Foot_Value], [Rela_Sql], [Col_Format]) VALUES (N'P_Get_SetSqlDetail', N'9', N'密级', N'Disp_Auth', N'Disp_Auth', N'6', N'40', N'9', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'', N'', N'')
GO
GO
INSERT INTO [dbo].[T_Set_Sql_Detail] ([Sql_ID], [Col_ID], [Col_Name], [Col_Code], [Col_Base_Code], [Col_Type], [Disp_Size], [Disp_Order], [Disp_Auth], [Is_Visible], [Is_Print], [Is_Order], [Is_Lock], [Is_Alias], [Col_Foot], [Col_Foot_Value], [Rela_Sql], [Col_Format]) VALUES (N'P_Get_SetSqlDetail', N'10', N'显示', N'Is_Visible', N'Is_Visible', N'1', N'40', N'10', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'', N'', N'')
GO
GO
INSERT INTO [dbo].[T_Set_Sql_Detail] ([Sql_ID], [Col_ID], [Col_Name], [Col_Code], [Col_Base_Code], [Col_Type], [Disp_Size], [Disp_Order], [Disp_Auth], [Is_Visible], [Is_Print], [Is_Order], [Is_Lock], [Is_Alias], [Col_Foot], [Col_Foot_Value], [Rela_Sql], [Col_Format]) VALUES (N'P_Get_SetSqlDetail', N'11', N'打印', N'Is_Print', N'Is_Print', N'1', N'40', N'11', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'', N'', N'')
GO
GO
INSERT INTO [dbo].[T_Set_Sql_Detail] ([Sql_ID], [Col_ID], [Col_Name], [Col_Code], [Col_Base_Code], [Col_Type], [Disp_Size], [Disp_Order], [Disp_Auth], [Is_Visible], [Is_Print], [Is_Order], [Is_Lock], [Is_Alias], [Col_Foot], [Col_Foot_Value], [Rela_Sql], [Col_Format]) VALUES (N'P_Get_SetSqlDetail', N'12', N'排序', N'Is_Order', N'Is_Order', N'1', N'40', N'12', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'', N'', N'')
GO
GO
INSERT INTO [dbo].[T_Set_Sql_Detail] ([Sql_ID], [Col_ID], [Col_Name], [Col_Code], [Col_Base_Code], [Col_Type], [Disp_Size], [Disp_Order], [Disp_Auth], [Is_Visible], [Is_Print], [Is_Order], [Is_Lock], [Is_Alias], [Col_Foot], [Col_Foot_Value], [Rela_Sql], [Col_Format]) VALUES (N'P_Get_SetSqlDetail', N'13', N'锁定', N'Is_Lock', N'Is_Lock', N'1', N'40', N'13', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'', N'', N'')
GO
GO
INSERT INTO [dbo].[T_Set_Sql_Detail] ([Sql_ID], [Col_ID], [Col_Name], [Col_Code], [Col_Base_Code], [Col_Type], [Disp_Size], [Disp_Order], [Disp_Auth], [Is_Visible], [Is_Print], [Is_Order], [Is_Lock], [Is_Alias], [Col_Foot], [Col_Foot_Value], [Rela_Sql], [Col_Format]) VALUES (N'P_Get_SetSqlDetail', N'14', N'别名', N'Is_Alias', N'Is_Alias', N'1', N'40', N'14', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'', N'', N'')
GO
GO
INSERT INTO [dbo].[T_Set_Sql_Detail] ([Sql_ID], [Col_ID], [Col_Name], [Col_Code], [Col_Base_Code], [Col_Type], [Disp_Size], [Disp_Order], [Disp_Auth], [Is_Visible], [Is_Print], [Is_Order], [Is_Lock], [Is_Alias], [Col_Foot], [Col_Foot_Value], [Rela_Sql], [Col_Format]) VALUES (N'P_Get_SetSqlDetail', N'15', N'汇总显示', N'Col_Foot', N'Col_Foot', N'2', N'100', N'15', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'', N'', N'')
GO
GO
INSERT INTO [dbo].[T_Set_Sql_Detail] ([Sql_ID], [Col_ID], [Col_Name], [Col_Code], [Col_Base_Code], [Col_Type], [Disp_Size], [Disp_Order], [Disp_Auth], [Is_Visible], [Is_Print], [Is_Order], [Is_Lock], [Is_Alias], [Col_Foot], [Col_Foot_Value], [Rela_Sql], [Col_Format]) VALUES (N'P_Get_SetSqlDetail', N'16', N'汇总显示值', N'Col_Foot_Value', N'Col_Foot_Value', N'7', N'100', N'16', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'', N'', N'')
GO
GO
INSERT INTO [dbo].[T_Set_Sql_Detail] ([Sql_ID], [Col_ID], [Col_Name], [Col_Code], [Col_Base_Code], [Col_Type], [Disp_Size], [Disp_Order], [Disp_Auth], [Is_Visible], [Is_Print], [Is_Order], [Is_Lock], [Is_Alias], [Col_Foot], [Col_Foot_Value], [Rela_Sql], [Col_Format]) VALUES (N'P_Get_SetSqlDetail', N'17', N'字段相关查询语句', N'Rela_Sql', N'Rela_Sql', N'7', N'160', N'17', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'', N'', N'')
GO
GO
INSERT INTO [dbo].[T_Set_Sql_Detail] ([Sql_ID], [Col_ID], [Col_Name], [Col_Code], [Col_Base_Code], [Col_Type], [Disp_Size], [Disp_Order], [Disp_Auth], [Is_Visible], [Is_Print], [Is_Order], [Is_Lock], [Is_Alias], [Col_Foot], [Col_Foot_Value], [Rela_Sql], [Col_Format]) VALUES (N'P_Get_Company', N'1', N'公司编码', N'Co_ID', N'Co_ID', N'7', N'100', N'1', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'', N'', N'')
GO
GO
INSERT INTO [dbo].[T_Set_Sql_Detail] ([Sql_ID], [Col_ID], [Col_Name], [Col_Code], [Col_Base_Code], [Col_Type], [Disp_Size], [Disp_Order], [Disp_Auth], [Is_Visible], [Is_Print], [Is_Order], [Is_Lock], [Is_Alias], [Col_Foot], [Col_Foot_Value], [Rela_Sql], [Col_Format]) VALUES (N'P_Get_Company', N'2', N'公司名称', N'Co_Name', N'Co_Name', N'7', N'300', N'2', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'', N'', N'')
GO
GO
INSERT INTO [dbo].[T_Set_Sql_Detail] ([Sql_ID], [Col_ID], [Col_Name], [Col_Code], [Col_Base_Code], [Col_Type], [Disp_Size], [Disp_Order], [Disp_Auth], [Is_Visible], [Is_Print], [Is_Order], [Is_Lock], [Is_Alias], [Col_Foot], [Col_Foot_Value], [Rela_Sql], [Col_Format]) VALUES (N'P_Get_Company', N'3', N'公司状态', N'Co_Status_Name', N'Co_Status_Name', N'7', N'100', N'3', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'', N'', N'')
GO
GO
INSERT INTO [dbo].[T_Set_Sql_Detail] ([Sql_ID], [Col_ID], [Col_Name], [Col_Code], [Col_Base_Code], [Col_Type], [Disp_Size], [Disp_Order], [Disp_Auth], [Is_Visible], [Is_Print], [Is_Order], [Is_Lock], [Is_Alias], [Col_Foot], [Col_Foot_Value], [Rela_Sql], [Col_Format]) VALUES (N'P_Get_SysMan', N'1', N'员工工号', N'Man_ID', N'Man_ID', N'7', N'100', N'1', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'', N'', N'')
GO
GO
INSERT INTO [dbo].[T_Set_Sql_Detail] ([Sql_ID], [Col_ID], [Col_Name], [Col_Code], [Col_Base_Code], [Col_Type], [Disp_Size], [Disp_Order], [Disp_Auth], [Is_Visible], [Is_Print], [Is_Order], [Is_Lock], [Is_Alias], [Col_Foot], [Col_Foot_Value], [Rela_Sql], [Col_Format]) VALUES (N'P_Get_SysMan', N'2', N'员工名称', N'Man_Name', N'Man_Name', N'7', N'200', N'2', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'', N'', N'')
GO
GO
INSERT INTO [dbo].[T_Set_Sql_Detail] ([Sql_ID], [Col_ID], [Col_Name], [Col_Code], [Col_Base_Code], [Col_Type], [Disp_Size], [Disp_Order], [Disp_Auth], [Is_Visible], [Is_Print], [Is_Order], [Is_Lock], [Is_Alias], [Col_Foot], [Col_Foot_Value], [Rela_Sql], [Col_Format]) VALUES (N'P_Get_SysMan', N'3', N'所属部门', N'Dept_Name', N'Dept_Name', N'7', N'250', N'3', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'', N'', N'')
GO
GO
INSERT INTO [dbo].[T_Set_Sql_Detail] ([Sql_ID], [Col_ID], [Col_Name], [Col_Code], [Col_Base_Code], [Col_Type], [Disp_Size], [Disp_Order], [Disp_Auth], [Is_Visible], [Is_Print], [Is_Order], [Is_Lock], [Is_Alias], [Col_Foot], [Col_Foot_Value], [Rela_Sql], [Col_Format]) VALUES (N'P_Get_SysMan', N'4', N'岗位', N'Man_Type_Name', N'Man_Type_Name', N'7', N'200', N'4', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'', N'', N'')
GO
GO
INSERT INTO [dbo].[T_Set_Sql_Detail] ([Sql_ID], [Col_ID], [Col_Name], [Col_Code], [Col_Base_Code], [Col_Type], [Disp_Size], [Disp_Order], [Disp_Auth], [Is_Visible], [Is_Print], [Is_Order], [Is_Lock], [Is_Alias], [Col_Foot], [Col_Foot_Value], [Rela_Sql], [Col_Format]) VALUES (N'P_Get_SysMan', N'5', N'状态', N'Man_Status_Name', N'Man_Status_Name', N'7', N'100', N'5', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'', N'', N'')
GO
GO
INSERT INTO [dbo].[T_Set_Sql_Detail] ([Sql_ID], [Col_ID], [Col_Name], [Col_Code], [Col_Base_Code], [Col_Type], [Disp_Size], [Disp_Order], [Disp_Auth], [Is_Visible], [Is_Print], [Is_Order], [Is_Lock], [Is_Alias], [Col_Foot], [Col_Foot_Value], [Rela_Sql], [Col_Format]) VALUES (N'P_Get_SysRole', N'1', N'角色编号', N'Role_ID', N'Role_ID', N'5', N'100', N'1', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'', N'', N'')
GO
GO
INSERT INTO [dbo].[T_Set_Sql_Detail] ([Sql_ID], [Col_ID], [Col_Name], [Col_Code], [Col_Base_Code], [Col_Type], [Disp_Size], [Disp_Order], [Disp_Auth], [Is_Visible], [Is_Print], [Is_Order], [Is_Lock], [Is_Alias], [Col_Foot], [Col_Foot_Value], [Rela_Sql], [Col_Format]) VALUES (N'P_Get_SysRole', N'2', N'角色名称', N'Role_Name', N'Role_Name', N'7', N'200', N'2', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'', N'', N'')
GO
GO
INSERT INTO [dbo].[T_Set_Sql_Detail] ([Sql_ID], [Col_ID], [Col_Name], [Col_Code], [Col_Base_Code], [Col_Type], [Disp_Size], [Disp_Order], [Disp_Auth], [Is_Visible], [Is_Print], [Is_Order], [Is_Lock], [Is_Alias], [Col_Foot], [Col_Foot_Value], [Rela_Sql], [Col_Format]) VALUES (N'P_Get_SysRole', N'3', N'角色说明', N'Role_Desc', N'Role_Desc', N'7', N'400', N'3', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'', N'', N'')
GO
GO

-- ----------------------------
-- Table structure for T_Set_Sql_Type
-- ----------------------------
DROP TABLE [dbo].[T_Set_Sql_Type]
GO
CREATE TABLE [dbo].[T_Set_Sql_Type] (
[Sql_Type] smallint NOT NULL ,
[Sql_Type_Name] nvarchar(10) NOT NULL 
)


GO

-- ----------------------------
-- Records of T_Set_Sql_Type
-- ----------------------------
INSERT INTO [dbo].[T_Set_Sql_Type] ([Sql_Type], [Sql_Type_Name]) VALUES (N'1', N'文本')
GO
GO
INSERT INTO [dbo].[T_Set_Sql_Type] ([Sql_Type], [Sql_Type_Name]) VALUES (N'2', N'存储过程')
GO
GO

-- ----------------------------
-- Table structure for T_Sys_Company
-- ----------------------------
DROP TABLE [dbo].[T_Sys_Company]
GO
CREATE TABLE [dbo].[T_Sys_Company] (
[Co_ID] nvarchar(4) NOT NULL ,
[Co_Name] nvarchar(40) NOT NULL ,
[Crt_Date] datetime NOT NULL DEFAULT (getdate()) ,
[Co_Address] nvarchar(100) NULL ,
[Co_Post] nvarchar(10) NULL ,
[Co_Tele] nvarchar(30) NULL ,
[Co_Fax] nvarchar(30) NULL ,
[Co_EMail] nvarchar(32) NULL ,
[Co_Man] nvarchar(6) NULL ,
[Sort_Order] smallint NOT NULL ,
[Co_Status] smallint NOT NULL ,
[Remark] nvarchar(20) NULL 
)


GO

-- ----------------------------
-- Records of T_Sys_Company
-- ----------------------------
INSERT INTO [dbo].[T_Sys_Company] ([Co_ID], [Co_Name], [Crt_Date], [Co_Address], [Co_Post], [Co_Tele], [Co_Fax], [Co_EMail], [Co_Man], [Sort_Order], [Co_Status], [Remark]) VALUES (N'01', N'江苏慧禾融智信息技术有限公司', N'2009-06-12 02:16:03.217', N'江苏省南京市新城科技园1幢6楼', N'', N'', N'', N'', N'', N'1', N'0', N'')
GO
GO

-- ----------------------------
-- Table structure for T_Sys_Dept
-- ----------------------------
DROP TABLE [dbo].[T_Sys_Dept]
GO
CREATE TABLE [dbo].[T_Sys_Dept] (
[Dept_ID] nvarchar(8) NOT NULL ,
[Dept_Name] nvarchar(30) NOT NULL ,
[Dept_Short] nvarchar(4) NOT NULL ,
[Co_ID] nvarchar(4) NOT NULL ,
[Dept_PID] nvarchar(8) NOT NULL ,
[Crt_Date] datetime NOT NULL DEFAULT (getdate()) ,
[Dept_Address] nvarchar(100) NULL ,
[Dept_Post] nvarchar(10) NULL ,
[Dept_Tele] nvarchar(30) NULL ,
[Dept_Fax] nvarchar(30) NULL ,
[Dept_EMail] nvarchar(32) NULL ,
[Dept_Man] nvarchar(6) NULL ,
[Dept_Level] smallint NOT NULL ,
[Dept_Type] smallint NOT NULL ,
[Dept_Depth] smallint NOT NULL ,
[Sort_Order] smallint NOT NULL ,
[Dept_Status] smallint NOT NULL ,
[Auth_Dept] nvarchar(8) NOT NULL ,
[Remark] nvarchar(20) NULL 
)


GO

-- ----------------------------
-- Records of T_Sys_Dept
-- ----------------------------
INSERT INTO [dbo].[T_Sys_Dept] ([Dept_ID], [Dept_Name], [Dept_Short], [Co_ID], [Dept_PID], [Crt_Date], [Dept_Address], [Dept_Post], [Dept_Tele], [Dept_Fax], [Dept_EMail], [Dept_Man], [Dept_Level], [Dept_Type], [Dept_Depth], [Sort_Order], [Dept_Status], [Auth_Dept], [Remark]) VALUES (N'01999', N'计算中心', N'计算机', N'01', N'01999', N'2009-09-17 17:46:35.000', N'', N'', N'', N'', N'', N'', N'1', N'1', N'1', N'999', N'0', N'01999', null)
GO
GO
INSERT INTO [dbo].[T_Sys_Dept] ([Dept_ID], [Dept_Name], [Dept_Short], [Co_ID], [Dept_PID], [Crt_Date], [Dept_Address], [Dept_Post], [Dept_Tele], [Dept_Fax], [Dept_EMail], [Dept_Man], [Dept_Level], [Dept_Type], [Dept_Depth], [Sort_Order], [Dept_Status], [Auth_Dept], [Remark]) VALUES (N'01000', N'领导部门', N'领导', N'01', N'01000', N'2017-10-25 16:40:16.647', N'', N'', N'', N'', N'', N'', N'1', N'1', N'1', N'0', N'0', N'01000', N'')
GO
GO
INSERT INTO [dbo].[T_Sys_Dept] ([Dept_ID], [Dept_Name], [Dept_Short], [Co_ID], [Dept_PID], [Crt_Date], [Dept_Address], [Dept_Post], [Dept_Tele], [Dept_Fax], [Dept_EMail], [Dept_Man], [Dept_Level], [Dept_Type], [Dept_Depth], [Sort_Order], [Dept_Status], [Auth_Dept], [Remark]) VALUES (N'01001', N'软件开发', N'开发部门', N'01', N'01000', N'2017-10-25 16:45:57.877', N'', N'', N'', N'', N'', N'', N'2', N'1', N'2', N'1', N'0', N'01001', N'')
GO
GO

-- ----------------------------
-- Table structure for T_Sys_Dept_Flow
-- ----------------------------
DROP TABLE [dbo].[T_Sys_Dept_Flow]
GO
CREATE TABLE [dbo].[T_Sys_Dept_Flow] (
[Dept_ID] nvarchar(8) NOT NULL ,
[Dept_Flow] smallint NOT NULL 
)


GO

-- ----------------------------
-- Records of T_Sys_Dept_Flow
-- ----------------------------
INSERT INTO [dbo].[T_Sys_Dept_Flow] ([Dept_ID], [Dept_Flow]) VALUES (N'01999', N'1')
GO
GO

-- ----------------------------
-- Table structure for T_Sys_Dept_Tree
-- ----------------------------
DROP TABLE [dbo].[T_Sys_Dept_Tree]
GO
CREATE TABLE [dbo].[T_Sys_Dept_Tree] (
[Dept_PID] nvarchar(8) NOT NULL ,
[Dept_ID] nvarchar(8) NOT NULL 
)


GO

-- ----------------------------
-- Records of T_Sys_Dept_Tree
-- ----------------------------
INSERT INTO [dbo].[T_Sys_Dept_Tree] ([Dept_PID], [Dept_ID]) VALUES (N'01000', N'01000')
GO
GO
INSERT INTO [dbo].[T_Sys_Dept_Tree] ([Dept_PID], [Dept_ID]) VALUES (N'01000', N'01001')
GO
GO
INSERT INTO [dbo].[T_Sys_Dept_Tree] ([Dept_PID], [Dept_ID]) VALUES (N'01001', N'01001')
GO
GO
INSERT INTO [dbo].[T_Sys_Dept_Tree] ([Dept_PID], [Dept_ID]) VALUES (N'01999', N'01999')
GO
GO

-- ----------------------------
-- Table structure for T_Sys_Log
-- ----------------------------
DROP TABLE [dbo].[T_Sys_Log]
GO
CREATE TABLE [dbo].[T_Sys_Log] (
[Log_ID] int NOT NULL IDENTITY(1,1) ,
[Log_Date] datetime NOT NULL ,
[Man_ID] nvarchar(6) NOT NULL ,
[Menu_Code] nvarchar(4) NULL ,
[Log_Action] smallint NOT NULL ,
[Log_Content] nvarchar(100) NOT NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[T_Sys_Log]', RESEED, 262)
GO

-- ----------------------------
-- Records of T_Sys_Log
-- ----------------------------
SET IDENTITY_INSERT [dbo].[T_Sys_Log] ON
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'1', N'2017-10-23 09:55:52.993', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'2', N'2017-10-23 09:56:58.383', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'3', N'2017-10-23 10:00:20.143', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'4', N'2017-10-23 10:03:27.543', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'5', N'2017-10-23 10:07:40.347', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'15', N'2017-10-23 11:24:45.077', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'16', N'2017-10-23 11:27:20.233', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'40', N'2017-10-23 15:05:10.980', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'41', N'2017-10-23 15:08:36.803', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'55', N'2017-10-23 17:29:19.597', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'56', N'2017-10-23 17:30:24.697', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'66', N'2017-10-23 19:06:08.770', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'67', N'2017-10-23 19:08:17.653', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'6', N'2017-10-23 10:15:07.033', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'7', N'2017-10-23 11:06:04.737', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'8', N'2017-10-23 11:09:39.320', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'9', N'2017-10-23 11:11:35.317', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'10', N'2017-10-23 11:11:53.810', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'11', N'2017-10-23 11:14:16.483', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'12', N'2017-10-23 11:16:44.760', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'13', N'2017-10-23 11:17:49.397', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'14', N'2017-10-23 11:18:17.040', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'17', N'2017-10-23 11:29:00.577', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'18', N'2017-10-23 12:05:32.470', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'19', N'2017-10-23 12:06:24.920', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'20', N'2017-10-23 12:09:06.937', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'21', N'2017-10-23 12:12:36.020', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'22', N'2017-10-23 13:12:07.727', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'23', N'2017-10-23 13:14:05.753', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'24', N'2017-10-23 13:32:40.133', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'25', N'2017-10-23 13:35:47.117', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'26', N'2017-10-23 13:45:30.077', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'27', N'2017-10-23 13:48:15.030', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'28', N'2017-10-23 14:37:43.893', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'29', N'2017-10-23 14:42:03.740', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'30', N'2017-10-23 14:48:14.167', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'31', N'2017-10-23 14:49:05.420', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'32', N'2017-10-23 14:49:34.433', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'33', N'2017-10-23 14:49:57.727', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'34', N'2017-10-23 14:51:22.893', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'35', N'2017-10-23 14:52:46.930', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'36', N'2017-10-23 14:53:44.343', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'37', N'2017-10-23 14:55:35.857', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'38', N'2017-10-23 14:59:12.177', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'39', N'2017-10-23 15:00:29.357', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'42', N'2017-10-23 15:14:24.603', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'43', N'2017-10-23 15:20:16.407', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'44', N'2017-10-23 15:27:18.723', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'45', N'2017-10-23 16:17:15.010', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'46', N'2017-10-23 16:41:18.237', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'47', N'2017-10-23 16:45:48.680', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'48', N'2017-10-23 16:52:59.683', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'49', N'2017-10-23 17:00:04.910', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'50', N'2017-10-23 17:01:14.697', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'51', N'2017-10-23 17:07:01.857', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'57', N'2017-10-23 17:31:11.453', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'58', N'2017-10-23 17:32:32.200', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'59', N'2017-10-23 17:34:51.067', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'60', N'2017-10-23 17:36:03.823', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'61', N'2017-10-23 17:55:03.420', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'62', N'2017-10-23 18:46:09.877', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'63', N'2017-10-23 18:48:22.713', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'64', N'2017-10-23 18:55:37.500', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'65', N'2017-10-23 18:59:21.083', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'52', N'2017-10-23 17:13:32.897', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'53', N'2017-10-23 17:14:06.163', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'54', N'2017-10-23 17:22:37.877', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'68', N'2017-10-23 19:12:08.910', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'69', N'2017-10-23 19:13:44.473', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'70', N'2017-10-23 19:15:40.720', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'71', N'2017-10-23 19:17:01.717', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'78', N'2017-10-23 19:24:49.027', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'79', N'2017-10-23 19:25:54.110', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'80', N'2017-10-23 19:26:19.053', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'81', N'2017-10-23 19:27:29.523', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'82', N'2017-10-23 19:28:53.290', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'83', N'2017-10-23 19:30:47.777', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'84', N'2017-10-23 19:31:54.197', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'85', N'2017-10-23 19:33:27.247', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'87', N'2017-10-23 19:41:28.503', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'88', N'2017-10-24 09:42:44.900', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'89', N'2017-10-24 09:43:39.777', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'90', N'2017-10-24 09:45:29.687', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'91', N'2017-10-24 09:46:28.617', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'92', N'2017-10-24 09:48:15.787', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'93', N'2017-10-24 09:49:04.667', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'94', N'2017-10-24 09:49:51.217', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'95', N'2017-10-24 09:50:29.893', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'96', N'2017-10-24 09:53:04.870', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'97', N'2017-10-24 09:54:16.860', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'98', N'2017-10-24 10:01:39.327', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'99', N'2017-10-24 10:03:52.600', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'100', N'2017-10-24 10:05:34.177', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'101', N'2017-10-24 10:07:26.983', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'102', N'2017-10-24 10:09:59.767', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'103', N'2017-10-24 10:11:18.790', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'104', N'2017-10-24 10:12:04.567', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'105', N'2017-10-24 10:24:32.770', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'106', N'2017-10-24 10:27:27.317', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'107', N'2017-10-24 10:27:56.090', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'108', N'2017-10-24 10:30:43.733', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'109', N'2017-10-24 10:33:38.233', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'110', N'2017-10-24 10:37:44.613', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'111', N'2017-10-24 10:39:43.087', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'113', N'2017-10-24 10:45:12.557', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'114', N'2017-10-24 10:55:14.560', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'115', N'2017-10-24 10:56:44.743', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'116', N'2017-10-24 10:58:10.923', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'117', N'2017-10-24 10:59:03.760', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'118', N'2017-10-24 11:00:26.473', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'119', N'2017-10-24 11:01:45.730', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'120', N'2017-10-24 11:02:55.353', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'121', N'2017-10-24 11:19:21.837', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'122', N'2017-10-24 11:20:46.410', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'123', N'2017-10-24 11:26:52.687', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'124', N'2017-10-24 11:27:58.290', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'125', N'2017-10-24 11:28:42.137', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'126', N'2017-10-24 11:31:30.880', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'127', N'2017-10-24 13:09:59.387', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'128', N'2017-10-24 13:20:37.607', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'129', N'2017-10-24 13:22:48.183', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'130', N'2017-10-24 13:30:19.763', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'131', N'2017-10-24 13:32:42.013', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'132', N'2017-10-24 13:34:58.267', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'133', N'2017-10-24 13:37:09.143', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'134', N'2017-10-24 13:39:05.410', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'135', N'2017-10-24 13:46:50.900', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'136', N'2017-10-24 13:48:28.550', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'137', N'2017-10-24 13:55:09.197', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'149', N'2017-10-24 15:23:53.890', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'150', N'2017-10-24 15:27:23.653', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'151', N'2017-10-24 15:35:11.463', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'152', N'2017-10-24 15:37:14.770', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'153', N'2017-10-24 15:45:55.043', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'154', N'2017-10-24 15:53:48.727', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'155', N'2017-10-24 15:56:11.677', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'156', N'2017-10-24 15:59:21.917', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'157', N'2017-10-24 16:03:51.347', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'158', N'2017-10-24 16:06:43.480', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'159', N'2017-10-24 16:07:59.130', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'160', N'2017-10-24 16:11:33.943', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'161', N'2017-10-24 16:18:46.380', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'162', N'2017-10-24 16:27:19.923', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'163', N'2017-10-24 16:35:05.287', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'164', N'2017-10-24 16:37:26.620', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'165', N'2017-10-24 16:39:55.110', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'86', N'2017-10-23 19:39:58.553', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'112', N'2017-10-24 10:40:45.347', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'138', N'2017-10-24 14:24:28.443', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'139', N'2017-10-24 14:31:01.207', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'140', N'2017-10-24 14:36:04.733', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'141', N'2017-10-24 14:42:51.667', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'142', N'2017-10-24 14:46:19.873', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'143', N'2017-10-24 14:49:13.773', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'144', N'2017-10-24 14:51:20.900', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'145', N'2017-10-24 14:55:13.933', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'146', N'2017-10-24 15:07:49.303', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'147', N'2017-10-24 15:11:09.673', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'148', N'2017-10-24 15:18:58.540', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'166', N'2017-10-24 16:41:40.653', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'167', N'2017-10-24 16:47:47.113', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'168', N'2017-10-24 16:52:21.010', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'169', N'2017-10-24 16:54:46.610', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'170', N'2017-10-24 17:04:10.873', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'171', N'2017-10-24 17:09:23.560', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'172', N'2017-10-24 17:13:33.463', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'173', N'2017-10-24 17:20:01.293', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'174', N'2017-10-24 17:22:25.643', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'175', N'2017-10-24 17:29:47.887', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'176', N'2017-10-24 17:33:57.110', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'177', N'2017-10-24 17:35:47.000', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'178', N'2017-10-24 17:38:21.667', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'179', N'2017-10-24 17:40:59.170', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'180', N'2017-10-24 17:42:10.347', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'181', N'2017-10-24 18:46:57.620', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'182', N'2017-10-24 18:56:16.320', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'183', N'2017-10-24 19:06:58.897', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'184', N'2017-10-24 19:07:51.763', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'185', N'2017-10-24 19:11:24.957', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'186', N'2017-10-24 19:11:47.893', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'187', N'2017-10-24 19:12:21.220', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'188', N'2017-10-24 19:14:35.433', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'189', N'2017-10-24 19:16:50.720', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'190', N'2017-10-24 19:21:15.253', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'191', N'2017-10-24 19:24:26.250', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'192', N'2017-10-24 19:34:10.547', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'193', N'2017-10-24 19:36:11.423', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'194', N'2017-10-24 19:37:05.863', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'195', N'2017-10-24 19:37:33.717', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'196', N'2017-10-24 19:39:24.530', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'197', N'2017-10-24 19:39:52.033', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'198', N'2017-10-24 19:40:33.430', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'199', N'2017-10-24 19:56:55.403', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'200', N'2017-10-24 19:58:28.227', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'201', N'2017-10-24 20:33:33.993', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'202', N'2017-10-24 20:37:01.753', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'203', N'2017-10-25 13:07:14.250', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'204', N'2017-10-25 13:58:22.443', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'205', N'2017-10-25 14:11:36.393', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'206', N'2017-10-25 14:13:56.160', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'207', N'2017-10-25 14:19:00.293', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'208', N'2017-10-25 14:21:23.253', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'209', N'2017-10-25 15:32:31.113', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'210', N'2017-10-25 15:45:45.647', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'211', N'2017-10-25 15:49:20.083', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'212', N'2017-10-25 15:50:49.713', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'213', N'2017-10-25 15:51:18.913', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'214', N'2017-10-25 15:52:27.920', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'215', N'2017-10-25 16:13:29.177', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'216', N'2017-10-25 16:28:34.290', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'220', N'2017-10-25 16:45:15.643', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'222', N'2017-10-25 19:32:13.167', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'223', N'2017-10-25 19:36:37.927', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'224', N'2017-10-25 19:37:24.163', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'225', N'2017-10-25 19:39:21.473', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'226', N'2017-10-25 19:40:19.210', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'227', N'2017-10-25 19:49:06.447', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'228', N'2017-10-25 19:57:43.780', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'229', N'2017-10-25 20:19:49.243', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'230', N'2017-10-25 20:22:28.100', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'231', N'2017-10-25 20:27:13.103', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'232', N'2017-10-25 20:44:13.793', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'234', N'2017-10-26 09:54:52.570', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'235', N'2017-10-26 10:00:16.720', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'236', N'2017-10-26 10:09:44.720', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'237', N'2017-10-26 10:14:58.750', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'238', N'2017-10-26 10:20:12.760', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'239', N'2017-10-26 11:11:34.973', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'240', N'2017-10-26 11:16:34.627', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'241', N'2017-10-26 11:18:52.587', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'242', N'2017-10-26 11:31:48.190', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'243', N'2017-10-26 11:33:30.373', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'244', N'2017-10-26 11:36:04.833', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'245', N'2017-10-26 13:06:30.803', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'246', N'2017-10-26 13:16:42.367', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'247', N'2017-10-26 13:33:53.440', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'248', N'2017-10-26 13:41:30.980', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'249', N'2017-10-26 13:42:51.477', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'250', N'2017-10-26 13:46:58.970', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'251', N'2017-10-26 13:48:33.650', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'252', N'2017-10-26 14:22:15.380', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'253', N'2017-10-26 14:27:55.847', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'255', N'2017-10-26 14:41:30.630', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'256', N'2017-10-26 15:00:01.973', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'257', N'2017-10-26 15:08:48.420', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'258', N'2017-10-26 15:15:14.350', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'77', N'2017-10-23 19:23:59.953', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'76', N'2017-10-23 19:22:40.730', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'75', N'2017-10-23 19:21:39.100', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'74', N'2017-10-23 19:20:48.517', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'73', N'2017-10-23 19:19:54.600', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'72', N'2017-10-23 19:18:28.663', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'254', N'2017-10-26 14:31:55.873', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'217', N'2017-10-25 16:36:38.527', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'218', N'2017-10-25 16:38:48.540', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'219', N'2017-10-25 16:41:52.567', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'221', N'2017-10-25 16:51:51.307', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'233', N'2017-10-25 20:51:06.190', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'259', N'2017-10-26 15:21:12.630', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'260', N'2017-10-26 15:25:26.760', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'261', N'2017-10-26 15:26:20.970', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'262', N'2017-10-26 15:26:58.560', N'999', N'0000', N'1', N'登录系统')
GO
GO
SET IDENTITY_INSERT [dbo].[T_Sys_Log] OFF
GO

-- ----------------------------
-- Table structure for T_Sys_Man
-- ----------------------------
DROP TABLE [dbo].[T_Sys_Man]
GO
CREATE TABLE [dbo].[T_Sys_Man] (
[Man_ID] nvarchar(6) NOT NULL ,
[Man_Name] nvarchar(10) NOT NULL ,
[Co_ID] nvarchar(4) NOT NULL ,
[Dept_ID] nvarchar(8) NOT NULL ,
[Man_Type] smallint NOT NULL ,
[Crt_Date] datetime NOT NULL DEFAULT (getdate()) ,
[Crt_Oper] nvarchar(6) NULL ,
[Man_Tele] nvarchar(30) NULL ,
[Man_EMail] nvarchar(32) NULL ,
[Man_Date] datetime NULL ,
[Man_Level] smallint NOT NULL ,
[Man_Title] smallint NOT NULL ,
[Man_Sex] smallint NOT NULL ,
[Man_Status] smallint NOT NULL ,
[Oper_Password] nvarchar(50) NOT NULL ,
[Oper_Serial] int NOT NULL ,
[Work_Date] nvarchar(8) NOT NULL ,
[Auth_Bound] smallint NOT NULL ,
[Is_Admin] bit NOT NULL ,
[Remark] nvarchar(20) NULL ,
[Back_Cash] decimal(15,2) NOT NULL ,
[Now_Cash] decimal(15,2) NULL ,
[Pre_Work_Date] nvarchar(8) NOT NULL ,
[Is_Lock] bit NOT NULL ,
[Is_First] bit NOT NULL ,
[Is_Back] bit NOT NULL ,
[Is_DayCash] bit NOT NULL 
)


GO

-- ----------------------------
-- Records of T_Sys_Man
-- ----------------------------
INSERT INTO [dbo].[T_Sys_Man] ([Man_ID], [Man_Name], [Co_ID], [Dept_ID], [Man_Type], [Crt_Date], [Crt_Oper], [Man_Tele], [Man_EMail], [Man_Date], [Man_Level], [Man_Title], [Man_Sex], [Man_Status], [Oper_Password], [Oper_Serial], [Work_Date], [Auth_Bound], [Is_Admin], [Remark], [Back_Cash], [Now_Cash], [Pre_Work_Date], [Is_Lock], [Is_First], [Is_Back], [Is_DayCash]) VALUES (N'000', N'银行人员', N'01', N'01000', N'27', N'2010-01-28 17:40:07.000', N'999', N'', N'', N'2010-01-28 17:40:07.000', N'3', N'1', N'1', N'0', N'C6F057B86584942E415435FFB1FA93D4', N'1', N'20100128', N'2', N'0', N'', N'.00', N'.00', N'20100128', N'0', N'1', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_Sys_Man] ([Man_ID], [Man_Name], [Co_ID], [Dept_ID], [Man_Type], [Crt_Date], [Crt_Oper], [Man_Tele], [Man_EMail], [Man_Date], [Man_Level], [Man_Title], [Man_Sex], [Man_Status], [Oper_Password], [Oper_Serial], [Work_Date], [Auth_Bound], [Is_Admin], [Remark], [Back_Cash], [Now_Cash], [Pre_Work_Date], [Is_Lock], [Is_First], [Is_Back], [Is_DayCash]) VALUES (N'999', N'管理员01', N'01', N'01999', N'7', N'2010-01-28 17:40:07.000', N'999', N'44', N'', N'2017-10-26 10:15:24.860', N'1', N'1', N'1', N'0', N'C4CA4238A0B923820DCC509A6F75849B', N'1', N'20171023', N'1', N'0', N'', N'.00', N'.00', N'20171022', N'0', N'0', N'1', N'1')
GO
GO

-- ----------------------------
-- Table structure for T_Sys_Menu
-- ----------------------------
DROP TABLE [dbo].[T_Sys_Menu]
GO
CREATE TABLE [dbo].[T_Sys_Menu] (
[M_ID] smallint NOT NULL ,
[M_Name] nvarchar(40) NOT NULL ,
[M_PID] smallint NOT NULL ,
[Mg_ID] smallint NOT NULL ,
[M_Level] smallint NOT NULL ,
[M_Disp] smallint NOT NULL ,
[M_Auth] int NOT NULL ,
[M_Tip] nvarchar(120) NULL ,
[M_Function] nvarchar(64) NULL ,
[Is_Line] bit NOT NULL ,
[Is_Sub] bit NOT NULL ,
[M_SID] smallint NULL ,
[M_Normal_Icon] nvarchar(32) NULL ,
[M_Hot_Icon] nvarchar(32) NULL ,
[M_Disable_Icon] nvarchar(32) NULL ,
[M_Icon_Index] smallint NOT NULL ,
[Is_Base] bit NOT NULL ,
[M_Code] nvarchar(12) NOT NULL ,
[M_Status] smallint NOT NULL ,
[M_Shortcut] nvarchar(20) NULL 
)


GO

-- ----------------------------
-- Records of T_Sys_Menu
-- ----------------------------
INSERT INTO [dbo].[T_Sys_Menu] ([M_ID], [M_Name], [M_PID], [Mg_ID], [M_Level], [M_Disp], [M_Auth], [M_Tip], [M_Function], [Is_Line], [Is_Sub], [M_SID], [M_Normal_Icon], [M_Hot_Icon], [M_Disable_Icon], [M_Icon_Index], [Is_Base], [M_Code], [M_Status], [M_Shortcut]) VALUES (N'101', N'PDM转入数据库', N'101', N'1', N'1', N'1', N'47', N'PDM转入数据库', N'ImportPdm', N'0', N'0', N'0', null, null, null, N'-1', N'0', N'0101', N'0', N'')
GO
GO
INSERT INTO [dbo].[T_Sys_Menu] ([M_ID], [M_Name], [M_PID], [Mg_ID], [M_Level], [M_Disp], [M_Auth], [M_Tip], [M_Function], [Is_Line], [Is_Sub], [M_SID], [M_Normal_Icon], [M_Hot_Icon], [M_Disable_Icon], [M_Icon_Index], [Is_Base], [M_Code], [M_Status], [M_Shortcut]) VALUES (N'601', N'公司', N'601', N'6', N'1', N'1', N'239', N'公司信息管理', N'ManCompany', N'0', N'0', N'0', null, null, null, N'-1', N'0', N'0601', N'0', N'')
GO
GO
INSERT INTO [dbo].[T_Sys_Menu] ([M_ID], [M_Name], [M_PID], [Mg_ID], [M_Level], [M_Disp], [M_Auth], [M_Tip], [M_Function], [Is_Line], [Is_Sub], [M_SID], [M_Normal_Icon], [M_Hot_Icon], [M_Disable_Icon], [M_Icon_Index], [Is_Base], [M_Code], [M_Status], [M_Shortcut]) VALUES (N'602', N'部门', N'602', N'6', N'1', N'2', N'47', N'部门信息管理', N'ManDept', N'0', N'0', N'0', null, null, null, N'-1', N'0', N'0602', N'0', N'')
GO
GO
INSERT INTO [dbo].[T_Sys_Menu] ([M_ID], [M_Name], [M_PID], [Mg_ID], [M_Level], [M_Disp], [M_Auth], [M_Tip], [M_Function], [Is_Line], [Is_Sub], [M_SID], [M_Normal_Icon], [M_Hot_Icon], [M_Disable_Icon], [M_Icon_Index], [Is_Base], [M_Code], [M_Status], [M_Shortcut]) VALUES (N'603', N'员工', N'603', N'6', N'1', N'3', N'238', N'员工信息管理', N'ManMan', N'1', N'0', N'0', null, null, null, N'-1', N'0', N'0603', N'0', N'')
GO
GO
INSERT INTO [dbo].[T_Sys_Menu] ([M_ID], [M_Name], [M_PID], [Mg_ID], [M_Level], [M_Disp], [M_Auth], [M_Tip], [M_Function], [Is_Line], [Is_Sub], [M_SID], [M_Normal_Icon], [M_Hot_Icon], [M_Disable_Icon], [M_Icon_Index], [Is_Base], [M_Code], [M_Status], [M_Shortcut]) VALUES (N'604', N'角色', N'604', N'6', N'1', N'4', N'238', N'角色信息管理', N'ManRole', N'0', N'0', N'0', null, null, null, N'-1', N'0', N'0604', N'0', N'')
GO
GO
INSERT INTO [dbo].[T_Sys_Menu] ([M_ID], [M_Name], [M_PID], [Mg_ID], [M_Level], [M_Disp], [M_Auth], [M_Tip], [M_Function], [Is_Line], [Is_Sub], [M_SID], [M_Normal_Icon], [M_Hot_Icon], [M_Disable_Icon], [M_Icon_Index], [Is_Base], [M_Code], [M_Status], [M_Shortcut]) VALUES (N'605', N'角色分配', N'605', N'6', N'1', N'5', N'515', N'进行角色的分配', N'SetRole', N'1', N'0', N'0', null, null, null, N'-1', N'0', N'0605', N'0', N'')
GO
GO
INSERT INTO [dbo].[T_Sys_Menu] ([M_ID], [M_Name], [M_PID], [Mg_ID], [M_Level], [M_Disp], [M_Auth], [M_Tip], [M_Function], [Is_Line], [Is_Sub], [M_SID], [M_Normal_Icon], [M_Hot_Icon], [M_Disable_Icon], [M_Icon_Index], [Is_Base], [M_Code], [M_Status], [M_Shortcut]) VALUES (N'606', N'员工解锁', N'606', N'6', N'1', N'6', N'512', N'给锁定状态不能登录的员工进行解锁', N'UnLockMan', N'0', N'0', N'0', null, null, null, N'-1', N'0', N'0606', N'0', N'')
GO
GO
INSERT INTO [dbo].[T_Sys_Menu] ([M_ID], [M_Name], [M_PID], [Mg_ID], [M_Level], [M_Disp], [M_Auth], [M_Tip], [M_Function], [Is_Line], [Is_Sub], [M_SID], [M_Normal_Icon], [M_Hot_Icon], [M_Disable_Icon], [M_Icon_Index], [Is_Base], [M_Code], [M_Status], [M_Shortcut]) VALUES (N'607', N'密码重置', N'607', N'6', N'1', N'7', N'512', N'给遗失密码的员工重新恢复痴思密码', N'ResetMan', N'0', N'0', N'0', null, null, null, N'-1', N'0', N'0607', N'0', N'')
GO
GO
INSERT INTO [dbo].[T_Sys_Menu] ([M_ID], [M_Name], [M_PID], [Mg_ID], [M_Level], [M_Disp], [M_Auth], [M_Tip], [M_Function], [Is_Line], [Is_Sub], [M_SID], [M_Normal_Icon], [M_Hot_Icon], [M_Disable_Icon], [M_Icon_Index], [Is_Base], [M_Code], [M_Status], [M_Shortcut]) VALUES (N'610', N'在线状态删除', N'610', N'6', N'1', N'10', N'512', N'在线状态删除', N'SetOnineMan', N'0', N'0', N'0', null, null, null, N'-1', N'0', N'0610', N'0', N'')
GO
GO
INSERT INTO [dbo].[T_Sys_Menu] ([M_ID], [M_Name], [M_PID], [Mg_ID], [M_Level], [M_Disp], [M_Auth], [M_Tip], [M_Function], [Is_Line], [Is_Sub], [M_SID], [M_Normal_Icon], [M_Hot_Icon], [M_Disable_Icon], [M_Icon_Index], [Is_Base], [M_Code], [M_Status], [M_Shortcut]) VALUES (N'611', N'注册信息删除', N'611', N'6', N'1', N'11', N'512', N'注册信息删除', N'DeleteRegister', N'0', N'0', N'0', null, null, null, N'-1', N'0', N'0611', N'0', N'')
GO
GO
INSERT INTO [dbo].[T_Sys_Menu] ([M_ID], [M_Name], [M_PID], [Mg_ID], [M_Level], [M_Disp], [M_Auth], [M_Tip], [M_Function], [Is_Line], [Is_Sub], [M_SID], [M_Normal_Icon], [M_Hot_Icon], [M_Disable_Icon], [M_Icon_Index], [Is_Base], [M_Code], [M_Status], [M_Shortcut]) VALUES (N'630', N'系统参数', N'630', N'6', N'1', N'30', N'0', N'基础系统相关的参数', N'', N'0', N'1', N'631', null, null, null, N'-1', N'0', N'0000', N'0', N'')
GO
GO
INSERT INTO [dbo].[T_Sys_Menu] ([M_ID], [M_Name], [M_PID], [Mg_ID], [M_Level], [M_Disp], [M_Auth], [M_Tip], [M_Function], [Is_Line], [Is_Sub], [M_SID], [M_Normal_Icon], [M_Hot_Icon], [M_Disable_Icon], [M_Icon_Index], [Is_Base], [M_Code], [M_Status], [M_Shortcut]) VALUES (N'631', N'部门类型', N'630', N'6', N'2', N'1', N'47', N'管理部门类型的参数', N'ManDeptType', N'1', N'0', N'0', null, null, null, N'-1', N'0', N'0631', N'0', N'')
GO
GO
INSERT INTO [dbo].[T_Sys_Menu] ([M_ID], [M_Name], [M_PID], [Mg_ID], [M_Level], [M_Disp], [M_Auth], [M_Tip], [M_Function], [Is_Line], [Is_Sub], [M_SID], [M_Normal_Icon], [M_Hot_Icon], [M_Disable_Icon], [M_Icon_Index], [Is_Base], [M_Code], [M_Status], [M_Shortcut]) VALUES (N'632', N'员工岗位', N'630', N'6', N'2', N'2', N'47', N'管理员工岗位的参数', N'ManManType', N'0', N'0', N'0', null, null, null, N'-1', N'0', N'0632', N'0', N'')
GO
GO
INSERT INTO [dbo].[T_Sys_Menu] ([M_ID], [M_Name], [M_PID], [Mg_ID], [M_Level], [M_Disp], [M_Auth], [M_Tip], [M_Function], [Is_Line], [Is_Sub], [M_SID], [M_Normal_Icon], [M_Hot_Icon], [M_Disable_Icon], [M_Icon_Index], [Is_Base], [M_Code], [M_Status], [M_Shortcut]) VALUES (N'633', N'员工级别', N'630', N'6', N'2', N'3', N'47', N'管理员工级别的参数', N'ManManLevel', N'0', N'0', N'0', null, null, null, N'-1', N'0', N'0633', N'0', N'')
GO
GO
INSERT INTO [dbo].[T_Sys_Menu] ([M_ID], [M_Name], [M_PID], [Mg_ID], [M_Level], [M_Disp], [M_Auth], [M_Tip], [M_Function], [Is_Line], [Is_Sub], [M_SID], [M_Normal_Icon], [M_Hot_Icon], [M_Disable_Icon], [M_Icon_Index], [Is_Base], [M_Code], [M_Status], [M_Shortcut]) VALUES (N'634', N'员工职务', N'630', N'6', N'2', N'4', N'47', N'管理员工职务的参数', N'ManManTitle', N'0', N'0', N'0', null, null, null, N'-1', N'0', N'0634', N'0', N'')
GO
GO
INSERT INTO [dbo].[T_Sys_Menu] ([M_ID], [M_Name], [M_PID], [Mg_ID], [M_Level], [M_Disp], [M_Auth], [M_Tip], [M_Function], [Is_Line], [Is_Sub], [M_SID], [M_Normal_Icon], [M_Hot_Icon], [M_Disable_Icon], [M_Icon_Index], [Is_Base], [M_Code], [M_Status], [M_Shortcut]) VALUES (N'102', N'生成代码', N'102', N'1', N'1', N'1', N'47', N'生成开发相关代码', N'CodeBuild', N'0', N'0', N'0', N'', N'', N'', N'-1', N'0', N'0102', N'0', N'')
GO
GO

-- ----------------------------
-- Table structure for T_Sys_Menu_Auth
-- ----------------------------
DROP TABLE [dbo].[T_Sys_Menu_Auth]
GO
CREATE TABLE [dbo].[T_Sys_Menu_Auth] (
[Auth_ID] smallint NOT NULL ,
[Auth_Name] nvarchar(24) NOT NULL 
)


GO

-- ----------------------------
-- Records of T_Sys_Menu_Auth
-- ----------------------------
INSERT INTO [dbo].[T_Sys_Menu_Auth] ([Auth_ID], [Auth_Name]) VALUES (N'1', N'浏览')
GO
GO
INSERT INTO [dbo].[T_Sys_Menu_Auth] ([Auth_ID], [Auth_Name]) VALUES (N'2', N'查询')
GO
GO
INSERT INTO [dbo].[T_Sys_Menu_Auth] ([Auth_ID], [Auth_Name]) VALUES (N'3', N'新增')
GO
GO
INSERT INTO [dbo].[T_Sys_Menu_Auth] ([Auth_ID], [Auth_Name]) VALUES (N'4', N'修改')
GO
GO
INSERT INTO [dbo].[T_Sys_Menu_Auth] ([Auth_ID], [Auth_Name]) VALUES (N'5', N'删除')
GO
GO
INSERT INTO [dbo].[T_Sys_Menu_Auth] ([Auth_ID], [Auth_Name]) VALUES (N'6', N'保存')
GO
GO
INSERT INTO [dbo].[T_Sys_Menu_Auth] ([Auth_ID], [Auth_Name]) VALUES (N'7', N'打印')
GO
GO
INSERT INTO [dbo].[T_Sys_Menu_Auth] ([Auth_ID], [Auth_Name]) VALUES (N'8', N'导出')
GO
GO
INSERT INTO [dbo].[T_Sys_Menu_Auth] ([Auth_ID], [Auth_Name]) VALUES (N'9', N'处理')
GO
GO
INSERT INTO [dbo].[T_Sys_Menu_Auth] ([Auth_ID], [Auth_Name]) VALUES (N'10', N'设置')
GO
GO
INSERT INTO [dbo].[T_Sys_Menu_Auth] ([Auth_ID], [Auth_Name]) VALUES (N'11', N'审核')
GO
GO

-- ----------------------------
-- Table structure for T_Sys_Menu_Detail
-- ----------------------------
DROP TABLE [dbo].[T_Sys_Menu_Detail]
GO
CREATE TABLE [dbo].[T_Sys_Menu_Detail] (
[Auth_ID] smallint NOT NULL ,
[M_ID] smallint NOT NULL 
)


GO

-- ----------------------------
-- Records of T_Sys_Menu_Detail
-- ----------------------------

-- ----------------------------
-- Table structure for T_Sys_Menu_Group
-- ----------------------------
DROP TABLE [dbo].[T_Sys_Menu_Group]
GO
CREATE TABLE [dbo].[T_Sys_Menu_Group] (
[Mg_ID] smallint NOT NULL ,
[Mg_Name] nvarchar(40) NOT NULL ,
[Mg_Tip] nvarchar(80) NULL ,
[Mg_Normal_Icon] nvarchar(32) NULL ,
[Mg_Hot_Icon] nvarchar(32) NULL ,
[Mg_Disable_Icon] nvarchar(32) NULL ,
[Mg_Icon_Index] smallint NOT NULL ,
[Mg_Function] nvarchar(64) NULL ,
[Mg_Status] smallint NOT NULL ,
[Mg_Order] smallint NOT NULL 
)


GO

-- ----------------------------
-- Records of T_Sys_Menu_Group
-- ----------------------------
INSERT INTO [dbo].[T_Sys_Menu_Group] ([Mg_ID], [Mg_Name], [Mg_Tip], [Mg_Normal_Icon], [Mg_Hot_Icon], [Mg_Disable_Icon], [Mg_Icon_Index], [Mg_Function], [Mg_Status], [Mg_Order]) VALUES (N'1', N'SqlServer数据库定义', N'数据库定义', null, null, null, N'-1', null, N'0', N'1')
GO
GO
INSERT INTO [dbo].[T_Sys_Menu_Group] ([Mg_ID], [Mg_Name], [Mg_Tip], [Mg_Normal_Icon], [Mg_Hot_Icon], [Mg_Disable_Icon], [Mg_Icon_Index], [Mg_Function], [Mg_Status], [Mg_Order]) VALUES (N'6', N'系统管理', N'系统管理', null, null, null, N'-1', null, N'0', N'6')
GO
GO

-- ----------------------------
-- Table structure for T_Sys_Menu_Sys
-- ----------------------------
DROP TABLE [dbo].[T_Sys_Menu_Sys]
GO
CREATE TABLE [dbo].[T_Sys_Menu_Sys] (
[System_ID] varchar(2) NOT NULL ,
[M_ID] smallint NOT NULL 
)


GO

-- ----------------------------
-- Records of T_Sys_Menu_Sys
-- ----------------------------
INSERT INTO [dbo].[T_Sys_Menu_Sys] ([System_ID], [M_ID]) VALUES (N'BI', N'101')
GO
GO
INSERT INTO [dbo].[T_Sys_Menu_Sys] ([System_ID], [M_ID]) VALUES (N'BI', N'102')
GO
GO
INSERT INTO [dbo].[T_Sys_Menu_Sys] ([System_ID], [M_ID]) VALUES (N'BI', N'601')
GO
GO
INSERT INTO [dbo].[T_Sys_Menu_Sys] ([System_ID], [M_ID]) VALUES (N'BI', N'602')
GO
GO
INSERT INTO [dbo].[T_Sys_Menu_Sys] ([System_ID], [M_ID]) VALUES (N'BI', N'603')
GO
GO
INSERT INTO [dbo].[T_Sys_Menu_Sys] ([System_ID], [M_ID]) VALUES (N'BI', N'604')
GO
GO
INSERT INTO [dbo].[T_Sys_Menu_Sys] ([System_ID], [M_ID]) VALUES (N'BI', N'605')
GO
GO
INSERT INTO [dbo].[T_Sys_Menu_Sys] ([System_ID], [M_ID]) VALUES (N'BI', N'606')
GO
GO
INSERT INTO [dbo].[T_Sys_Menu_Sys] ([System_ID], [M_ID]) VALUES (N'BI', N'607')
GO
GO
INSERT INTO [dbo].[T_Sys_Menu_Sys] ([System_ID], [M_ID]) VALUES (N'BI', N'609')
GO
GO
INSERT INTO [dbo].[T_Sys_Menu_Sys] ([System_ID], [M_ID]) VALUES (N'BI', N'610')
GO
GO
INSERT INTO [dbo].[T_Sys_Menu_Sys] ([System_ID], [M_ID]) VALUES (N'BI', N'611')
GO
GO
INSERT INTO [dbo].[T_Sys_Menu_Sys] ([System_ID], [M_ID]) VALUES (N'BI', N'612')
GO
GO
INSERT INTO [dbo].[T_Sys_Menu_Sys] ([System_ID], [M_ID]) VALUES (N'BI', N'613')
GO
GO
INSERT INTO [dbo].[T_Sys_Menu_Sys] ([System_ID], [M_ID]) VALUES (N'BI', N'630')
GO
GO
INSERT INTO [dbo].[T_Sys_Menu_Sys] ([System_ID], [M_ID]) VALUES (N'BI', N'631')
GO
GO
INSERT INTO [dbo].[T_Sys_Menu_Sys] ([System_ID], [M_ID]) VALUES (N'BI', N'632')
GO
GO
INSERT INTO [dbo].[T_Sys_Menu_Sys] ([System_ID], [M_ID]) VALUES (N'BI', N'633')
GO
GO
INSERT INTO [dbo].[T_Sys_Menu_Sys] ([System_ID], [M_ID]) VALUES (N'BI', N'634')
GO
GO

-- ----------------------------
-- Table structure for T_Sys_Online
-- ----------------------------
DROP TABLE [dbo].[T_Sys_Online]
GO
CREATE TABLE [dbo].[T_Sys_Online] (
[Man_ID] nvarchar(6) NOT NULL ,
[Login_Date] datetime NOT NULL ,
[Online_Date] datetime NOT NULL ,
[Menu_Code] nvarchar(4) NULL ,
[Reg_ID] smallint NOT NULL 
)


GO

-- ----------------------------
-- Records of T_Sys_Online
-- ----------------------------

-- ----------------------------
-- Table structure for T_Sys_Oper_Role
-- ----------------------------
DROP TABLE [dbo].[T_Sys_Oper_Role]
GO
CREATE TABLE [dbo].[T_Sys_Oper_Role] (
[Man_ID] nvarchar(6) NOT NULL ,
[Role_ID] smallint NOT NULL 
)


GO

-- ----------------------------
-- Records of T_Sys_Oper_Role
-- ----------------------------
INSERT INTO [dbo].[T_Sys_Oper_Role] ([Man_ID], [Role_ID]) VALUES (N'999', N'1')
GO
GO

-- ----------------------------
-- Table structure for T_Sys_Register
-- ----------------------------
DROP TABLE [dbo].[T_Sys_Register]
GO
CREATE TABLE [dbo].[T_Sys_Register] (
[Reg_ID] smallint NOT NULL IDENTITY(1,1) ,
[Cpu_Code] nvarchar(40) NOT NULL ,
[Reg_Number] nvarchar(40) NOT NULL ,
[Reg_Code] nvarchar(40) NULL ,
[Dept_ID] nvarchar(8) NULL ,
[Crt_Date] datetime NOT NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[T_Sys_Register]', RESEED, 354)
GO

-- ----------------------------
-- Records of T_Sys_Register
-- ----------------------------
SET IDENTITY_INSERT [dbo].[T_Sys_Register] ON
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'9', N'00:1F:C6:3D:EE:E1', N'564D-2426-E1B9-B763', N'564D-2426-E1B9-B763', N'01022', N'2009-09-25 15:00:35.483')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'10', N'00:0F:FE:96:A1:FD', N'87F0-BC2D-3CE9-60C8', N'87F0-BC2D-3CE9-60C8', N'01021', N'2010-01-30 09:28:13.687')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'11', N'00:21:86:1B:44:78', N'37F6-3BF9-5FEA-BCAA', N'37F6-3BF9-5FEA-BCAA', N'01021', N'2010-01-30 10:13:17.810')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'12', N'00:21:86:1B:44:FC', N'4AE6-CBD9-65ED-9BF8', N'4AE6-CBD9-65ED-9BF8', N'01021', N'2010-01-30 10:24:57.060')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'13', N'00:21:86:1B:45:4C', N'F0BF-368D-6C87-8465', N'F0BF-368D-6C87-8465', N'01021', N'2010-01-30 10:32:10.357')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'14', N'00:21:86:1B:31:A0', N'222D-B3FE-7345-24A3', N'222D-B3FE-7345-24A3', N'01021', N'2010-01-30 10:48:29.013')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'15', N'00:19:BB:52:D6:1F', N'257D-8D5A-DD36-6300', N'257D-8D5A-DD36-6300', N'01023', N'2010-01-30 11:02:45.590')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'16', N'00:10:C6:AE:27:B0', N'D5AE-DF77-D955-D19F', N'D5AE-DF77-D955-D19F', N'01023', N'2010-01-30 11:03:48.747')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'17', N'00:1F:D0:3C:EE:A8', N'807F-2B2B-8C74-E704', N'807F-2B2B-8C74-E704', N'01023', N'2010-01-30 12:22:08.357')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'18', N'00:21:86:1B:3B:8C', N'0604-D841-59FF-28F7', N'0604-D841-59FF-28F7', N'01023', N'2010-01-30 12:27:18.857')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'19', N'00:1F:D0:3B:F2:E4', N'8B06-52D4-ADFD-5D9E', N'8B06-52D4-ADFD-5D9E', N'01023', N'2010-01-30 12:30:58.043')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'20', N'00:21:86:1B:0E:12', N'643B-19A5-0DA7-E0F5', N'643B-19A5-0DA7-E0F5', N'01023', N'2010-01-30 12:32:46.967')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'21', N'00:21:86:1B:45:E4', N'F9FC-6027-BA50-0223', N'F9FC-6027-BA50-0223', N'01023', N'2010-01-30 12:34:03.030')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'22', N'00:16:E6:F6:43:C4', N'B8D5-1A4D-9C4E-978E', N'B8D5-1A4D-9C4E-978E', N'01023', N'2010-01-30 12:58:27.140')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'23', N'00:0F:FE:92:BE:69', N'F0EA-EDF8-3226-ECF1', N'F0EA-EDF8-3226-ECF1', N'01032', N'2010-01-30 14:02:38.340')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'25', N'00:0F:FE:96:DD:97', N'D479-400A-237C-29FA', N'D479-400A-237C-29FA', N'01032', N'2010-01-30 14:21:46.030')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'26', N'00:21:86:1B:3C:D4', N'9969-02F4-8376-DE79', N'9969-02F4-8376-DE79', N'01032', N'2010-01-30 14:41:14.983')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'27', N'00:0F:FE:DB:8B:80', N'4C67-6E4C-2AF3-58DD', N'4C67-6E4C-2AF3-58DD', N'01032', N'2010-01-30 14:53:12.030')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'28', N'00:0D:60:E5:9B:A8', N'BA65-40D3-460B-5582', N'BA65-40D3-460B-5582', N'01024', N'2010-01-30 15:02:01.717')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'29', N'00:19:BB:CC:33:42', N'A8E8-9D4E-6F1E-9947', N'A8E8-9D4E-6F1E-9947', N'01032', N'2010-01-30 15:09:03.793')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'30', N'00:21:86:1B:34:8A', N'4595-4FEE-6BA3-CA67', N'4595-4FEE-6BA3-CA67', N'01032', N'2010-01-30 15:14:28.950')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'31', N'00:21:86:1B:0A:22', N'EE0F-8228-D95D-E2D2', N'EE0F-8228-D95D-E2D2', N'01024', N'2010-01-30 15:18:32.390')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'32', N'00:1F:D0:45:46:64', N'4CD6-87E8-5EF0-39B9', N'4CD6-87E8-5EF0-39B9', N'01024', N'2010-01-30 15:26:19.967')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'33', N'00:19:BB:52:E3:CA', N'C0B3-DEA2-1BDE-744A', N'C0B3-DEA2-1BDE-744A', N'01022', N'2010-01-30 15:30:29.903')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'34', N'00:1F:D0:45:3B:66', N'AF04-3B3D-9D61-7911', N'AF04-3B3D-9D61-7911', N'01024', N'2010-01-30 15:32:23.653')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'35', N'00:0D:60:9E:3D:70', N'DB19-3C42-AA92-55EA', N'DB19-3C42-AA92-55EA', N'01022', N'2010-01-30 15:37:34.123')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'36', N'00:21:86:1B:44:02', N'3B22-A448-26B6-9D9D', N'3B22-A448-26B6-9D9D', N'01024', N'2010-01-30 15:39:21.060')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'37', N'00:21:86:1B:3E:F8', N'6B2C-F0CB-DBFF-4F7A', N'6B2C-F0CB-DBFF-4F7A', N'01024', N'2010-01-30 15:40:45.733')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'38', N'00:14:85:A9:BE:68', N'F8C6-09C3-09B6-8278', N'F8C6-09C3-09B6-8278', N'01024', N'2010-01-30 16:40:53.013')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'39', N'00:11:25:70:04:C7', N'A57C-E6C7-DFA2-5BCE', N'A57C-E6C7-DFA2-5BCE', N'01022', N'2010-01-31 10:51:54.407')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'41', N'00:21:86:1B:3F:1A', N'A3EA-C7D5-DBB4-EF7E', N'A3EA-C7D5-DBB4-EF7E', N'01022', N'2010-01-31 11:05:59.437')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'42', N'00:21:86:1B:0B:E6', N'7C04-248E-664E-D87B', N'7C04-248E-664E-D87B', N'01022', N'2010-01-31 12:59:47.903')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'43', N'00:1F:D0:3A:68:E8', N'CC93-295C-E920-2142', N'CC93-295C-E920-2142', N'01022', N'2010-01-31 13:04:59.217')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'44', N'00:21:86:1B:44:66', N'BDCC-27EA-BD07-5884', N'BDCC-27EA-BD07-5884', N'01022', N'2010-01-31 13:07:08.373')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'46', N'00:0D:9D:94:DA:43', N'55C0-6EB3-C797-E2E2', N'55C0-6EB3-C797-E2E2', N'01023', N'2010-01-31 15:05:47.560')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'47', N'00:19:BB:CC:21:77', N'CF5F-6619-17C3-487D', N'CF5F-6619-17C3-487D', N'01022', N'2010-01-31 15:42:03.123')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'48', N'00:1F:D0:45:39:EE', N'33CB-D395-F73D-8661', N'33CB-D395-F73D-8661', N'01021', N'2010-02-01 08:15:05.247')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'50', N'00:14:85:A2:E3:F7', N'E0DD-0777-1F3A-5D3F', N'E0DD-0777-1F3A-5D3F', N'01002', N'2010-02-01 10:13:10.560')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'51', N'00:21:86:1B:3C:80', N'C073-F58B-89CD-48E9', N'C073-F58B-89CD-48E9', N'01004', N'2010-02-01 10:59:20.030')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'52', N'00:0F:FE:DD:0A:2C', N'66E5-CBF7-E5A4-573C', N'66E5-CBF7-E5A4-573C', N'01002', N'2010-02-01 11:10:12.640')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'53', N'00:0F:FE:DB:8B:78', N'351B-53AF-06FE-17AB', N'351B-53AF-06FE-17AB', N'01002', N'2010-02-01 11:11:53.293')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'55', N'00:21:86:1B:3B:A2', N'EB26-2324-F2D7-F874', N'EB26-2324-F2D7-F874', N'01031', N'2010-02-01 11:27:23.263')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'56', N'00:21:86:1B:2C:2E', N'7A2A-2D4A-4DFE-EFBA', N'7A2A-2D4A-4DFE-EFBA', N'01031', N'2010-02-01 11:29:13.357')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'57', N'00:21:86:1E:A1:B0', N'B62C-F61A-3EB1-A7CD', N'B62C-F61A-3EB1-A7CD', N'01031', N'2010-02-01 11:31:35.187')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'58', N'00:21:86:1B:09:60', N'0A5D-334A-0E0A-12CD', N'0A5D-334A-0E0A-12CD', N'01031', N'2010-02-01 11:32:48.797')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'59', N'00:19:BB:52:D6:A9', N'365F-1034-4FCF-8B66', N'365F-1034-4FCF-8B66', N'01032', N'2010-02-01 11:53:48.967')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'60', N'00:1F:D0:45:3F:5E', N'6C2A-5AB9-FCE1-A931', N'6C2A-5AB9-FCE1-A931', N'01032', N'2010-02-01 12:04:43.857')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'61', N'18:A9:05:EB:E2:DE', N'84DB-7577-148D-6A63', N'84DB-7577-148D-6A63', N'01032', N'2010-02-01 12:17:29.327')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'62', N'00:11:25:38:40:D1', N'D570-C048-169C-6064', N'D570-C048-169C-6064', N'01002', N'2010-02-01 15:26:16.280')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'63', N'00:1D:92:69:0A:76', N'AC22-31DE-06D3-7163', N'AC22-31DE-06D3-7163', N'01002', N'2010-02-01 15:55:54.967')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'66', N'00:19:BB:CC:17:DB', N'0747-8CB9-E981-B588', N'0747-8CB9-E981-B588', N'01021', N'2010-02-02 10:19:42.060')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'67', N'00:0F:FE:DD:05:62', N'F0FB-5B90-7676-1AEB', N'F0FB-5B90-7676-1AEB', N'01002', N'2010-02-02 11:31:35.170')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'68', N'00:0F:FE:7F:9B:69', N'68FB-EEF7-5FD2-2D23', N'68FB-EEF7-5FD2-2D23', N'01004', N'2010-02-02 14:48:56.310')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'69', N'00:0F:FE:7F:9A:C9', N'42A3-1E68-AFB6-3F4D', N'42A3-1E68-AFB6-3F4D', N'01005', N'2010-02-04 08:44:27.950')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'70', N'00:21:86:1B:3B:CC', N'A670-5C18-0068-C934', N'A670-5C18-0068-C934', N'01005', N'2010-02-04 08:59:08.327')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'71', N'00:25:D3:EE:C8:A6', N'689E-3B05-B81A-06FB', N'689E-3B05-B81A-06FB', N'01021', N'2010-02-04 09:28:46.653')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'72', N'00:21:86:1B:3F:38', N'AFD9-1DBF-15E1-DB34', N'AFD9-1DBF-15E1-DB34', N'01005', N'2010-02-04 09:40:17.170')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'73', N'00:0F:FE:DB:8B:10', N'6E5C-0EA8-13AA-2569', N'6E5C-0EA8-13AA-2569', N'01002', N'2010-02-04 15:01:23.763')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'74', N'00:0F:FE:92:E0:BF', N'7053-40AF-537D-B338', N'7053-40AF-537D-B338', N'01021', N'2010-02-05 08:37:24.420')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'75', N'00:16:E6:03:3F:F8', N'1460-BE0C-90F9-BC02', N'1460-BE0C-90F9-BC02', N'01002', N'2010-02-05 14:43:02.280')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'77', N'00:1F:D0:45:8B:40', N'2D76-E616-D602-8DDF', N'2D76-E616-D602-8DDF', N'01021', N'2010-02-06 11:37:24.670')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'78', N'00:21:86:ED:77:86', N'5061-B947-5603-0C14', N'5061-B947-5603-0C14', N'01006', N'2010-02-06 12:31:52.967')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'81', N'00:1F:D0:45:8F:C2', N'B60C-B9A0-14FE-6241', N'B60C-B9A0-14FE-6241', N'01032', N'2010-02-08 09:51:10.653')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'82', N'00:23:54:5A:49:28', N'3D81-53C5-385D-991B', N'3D81-53C5-385D-991B', N'01032', N'2010-02-08 10:51:39.607')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'83', N'00:21:86:ED:7A:EA', N'F0C9-DF75-489D-D5B9', N'F0C9-DF75-489D-D5B9', N'01006', N'2010-02-10 15:50:57.687')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'84', N'00:21:86:ED:77:25', N'F046-8229-25EF-2357', N'F046-8229-25EF-2357', N'01047', N'2010-02-28 14:48:43.327')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'85', N'00:21:86:1B:34:D2', N'2924-35FE-A3FA-5CDA', N'2924-35FE-A3FA-5CDA', N'01025', N'2010-03-01 08:12:33.043')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'86', N'00:21:5A:EA:BD:12', N'3BBB-0ED6-2D3B-C575', N'3BBB-0ED6-2D3B-C575', N'01025', N'2010-03-01 08:48:40.810')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'87', N'00:21:5A:E9:DB:56', N'2F0F-E822-BF73-A7C6', N'2F0F-E822-BF73-A7C6', N'01025', N'2010-03-01 08:49:57.357')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'88', N'00:21:86:1B:30:68', N'5622-9740-220A-9CDF', N'5622-9740-220A-9CDF', N'01025', N'2010-03-01 08:55:37.903')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'89', N'00:21:5A:EA:BC:7E', N'CC5C-F073-2301-FBCE', N'CC5C-F073-2301-FBCE', N'01025', N'2010-03-01 09:02:06.327')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'90', N'00:21:86:1B:3E:DE', N'F335-B3BD-2B9E-19D2', N'F335-B3BD-2B9E-19D2', N'01025', N'2010-03-01 09:03:52.233')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'91', N'00:1F:D0:45:41:4E', N'72BC-6DE0-50FF-645B', N'72BC-6DE0-50FF-645B', N'01025', N'2010-03-01 09:06:15.140')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'92', N'00:19:BB:52:D6:67', N'4F44-7BA1-0D68-1418', N'4F44-7BA1-0D68-1418', N'01025', N'2010-03-01 09:32:18.187')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'93', N'00:21:86:1B:34:A2', N'5551-13C3-E0E5-C68C', N'5551-13C3-E0E5-C68C', N'01025', N'2010-03-01 09:45:29.483')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'96', N'00:21:86:1B:0C:D2', N'3041-59BE-E03E-6701', N'3041-59BE-E03E-6701', N'01025', N'2010-03-01 11:12:31.687')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'98', N'00:10:C6:BC:06:BA', N'EABA-1B1D-DADB-09DC', N'EABA-1B1D-DADB-09DC', N'01004', N'2010-03-01 11:24:04.513')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'99', N'00:0F:FE:96:9E:21', N'D717-14E9-2F82-735D', N'D717-14E9-2F82-735D', N'01004', N'2010-03-01 11:40:00.497')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'100', N'00:21:5A:EA:BD:01', N'50D3-1BD8-5E99-9E16', N'50D3-1BD8-5E99-9E16', N'01033', N'2010-03-01 13:57:37.420')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'101', N'00:1E:0B:29:F5:96', N'E29F-62D5-7866-5753', N'E29F-62D5-7866-5753', N'01033', N'2010-03-01 14:12:33.513')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'102', N'00:21:5A:EA:AF:60', N'B68F-F50E-9C4F-6E02', N'B68F-F50E-9C4F-6E02', N'01033', N'2010-03-01 14:24:01.043')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'103', N'00:21:86:1B:0A:12', N'78DE-4560-0538-9318', N'78DE-4560-0538-9318', N'01004', N'2010-03-01 14:33:42.233')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'104', N'00:19:BB:52:D6:87', N'2146-D7D5-247A-04D8', N'2146-D7D5-247A-04D8', N'01033', N'2010-03-01 14:44:17.107')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'105', N'00:1F:D0:45:39:B2', N'E10E-5155-5952-4007', N'E10E-5155-5952-4007', N'01033', N'2010-03-01 14:58:58.090')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'106', N'00:0D:60:E7:38:CC', N'54AD-6DD2-E174-47B0', N'54AD-6DD2-E174-47B0', N'01033', N'2010-03-01 15:30:08.827')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'108', N'00:21:86:1B:0B:2A', N'25FD-DC28-CB62-B9AC', N'25FD-DC28-CB62-B9AC', N'01033', N'2010-03-01 15:37:46.840')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'109', N'00:1F:D0:45:44:86', N'B897-19D6-BE07-9E06', N'B897-19D6-BE07-9E06', N'01025', N'2010-03-05 16:42:47.157')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'110', N'00:24:81:22:16:33', N'61D3-3C04-5056-9C85', N'61D3-3C04-5056-9C85', N'01032', N'2010-03-10 10:05:26.747')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'111', N'00:15:60:5D:79:E8', N'6412-80A0-2FCC-03CB', N'6412-80A0-2FCC-03CB', N'01025', N'2010-04-07 09:08:49.153')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'112', N'00:1F:D0:45:46:B2', N'2BAF-BC76-302B-7330', N'2BAF-BC76-302B-7330', N'01023', N'2010-04-12 14:38:40.967')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'113', N'00:19:BB:CC:11:51', N'90F9-9F7A-CFA5-CBA6', N'90F9-9F7A-CFA5-CBA6', N'01021', N'2010-05-21 14:09:55.967')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'114', N'00:19:BB:CC:18:24', N'B0AF-53AE-D631-02EA', N'B0AF-53AE-D631-02EA', N'01025', N'2010-07-19 15:57:49.077')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'115', N'00:1E:90:BF:28:8B', N'FEB0-E327-D2DC-FE90', N'FEB0-E327-D2DC-FE90', N'01022', N'2010-10-19 10:33:17.140')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'116', N'18:A9:05:EB:E3:10', N'357B-A188-3F10-0D67', N'357B-A188-3F10-0D67', N'01022', N'2010-10-19 10:51:23.217')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'117', N'00:14:85:A9:A5:A4', N'FD1E-0FF7-5B12-3C9A', N'FD1E-0FF7-5B12-3C9A', N'01024', N'2010-11-16 08:47:59.467')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'119', N'00:21:86:ED:77:68', N'3D1E-BA96-1BAC-0EE8', N'3D1E-BA96-1BAC-0EE8', N'01004', N'2010-11-17 08:27:40.543')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'121', N'00:0F:FE:92:C0:13', N'E11A-9959-19A7-74DB', N'E11A-9959-19A7-74DB', N'01031', N'2010-11-23 15:17:22.403')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'122', N'00:1D:92:69:0A:7C', N'1F94-0470-F6CB-530B', N'1F94-0470-F6CB-530B', N'01002', N'2010-12-02 15:36:24.560')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'123', N'00:24:01:14:8C:8A', N'250F-8A50-473F-6232', N'250F-8A50-473F-6232', N'01001', N'2010-12-09 10:35:30.670')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'124', N'18:A9:05:EC:05:4E', N'1B31-4E61-F521-DFB9', N'1B31-4E61-F521-DFB9', N'01004', N'2010-12-09 10:49:52.247')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'125', N'00:21:86:1B:2D:FA', N'6713-AB11-E339-62F6', N'6713-AB11-E339-62F6', N'01033', N'2010-12-09 14:19:35.357')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'126', N'00:11:25:6F:B4:24', N'C0FE-8217-5B49-174E', N'C0FE-8217-5B49-174E', N'01002', N'2011-02-11 15:29:42.293')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'127', N'00:14:85:A0:E8:EC', N'3DF8-66E7-E9AC-2EC9', N'3DF8-66E7-E9AC-2EC9', N'01022', N'2011-04-01 10:01:31.217')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'128', N'00:1F:D0:45:90:3E', N'960B-D548-BCA5-53DF', N'960B-D548-BCA5-53DF', N'01007', N'2011-04-13 09:20:35.357')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'129', N'00:1F:D0:45:8F:F6', N'EB4F-399B-66EB-42CB', N'EB4F-399B-66EB-42CB', N'01034', N'2011-04-13 13:34:26.593')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'130', N'00:21:86:1B:39:4A', N'50BE-C991-B2B6-F3AB', N'50BE-C991-B2B6-F3AB', N'01034', N'2011-04-13 13:35:57.780')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'131', N'00:21:86:1B:37:7C', N'07F7-F60A-9658-9217', N'07F7-F60A-9658-9217', N'01034', N'2011-04-13 13:39:35.433')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'132', N'00:1F:D0:45:3E:94', N'F33B-38DF-FEAD-6F5F', N'F33B-38DF-FEAD-6F5F', N'01027', N'2011-04-13 13:44:31.373')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'133', N'00:21:86:1B:3B:22', N'0144-BEA5-F884-43D5', N'0144-BEA5-F884-43D5', N'01027', N'2011-04-13 13:55:37.250')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'134', N'00:21:86:1B:0B:56', N'ED00-161D-5CB4-E4F4', N'ED00-161D-5CB4-E4F4', N'01027', N'2011-04-13 13:57:48.450')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'135', N'00:23:54:DD:D5:17', N'1786-4C51-024B-38E2', N'1786-4C51-024B-38E2', N'01027', N'2011-04-13 14:21:06.513')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'136', N'00:0F:FE:DC:83:08', N'72BA-9EAC-744D-7D18', N'72BA-9EAC-744D-7D18', N'01007', N'2011-04-13 14:27:05.123')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'137', N'00:1F:D0:45:46:CE', N'664D-C0E7-3693-3A34', N'664D-C0E7-3693-3A34', N'01007', N'2011-04-13 14:29:33.467')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'138', N'00:24:81:22:37:20', N'82FC-570B-8F71-D61D', N'82FC-570B-8F71-D61D', N'01029', N'2011-04-13 14:33:51.090')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'140', N'00:1F:D0:45:3B:6C', N'674D-E176-9A65-D512', N'674D-E176-9A65-D512', N'01027', N'2011-04-13 14:50:04.640')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'141', N'00:21:86:F6:84:E1', N'139D-B31E-F78E-C43E', N'139D-B31E-F78E-C43E', N'01004', N'2011-05-04 14:53:24.293')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'142', N'00:21:86:ED:77:39', N'BEE0-2F27-F61C-5B22', N'BEE0-2F27-F61C-5B22', N'01022', N'2011-05-23 13:54:14.480')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'143', N'00:0F:FE:E1:05:36', N'7DEB-C5DF-0CED-621D', N'7DEB-C5DF-0CED-621D', N'01022', N'2011-05-23 14:03:56.700')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'146', N'44:37:E6:2F:2F:78', N'87A8-213D-300E-FBF4', N'87A8-213D-300E-FBF4', N'01021', N'2011-06-01 15:05:24.310')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'147', N'00:21:86:ED:76:97', N'0055-DF14-10A5-094F', N'0055-DF14-10A5-094F', N'01024', N'2011-06-01 15:42:17.263')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'148', N'00:11:25:5A:0F:9C', N'831E-32B5-4455-10C3', N'831E-32B5-4455-10C3', N'01023', N'2011-06-23 12:44:50.560')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'149', N'00:21:86:F6:58:2C', N'661A-534C-D4E5-394D', N'661A-534C-D4E5-394D', N'01002', N'2011-06-29 15:09:58.857')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'150', N'00:19:BB:CC:22:95', N'65F4-06B9-D2E1-90F8', N'65F4-06B9-D2E1-90F8', N'01021', N'2011-07-04 11:17:45.450')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'151', N'00:21:86:F6:57:C8', N'5CDC-E74A-9A27-6944', N'5CDC-E74A-9A27-6944', N'01002', N'2011-07-15 10:31:54.670')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'152', N'00:0D:60:E7:23:EE', N'4C8E-A69C-9D59-4351', N'4C8E-A69C-9D59-4351', N'01024', N'2011-07-28 09:44:36.780')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'153', N'00:1D:7D:58:67:B6', N'28CE-BF6E-03A9-51D2', N'28CE-BF6E-03A9-51D2', N'01022', N'2011-08-27 15:03:44.357')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'155', N'44:37:E6:5C:86:EF', N'C528-4C31-DAEA-2949', N'C528-4C31-DAEA-2949', N'01005', N'2011-09-15 09:51:36.967')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'156', N'44:37:E6:5C:C1:8F', N'5D5F-FFA1-EAF5-4D5A', N'5D5F-FFA1-EAF5-4D5A', N'01022', N'2011-09-27 10:16:51.933')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'157', N'44:37:E6:5D:6F:88', N'E5AC-468F-616A-C2CF', N'E5AC-468F-616A-C2CF', N'01023', N'2011-10-08 10:43:56.763')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'158', N'44:37:E6:5C:C1:6B', N'E007-F8AF-5E05-C4E5', N'E007-F8AF-5E05-C4E5', N'01023', N'2011-10-10 10:57:09.780')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'159', N'00:0F:FE:DD:0A:26', N'63D8-EBEE-8CD6-D1DB', N'63D8-EBEE-8CD6-D1DB', N'01002', N'2011-10-14 10:16:32.687')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'160', N'00:1F:D0:3C:F8:EC', N'1EE9-756F-148F-3D68', N'1EE9-756F-148F-3D68', N'01025', N'2011-10-25 09:52:50.343')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'161', N'00:21:86:1B:39:48', N'D9EC-B111-1BA9-3010', N'D9EC-B111-1BA9-3010', N'01034', N'2011-11-03 08:35:52.170')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'163', N'00:00:00:00:00:00', N'9899-69C5-E9A0-A43D', N'9899-69C5-E9A0-A43D', N'01023', N'2011-11-03 09:04:23.857')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'164', N'00:0F:FE:DB:89:E0', N'4008-5E41-9F6D-AFE1', N'4008-5E41-9F6D-AFE1', N'01004', N'2011-11-28 09:25:03.890')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'165', N'44:37:E6:5C:C3:5A', N'6B6A-394F-F819-84CD', N'6B6A-394F-F819-84CD', N'01034', N'2011-12-02 08:36:17.233')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'166', N'00:19:BB:52:D6:9B', N'4D3C-4F18-0BBD-7CED', N'4D3C-4F18-0BBD-7CED', N'01002', N'2012-03-08 09:36:10.797')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'167', N'00:19:BB:52:D6:A7', N'D401-6E54-4BF6-6247', N'D401-6E54-4BF6-6247', N'01021', N'2012-03-16 15:59:10.717')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'168', N'00:21:86:1B:09:E2', N'2927-6477-6112-251A', N'2927-6477-6112-251A', N'01027', N'2012-03-21 15:15:45.967')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'169', N'44:37:E6:5D:6F:77', N'1D42-9D02-1398-8CAB', N'1D42-9D02-1398-8CAB', N'01024', N'2012-03-28 09:48:13.293')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'170', N'8C:89:A5:23:75:FA', N'855E-FEF4-FFE0-9E7D', N'855E-FEF4-FFE0-9E7D', N'01024', N'2012-03-28 10:10:46.810')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'171', N'00:21:86:F6:58:D2', N'F1E9-1517-037D-F98B', N'F1E9-1517-037D-F98B', N'01025', N'2012-03-29 11:10:25.547')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'172', N'00:21:86:1B:2C:24', N'523E-08E5-05AC-210D', N'523E-08E5-05AC-210D', N'01023', N'2012-03-29 11:28:22.547')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'173', N'44:37:E6:5C:C1:23', N'FA27-28AE-805C-F9B9', N'FA27-28AE-805C-F9B9', N'01022', N'2012-03-30 14:09:40.890')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'174', N'00:21:86:F6:58:12', N'5DD2-FF34-D23F-5F7D', N'5DD2-FF34-D23F-5F7D', N'01025', N'2012-04-06 12:13:34.000')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'175', N'00:19:BB:CC:1E:FB', N'5CD1-521E-E6EA-B7B2', N'5CD1-521E-E6EA-B7B2', N'01021', N'2012-04-18 11:26:56.827')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'176', N'00:19:BB:52:D6:72', N'15FB-595C-90B1-351A', N'15FB-595C-90B1-351A', N'01004', N'2012-04-20 10:30:43.250')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'177', N'00:21:86:1B:3F:46', N'AACF-B928-5876-261A', N'AACF-B928-5876-261A', N'01002', N'2012-04-26 09:15:41.030')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'178', N'00:0F:FE:93:8F:EA', N'0DD1-F0A6-A4AB-0B32', N'0DD1-F0A6-A4AB-0B32', N'01002', N'2012-04-26 10:21:35.153')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'181', N'00:21:86:1B:3B:20', N'51F5-BDD8-7C53-39B7', N'51F5-BDD8-7C53-39B7', N'01038', N'2012-05-08 12:31:41.450')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'182', N'44:37:E6:5D:70:8B', N'CAE3-7FFF-CBE5-0CD5', N'CAE3-7FFF-CBE5-0CD5', N'01035', N'2012-05-08 16:06:48.153')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'183', N'44:37:E6:5C:C3:78', N'C77A-4AE2-052F-FDC7', N'C77A-4AE2-052F-FDC7', N'01035', N'2012-05-09 09:52:15.700')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'184', N'00:16:E6:7C:8D:C9', N'23F5-1F79-09F9-C29A', N'23F5-1F79-09F9-C29A', N'01035', N'2012-05-09 10:15:33.030')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'185', N'00:21:86:1B:3B:50', N'38D6-4DEA-7DFA-C948', N'38D6-4DEA-7DFA-C948', N'01035', N'2012-05-09 10:21:25.043')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'186', N'00:16:E6:7C:90:4E', N'053F-BD69-EE2F-D2A4', N'053F-BD69-EE2F-D2A4', N'01035', N'2012-05-09 10:36:43.733')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'187', N'00:21:86:F6:23:91', N'0EC6-5520-CB61-4555', N'0EC6-5520-CB61-4555', N'01035', N'2012-05-09 11:07:20.170')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'189', N'00:16:E6:0F:29:DB', N'1ADD-1BD5-7995-E8A0', N'1ADD-1BD5-7995-E8A0', N'01008', N'2012-05-09 13:50:54.403')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'190', N'00:21:86:1B:0B:FA', N'B3AC-C755-8B23-CC0D', N'B3AC-C755-8B23-CC0D', N'01008', N'2012-05-09 14:29:41.310')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'191', N'00:21:86:1B:0B:2E', N'B0D5-E47C-5171-B2DD', N'B0D5-E47C-5171-B2DD', N'01036', N'2012-05-10 14:02:10.170')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'192', N'00:21:86:1B:0C:AC', N'9700-F0C0-C82F-0C8A', N'9700-F0C0-C82F-0C8A', N'01036', N'2012-05-10 14:22:46.467')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'193', N'00:21:86:1B:37:AC', N'46BF-ACA1-96E3-56BE', N'46BF-ACA1-96E3-56BE', N'01036', N'2012-05-10 14:40:28.233')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'194', N'00:21:86:F6:57:5C', N'18DA-8B1F-0B2B-B4C4', N'18DA-8B1F-0B2B-B4C4', N'01002', N'2012-05-15 09:01:07.390')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'195', N'8C:89:A5:23:75:D7', N'A2DC-8794-3AC9-0F6E', N'A2DC-8794-3AC9-0F6E', N'01024', N'2012-05-30 08:17:21.890')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'197', N'44:37:E6:5C:C1:C4', N'301A-8AB3-AFCB-84D2', N'301A-8AB3-AFCB-84D2', N'01025', N'2012-06-08 09:52:22.280')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'198', N'00:21:86:1B:0C:16', N'A6CE-DE4E-D6DE-C279', N'A6CE-DE4E-D6DE-C279', N'01025', N'2012-06-08 10:12:58.983')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'199', N'00:21:86:1B:25:D0', N'7866-2FB5-E0BF-A066', N'7866-2FB5-E0BF-A066', N'01025', N'2012-06-08 10:14:26.153')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'200', N'00:19:BB:52:D6:C9', N'09CB-2BCA-D8B7-2D4A', N'09CB-2BCA-D8B7-2D4A', N'01002', N'2012-06-08 11:36:38.327')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'201', N'00:19:BB:CC:1E:75', N'8740-9C2F-3619-8871', N'8740-9C2F-3619-8871', N'01025', N'2012-06-11 10:43:13.293')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'202', N'00:19:BB:52:D6:9E', N'FD40-5F2F-796C-8010', N'FD40-5F2F-796C-8010', N'01003', N'2012-06-12 14:34:09.967')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'203', N'00:0F:FE:93:98:86', N'4166-3740-E5FB-0146', N'4166-3740-E5FB-0146', N'01003', N'2012-06-12 14:40:06.403')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'204', N'00:21:86:1B:3C:1A', N'CEDC-0837-AF4C-D6B2', N'CEDC-0837-AF4C-D6B2', N'01003', N'2012-06-12 15:00:59.000')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'205', N'00:1D:60:0F:F2:1A', N'6526-1C31-9365-6DBD', N'6526-1C31-9365-6DBD', N'01002', N'2012-06-21 16:10:18.077')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'206', N'00:14:85:A9:4C:E0', N'0C10-74B8-5F57-3473', N'0C10-74B8-5F57-3473', N'01023', N'2012-06-28 13:43:17.670')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'209', N'00:19:BB:CD:7F:BE', N'5D9F-5600-434B-4DFF', N'5D9F-5600-434B-4DFF', N'01040', N'2012-07-16 15:19:47.733')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'210', N'00:21:86:1B:3D:00', N'5DAF-B016-89E2-1721', N'5DAF-B016-89E2-1721', N'01040', N'2012-07-16 15:35:03.110')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'211', N'00:0F:FE:96:DC:DF', N'B424-E98A-05E3-3B05', N'B424-E98A-05E3-3B05', N'01040', N'2012-07-16 16:09:38.450')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'212', N'00:1D:92:69:0C:54', N'A2C6-1E49-840E-AD1A', N'A2C6-1E49-840E-AD1A', N'01009', N'2012-07-16 16:20:23.200')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'213', N'00:1F:D0:45:42:2A', N'A486-AB50-63DF-F18C', N'A486-AB50-63DF-F18C', N'01039', N'2012-07-16 16:54:21.890')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'214', N'00:21:86:F6:24:9B', N'78E3-042B-ACC8-6F74', N'78E3-042B-ACC8-6F74', N'01039', N'2012-07-16 16:56:25.873')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'215', N'00:0F:FE:94:B0:F5', N'7C16-0EE2-75FD-F1DA', N'7C16-0EE2-75FD-F1DA', N'01039', N'2012-07-16 16:58:35.610')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'216', N'00:0F:FE:96:DC:E9', N'E5CD-5DC2-1992-AA84', N'E5CD-5DC2-1992-AA84', N'01039', N'2012-07-16 17:04:03.310')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'217', N'44:37:E6:5F:28:B6', N'BE15-AD0A-3DE8-22CE', N'BE15-AD0A-3DE8-22CE', N'01039', N'2012-07-16 17:06:56.437')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'218', N'00:0F:FE:92:ED:E7', N'992A-986F-390F-5D62', N'992A-986F-390F-5D62', N'01039', N'2012-07-17 16:35:04.310')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'219', N'40:16:9F:EF:D9:14', N'449F-594D-5FB7-37FD', N'449F-594D-5FB7-37FD', N'01009', N'2012-07-18 09:24:59.793')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'220', N'00:0F:FE:DE:14:76', N'11A5-64A7-421C-6A79', N'11A5-64A7-421C-6A79', N'01009', N'2012-07-18 09:58:05.060')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'221', N'00:0F:FE:DC:96:B8', N'97C2-B529-BC92-3DA9', N'97C2-B529-BC92-3DA9', N'01009', N'2012-07-18 10:01:31.200')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'222', N'44:37:E6:5C:89:1A', N'20F5-B93F-9630-A829', N'20F5-B93F-9630-A829', N'01035', N'2012-07-31 09:53:15.497')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'223', N'44:37:E6:4D:90:23', N'A4BF-4DC4-C942-B7FB', N'A4BF-4DC4-C942-B7FB', N'01035', N'2012-07-31 10:12:31.187')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'224', N'00:0F:FE:96:DE:FE', N'F579-AA04-8ACC-449E', N'F579-AA04-8ACC-449E', N'01039', N'2012-08-07 17:01:43.640')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'225', N'00:0F:FE:96:E0:84', N'5B47-6D28-0605-216E', N'5B47-6D28-0605-216E', N'01039', N'2012-08-07 17:12:27.873')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'226', N'00:0F:FE:92:BF:CF', N'8190-7FA9-7AA1-0EFF', N'8190-7FA9-7AA1-0EFF', N'01039', N'2012-08-07 17:20:45.170')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'227', N'44:37:E6:5B:FD:99', N'2928-F105-3512-94E3', N'2928-F105-3512-94E3', N'01021', N'2012-08-22 08:36:44.483')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'230', N'00:21:86:ED:77:7B', N'72C1-5B41-DA74-3CAE', N'72C1-5B41-DA74-3CAE', N'01081', N'2012-08-27 10:36:54.327')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'231', N'18:A9:05:EB:E3:82', N'F740-3EA3-BA64-6137', N'F740-3EA3-BA64-6137', N'01081', N'2012-08-27 14:38:17.140')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'232', N'44:37:E6:5F:76:65', N'8C2F-E376-DCC3-672C', N'8C2F-E376-DCC3-672C', N'01081', N'2012-08-27 15:20:24.030')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'233', N'00:21:86:ED:77:27', N'CA6A-E6B1-0274-0D2C', N'CA6A-E6B1-0274-0D2C', N'01082', N'2012-08-28 10:03:34.513')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'234', N'00:21:86:1B:0B:04', N'36D5-54A4-07F6-5BF5', N'36D5-54A4-07F6-5BF5', N'01024', N'2012-09-17 16:08:25.327')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'236', N'EC:A8:6B:6D:35:0E', N'5119-1EA4-4FA8-6060', N'5119-1EA4-4FA8-6060', N'01004', N'2012-09-18 08:51:53.653')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'237', N'EC:A8:6B:6D:35:62', N'DC8E-BE23-CA3C-CF2C', N'DC8E-BE23-CA3C-CF2C', N'01002', N'2012-11-02 08:48:16.670')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'238', N'00:21:86:1B:34:EE', N'F4E9-DF88-1763-8CE2', N'F4E9-DF88-1763-8CE2', N'01082', N'2012-11-08 15:50:21.950')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'239', N'44:37:E6:5F:81:82', N'6D31-1ED0-5BEB-257C', N'6D31-1ED0-5BEB-257C', N'01082', N'2012-11-08 15:52:18.060')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'240', N'44:37:E6:60:10:59', N'15C7-D7B9-9408-C573', N'15C7-D7B9-9408-C573', N'01082', N'2012-11-08 15:55:50.170')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'241', N'44:37:E6:5F:28:52', N'174D-D1EF-2711-B669', N'174D-D1EF-2711-B669', N'01082', N'2012-11-08 16:00:51.780')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'242', N'00:0F:FE:DD:09:64', N'3887-B2E4-0CA3-CCC6', N'3887-B2E4-0CA3-CCC6', N'01010', N'2012-11-09 09:29:37.467')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'243', N'00:0F:FE:DC:F0:E0', N'1E44-23B2-9E02-346B', N'1E44-23B2-9E02-346B', N'01010', N'2012-11-09 09:51:53.530')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'244', N'00:21:86:1B:3B:A8', N'108C-0BBC-48D8-F6E9', N'108C-0BBC-48D8-F6E9', N'01027', N'2012-11-19 14:32:11.653')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'245', N'00:1E:37:48:79:CC', N'38D5-96E2-A6DF-6E63', N'38D5-96E2-A6DF-6E63', N'01023', N'2012-11-29 08:10:47.437')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'246', N'44:37:E6:78:F9:A2', N'9E3F-ACDD-4BEC-3562', N'9E3F-ACDD-4BEC-3562', N'01025', N'2012-12-03 14:23:18.373')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'247', N'00:1F:D0:3B:BD:0C', N'D760-D2D8-8803-F07F', N'D760-D2D8-8803-F07F', N'01023', N'2013-01-11 10:06:56.920')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'248', N'44:37:E6:5C:88:9F', N'2ED6-57FD-932C-4AC0', N'2ED6-57FD-932C-4AC0', N'01007', N'2013-01-23 09:26:07.670')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'249', N'90:B1:1C:8A:A7:59', N'D1DA-3EB3-3FFD-1ADE', N'D1DA-3EB3-3FFD-1ADE', N'01002', N'2013-01-30 10:33:58.937')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'250', N'00:21:86:F6:84:16', N'22F6-0BD3-B74C-C7A8', N'22F6-0BD3-B74C-C7A8', N'01002', N'2013-01-31 15:33:20.373')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'251', N'44:37:E6:5C:89:02', N'E389-0AFC-69B2-9B0B', N'E389-0AFC-69B2-9B0B', N'01024', N'2013-02-17 11:54:41.700')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'252', N'00:19:BB:52:DB:E1', N'7D0A-B1FB-D2E9-0CF5', N'7D0A-B1FB-D2E9-0CF5', N'01024', N'2013-02-17 12:04:26.043')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'253', N'00:0F:FE:7F:9A:83', N'1EE4-C7D7-4E30-174A', N'1EE4-C7D7-4E30-174A', N'01005', N'2013-03-18 08:56:58.513')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'255', N'00:30:18:36:0C:A0', N'7918-5848-3C04-B2D7', N'7918-5848-3C04-B2D7', N'01027', N'2013-04-08 15:03:14.937')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'256', N'44:37:E6:5C:7C:7F', N'F5CC-C848-0EC0-E339', N'F5CC-C848-0EC0-E339', N'01036', N'2013-04-19 09:15:47.623')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'257', N'18:A9:05:EC:9A:F2', N'F46D-F2C6-89A9-D57B', N'F46D-F2C6-89A9-D57B', N'01039', N'2013-04-21 10:15:37.983')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'258', N'00:1F:D0:3A:69:40', N'62AD-D53A-AD43-48BA', N'62AD-D53A-AD43-48BA', N'01028', N'2013-05-23 10:47:59.640')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'259', N'00:1F:D0:45:38:E4', N'FFDC-B2A9-4E21-A30D', N'FFDC-B2A9-4E21-A30D', N'01028', N'2013-05-23 12:31:16.983')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'260', N'00:1F:D0:45:41:74', N'F932-F178-CE34-F0F5', N'F932-F178-CE34-F0F5', N'01028', N'2013-05-23 12:50:13.640')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'261', N'00:1F:D0:45:3E:CA', N'178E-AEE9-9C77-E6FC', N'178E-AEE9-9C77-E6FC', N'01028', N'2013-05-23 13:14:34.873')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'262', N'00:01:6C:92:12:20', N'E0B1-F75D-2478-C5EF', N'E0B1-F75D-2478-C5EF', N'01021', N'2013-06-08 10:33:13.327')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'263', N'10:78:D2:A4:DB:BF', N'B5F9-645A-C7EE-3967', N'B5F9-645A-C7EE-3967', N'01022', N'2013-07-09 10:07:57.623')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'264', N'00:1F:D0:45:8B:10', N'34DD-2035-E8E4-F3DB', N'34DD-2035-E8E4-F3DB', N'01003', N'2013-08-20 10:20:56.187')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'265', N'00:1B:B9:84:4C:29', N'9A87-8574-0B26-80F0', N'9A87-8574-0B26-80F0', N'01024', N'2013-10-14 09:55:16.687')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'266', N'00:50:56:C0:00:01', N'D3B6-FF24-F791-170B', N'D3B6-FF24-F791-170B', N'01002', N'2013-11-05 14:19:29.077')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'267', N'00:0F:FE:92:BD:3F', N'A952-8C64-7C78-E4F1', N'A952-8C64-7C78-E4F1', N'01028', N'2013-11-14 09:12:22.357')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'268', N'00:0F:FE:DC:97:50', N'D833-99AC-9B59-7CEA', N'D833-99AC-9B59-7CEA', N'01028', N'2013-11-14 09:20:03.547')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'269', N'FC:4D:D4:33:E1:3A', N'8B00-4F73-A70C-BED1', N'8B00-4F73-A70C-BED1', N'01002', N'2013-12-23 14:46:09.420')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'270', N'00:19:BB:52:DB:B4', N'80ED-151E-F01C-0E95', N'80ED-151E-F01C-0E95', N'01023', N'2014-05-02 15:12:29.297')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'271', N'90:B1:1C:89:32:EC', N'009C-3F5E-85AE-3100', N'009C-3F5E-85AE-3100', N'01009', N'2014-05-06 14:52:29.547')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'272', N'00:1F:D0:45:8C:8C', N'BD52-5F99-2868-6275', N'BD52-5F99-2868-6275', N'01023', N'2014-05-08 09:45:45.343')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'273', N'44:37:E6:4D:8E:FE', N'A305-4761-9362-11F1', N'A305-4761-9362-11F1', N'01023', N'2014-05-08 09:53:05.780')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'274', N'00:19:BB:52:D6:9A', N'6B31-C827-9195-5B19', N'6B31-C827-9195-5B19', N'01023', N'2014-05-08 10:06:31.250')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'275', N'44:37:E6:61:FC:73', N'EAC8-9016-817E-F249', N'EAC8-9016-817E-F249', N'01004', N'2014-05-23 14:10:49.530')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'276', N'90:B1:1C:89:49:4A', N'69C7-EEC2-CB83-B07B', N'69C7-EEC2-CB83-B07B', N'01024', N'2014-07-07 08:33:31.000')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'277', N'90:B1:1C:8B:45:DF', N'B32C-2473-BE32-8037', N'B32C-2473-BE32-8037', N'01024', N'2014-07-07 08:40:01.450')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'278', N'44:37:E6:34:D8:3A', N'ADCF-EAF5-CEAF-1AEF', N'ADCF-EAF5-CEAF-1AEF', N'01021', N'2014-07-18 10:17:56.403')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'279', N'00:0F:FE:DC:FE:18', N'2720-B3AB-A532-AE2E', N'2720-B3AB-A532-AE2E', N'01004', N'2014-07-24 09:29:28.153')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'280', N'EC:A8:6B:6D:35:85', N'9AAD-15C9-3281-E7A2', N'9AAD-15C9-3281-E7A2', N'01004', N'2014-07-24 09:37:54.640')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'281', N'00:21:86:1B:0A:48', N'938F-B454-13B4-FCFA', N'938F-B454-13B4-FCFA', N'01004', N'2014-07-24 09:50:38.653')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'282', N'FC:4D:D4:35:74:56', N'150F-2DEE-5A3F-3EDB', N'150F-2DEE-5A3F-3EDB', N'01002', N'2014-08-11 10:36:53.233')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'283', N'00:21:86:1B:3B:9E', N'29F0-5FAD-CC00-2A3F', N'29F0-5FAD-CC00-2A3F', N'01036', N'2014-11-14 09:35:43.467')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'284', N'00:21:86:1B:35:68', N'9ED2-D015-22B8-19E7', N'9ED2-D015-22B8-19E7', N'01036', N'2014-11-14 14:06:40.530')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'285', N'C4:34:6B:6F:FD:B1', N'0E61-0A42-54C2-C048', N'0E61-0A42-54C2-C048', N'01022', N'2014-12-03 10:43:59.310')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'286', N'C4:34:6B:70:74:2E', N'9C77-FC1D-398B-A3F0', N'9C77-FC1D-398B-A3F0', N'01022', N'2014-12-03 11:04:35.700')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'287', N'C4:34:6B:6F:FD:AE', N'16AF-29D9-3861-AABB', N'16AF-29D9-3861-AABB', N'01024', N'2014-12-04 08:25:36.077')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'288', N'C4:34:6B:70:15:DC', N'0CE4-9B9F-2F92-6648', N'0CE4-9B9F-2F92-6648', N'01024', N'2014-12-04 09:19:59.467')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'289', N'C4:34:6B:70:11:2D', N'A508-FD7F-B236-3CFA', N'A508-FD7F-B236-3CFA', N'01024', N'2014-12-04 09:55:53.873')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'290', N'C4:34:6B:6F:FD:7C', N'4F16-8F8A-63F3-3C4A', N'4F16-8F8A-63F3-3C4A', N'01022', N'2014-12-04 14:21:20.357')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'291', N'00:0F:FE:DC:FF:BE', N'9D1F-5B97-009F-6EFA', N'9D1F-5B97-009F-6EFA', N'01004', N'2015-01-05 09:24:31.500')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'292', N'00:21:86:1B:07:24', N'A4F8-4CFC-21A1-92A0', N'A4F8-4CFC-21A1-92A0', N'01035', N'2015-02-02 09:25:21.043')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'293', N'C4:34:6B:70:78:F2', N'05AB-D707-E742-7985', N'05AB-D707-E742-7985', N'01004', N'2015-02-06 08:54:36.170')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'294', N'C4:34:6B:70:74:00', N'34D9-53E4-2C54-6205', N'34D9-53E4-2C54-6205', N'01004', N'2015-02-06 10:24:20.623')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'295', N'C4:34:6B:71:17:6F', N'E824-064F-94BF-DFEA', N'E824-064F-94BF-DFEA', N'01002', N'2015-02-09 09:16:38.577')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'298', N'C4:34:6B:70:74:3A', N'E176-7948-E97C-135A', N'E176-7948-E97C-135A', N'01021', N'2015-04-15 10:15:55.123')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'299', N'C4:34:6B:70:14:BE', N'B60D-4E11-5021-9607', N'B60D-4E11-5021-9607', N'01021', N'2015-04-15 10:22:25.030')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'300', N'C4:34:6B:70:15:ED', N'443B-B394-E6AA-E79E', N'443B-B394-E6AA-E79E', N'01021', N'2015-04-15 10:32:44.060')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'302', N'C0:3F:D5:F6:35:9F', N'64BF-0ED3-46CE-85B8', N'64BF-0ED3-46CE-85B8', N'01025', N'2015-05-19 10:06:26.437')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'303', N'D8:CB:8A:27:80:F0', N'0626-6063-EF78-7966', N'0626-6063-EF78-7966', N'01002', N'2015-05-27 14:37:29.417')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'304', N'D8:CB:8A:27:81:47', N'B6B6-4711-FD57-4647', N'B6B6-4711-FD57-4647', N'01002', N'2015-05-27 15:06:36.120')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'305', N'D8:CB:8A:27:82:16', N'0595-1933-C5AD-566B', N'0595-1933-C5AD-566B', N'01002', N'2015-05-27 15:07:39.753')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'309', N'D8:CB:8A:27:81:C4', N'2CA2-5C7E-5427-6D41', N'2CA2-5C7E-5427-6D41', N'01024', N'2015-05-28 09:59:21.307')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'310', N'00:21:86:ED:76:A1', N'9D20-2427-4E6D-1456', N'9D20-2427-4E6D-1456', N'01074', N'2015-07-18 11:17:28.600')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'311', N'90:B1:1C:8B:2B:22', N'BCAE-E75A-E131-E632', N'BCAE-E75A-E131-E632', N'01074', N'2015-07-18 12:16:19.153')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'312', N'90:B1:1C:8B:59:5A', N'7066-0BD8-3959-6D71', N'7066-0BD8-3959-6D71', N'01074', N'2015-07-18 12:35:18.940')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'313', N'90:B1:1C:8B:2F:A8', N'BCCE-0B0D-D6B8-D2A9', N'BCCE-0B0D-D6B8-D2A9', N'01074', N'2015-07-18 13:33:00.460')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'314', N'00:0F:FE:DD:08:D0', N'EE7A-B299-0538-B16E', N'EE7A-B299-0538-B16E', N'01074', N'2015-07-20 10:59:06.310')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'317', N'C4:34:6B:70:33:68', N'71A7-A7BB-C54D-AEAC', N'71A7-A7BB-C54D-AEAC', N'01074', N'2015-09-17 14:38:51.193')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'318', N'90:B1:1C:8A:80:A0', N'9F59-68D3-4736-BB00', N'9F59-68D3-4736-BB00', N'01074', N'2015-09-17 15:04:17.827')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'319', N'C4:34:6B:70:78:A5', N'8770-3C0A-DE79-B923', N'8770-3C0A-DE79-B923', N'01042', N'2016-02-15 10:14:57.203')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'320', N'FC:4D:D4:34:C2:D7', N'DB79-85C0-D51D-814F', N'DB79-85C0-D51D-814F', N'01002', N'2016-07-27 13:45:00.913')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'321', N'50:65:F3:23:22:F7', N'3D17-6A56-695A-FFAF', N'3D17-6A56-695A-FFAF', N'01022', N'2016-08-03 18:21:34.467')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'322', N'F8:B1:56:D2:53:4E', N'09A5-1475-8CBF-1827', N'09A5-1475-8CBF-1827', N'01022', N'2016-08-03 18:36:15.210')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'323', N'50:65:F3:23:22:1F', N'C61A-A989-3154-A37E', N'C61A-A989-3154-A37E', N'01022', N'2016-08-04 08:39:55.600')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'326', N'D8:CB:8A:27:83:1E', N'3B5E-1090-0916-2C42', N'3B5E-1090-0916-2C42', N'01002', N'2016-09-06 09:54:45.487')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'328', N'6C:92:BF:15:70:CB', N'02D0-1839-41C8-CF61', N'02D0-1839-41C8-CF61', N'01022', N'2016-10-18 16:06:37.573')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'329', N'00:16:E6:F6:3B:DE', N'2730-6BF8-4F2B-85D7', N'2730-6BF8-4F2B-85D7', N'01023', N'2016-11-02 17:26:34.567')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'330', N'50:65:F3:29:51:C9', N'4934-50B0-B56C-C02B', N'4934-50B0-B56C-C02B', N'01021', N'2016-11-02 18:01:11.693')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'331', N'90:FB:A6:18:4F:EC', N'09DE-5280-6FAF-14CF', N'09DE-5280-6FAF-14CF', N'01025', N'2016-11-03 17:49:04.640')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'332', N'44:37:E6:15:AB:F7', N'8FC5-90E6-FEB6-A7D3', N'8FC5-90E6-FEB6-A7D3', N'01024', N'2016-11-03 18:11:29.380')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'333', N'50:65:F3:29:4C:D9', N'3409-2CF1-3A54-C936', N'3409-2CF1-3A54-C936', N'01024', N'2016-11-03 18:27:53.227')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'334', N'F8:B1:56:E3:25:89', N'187A-1A63-DABF-415B', N'187A-1A63-DABF-415B', N'01024', N'2016-11-04 08:45:40.743')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'335', N'90:B1:1C:8A:97:C3', N'54C4-B8C4-7E38-7832', N'54C4-B8C4-7E38-7832', N'01004', N'2016-11-08 09:44:08.593')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'338', N'18:A9:05:EC:05:49', N'3689-3C73-4870-1E78', N'3689-3C73-4870-1E78', N'01024', N'2016-11-10 12:24:13.470')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'339', N'00:17:9A:BA:C7:84', N'7906-B872-B71E-F588', N'7906-B872-B71E-F588', N'01024', N'2016-11-10 12:39:56.510')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'347', N'90:B1:1C:89:4F:67', N'E370-745A-8A24-75C7', N'E370-745A-8A24-75C7', N'01022', N'2016-12-22 15:32:05.957')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'348', N'00:21:86:1B:2E:80', N'E04E-BCE9-09C4-3567', N'E04E-BCE9-09C4-3567', N'01004', N'2017-01-17 15:49:14.030')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'349', N'6C:0B:84:DE:75:8E', N'2318-F17A-6C29-97D3', N'2318-F17A-6C29-97D3', N'01025', N'2017-02-04 14:18:10.953')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'350', N'6C:0B:84:DE:72:BF', N'D7E6-F42B-E10B-FA73', N'D7E6-F42B-E10B-FA73', N'01025', N'2017-02-07 16:08:17.920')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'351', N'6C:0B:84:DE:D0:11', N'22A7-118D-FCDA-A361', N'22A7-118D-FCDA-A361', N'01025', N'2017-02-08 08:45:20.560')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'352', N'6C:0B:84:DE:C5:37', N'D318-9B8C-A2A1-60E6', N'D318-9B8C-A2A1-60E6', N'01025', N'2017-02-08 10:37:43.000')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'353', N'6C:0B:84:DE:C5:2B', N'7A00-247C-5514-002D', N'7A00-247C-5514-002D', N'01025', N'2017-02-08 11:55:54.723')
GO
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'354', N'74:2F:68:E2:38:C6', N'920F-16E2-478C-3DEE', N'920F-16E2-478C-3DEE', N'01022', N'2017-02-21 01:31:54.600')
GO
GO
SET IDENTITY_INSERT [dbo].[T_Sys_Register] OFF
GO

-- ----------------------------
-- Table structure for T_Sys_Rib_Sys
-- ----------------------------
DROP TABLE [dbo].[T_Sys_Rib_Sys]
GO
CREATE TABLE [dbo].[T_Sys_Rib_Sys] (
[System_ID] varchar(2) NOT NULL ,
[Rib_Btn] smallint NOT NULL 
)


GO

-- ----------------------------
-- Records of T_Sys_Rib_Sys
-- ----------------------------
INSERT INTO [dbo].[T_Sys_Rib_Sys] ([System_ID], [Rib_Btn]) VALUES (N'BI', N'1')
GO
GO
INSERT INTO [dbo].[T_Sys_Rib_Sys] ([System_ID], [Rib_Btn]) VALUES (N'BI', N'2')
GO
GO
INSERT INTO [dbo].[T_Sys_Rib_Sys] ([System_ID], [Rib_Btn]) VALUES (N'BI', N'3')
GO
GO
INSERT INTO [dbo].[T_Sys_Rib_Sys] ([System_ID], [Rib_Btn]) VALUES (N'BI', N'4')
GO
GO
INSERT INTO [dbo].[T_Sys_Rib_Sys] ([System_ID], [Rib_Btn]) VALUES (N'BI', N'5')
GO
GO
INSERT INTO [dbo].[T_Sys_Rib_Sys] ([System_ID], [Rib_Btn]) VALUES (N'BI', N'6')
GO
GO
INSERT INTO [dbo].[T_Sys_Rib_Sys] ([System_ID], [Rib_Btn]) VALUES (N'BI', N'7')
GO
GO
INSERT INTO [dbo].[T_Sys_Rib_Sys] ([System_ID], [Rib_Btn]) VALUES (N'BI', N'8')
GO
GO
INSERT INTO [dbo].[T_Sys_Rib_Sys] ([System_ID], [Rib_Btn]) VALUES (N'BI', N'9')
GO
GO
INSERT INTO [dbo].[T_Sys_Rib_Sys] ([System_ID], [Rib_Btn]) VALUES (N'BI', N'10')
GO
GO
INSERT INTO [dbo].[T_Sys_Rib_Sys] ([System_ID], [Rib_Btn]) VALUES (N'BI', N'11')
GO
GO
INSERT INTO [dbo].[T_Sys_Rib_Sys] ([System_ID], [Rib_Btn]) VALUES (N'BI', N'12')
GO
GO
INSERT INTO [dbo].[T_Sys_Rib_Sys] ([System_ID], [Rib_Btn]) VALUES (N'BI', N'21')
GO
GO
INSERT INTO [dbo].[T_Sys_Rib_Sys] ([System_ID], [Rib_Btn]) VALUES (N'BI', N'22')
GO
GO
INSERT INTO [dbo].[T_Sys_Rib_Sys] ([System_ID], [Rib_Btn]) VALUES (N'BI', N'23')
GO
GO
INSERT INTO [dbo].[T_Sys_Rib_Sys] ([System_ID], [Rib_Btn]) VALUES (N'BI', N'24')
GO
GO
INSERT INTO [dbo].[T_Sys_Rib_Sys] ([System_ID], [Rib_Btn]) VALUES (N'BI', N'25')
GO
GO
INSERT INTO [dbo].[T_Sys_Rib_Sys] ([System_ID], [Rib_Btn]) VALUES (N'BI', N'30')
GO
GO
INSERT INTO [dbo].[T_Sys_Rib_Sys] ([System_ID], [Rib_Btn]) VALUES (N'BI', N'31')
GO
GO
INSERT INTO [dbo].[T_Sys_Rib_Sys] ([System_ID], [Rib_Btn]) VALUES (N'BI', N'32')
GO
GO
INSERT INTO [dbo].[T_Sys_Rib_Sys] ([System_ID], [Rib_Btn]) VALUES (N'BI', N'33')
GO
GO
INSERT INTO [dbo].[T_Sys_Rib_Sys] ([System_ID], [Rib_Btn]) VALUES (N'BI', N'34')
GO
GO
INSERT INTO [dbo].[T_Sys_Rib_Sys] ([System_ID], [Rib_Btn]) VALUES (N'BI', N'35')
GO
GO
INSERT INTO [dbo].[T_Sys_Rib_Sys] ([System_ID], [Rib_Btn]) VALUES (N'BI', N'36')
GO
GO
INSERT INTO [dbo].[T_Sys_Rib_Sys] ([System_ID], [Rib_Btn]) VALUES (N'BI', N'37')
GO
GO
INSERT INTO [dbo].[T_Sys_Rib_Sys] ([System_ID], [Rib_Btn]) VALUES (N'BI', N'38')
GO
GO
INSERT INTO [dbo].[T_Sys_Rib_Sys] ([System_ID], [Rib_Btn]) VALUES (N'BI', N'39')
GO
GO
INSERT INTO [dbo].[T_Sys_Rib_Sys] ([System_ID], [Rib_Btn]) VALUES (N'BI', N'40')
GO
GO
INSERT INTO [dbo].[T_Sys_Rib_Sys] ([System_ID], [Rib_Btn]) VALUES (N'BI', N'41')
GO
GO
INSERT INTO [dbo].[T_Sys_Rib_Sys] ([System_ID], [Rib_Btn]) VALUES (N'BI', N'42')
GO
GO
INSERT INTO [dbo].[T_Sys_Rib_Sys] ([System_ID], [Rib_Btn]) VALUES (N'BI', N'43')
GO
GO
INSERT INTO [dbo].[T_Sys_Rib_Sys] ([System_ID], [Rib_Btn]) VALUES (N'BI', N'44')
GO
GO
INSERT INTO [dbo].[T_Sys_Rib_Sys] ([System_ID], [Rib_Btn]) VALUES (N'BI', N'45')
GO
GO
INSERT INTO [dbo].[T_Sys_Rib_Sys] ([System_ID], [Rib_Btn]) VALUES (N'BI', N'46')
GO
GO
INSERT INTO [dbo].[T_Sys_Rib_Sys] ([System_ID], [Rib_Btn]) VALUES (N'BI', N'47')
GO
GO
INSERT INTO [dbo].[T_Sys_Rib_Sys] ([System_ID], [Rib_Btn]) VALUES (N'BI', N'48')
GO
GO
INSERT INTO [dbo].[T_Sys_Rib_Sys] ([System_ID], [Rib_Btn]) VALUES (N'BI', N'49')
GO
GO
INSERT INTO [dbo].[T_Sys_Rib_Sys] ([System_ID], [Rib_Btn]) VALUES (N'BI', N'50')
GO
GO
INSERT INTO [dbo].[T_Sys_Rib_Sys] ([System_ID], [Rib_Btn]) VALUES (N'BI', N'51')
GO
GO
INSERT INTO [dbo].[T_Sys_Rib_Sys] ([System_ID], [Rib_Btn]) VALUES (N'BI', N'52')
GO
GO
INSERT INTO [dbo].[T_Sys_Rib_Sys] ([System_ID], [Rib_Btn]) VALUES (N'BI', N'53')
GO
GO
INSERT INTO [dbo].[T_Sys_Rib_Sys] ([System_ID], [Rib_Btn]) VALUES (N'BI', N'54')
GO
GO
INSERT INTO [dbo].[T_Sys_Rib_Sys] ([System_ID], [Rib_Btn]) VALUES (N'BI', N'55')
GO
GO
INSERT INTO [dbo].[T_Sys_Rib_Sys] ([System_ID], [Rib_Btn]) VALUES (N'BI', N'56')
GO
GO
INSERT INTO [dbo].[T_Sys_Rib_Sys] ([System_ID], [Rib_Btn]) VALUES (N'BI', N'57')
GO
GO
INSERT INTO [dbo].[T_Sys_Rib_Sys] ([System_ID], [Rib_Btn]) VALUES (N'BI', N'58')
GO
GO
INSERT INTO [dbo].[T_Sys_Rib_Sys] ([System_ID], [Rib_Btn]) VALUES (N'BI', N'59')
GO
GO
INSERT INTO [dbo].[T_Sys_Rib_Sys] ([System_ID], [Rib_Btn]) VALUES (N'BI', N'60')
GO
GO
INSERT INTO [dbo].[T_Sys_Rib_Sys] ([System_ID], [Rib_Btn]) VALUES (N'BI', N'61')
GO
GO
INSERT INTO [dbo].[T_Sys_Rib_Sys] ([System_ID], [Rib_Btn]) VALUES (N'BI', N'62')
GO
GO
INSERT INTO [dbo].[T_Sys_Rib_Sys] ([System_ID], [Rib_Btn]) VALUES (N'BI', N'63')
GO
GO
INSERT INTO [dbo].[T_Sys_Rib_Sys] ([System_ID], [Rib_Btn]) VALUES (N'BI', N'64')
GO
GO
INSERT INTO [dbo].[T_Sys_Rib_Sys] ([System_ID], [Rib_Btn]) VALUES (N'BI', N'65')
GO
GO
INSERT INTO [dbo].[T_Sys_Rib_Sys] ([System_ID], [Rib_Btn]) VALUES (N'BI', N'66')
GO
GO
INSERT INTO [dbo].[T_Sys_Rib_Sys] ([System_ID], [Rib_Btn]) VALUES (N'BI', N'67')
GO
GO
INSERT INTO [dbo].[T_Sys_Rib_Sys] ([System_ID], [Rib_Btn]) VALUES (N'BI', N'68')
GO
GO
INSERT INTO [dbo].[T_Sys_Rib_Sys] ([System_ID], [Rib_Btn]) VALUES (N'BI', N'69')
GO
GO
INSERT INTO [dbo].[T_Sys_Rib_Sys] ([System_ID], [Rib_Btn]) VALUES (N'BI', N'70')
GO
GO
INSERT INTO [dbo].[T_Sys_Rib_Sys] ([System_ID], [Rib_Btn]) VALUES (N'BI', N'71')
GO
GO
INSERT INTO [dbo].[T_Sys_Rib_Sys] ([System_ID], [Rib_Btn]) VALUES (N'BI', N'72')
GO
GO
INSERT INTO [dbo].[T_Sys_Rib_Sys] ([System_ID], [Rib_Btn]) VALUES (N'BI', N'73')
GO
GO
INSERT INTO [dbo].[T_Sys_Rib_Sys] ([System_ID], [Rib_Btn]) VALUES (N'BI', N'74')
GO
GO
INSERT INTO [dbo].[T_Sys_Rib_Sys] ([System_ID], [Rib_Btn]) VALUES (N'BI', N'75')
GO
GO
INSERT INTO [dbo].[T_Sys_Rib_Sys] ([System_ID], [Rib_Btn]) VALUES (N'BI', N'76')
GO
GO
INSERT INTO [dbo].[T_Sys_Rib_Sys] ([System_ID], [Rib_Btn]) VALUES (N'BI', N'77')
GO
GO
INSERT INTO [dbo].[T_Sys_Rib_Sys] ([System_ID], [Rib_Btn]) VALUES (N'BI', N'78')
GO
GO
INSERT INTO [dbo].[T_Sys_Rib_Sys] ([System_ID], [Rib_Btn]) VALUES (N'BI', N'79')
GO
GO
INSERT INTO [dbo].[T_Sys_Rib_Sys] ([System_ID], [Rib_Btn]) VALUES (N'BI', N'80')
GO
GO
INSERT INTO [dbo].[T_Sys_Rib_Sys] ([System_ID], [Rib_Btn]) VALUES (N'BI', N'81')
GO
GO
INSERT INTO [dbo].[T_Sys_Rib_Sys] ([System_ID], [Rib_Btn]) VALUES (N'BI', N'82')
GO
GO
INSERT INTO [dbo].[T_Sys_Rib_Sys] ([System_ID], [Rib_Btn]) VALUES (N'BI', N'83')
GO
GO
INSERT INTO [dbo].[T_Sys_Rib_Sys] ([System_ID], [Rib_Btn]) VALUES (N'BI', N'84')
GO
GO
INSERT INTO [dbo].[T_Sys_Rib_Sys] ([System_ID], [Rib_Btn]) VALUES (N'BI', N'85')
GO
GO
INSERT INTO [dbo].[T_Sys_Rib_Sys] ([System_ID], [Rib_Btn]) VALUES (N'BI', N'86')
GO
GO
INSERT INTO [dbo].[T_Sys_Rib_Sys] ([System_ID], [Rib_Btn]) VALUES (N'BI', N'87')
GO
GO
INSERT INTO [dbo].[T_Sys_Rib_Sys] ([System_ID], [Rib_Btn]) VALUES (N'BI', N'88')
GO
GO
INSERT INTO [dbo].[T_Sys_Rib_Sys] ([System_ID], [Rib_Btn]) VALUES (N'BI', N'89')
GO
GO
INSERT INTO [dbo].[T_Sys_Rib_Sys] ([System_ID], [Rib_Btn]) VALUES (N'BI', N'90')
GO
GO
INSERT INTO [dbo].[T_Sys_Rib_Sys] ([System_ID], [Rib_Btn]) VALUES (N'BI', N'91')
GO
GO
INSERT INTO [dbo].[T_Sys_Rib_Sys] ([System_ID], [Rib_Btn]) VALUES (N'BI', N'93')
GO
GO
INSERT INTO [dbo].[T_Sys_Rib_Sys] ([System_ID], [Rib_Btn]) VALUES (N'BI', N'94')
GO
GO
INSERT INTO [dbo].[T_Sys_Rib_Sys] ([System_ID], [Rib_Btn]) VALUES (N'BI', N'95')
GO
GO
INSERT INTO [dbo].[T_Sys_Rib_Sys] ([System_ID], [Rib_Btn]) VALUES (N'BI', N'96')
GO
GO
INSERT INTO [dbo].[T_Sys_Rib_Sys] ([System_ID], [Rib_Btn]) VALUES (N'BI', N'97')
GO
GO
INSERT INTO [dbo].[T_Sys_Rib_Sys] ([System_ID], [Rib_Btn]) VALUES (N'BI', N'98')
GO
GO

-- ----------------------------
-- Table structure for T_Sys_Role
-- ----------------------------
DROP TABLE [dbo].[T_Sys_Role]
GO
CREATE TABLE [dbo].[T_Sys_Role] (
[Role_ID] smallint NOT NULL IDENTITY(1,1) ,
[Role_Name] nvarchar(16) NOT NULL ,
[Role_Desc] nvarchar(60) NULL ,
[Crt_Date] datetime NOT NULL DEFAULT (getdate()) ,
[Role_Man] nvarchar(6) NOT NULL ,
[Auth_Bound] smallint NOT NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[T_Sys_Role]', RESEED, 12)
GO

-- ----------------------------
-- Records of T_Sys_Role
-- ----------------------------
SET IDENTITY_INSERT [dbo].[T_Sys_Role] ON
GO
INSERT INTO [dbo].[T_Sys_Role] ([Role_ID], [Role_Name], [Role_Desc], [Crt_Date], [Role_Man], [Auth_Bound]) VALUES (N'1', N'系统管理员', N'系统管理员', N'2010-01-28 17:49:04.437', N'999999', N'1')
GO
GO
SET IDENTITY_INSERT [dbo].[T_Sys_Role] OFF
GO

-- ----------------------------
-- Table structure for T_Sys_Role_Menu
-- ----------------------------
DROP TABLE [dbo].[T_Sys_Role_Menu]
GO
CREATE TABLE [dbo].[T_Sys_Role_Menu] (
[Role_ID] smallint NOT NULL ,
[M_ID] smallint NOT NULL ,
[M_Auth] int NOT NULL 
)


GO

-- ----------------------------
-- Records of T_Sys_Role_Menu
-- ----------------------------
INSERT INTO [dbo].[T_Sys_Role_Menu] ([Role_ID], [M_ID], [M_Auth]) VALUES (N'1', N'101', N'238')
GO
GO
INSERT INTO [dbo].[T_Sys_Role_Menu] ([Role_ID], [M_ID], [M_Auth]) VALUES (N'1', N'102', N'238')
GO
GO
INSERT INTO [dbo].[T_Sys_Role_Menu] ([Role_ID], [M_ID], [M_Auth]) VALUES (N'1', N'601', N'239')
GO
GO
INSERT INTO [dbo].[T_Sys_Role_Menu] ([Role_ID], [M_ID], [M_Auth]) VALUES (N'1', N'602', N'47')
GO
GO
INSERT INTO [dbo].[T_Sys_Role_Menu] ([Role_ID], [M_ID], [M_Auth]) VALUES (N'1', N'603', N'238')
GO
GO
INSERT INTO [dbo].[T_Sys_Role_Menu] ([Role_ID], [M_ID], [M_Auth]) VALUES (N'1', N'604', N'238')
GO
GO
INSERT INTO [dbo].[T_Sys_Role_Menu] ([Role_ID], [M_ID], [M_Auth]) VALUES (N'1', N'605', N'515')
GO
GO
INSERT INTO [dbo].[T_Sys_Role_Menu] ([Role_ID], [M_ID], [M_Auth]) VALUES (N'1', N'606', N'512')
GO
GO
INSERT INTO [dbo].[T_Sys_Role_Menu] ([Role_ID], [M_ID], [M_Auth]) VALUES (N'1', N'607', N'512')
GO
GO
INSERT INTO [dbo].[T_Sys_Role_Menu] ([Role_ID], [M_ID], [M_Auth]) VALUES (N'1', N'609', N'512')
GO
GO
INSERT INTO [dbo].[T_Sys_Role_Menu] ([Role_ID], [M_ID], [M_Auth]) VALUES (N'1', N'610', N'512')
GO
GO
INSERT INTO [dbo].[T_Sys_Role_Menu] ([Role_ID], [M_ID], [M_Auth]) VALUES (N'1', N'611', N'512')
GO
GO
INSERT INTO [dbo].[T_Sys_Role_Menu] ([Role_ID], [M_ID], [M_Auth]) VALUES (N'1', N'613', N'11')
GO
GO
INSERT INTO [dbo].[T_Sys_Role_Menu] ([Role_ID], [M_ID], [M_Auth]) VALUES (N'1', N'630', N'0')
GO
GO
INSERT INTO [dbo].[T_Sys_Role_Menu] ([Role_ID], [M_ID], [M_Auth]) VALUES (N'1', N'631', N'47')
GO
GO
INSERT INTO [dbo].[T_Sys_Role_Menu] ([Role_ID], [M_ID], [M_Auth]) VALUES (N'1', N'632', N'47')
GO
GO
INSERT INTO [dbo].[T_Sys_Role_Menu] ([Role_ID], [M_ID], [M_Auth]) VALUES (N'1', N'633', N'47')
GO
GO
INSERT INTO [dbo].[T_Sys_Role_Menu] ([Role_ID], [M_ID], [M_Auth]) VALUES (N'1', N'634', N'47')
GO
GO

-- ----------------------------
-- Table structure for T_Sys_Role_Rib
-- ----------------------------
DROP TABLE [dbo].[T_Sys_Role_Rib]
GO
CREATE TABLE [dbo].[T_Sys_Role_Rib] (
[Role_ID] smallint NOT NULL ,
[Rib_Btn] smallint NOT NULL 
)


GO

-- ----------------------------
-- Records of T_Sys_Role_Rib
-- ----------------------------
INSERT INTO [dbo].[T_Sys_Role_Rib] ([Role_ID], [Rib_Btn]) VALUES (N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_Sys_Role_Rib] ([Role_ID], [Rib_Btn]) VALUES (N'1', N'2')
GO
GO
INSERT INTO [dbo].[T_Sys_Role_Rib] ([Role_ID], [Rib_Btn]) VALUES (N'1', N'3')
GO
GO
INSERT INTO [dbo].[T_Sys_Role_Rib] ([Role_ID], [Rib_Btn]) VALUES (N'1', N'4')
GO
GO
INSERT INTO [dbo].[T_Sys_Role_Rib] ([Role_ID], [Rib_Btn]) VALUES (N'1', N'5')
GO
GO
INSERT INTO [dbo].[T_Sys_Role_Rib] ([Role_ID], [Rib_Btn]) VALUES (N'1', N'6')
GO
GO
INSERT INTO [dbo].[T_Sys_Role_Rib] ([Role_ID], [Rib_Btn]) VALUES (N'1', N'7')
GO
GO
INSERT INTO [dbo].[T_Sys_Role_Rib] ([Role_ID], [Rib_Btn]) VALUES (N'1', N'8')
GO
GO
INSERT INTO [dbo].[T_Sys_Role_Rib] ([Role_ID], [Rib_Btn]) VALUES (N'1', N'9')
GO
GO
INSERT INTO [dbo].[T_Sys_Role_Rib] ([Role_ID], [Rib_Btn]) VALUES (N'1', N'10')
GO
GO
INSERT INTO [dbo].[T_Sys_Role_Rib] ([Role_ID], [Rib_Btn]) VALUES (N'1', N'11')
GO
GO
INSERT INTO [dbo].[T_Sys_Role_Rib] ([Role_ID], [Rib_Btn]) VALUES (N'1', N'12')
GO
GO
INSERT INTO [dbo].[T_Sys_Role_Rib] ([Role_ID], [Rib_Btn]) VALUES (N'1', N'21')
GO
GO
INSERT INTO [dbo].[T_Sys_Role_Rib] ([Role_ID], [Rib_Btn]) VALUES (N'1', N'22')
GO
GO
INSERT INTO [dbo].[T_Sys_Role_Rib] ([Role_ID], [Rib_Btn]) VALUES (N'1', N'23')
GO
GO
INSERT INTO [dbo].[T_Sys_Role_Rib] ([Role_ID], [Rib_Btn]) VALUES (N'1', N'25')
GO
GO
INSERT INTO [dbo].[T_Sys_Role_Rib] ([Role_ID], [Rib_Btn]) VALUES (N'1', N'30')
GO
GO
INSERT INTO [dbo].[T_Sys_Role_Rib] ([Role_ID], [Rib_Btn]) VALUES (N'1', N'31')
GO
GO
INSERT INTO [dbo].[T_Sys_Role_Rib] ([Role_ID], [Rib_Btn]) VALUES (N'1', N'32')
GO
GO
INSERT INTO [dbo].[T_Sys_Role_Rib] ([Role_ID], [Rib_Btn]) VALUES (N'1', N'33')
GO
GO
INSERT INTO [dbo].[T_Sys_Role_Rib] ([Role_ID], [Rib_Btn]) VALUES (N'1', N'34')
GO
GO
INSERT INTO [dbo].[T_Sys_Role_Rib] ([Role_ID], [Rib_Btn]) VALUES (N'1', N'35')
GO
GO
INSERT INTO [dbo].[T_Sys_Role_Rib] ([Role_ID], [Rib_Btn]) VALUES (N'1', N'36')
GO
GO
INSERT INTO [dbo].[T_Sys_Role_Rib] ([Role_ID], [Rib_Btn]) VALUES (N'1', N'37')
GO
GO
INSERT INTO [dbo].[T_Sys_Role_Rib] ([Role_ID], [Rib_Btn]) VALUES (N'1', N'38')
GO
GO
INSERT INTO [dbo].[T_Sys_Role_Rib] ([Role_ID], [Rib_Btn]) VALUES (N'1', N'39')
GO
GO
INSERT INTO [dbo].[T_Sys_Role_Rib] ([Role_ID], [Rib_Btn]) VALUES (N'1', N'40')
GO
GO
INSERT INTO [dbo].[T_Sys_Role_Rib] ([Role_ID], [Rib_Btn]) VALUES (N'1', N'41')
GO
GO
INSERT INTO [dbo].[T_Sys_Role_Rib] ([Role_ID], [Rib_Btn]) VALUES (N'1', N'42')
GO
GO
INSERT INTO [dbo].[T_Sys_Role_Rib] ([Role_ID], [Rib_Btn]) VALUES (N'1', N'43')
GO
GO
INSERT INTO [dbo].[T_Sys_Role_Rib] ([Role_ID], [Rib_Btn]) VALUES (N'1', N'44')
GO
GO
INSERT INTO [dbo].[T_Sys_Role_Rib] ([Role_ID], [Rib_Btn]) VALUES (N'1', N'45')
GO
GO
INSERT INTO [dbo].[T_Sys_Role_Rib] ([Role_ID], [Rib_Btn]) VALUES (N'1', N'46')
GO
GO
INSERT INTO [dbo].[T_Sys_Role_Rib] ([Role_ID], [Rib_Btn]) VALUES (N'1', N'47')
GO
GO
INSERT INTO [dbo].[T_Sys_Role_Rib] ([Role_ID], [Rib_Btn]) VALUES (N'1', N'48')
GO
GO
INSERT INTO [dbo].[T_Sys_Role_Rib] ([Role_ID], [Rib_Btn]) VALUES (N'1', N'49')
GO
GO
INSERT INTO [dbo].[T_Sys_Role_Rib] ([Role_ID], [Rib_Btn]) VALUES (N'1', N'50')
GO
GO
INSERT INTO [dbo].[T_Sys_Role_Rib] ([Role_ID], [Rib_Btn]) VALUES (N'1', N'51')
GO
GO
INSERT INTO [dbo].[T_Sys_Role_Rib] ([Role_ID], [Rib_Btn]) VALUES (N'1', N'52')
GO
GO
INSERT INTO [dbo].[T_Sys_Role_Rib] ([Role_ID], [Rib_Btn]) VALUES (N'1', N'53')
GO
GO
INSERT INTO [dbo].[T_Sys_Role_Rib] ([Role_ID], [Rib_Btn]) VALUES (N'1', N'54')
GO
GO
INSERT INTO [dbo].[T_Sys_Role_Rib] ([Role_ID], [Rib_Btn]) VALUES (N'1', N'55')
GO
GO
INSERT INTO [dbo].[T_Sys_Role_Rib] ([Role_ID], [Rib_Btn]) VALUES (N'1', N'56')
GO
GO
INSERT INTO [dbo].[T_Sys_Role_Rib] ([Role_ID], [Rib_Btn]) VALUES (N'1', N'57')
GO
GO
INSERT INTO [dbo].[T_Sys_Role_Rib] ([Role_ID], [Rib_Btn]) VALUES (N'1', N'58')
GO
GO
INSERT INTO [dbo].[T_Sys_Role_Rib] ([Role_ID], [Rib_Btn]) VALUES (N'1', N'59')
GO
GO
INSERT INTO [dbo].[T_Sys_Role_Rib] ([Role_ID], [Rib_Btn]) VALUES (N'1', N'60')
GO
GO
INSERT INTO [dbo].[T_Sys_Role_Rib] ([Role_ID], [Rib_Btn]) VALUES (N'1', N'61')
GO
GO
INSERT INTO [dbo].[T_Sys_Role_Rib] ([Role_ID], [Rib_Btn]) VALUES (N'1', N'62')
GO
GO
INSERT INTO [dbo].[T_Sys_Role_Rib] ([Role_ID], [Rib_Btn]) VALUES (N'1', N'63')
GO
GO
INSERT INTO [dbo].[T_Sys_Role_Rib] ([Role_ID], [Rib_Btn]) VALUES (N'1', N'64')
GO
GO
INSERT INTO [dbo].[T_Sys_Role_Rib] ([Role_ID], [Rib_Btn]) VALUES (N'1', N'65')
GO
GO
INSERT INTO [dbo].[T_Sys_Role_Rib] ([Role_ID], [Rib_Btn]) VALUES (N'1', N'66')
GO
GO
INSERT INTO [dbo].[T_Sys_Role_Rib] ([Role_ID], [Rib_Btn]) VALUES (N'1', N'67')
GO
GO
INSERT INTO [dbo].[T_Sys_Role_Rib] ([Role_ID], [Rib_Btn]) VALUES (N'1', N'68')
GO
GO
INSERT INTO [dbo].[T_Sys_Role_Rib] ([Role_ID], [Rib_Btn]) VALUES (N'1', N'69')
GO
GO
INSERT INTO [dbo].[T_Sys_Role_Rib] ([Role_ID], [Rib_Btn]) VALUES (N'1', N'70')
GO
GO
INSERT INTO [dbo].[T_Sys_Role_Rib] ([Role_ID], [Rib_Btn]) VALUES (N'1', N'71')
GO
GO
INSERT INTO [dbo].[T_Sys_Role_Rib] ([Role_ID], [Rib_Btn]) VALUES (N'1', N'72')
GO
GO
INSERT INTO [dbo].[T_Sys_Role_Rib] ([Role_ID], [Rib_Btn]) VALUES (N'1', N'73')
GO
GO
INSERT INTO [dbo].[T_Sys_Role_Rib] ([Role_ID], [Rib_Btn]) VALUES (N'1', N'74')
GO
GO
INSERT INTO [dbo].[T_Sys_Role_Rib] ([Role_ID], [Rib_Btn]) VALUES (N'1', N'75')
GO
GO
INSERT INTO [dbo].[T_Sys_Role_Rib] ([Role_ID], [Rib_Btn]) VALUES (N'1', N'76')
GO
GO
INSERT INTO [dbo].[T_Sys_Role_Rib] ([Role_ID], [Rib_Btn]) VALUES (N'1', N'77')
GO
GO
INSERT INTO [dbo].[T_Sys_Role_Rib] ([Role_ID], [Rib_Btn]) VALUES (N'1', N'78')
GO
GO
INSERT INTO [dbo].[T_Sys_Role_Rib] ([Role_ID], [Rib_Btn]) VALUES (N'1', N'79')
GO
GO
INSERT INTO [dbo].[T_Sys_Role_Rib] ([Role_ID], [Rib_Btn]) VALUES (N'1', N'80')
GO
GO
INSERT INTO [dbo].[T_Sys_Role_Rib] ([Role_ID], [Rib_Btn]) VALUES (N'1', N'82')
GO
GO
INSERT INTO [dbo].[T_Sys_Role_Rib] ([Role_ID], [Rib_Btn]) VALUES (N'1', N'83')
GO
GO
INSERT INTO [dbo].[T_Sys_Role_Rib] ([Role_ID], [Rib_Btn]) VALUES (N'1', N'84')
GO
GO
INSERT INTO [dbo].[T_Sys_Role_Rib] ([Role_ID], [Rib_Btn]) VALUES (N'1', N'85')
GO
GO
INSERT INTO [dbo].[T_Sys_Role_Rib] ([Role_ID], [Rib_Btn]) VALUES (N'1', N'86')
GO
GO
INSERT INTO [dbo].[T_Sys_Role_Rib] ([Role_ID], [Rib_Btn]) VALUES (N'1', N'87')
GO
GO
INSERT INTO [dbo].[T_Sys_Role_Rib] ([Role_ID], [Rib_Btn]) VALUES (N'1', N'88')
GO
GO
INSERT INTO [dbo].[T_Sys_Role_Rib] ([Role_ID], [Rib_Btn]) VALUES (N'1', N'89')
GO
GO
INSERT INTO [dbo].[T_Sys_Role_Rib] ([Role_ID], [Rib_Btn]) VALUES (N'1', N'90')
GO
GO
INSERT INTO [dbo].[T_Sys_Role_Rib] ([Role_ID], [Rib_Btn]) VALUES (N'1', N'91')
GO
GO
INSERT INTO [dbo].[T_Sys_Role_Rib] ([Role_ID], [Rib_Btn]) VALUES (N'1', N'93')
GO
GO
INSERT INTO [dbo].[T_Sys_Role_Rib] ([Role_ID], [Rib_Btn]) VALUES (N'1', N'94')
GO
GO
INSERT INTO [dbo].[T_Sys_Role_Rib] ([Role_ID], [Rib_Btn]) VALUES (N'1', N'95')
GO
GO
INSERT INTO [dbo].[T_Sys_Role_Rib] ([Role_ID], [Rib_Btn]) VALUES (N'1', N'96')
GO
GO
INSERT INTO [dbo].[T_Sys_Role_Rib] ([Role_ID], [Rib_Btn]) VALUES (N'1', N'97')
GO
GO
INSERT INTO [dbo].[T_Sys_Role_Rib] ([Role_ID], [Rib_Btn]) VALUES (N'1', N'98')
GO
GO

-- ----------------------------
-- Table structure for T_Sys_Set_Role
-- ----------------------------
DROP TABLE [dbo].[T_Sys_Set_Role]
GO
CREATE TABLE [dbo].[T_Sys_Set_Role] (
[Role_ID] smallint NOT NULL ,
[Set_Role] smallint NOT NULL 
)


GO

-- ----------------------------
-- Records of T_Sys_Set_Role
-- ----------------------------
INSERT INTO [dbo].[T_Sys_Set_Role] ([Role_ID], [Set_Role]) VALUES (N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_Sys_Set_Role] ([Role_ID], [Set_Role]) VALUES (N'1', N'2')
GO
GO
INSERT INTO [dbo].[T_Sys_Set_Role] ([Role_ID], [Set_Role]) VALUES (N'1', N'3')
GO
GO
INSERT INTO [dbo].[T_Sys_Set_Role] ([Role_ID], [Set_Role]) VALUES (N'1', N'4')
GO
GO
INSERT INTO [dbo].[T_Sys_Set_Role] ([Role_ID], [Set_Role]) VALUES (N'1', N'5')
GO
GO
INSERT INTO [dbo].[T_Sys_Set_Role] ([Role_ID], [Set_Role]) VALUES (N'1', N'6')
GO
GO
INSERT INTO [dbo].[T_Sys_Set_Role] ([Role_ID], [Set_Role]) VALUES (N'1', N'7')
GO
GO
INSERT INTO [dbo].[T_Sys_Set_Role] ([Role_ID], [Set_Role]) VALUES (N'1', N'8')
GO
GO
INSERT INTO [dbo].[T_Sys_Set_Role] ([Role_ID], [Set_Role]) VALUES (N'1', N'9')
GO
GO
INSERT INTO [dbo].[T_Sys_Set_Role] ([Role_ID], [Set_Role]) VALUES (N'1', N'10')
GO
GO
INSERT INTO [dbo].[T_Sys_Set_Role] ([Role_ID], [Set_Role]) VALUES (N'1', N'11')
GO
GO
INSERT INTO [dbo].[T_Sys_Set_Role] ([Role_ID], [Set_Role]) VALUES (N'1', N'12')
GO
GO

-- ----------------------------
-- Table structure for T_Sys_System
-- ----------------------------
DROP TABLE [dbo].[T_Sys_System]
GO
CREATE TABLE [dbo].[T_Sys_System] (
[System_ID] nvarchar(2) NOT NULL ,
[System_Name] nvarchar(32) NOT NULL ,
[System_Version] nvarchar(12) NULL ,
[Crt_Date] datetime NOT NULL DEFAULT (getdate()) 
)


GO

-- ----------------------------
-- Records of T_Sys_System
-- ----------------------------

-- ----------------------------
-- Table structure for T_Update_Time
-- ----------------------------
DROP TABLE [dbo].[T_Update_Time]
GO
CREATE TABLE [dbo].[T_Update_Time] (
[updatetime] datetime NOT NULL 
)


GO

-- ----------------------------
-- Records of T_Update_Time
-- ----------------------------
INSERT INTO [dbo].[T_Update_Time] ([updatetime]) VALUES (N'2016-04-06 10:49:48.090')
GO
GO

-- ----------------------------
-- Table structure for Tmp_Sys_Register
-- ----------------------------
DROP TABLE [dbo].[Tmp_Sys_Register]
GO
CREATE TABLE [dbo].[Tmp_Sys_Register] (
[Reg_ID] float(53) NULL ,
[Cpu_Code] nvarchar(255) NULL ,
[Reg_Number] nvarchar(255) NULL ,
[Reg_Code] nvarchar(255) NULL ,
[Dept_ID] nvarchar(255) NULL ,
[Crt_Date] datetime NULL 
)


GO

-- ----------------------------
-- Records of Tmp_Sys_Register
-- ----------------------------
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'187', N'00:21:86:F6:23:91', N'0EC6-5520-CB61-4555', N'0EC6-5520-CB61-4555', N'01035', N'2012-05-09 11:07:20.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'189', N'00:16:E6:0F:29:DB', N'1ADD-1BD5-7995-E8A0', N'1ADD-1BD5-7995-E8A0', N'01008', N'2012-05-09 13:50:54.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'190', N'00:21:86:1B:0B:FA', N'B3AC-C755-8B23-CC0D', N'B3AC-C755-8B23-CC0D', N'01008', N'2012-05-09 14:29:41.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'191', N'00:21:86:1B:0B:2E', N'B0D5-E47C-5171-B2DD', N'B0D5-E47C-5171-B2DD', N'01036', N'2012-05-10 14:02:10.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'192', N'00:21:86:1B:0C:AC', N'9700-F0C0-C82F-0C8A', N'9700-F0C0-C82F-0C8A', N'01036', N'2012-05-10 14:22:46.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'193', N'00:21:86:1B:37:AC', N'46BF-ACA1-96E3-56BE', N'46BF-ACA1-96E3-56BE', N'01036', N'2012-05-10 14:40:28.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'194', N'00:21:86:F6:57:5C', N'18DA-8B1F-0B2B-B4C4', N'18DA-8B1F-0B2B-B4C4', N'01002', N'2012-05-15 09:01:07.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'195', N'8C:89:A5:23:75:D7', N'A2DC-8794-3AC9-0F6E', N'A2DC-8794-3AC9-0F6E', N'01024', N'2012-05-30 08:17:22.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'197', N'44:37:E6:5C:C1:C4', N'301A-8AB3-AFCB-84D2', N'301A-8AB3-AFCB-84D2', N'01025', N'2012-06-08 09:52:22.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'198', N'00:21:86:1B:0C:16', N'A6CE-DE4E-D6DE-C279', N'A6CE-DE4E-D6DE-C279', N'01025', N'2012-06-08 10:12:59.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'199', N'00:21:86:1B:25:D0', N'7866-2FB5-E0BF-A066', N'7866-2FB5-E0BF-A066', N'01025', N'2012-06-08 10:14:26.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'200', N'00:19:BB:52:D6:C9', N'09CB-2BCA-D8B7-2D4A', N'09CB-2BCA-D8B7-2D4A', N'01002', N'2012-06-08 11:36:38.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'201', N'00:19:BB:CC:1E:75', N'8740-9C2F-3619-8871', N'8740-9C2F-3619-8871', N'01025', N'2012-06-11 10:43:13.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'202', N'00:19:BB:52:D6:9E', N'FD40-5F2F-796C-8010', N'FD40-5F2F-796C-8010', N'01003', N'2012-06-12 14:34:10.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'203', N'00:0F:FE:93:98:86', N'4166-3740-E5FB-0146', N'4166-3740-E5FB-0146', N'01003', N'2012-06-12 14:40:06.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'204', N'00:21:86:1B:3C:1A', N'CEDC-0837-AF4C-D6B2', N'CEDC-0837-AF4C-D6B2', N'01003', N'2012-06-12 15:00:59.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'205', N'00:1D:60:0F:F2:1A', N'6526-1C31-9365-6DBD', N'6526-1C31-9365-6DBD', N'01002', N'2012-06-21 16:10:18.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'206', N'00:14:85:A9:4C:E0', N'0C10-74B8-5F57-3473', N'0C10-74B8-5F57-3473', N'01023', N'2012-06-28 13:43:18.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'209', N'00:19:BB:CD:7F:BE', N'5D9F-5600-434B-4DFF', N'5D9F-5600-434B-4DFF', N'01040', N'2012-07-16 15:19:48.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'210', N'00:21:86:1B:3D:00', N'5DAF-B016-89E2-1721', N'5DAF-B016-89E2-1721', N'01040', N'2012-07-16 15:35:03.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'211', N'00:0F:FE:96:DC:DF', N'B424-E98A-05E3-3B05', N'B424-E98A-05E3-3B05', N'01040', N'2012-07-16 16:09:38.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'212', N'00:1D:92:69:0C:54', N'A2C6-1E49-840E-AD1A', N'A2C6-1E49-840E-AD1A', N'01009', N'2012-07-16 16:20:23.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'213', N'00:1F:D0:45:42:2A', N'A486-AB50-63DF-F18C', N'A486-AB50-63DF-F18C', N'01039', N'2012-07-16 16:54:22.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'214', N'00:21:86:F6:24:9B', N'78E3-042B-ACC8-6F74', N'78E3-042B-ACC8-6F74', N'01039', N'2012-07-16 16:56:26.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'215', N'00:0F:FE:94:B0:F5', N'7C16-0EE2-75FD-F1DA', N'7C16-0EE2-75FD-F1DA', N'01039', N'2012-07-16 16:58:36.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'216', N'00:0F:FE:96:DC:E9', N'E5CD-5DC2-1992-AA84', N'E5CD-5DC2-1992-AA84', N'01039', N'2012-07-16 17:04:03.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'217', N'44:37:E6:5F:28:B6', N'BE15-AD0A-3DE8-22CE', N'BE15-AD0A-3DE8-22CE', N'01039', N'2012-07-16 17:06:56.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'218', N'00:0F:FE:92:ED:E7', N'992A-986F-390F-5D62', N'992A-986F-390F-5D62', N'01039', N'2012-07-17 16:35:04.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'219', N'40:16:9F:EF:D9:14', N'449F-594D-5FB7-37FD', N'449F-594D-5FB7-37FD', N'01009', N'2012-07-18 09:25:00.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'220', N'00:0F:FE:DE:14:76', N'11A5-64A7-421C-6A79', N'11A5-64A7-421C-6A79', N'01009', N'2012-07-18 09:58:05.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'221', N'00:0F:FE:DC:96:B8', N'97C2-B529-BC92-3DA9', N'97C2-B529-BC92-3DA9', N'01009', N'2012-07-18 10:01:31.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'222', N'44:37:E6:5C:89:1A', N'20F5-B93F-9630-A829', N'20F5-B93F-9630-A829', N'01035', N'2012-07-31 09:53:15.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'223', N'44:37:E6:4D:90:23', N'A4BF-4DC4-C942-B7FB', N'A4BF-4DC4-C942-B7FB', N'01035', N'2012-07-31 10:12:31.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'224', N'00:0F:FE:96:DE:FE', N'F579-AA04-8ACC-449E', N'F579-AA04-8ACC-449E', N'01039', N'2012-08-07 17:01:44.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'246', N'44:37:E6:78:F9:A2', N'9E3F-ACDD-4BEC-3562', N'9E3F-ACDD-4BEC-3562', N'01025', N'2012-12-03 14:23:18.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'247', N'00:1F:D0:3B:BD:0C', N'D760-D2D8-8803-F07F', N'D760-D2D8-8803-F07F', N'01023', N'2013-01-11 10:06:57.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'248', N'44:37:E6:5C:88:9F', N'2ED6-57FD-932C-4AC0', N'2ED6-57FD-932C-4AC0', N'01007', N'2013-01-23 09:26:08.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'249', N'90:B1:1C:8A:A7:59', N'D1DA-3EB3-3FFD-1ADE', N'D1DA-3EB3-3FFD-1ADE', N'01002', N'2013-01-30 10:33:59.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'250', N'00:21:86:F6:84:16', N'22F6-0BD3-B74C-C7A8', N'22F6-0BD3-B74C-C7A8', N'01002', N'2013-01-31 15:33:20.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'251', N'44:37:E6:5C:89:02', N'E389-0AFC-69B2-9B0B', N'E389-0AFC-69B2-9B0B', N'01024', N'2013-02-17 11:54:42.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'252', N'00:19:BB:52:DB:E1', N'7D0A-B1FB-D2E9-0CF5', N'7D0A-B1FB-D2E9-0CF5', N'01024', N'2013-02-17 12:04:26.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'253', N'00:0F:FE:7F:9A:83', N'1EE4-C7D7-4E30-174A', N'1EE4-C7D7-4E30-174A', N'01005', N'2013-03-18 08:56:59.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'255', N'00:30:18:36:0C:A0', N'7918-5848-3C04-B2D7', N'7918-5848-3C04-B2D7', N'01027', N'2013-04-08 15:03:15.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'256', N'44:37:E6:5C:7C:7F', N'F5CC-C848-0EC0-E339', N'F5CC-C848-0EC0-E339', N'01036', N'2013-04-19 09:15:48.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'257', N'18:A9:05:EC:9A:F2', N'F46D-F2C6-89A9-D57B', N'F46D-F2C6-89A9-D57B', N'01039', N'2013-04-21 10:15:38.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'258', N'00:1F:D0:3A:69:40', N'62AD-D53A-AD43-48BA', N'62AD-D53A-AD43-48BA', N'01028', N'2013-05-23 10:48:00.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'259', N'00:1F:D0:45:38:E4', N'FFDC-B2A9-4E21-A30D', N'FFDC-B2A9-4E21-A30D', N'01028', N'2013-05-23 12:31:17.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'260', N'00:1F:D0:45:41:74', N'F932-F178-CE34-F0F5', N'F932-F178-CE34-F0F5', N'01028', N'2013-05-23 12:50:14.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'261', N'00:1F:D0:45:3E:CA', N'178E-AEE9-9C77-E6FC', N'178E-AEE9-9C77-E6FC', N'01028', N'2013-05-23 13:14:35.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'262', N'00:01:6C:92:12:20', N'E0B1-F75D-2478-C5EF', N'E0B1-F75D-2478-C5EF', N'01021', N'2013-06-08 10:33:13.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'263', N'10:78:D2:A4:DB:BF', N'B5F9-645A-C7EE-3967', N'B5F9-645A-C7EE-3967', N'01022', N'2013-07-09 10:07:58.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'264', N'00:1F:D0:45:8B:10', N'34DD-2035-E8E4-F3DB', N'34DD-2035-E8E4-F3DB', N'01003', N'2013-08-20 10:20:56.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'265', N'00:1B:B9:84:4C:29', N'9A87-8574-0B26-80F0', N'9A87-8574-0B26-80F0', N'01024', N'2013-10-14 09:55:17.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'266', N'00:50:56:C0:00:01', N'D3B6-FF24-F791-170B', N'D3B6-FF24-F791-170B', N'01002', N'2013-11-05 14:19:29.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'267', N'00:0F:FE:92:BD:3F', N'A952-8C64-7C78-E4F1', N'A952-8C64-7C78-E4F1', N'01028', N'2013-11-14 09:12:22.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'268', N'00:0F:FE:DC:97:50', N'D833-99AC-9B59-7CEA', N'D833-99AC-9B59-7CEA', N'01028', N'2013-11-14 09:20:04.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'269', N'FC:4D:D4:33:E1:3A', N'8B00-4F73-A70C-BED1', N'8B00-4F73-A70C-BED1', N'01002', N'2013-12-23 14:46:09.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'270', N'00:19:BB:52:DB:B4', N'80ED-151E-F01C-0E95', N'80ED-151E-F01C-0E95', N'01023', N'2014-05-02 15:12:29.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'271', N'90:B1:1C:89:32:EC', N'009C-3F5E-85AE-3100', N'009C-3F5E-85AE-3100', N'01009', N'2014-05-06 14:52:30.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'272', N'00:1F:D0:45:8C:8C', N'BD52-5F99-2868-6275', N'BD52-5F99-2868-6275', N'01023', N'2014-05-08 09:45:45.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'273', N'44:37:E6:4D:8E:FE', N'A305-4761-9362-11F1', N'A305-4761-9362-11F1', N'01023', N'2014-05-08 09:53:06.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'274', N'00:19:BB:52:D6:9A', N'6B31-C827-9195-5B19', N'6B31-C827-9195-5B19', N'01023', N'2014-05-08 10:06:31.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'275', N'44:37:E6:61:FC:73', N'EAC8-9016-817E-F249', N'EAC8-9016-817E-F249', N'01004', N'2014-05-23 14:10:50.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'276', N'90:B1:1C:89:49:4A', N'69C7-EEC2-CB83-B07B', N'69C7-EEC2-CB83-B07B', N'01024', N'2014-07-07 08:33:31.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'277', N'90:B1:1C:8B:45:DF', N'B32C-2473-BE32-8037', N'B32C-2473-BE32-8037', N'01024', N'2014-07-07 08:40:01.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'278', N'44:37:E6:34:D8:3A', N'ADCF-EAF5-CEAF-1AEF', N'ADCF-EAF5-CEAF-1AEF', N'01021', N'2014-07-18 10:17:56.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'279', N'00:0F:FE:DC:FE:18', N'2720-B3AB-A532-AE2E', N'2720-B3AB-A532-AE2E', N'01004', N'2014-07-24 09:29:28.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'280', N'EC:A8:6B:6D:35:85', N'9AAD-15C9-3281-E7A2', N'9AAD-15C9-3281-E7A2', N'01004', N'2014-07-24 09:37:55.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'281', N'00:21:86:1B:0A:48', N'938F-B454-13B4-FCFA', N'938F-B454-13B4-FCFA', N'01004', N'2014-07-24 09:50:39.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'282', N'FC:4D:D4:35:74:56', N'150F-2DEE-5A3F-3EDB', N'150F-2DEE-5A3F-3EDB', N'01002', N'2014-08-11 10:36:53.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'283', N'00:21:86:1B:3B:9E', N'29F0-5FAD-CC00-2A3F', N'29F0-5FAD-CC00-2A3F', N'01036', N'2014-11-14 09:35:43.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'284', N'00:21:86:1B:35:68', N'9ED2-D015-22B8-19E7', N'9ED2-D015-22B8-19E7', N'01036', N'2014-11-14 14:06:41.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'285', N'C4:34:6B:6F:FD:B1', N'0E61-0A42-54C2-C048', N'0E61-0A42-54C2-C048', N'01022', N'2014-12-03 10:43:59.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'286', N'C4:34:6B:70:74:2E', N'9C77-FC1D-398B-A3F0', N'9C77-FC1D-398B-A3F0', N'01022', N'2014-12-03 11:04:36.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'287', N'C4:34:6B:6F:FD:AE', N'16AF-29D9-3861-AABB', N'16AF-29D9-3861-AABB', N'01024', N'2014-12-04 08:25:36.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'288', N'C4:34:6B:70:15:DC', N'0CE4-9B9F-2F92-6648', N'0CE4-9B9F-2F92-6648', N'01024', N'2014-12-04 09:19:59.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'289', N'C4:34:6B:70:11:2D', N'A508-FD7F-B236-3CFA', N'A508-FD7F-B236-3CFA', N'01024', N'2014-12-04 09:55:54.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'290', N'C4:34:6B:6F:FD:7C', N'4F16-8F8A-63F3-3C4A', N'4F16-8F8A-63F3-3C4A', N'01022', N'2014-12-04 14:21:20.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'291', N'00:0F:FE:DC:FF:BE', N'9D1F-5B97-009F-6EFA', N'9D1F-5B97-009F-6EFA', N'01004', N'2015-01-05 09:24:31.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'292', N'00:21:86:1B:07:24', N'A4F8-4CFC-21A1-92A0', N'A4F8-4CFC-21A1-92A0', N'01035', N'2015-02-02 09:25:21.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'293', N'C4:34:6B:70:78:F2', N'05AB-D707-E742-7985', N'05AB-D707-E742-7985', N'01004', N'2015-02-06 08:54:36.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'294', N'C4:34:6B:70:74:00', N'34D9-53E4-2C54-6205', N'34D9-53E4-2C54-6205', N'01004', N'2015-02-06 10:24:21.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'295', N'C4:34:6B:71:17:6F', N'E824-064F-94BF-DFEA', N'E824-064F-94BF-DFEA', N'01002', N'2015-02-09 09:16:39.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'296', N'C4:34:6B:70:78:A5', N'8770-3C0A-DE79-B923', N'8770-3C0A-DE79-B923', N'01002', N'2015-03-09 13:42:43.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'297', N'90:B1:1C:89:4F:67', N'E370-745A-8A24-75C7', N'E370-745A-8A24-75C7', N'01002', N'2015-03-09 13:44:40.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'298', N'C4:34:6B:70:74:3A', N'E176-7948-E97C-135A', N'E176-7948-E97C-135A', N'01021', N'2015-04-15 10:15:55.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'299', N'C4:34:6B:70:14:BE', N'B60D-4E11-5021-9607', N'B60D-4E11-5021-9607', N'01021', N'2015-04-15 10:22:25.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'300', N'C4:34:6B:70:15:ED', N'443B-B394-E6AA-E79E', N'443B-B394-E6AA-E79E', N'01021', N'2015-04-15 10:32:44.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'301', N'90:B1:1C:8A:97:C3', N'54C4-B8C4-7E38-7832', N'54C4-B8C4-7E38-7832', N'01035', N'2015-05-13 14:06:03.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'302', N'C0:3F:D5:F6:35:9F', N'64BF-0ED3-46CE-85B8', N'64BF-0ED3-46CE-85B8', N'01025', N'2015-05-19 10:06:26.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'303', N'D8:CB:8A:27:81:47', N'B6B6-4711-FD57-4647', N'B6B6-4711-FD57-4647', N'01022', N'2015-06-27 10:55:37.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'304', N'C4:34:6B:71:16:D8', N'BB51-325B-A20B-D32E', N'BB51-325B-A20B-D32E', N'01027', N'2015-07-17 09:36:23.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'305', N'C4:34:6B:70:78:AA', N'D474-D8FB-006A-C33B', N'D474-D8FB-006A-C33B', N'01027', N'2015-07-17 10:01:26.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'306', N'C0:3F:D5:F3:28:19', N'5DE2-E42E-D128-DC62', N'5DE2-E42E-D128-DC62', N'01000', N'2015-10-09 11:00:09.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'307', N'50:65:F3:23:22:1F', N'C61A-A989-3154-A37E', N'C61A-A989-3154-A37E', N'01022', N'2015-10-23 13:50:50.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'308', N'F8:B1:56:D2:53:4E', N'09A5-1475-8CBF-1827', N'09A5-1475-8CBF-1827', N'01022', N'2015-10-23 14:09:42.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'309', N'50:65:F3:29:51:A5', N'EFF4-8574-8D94-FB26', N'EFF4-8574-8D94-FB26', N'01021', N'2015-11-05 14:52:31.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'310', N'50:65:F3:29:51:C9', N'4934-50B0-B56C-C02B', N'4934-50B0-B56C-C02B', N'01021', N'2015-11-05 14:57:10.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'311', N'50:65:F3:23:22:F7', N'3D17-6A56-695A-FFAF', N'3D17-6A56-695A-FFAF', N'01022', N'2015-11-12 09:46:38.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'312', N'44:37:E6:5C:C2:57', N'7DE2-DAC9-A5DA-FC3F', N'7DE2-DAC9-A5DA-FC3F', N'01022', N'2015-11-12 09:51:35.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'68', N'00:0F:FE:7F:9B:69', N'68FB-EEF7-5FD2-2D23', N'68FB-EEF7-5FD2-2D23', N'01004', N'2010-02-02 14:48:56.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'69', N'00:0F:FE:7F:9A:C9', N'42A3-1E68-AFB6-3F4D', N'42A3-1E68-AFB6-3F4D', N'01005', N'2010-02-04 08:44:28.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'70', N'00:21:86:1B:3B:CC', N'A670-5C18-0068-C934', N'A670-5C18-0068-C934', N'01005', N'2010-02-04 08:59:08.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'71', N'00:25:D3:EE:C8:A6', N'689E-3B05-B81A-06FB', N'689E-3B05-B81A-06FB', N'01021', N'2010-02-04 09:28:47.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'72', N'00:21:86:1B:3F:38', N'AFD9-1DBF-15E1-DB34', N'AFD9-1DBF-15E1-DB34', N'01005', N'2010-02-04 09:40:17.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'73', N'00:0F:FE:DB:8B:10', N'6E5C-0EA8-13AA-2569', N'6E5C-0EA8-13AA-2569', N'01002', N'2010-02-04 15:01:24.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'74', N'00:0F:FE:92:E0:BF', N'7053-40AF-537D-B338', N'7053-40AF-537D-B338', N'01021', N'2010-02-05 08:37:24.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'75', N'00:16:E6:03:3F:F8', N'1460-BE0C-90F9-BC02', N'1460-BE0C-90F9-BC02', N'01002', N'2010-02-05 14:43:02.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'76', N'00:21:86:1B:2E:80', N'E04E-BCE9-09C4-3567', N'E04E-BCE9-09C4-3567', N'01021', N'2010-02-06 11:31:01.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'77', N'00:1F:D0:45:8B:40', N'2D76-E616-D602-8DDF', N'2D76-E616-D602-8DDF', N'01021', N'2010-02-06 11:37:25.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'78', N'00:21:86:ED:77:86', N'5061-B947-5603-0C14', N'5061-B947-5603-0C14', N'01006', N'2010-02-06 12:31:53.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'81', N'00:1F:D0:45:8F:C2', N'B60C-B9A0-14FE-6241', N'B60C-B9A0-14FE-6241', N'01032', N'2010-02-08 09:51:11.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'82', N'00:23:54:5A:49:28', N'3D81-53C5-385D-991B', N'3D81-53C5-385D-991B', N'01032', N'2010-02-08 10:51:40.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'83', N'00:21:86:ED:7A:EA', N'F0C9-DF75-489D-D5B9', N'F0C9-DF75-489D-D5B9', N'01006', N'2010-02-10 15:50:58.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'84', N'00:21:86:ED:77:25', N'F046-8229-25EF-2357', N'F046-8229-25EF-2357', N'01047', N'2010-02-28 14:48:43.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'85', N'00:21:86:1B:34:D2', N'2924-35FE-A3FA-5CDA', N'2924-35FE-A3FA-5CDA', N'01025', N'2010-03-01 08:12:33.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'86', N'00:21:5A:EA:BD:12', N'3BBB-0ED6-2D3B-C575', N'3BBB-0ED6-2D3B-C575', N'01025', N'2010-03-01 08:48:41.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'87', N'00:21:5A:E9:DB:56', N'2F0F-E822-BF73-A7C6', N'2F0F-E822-BF73-A7C6', N'01025', N'2010-03-01 08:49:57.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'88', N'00:21:86:1B:30:68', N'5622-9740-220A-9CDF', N'5622-9740-220A-9CDF', N'01025', N'2010-03-01 08:55:38.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'89', N'00:21:5A:EA:BC:7E', N'CC5C-F073-2301-FBCE', N'CC5C-F073-2301-FBCE', N'01025', N'2010-03-01 09:02:06.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'90', N'00:21:86:1B:3E:DE', N'F335-B3BD-2B9E-19D2', N'F335-B3BD-2B9E-19D2', N'01025', N'2010-03-01 09:03:52.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'91', N'00:1F:D0:45:41:4E', N'72BC-6DE0-50FF-645B', N'72BC-6DE0-50FF-645B', N'01025', N'2010-03-01 09:06:15.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'92', N'00:19:BB:52:D6:67', N'4F44-7BA1-0D68-1418', N'4F44-7BA1-0D68-1418', N'01025', N'2010-03-01 09:32:18.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'93', N'00:21:86:1B:34:A2', N'5551-13C3-E0E5-C68C', N'5551-13C3-E0E5-C68C', N'01025', N'2010-03-01 09:45:29.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'96', N'00:21:86:1B:0C:D2', N'3041-59BE-E03E-6701', N'3041-59BE-E03E-6701', N'01025', N'2010-03-01 11:12:32.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'98', N'00:10:C6:BC:06:BA', N'EABA-1B1D-DADB-09DC', N'EABA-1B1D-DADB-09DC', N'01004', N'2010-03-01 11:24:05.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'99', N'00:0F:FE:96:9E:21', N'D717-14E9-2F82-735D', N'D717-14E9-2F82-735D', N'01004', N'2010-03-01 11:40:00.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'100', N'00:21:5A:EA:BD:01', N'50D3-1BD8-5E99-9E16', N'50D3-1BD8-5E99-9E16', N'01033', N'2010-03-01 13:57:37.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'101', N'00:1E:0B:29:F5:96', N'E29F-62D5-7866-5753', N'E29F-62D5-7866-5753', N'01033', N'2010-03-01 14:12:34.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'102', N'00:21:5A:EA:AF:60', N'B68F-F50E-9C4F-6E02', N'B68F-F50E-9C4F-6E02', N'01033', N'2010-03-01 14:24:01.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'128', N'00:1F:D0:45:90:3E', N'960B-D548-BCA5-53DF', N'960B-D548-BCA5-53DF', N'01007', N'2011-04-13 09:20:35.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'129', N'00:1F:D0:45:8F:F6', N'EB4F-399B-66EB-42CB', N'EB4F-399B-66EB-42CB', N'01034', N'2011-04-13 13:34:27.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'130', N'00:21:86:1B:39:4A', N'50BE-C991-B2B6-F3AB', N'50BE-C991-B2B6-F3AB', N'01034', N'2011-04-13 13:35:58.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'131', N'00:21:86:1B:37:7C', N'07F7-F60A-9658-9217', N'07F7-F60A-9658-9217', N'01034', N'2011-04-13 13:39:35.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'132', N'00:1F:D0:45:3E:94', N'F33B-38DF-FEAD-6F5F', N'F33B-38DF-FEAD-6F5F', N'01027', N'2011-04-13 13:44:31.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'133', N'00:21:86:1B:3B:22', N'0144-BEA5-F884-43D5', N'0144-BEA5-F884-43D5', N'01027', N'2011-04-13 13:55:37.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'134', N'00:21:86:1B:0B:56', N'ED00-161D-5CB4-E4F4', N'ED00-161D-5CB4-E4F4', N'01027', N'2011-04-13 13:57:48.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'135', N'00:23:54:DD:D5:17', N'1786-4C51-024B-38E2', N'1786-4C51-024B-38E2', N'01027', N'2011-04-13 14:21:07.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'136', N'00:0F:FE:DC:83:08', N'72BA-9EAC-744D-7D18', N'72BA-9EAC-744D-7D18', N'01007', N'2011-04-13 14:27:05.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'137', N'00:1F:D0:45:46:CE', N'664D-C0E7-3693-3A34', N'664D-C0E7-3693-3A34', N'01007', N'2011-04-13 14:29:33.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'138', N'00:24:81:22:37:20', N'82FC-570B-8F71-D61D', N'82FC-570B-8F71-D61D', N'01029', N'2011-04-13 14:33:51.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'140', N'00:1F:D0:45:3B:6C', N'674D-E176-9A65-D512', N'674D-E176-9A65-D512', N'01027', N'2011-04-13 14:50:05.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'141', N'00:21:86:F6:84:E1', N'139D-B31E-F78E-C43E', N'139D-B31E-F78E-C43E', N'01004', N'2011-05-04 14:53:24.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'142', N'00:21:86:ED:77:39', N'BEE0-2F27-F61C-5B22', N'BEE0-2F27-F61C-5B22', N'01022', N'2011-05-23 13:54:14.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'143', N'00:0F:FE:E1:05:36', N'7DEB-C5DF-0CED-621D', N'7DEB-C5DF-0CED-621D', N'01022', N'2011-05-23 14:03:57.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'146', N'44:37:E6:2F:2F:78', N'87A8-213D-300E-FBF4', N'87A8-213D-300E-FBF4', N'01021', N'2011-06-01 15:05:24.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'147', N'00:21:86:ED:76:97', N'0055-DF14-10A5-094F', N'0055-DF14-10A5-094F', N'01024', N'2011-06-01 15:42:17.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'148', N'00:11:25:5A:0F:9C', N'831E-32B5-4455-10C3', N'831E-32B5-4455-10C3', N'01023', N'2011-06-23 12:44:51.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'149', N'00:21:86:F6:58:2C', N'661A-534C-D4E5-394D', N'661A-534C-D4E5-394D', N'01002', N'2011-06-29 15:09:59.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'150', N'00:19:BB:CC:22:95', N'65F4-06B9-D2E1-90F8', N'65F4-06B9-D2E1-90F8', N'01021', N'2011-07-04 11:17:45.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'151', N'00:21:86:F6:57:C8', N'5CDC-E74A-9A27-6944', N'5CDC-E74A-9A27-6944', N'01002', N'2011-07-15 10:31:55.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'152', N'00:0D:60:E7:23:EE', N'4C8E-A69C-9D59-4351', N'4C8E-A69C-9D59-4351', N'01024', N'2011-07-28 09:44:37.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'153', N'00:1D:7D:58:67:B6', N'28CE-BF6E-03A9-51D2', N'28CE-BF6E-03A9-51D2', N'01022', N'2011-08-27 15:03:44.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'155', N'44:37:E6:5C:86:EF', N'C528-4C31-DAEA-2949', N'C528-4C31-DAEA-2949', N'01005', N'2011-09-15 09:51:37.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'156', N'44:37:E6:5C:C1:8F', N'5D5F-FFA1-EAF5-4D5A', N'5D5F-FFA1-EAF5-4D5A', N'01022', N'2011-09-27 10:16:52.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'157', N'44:37:E6:5D:6F:88', N'E5AC-468F-616A-C2CF', N'E5AC-468F-616A-C2CF', N'01023', N'2011-10-08 10:43:57.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'158', N'44:37:E6:5C:C1:6B', N'E007-F8AF-5E05-C4E5', N'E007-F8AF-5E05-C4E5', N'01023', N'2011-10-10 10:57:10.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'159', N'00:0F:FE:DD:0A:26', N'63D8-EBEE-8CD6-D1DB', N'63D8-EBEE-8CD6-D1DB', N'01002', N'2011-10-14 10:16:33.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'160', N'00:1F:D0:3C:F8:EC', N'1EE9-756F-148F-3D68', N'1EE9-756F-148F-3D68', N'01025', N'2011-10-25 09:52:50.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'161', N'00:21:86:1B:39:48', N'D9EC-B111-1BA9-3010', N'D9EC-B111-1BA9-3010', N'01034', N'2011-11-03 08:35:52.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'163', N'00:00:00:00:00:00', N'9899-69C5-E9A0-A43D', N'9899-69C5-E9A0-A43D', N'01023', N'2011-11-03 09:04:24.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'164', N'00:0F:FE:DB:89:E0', N'4008-5E41-9F6D-AFE1', N'4008-5E41-9F6D-AFE1', N'01004', N'2011-11-28 09:25:04.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'165', N'44:37:E6:5C:C3:5A', N'6B6A-394F-F819-84CD', N'6B6A-394F-F819-84CD', N'01034', N'2011-12-02 08:36:17.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'166', N'00:19:BB:52:D6:9B', N'4D3C-4F18-0BBD-7CED', N'4D3C-4F18-0BBD-7CED', N'01002', N'2012-03-08 09:36:11.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'167', N'00:19:BB:52:D6:A7', N'D401-6E54-4BF6-6247', N'D401-6E54-4BF6-6247', N'01021', N'2012-03-16 15:59:11.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'168', N'00:21:86:1B:09:E2', N'2927-6477-6112-251A', N'2927-6477-6112-251A', N'01027', N'2012-03-21 15:15:46.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'169', N'44:37:E6:5D:6F:77', N'1D42-9D02-1398-8CAB', N'1D42-9D02-1398-8CAB', N'01024', N'2012-03-28 09:48:13.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'170', N'8C:89:A5:23:75:FA', N'855E-FEF4-FFE0-9E7D', N'855E-FEF4-FFE0-9E7D', N'01024', N'2012-03-28 10:10:47.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'171', N'00:21:86:F6:58:D2', N'F1E9-1517-037D-F98B', N'F1E9-1517-037D-F98B', N'01025', N'2012-03-29 11:10:26.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'172', N'00:21:86:1B:2C:24', N'523E-08E5-05AC-210D', N'523E-08E5-05AC-210D', N'01023', N'2012-03-29 11:28:23.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'173', N'44:37:E6:5C:C1:23', N'FA27-28AE-805C-F9B9', N'FA27-28AE-805C-F9B9', N'01022', N'2012-03-30 14:09:41.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'174', N'00:21:86:F6:58:12', N'5DD2-FF34-D23F-5F7D', N'5DD2-FF34-D23F-5F7D', N'01025', N'2012-04-06 12:13:34.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'175', N'00:19:BB:CC:1E:FB', N'5CD1-521E-E6EA-B7B2', N'5CD1-521E-E6EA-B7B2', N'01021', N'2012-04-18 11:26:57.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'176', N'00:19:BB:52:D6:72', N'15FB-595C-90B1-351A', N'15FB-595C-90B1-351A', N'01004', N'2012-04-20 10:30:43.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'177', N'00:21:86:1B:3F:46', N'AACF-B928-5876-261A', N'AACF-B928-5876-261A', N'01002', N'2012-04-26 09:15:41.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'178', N'00:0F:FE:93:8F:EA', N'0DD1-F0A6-A4AB-0B32', N'0DD1-F0A6-A4AB-0B32', N'01002', N'2012-04-26 10:21:35.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'181', N'00:21:86:1B:3B:20', N'51F5-BDD8-7C53-39B7', N'51F5-BDD8-7C53-39B7', N'01038', N'2012-05-08 12:31:41.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'182', N'44:37:E6:5D:70:8B', N'CAE3-7FFF-CBE5-0CD5', N'CAE3-7FFF-CBE5-0CD5', N'01035', N'2012-05-08 16:06:48.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'183', N'44:37:E6:5C:C3:78', N'C77A-4AE2-052F-FDC7', N'C77A-4AE2-052F-FDC7', N'01035', N'2012-05-09 09:52:16.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'184', N'00:16:E6:7C:8D:C9', N'23F5-1F79-09F9-C29A', N'23F5-1F79-09F9-C29A', N'01035', N'2012-05-09 10:15:33.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'185', N'00:21:86:1B:3B:50', N'38D6-4DEA-7DFA-C948', N'38D6-4DEA-7DFA-C948', N'01035', N'2012-05-09 10:21:25.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'186', N'00:16:E6:7C:90:4E', N'053F-BD69-EE2F-D2A4', N'053F-BD69-EE2F-D2A4', N'01035', N'2012-05-09 10:36:44.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'225', N'00:0F:FE:96:E0:84', N'5B47-6D28-0605-216E', N'5B47-6D28-0605-216E', N'01039', N'2012-08-07 17:12:28.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'226', N'00:0F:FE:92:BF:CF', N'8190-7FA9-7AA1-0EFF', N'8190-7FA9-7AA1-0EFF', N'01039', N'2012-08-07 17:20:45.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'227', N'44:37:E6:5B:FD:99', N'2928-F105-3512-94E3', N'2928-F105-3512-94E3', N'01021', N'2012-08-22 08:36:44.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'230', N'00:21:86:ED:77:7B', N'72C1-5B41-DA74-3CAE', N'72C1-5B41-DA74-3CAE', N'01081', N'2012-08-27 10:36:54.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'231', N'18:A9:05:EB:E3:82', N'F740-3EA3-BA64-6137', N'F740-3EA3-BA64-6137', N'01081', N'2012-08-27 14:38:17.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'232', N'44:37:E6:5F:76:65', N'8C2F-E376-DCC3-672C', N'8C2F-E376-DCC3-672C', N'01081', N'2012-08-27 15:20:24.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'233', N'00:21:86:ED:77:27', N'CA6A-E6B1-0274-0D2C', N'CA6A-E6B1-0274-0D2C', N'01082', N'2012-08-28 10:03:35.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'234', N'00:21:86:1B:0B:04', N'36D5-54A4-07F6-5BF5', N'36D5-54A4-07F6-5BF5', N'01024', N'2012-09-17 16:08:25.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'236', N'EC:A8:6B:6D:35:0E', N'5119-1EA4-4FA8-6060', N'5119-1EA4-4FA8-6060', N'01004', N'2012-09-18 08:51:54.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'237', N'EC:A8:6B:6D:35:62', N'DC8E-BE23-CA3C-CF2C', N'DC8E-BE23-CA3C-CF2C', N'01002', N'2012-11-02 08:48:17.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'238', N'00:21:86:1B:34:EE', N'F4E9-DF88-1763-8CE2', N'F4E9-DF88-1763-8CE2', N'01082', N'2012-11-08 15:50:22.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'239', N'44:37:E6:5F:81:82', N'6D31-1ED0-5BEB-257C', N'6D31-1ED0-5BEB-257C', N'01082', N'2012-11-08 15:52:18.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'240', N'44:37:E6:60:10:59', N'15C7-D7B9-9408-C573', N'15C7-D7B9-9408-C573', N'01082', N'2012-11-08 15:55:50.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'241', N'44:37:E6:5F:28:52', N'174D-D1EF-2711-B669', N'174D-D1EF-2711-B669', N'01082', N'2012-11-08 16:00:52.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'242', N'00:0F:FE:DD:09:64', N'3887-B2E4-0CA3-CCC6', N'3887-B2E4-0CA3-CCC6', N'01010', N'2012-11-09 09:29:37.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'243', N'00:0F:FE:DC:F0:E0', N'1E44-23B2-9E02-346B', N'1E44-23B2-9E02-346B', N'01010', N'2012-11-09 09:51:54.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'244', N'00:21:86:1B:3B:A8', N'108C-0BBC-48D8-F6E9', N'108C-0BBC-48D8-F6E9', N'01027', N'2012-11-19 14:32:12.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'245', N'00:1E:37:48:79:CC', N'38D5-96E2-A6DF-6E63', N'38D5-96E2-A6DF-6E63', N'01023', N'2012-11-29 08:10:47.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'9', N'00:1F:C6:3D:EE:E1', N'564D-2426-E1B9-B763', N'564D-2426-E1B9-B763', N'01022', N'2009-09-25 15:00:35.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'10', N'00:0F:FE:96:A1:FD', N'87F0-BC2D-3CE9-60C8', N'87F0-BC2D-3CE9-60C8', N'01021', N'2010-01-30 09:28:14.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'11', N'00:21:86:1B:44:78', N'37F6-3BF9-5FEA-BCAA', N'37F6-3BF9-5FEA-BCAA', N'01021', N'2010-01-30 10:13:18.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'12', N'00:21:86:1B:44:FC', N'4AE6-CBD9-65ED-9BF8', N'4AE6-CBD9-65ED-9BF8', N'01021', N'2010-01-30 10:24:57.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'13', N'00:21:86:1B:45:4C', N'F0BF-368D-6C87-8465', N'F0BF-368D-6C87-8465', N'01021', N'2010-01-30 10:32:10.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'14', N'00:21:86:1B:31:A0', N'222D-B3FE-7345-24A3', N'222D-B3FE-7345-24A3', N'01021', N'2010-01-30 10:48:29.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'15', N'00:19:BB:52:D6:1F', N'257D-8D5A-DD36-6300', N'257D-8D5A-DD36-6300', N'01023', N'2010-01-30 11:02:46.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'16', N'00:10:C6:AE:27:B0', N'D5AE-DF77-D955-D19F', N'D5AE-DF77-D955-D19F', N'01023', N'2010-01-30 11:03:49.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'17', N'00:1F:D0:3C:EE:A8', N'807F-2B2B-8C74-E704', N'807F-2B2B-8C74-E704', N'01023', N'2010-01-30 12:22:08.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'18', N'00:21:86:1B:3B:8C', N'0604-D841-59FF-28F7', N'0604-D841-59FF-28F7', N'01023', N'2010-01-30 12:27:19.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'19', N'00:1F:D0:3B:F2:E4', N'8B06-52D4-ADFD-5D9E', N'8B06-52D4-ADFD-5D9E', N'01023', N'2010-01-30 12:30:58.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'20', N'00:21:86:1B:0E:12', N'643B-19A5-0DA7-E0F5', N'643B-19A5-0DA7-E0F5', N'01023', N'2010-01-30 12:32:47.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'21', N'00:21:86:1B:45:E4', N'F9FC-6027-BA50-0223', N'F9FC-6027-BA50-0223', N'01023', N'2010-01-30 12:34:03.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'22', N'00:16:E6:F6:43:C4', N'B8D5-1A4D-9C4E-978E', N'B8D5-1A4D-9C4E-978E', N'01023', N'2010-01-30 12:58:27.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'23', N'00:0F:FE:92:BE:69', N'F0EA-EDF8-3226-ECF1', N'F0EA-EDF8-3226-ECF1', N'01032', N'2010-01-30 14:02:38.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'25', N'00:0F:FE:96:DD:97', N'D479-400A-237C-29FA', N'D479-400A-237C-29FA', N'01032', N'2010-01-30 14:21:46.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'26', N'00:21:86:1B:3C:D4', N'9969-02F4-8376-DE79', N'9969-02F4-8376-DE79', N'01032', N'2010-01-30 14:41:15.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'27', N'00:0F:FE:DB:8B:80', N'4C67-6E4C-2AF3-58DD', N'4C67-6E4C-2AF3-58DD', N'01032', N'2010-01-30 14:53:12.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'28', N'00:0D:60:E5:9B:A8', N'BA65-40D3-460B-5582', N'BA65-40D3-460B-5582', N'01024', N'2010-01-30 15:02:02.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'29', N'00:19:BB:CC:33:42', N'A8E8-9D4E-6F1E-9947', N'A8E8-9D4E-6F1E-9947', N'01032', N'2010-01-30 15:09:04.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'30', N'00:21:86:1B:34:8A', N'4595-4FEE-6BA3-CA67', N'4595-4FEE-6BA3-CA67', N'01032', N'2010-01-30 15:14:29.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'31', N'00:21:86:1B:0A:22', N'EE0F-8228-D95D-E2D2', N'EE0F-8228-D95D-E2D2', N'01024', N'2010-01-30 15:18:32.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'32', N'00:1F:D0:45:46:64', N'4CD6-87E8-5EF0-39B9', N'4CD6-87E8-5EF0-39B9', N'01024', N'2010-01-30 15:26:20.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'33', N'00:19:BB:52:E3:CA', N'C0B3-DEA2-1BDE-744A', N'C0B3-DEA2-1BDE-744A', N'01022', N'2010-01-30 15:30:30.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'34', N'00:1F:D0:45:3B:66', N'AF04-3B3D-9D61-7911', N'AF04-3B3D-9D61-7911', N'01024', N'2010-01-30 15:32:24.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'35', N'00:0D:60:9E:3D:70', N'DB19-3C42-AA92-55EA', N'DB19-3C42-AA92-55EA', N'01022', N'2010-01-30 15:37:34.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'36', N'00:21:86:1B:44:02', N'3B22-A448-26B6-9D9D', N'3B22-A448-26B6-9D9D', N'01024', N'2010-01-30 15:39:21.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'37', N'00:21:86:1B:3E:F8', N'6B2C-F0CB-DBFF-4F7A', N'6B2C-F0CB-DBFF-4F7A', N'01024', N'2010-01-30 15:40:46.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'38', N'00:14:85:A9:BE:68', N'F8C6-09C3-09B6-8278', N'F8C6-09C3-09B6-8278', N'01024', N'2010-01-30 16:40:53.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'39', N'00:11:25:70:04:C7', N'A57C-E6C7-DFA2-5BCE', N'A57C-E6C7-DFA2-5BCE', N'01022', N'2010-01-31 10:51:54.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'41', N'00:21:86:1B:3F:1A', N'A3EA-C7D5-DBB4-EF7E', N'A3EA-C7D5-DBB4-EF7E', N'01022', N'2010-01-31 11:05:59.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'42', N'00:21:86:1B:0B:E6', N'7C04-248E-664E-D87B', N'7C04-248E-664E-D87B', N'01022', N'2010-01-31 12:59:48.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'43', N'00:1F:D0:3A:68:E8', N'CC93-295C-E920-2142', N'CC93-295C-E920-2142', N'01022', N'2010-01-31 13:04:59.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'44', N'00:21:86:1B:44:66', N'BDCC-27EA-BD07-5884', N'BDCC-27EA-BD07-5884', N'01022', N'2010-01-31 13:07:08.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'46', N'00:0D:9D:94:DA:43', N'55C0-6EB3-C797-E2E2', N'55C0-6EB3-C797-E2E2', N'01023', N'2010-01-31 15:05:48.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'47', N'00:19:BB:CC:21:77', N'CF5F-6619-17C3-487D', N'CF5F-6619-17C3-487D', N'01022', N'2010-01-31 15:42:03.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'48', N'00:1F:D0:45:39:EE', N'33CB-D395-F73D-8661', N'33CB-D395-F73D-8661', N'01021', N'2010-02-01 08:15:05.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'50', N'00:14:85:A2:E3:F7', N'E0DD-0777-1F3A-5D3F', N'E0DD-0777-1F3A-5D3F', N'01002', N'2010-02-01 10:13:11.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'51', N'00:21:86:1B:3C:80', N'C073-F58B-89CD-48E9', N'C073-F58B-89CD-48E9', N'01004', N'2010-02-01 10:59:20.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'52', N'00:0F:FE:DD:0A:2C', N'66E5-CBF7-E5A4-573C', N'66E5-CBF7-E5A4-573C', N'01002', N'2010-02-01 11:10:13.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'53', N'00:0F:FE:DB:8B:78', N'351B-53AF-06FE-17AB', N'351B-53AF-06FE-17AB', N'01002', N'2010-02-01 11:11:53.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'55', N'00:21:86:1B:3B:A2', N'EB26-2324-F2D7-F874', N'EB26-2324-F2D7-F874', N'01031', N'2010-02-01 11:27:23.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'56', N'00:21:86:1B:2C:2E', N'7A2A-2D4A-4DFE-EFBA', N'7A2A-2D4A-4DFE-EFBA', N'01031', N'2010-02-01 11:29:13.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'57', N'00:21:86:1E:A1:B0', N'B62C-F61A-3EB1-A7CD', N'B62C-F61A-3EB1-A7CD', N'01031', N'2010-02-01 11:31:35.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'58', N'00:21:86:1B:09:60', N'0A5D-334A-0E0A-12CD', N'0A5D-334A-0E0A-12CD', N'01031', N'2010-02-01 11:32:49.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'59', N'00:19:BB:52:D6:A9', N'365F-1034-4FCF-8B66', N'365F-1034-4FCF-8B66', N'01032', N'2010-02-01 11:53:49.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'60', N'00:1F:D0:45:3F:5E', N'6C2A-5AB9-FCE1-A931', N'6C2A-5AB9-FCE1-A931', N'01032', N'2010-02-01 12:04:44.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'61', N'18:A9:05:EB:E2:DE', N'84DB-7577-148D-6A63', N'84DB-7577-148D-6A63', N'01032', N'2010-02-01 12:17:29.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'62', N'00:11:25:38:40:D1', N'D570-C048-169C-6064', N'D570-C048-169C-6064', N'01002', N'2010-02-01 15:26:16.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'63', N'00:1D:92:69:0A:76', N'AC22-31DE-06D3-7163', N'AC22-31DE-06D3-7163', N'01002', N'2010-02-01 15:55:55.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'66', N'00:19:BB:CC:17:DB', N'0747-8CB9-E981-B588', N'0747-8CB9-E981-B588', N'01021', N'2010-02-02 10:19:42.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'67', N'00:0F:FE:DD:05:62', N'F0FB-5B90-7676-1AEB', N'F0FB-5B90-7676-1AEB', N'01002', N'2010-02-02 11:31:35.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'103', N'00:21:86:1B:0A:12', N'78DE-4560-0538-9318', N'78DE-4560-0538-9318', N'01004', N'2010-03-01 14:33:42.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'104', N'00:19:BB:52:D6:87', N'2146-D7D5-247A-04D8', N'2146-D7D5-247A-04D8', N'01033', N'2010-03-01 14:44:17.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'105', N'00:1F:D0:45:39:B2', N'E10E-5155-5952-4007', N'E10E-5155-5952-4007', N'01033', N'2010-03-01 14:58:58.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'106', N'00:0D:60:E7:38:CC', N'54AD-6DD2-E174-47B0', N'54AD-6DD2-E174-47B0', N'01033', N'2010-03-01 15:30:09.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'108', N'00:21:86:1B:0B:2A', N'25FD-DC28-CB62-B9AC', N'25FD-DC28-CB62-B9AC', N'01033', N'2010-03-01 15:37:47.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'109', N'00:1F:D0:45:44:86', N'B897-19D6-BE07-9E06', N'B897-19D6-BE07-9E06', N'01025', N'2010-03-05 16:42:47.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'110', N'00:24:81:22:16:33', N'61D3-3C04-5056-9C85', N'61D3-3C04-5056-9C85', N'01032', N'2010-03-10 10:05:27.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'111', N'00:15:60:5D:79:E8', N'6412-80A0-2FCC-03CB', N'6412-80A0-2FCC-03CB', N'01025', N'2010-04-07 09:08:49.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'112', N'00:1F:D0:45:46:B2', N'2BAF-BC76-302B-7330', N'2BAF-BC76-302B-7330', N'01023', N'2010-04-12 14:38:41.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'113', N'00:19:BB:CC:11:51', N'90F9-9F7A-CFA5-CBA6', N'90F9-9F7A-CFA5-CBA6', N'01021', N'2010-05-21 14:09:56.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'114', N'00:19:BB:CC:18:24', N'B0AF-53AE-D631-02EA', N'B0AF-53AE-D631-02EA', N'01025', N'2010-07-19 15:57:49.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'115', N'00:1E:90:BF:28:8B', N'FEB0-E327-D2DC-FE90', N'FEB0-E327-D2DC-FE90', N'01022', N'2010-10-19 10:33:17.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'116', N'18:A9:05:EB:E3:10', N'357B-A188-3F10-0D67', N'357B-A188-3F10-0D67', N'01022', N'2010-10-19 10:51:23.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'117', N'00:14:85:A9:A5:A4', N'FD1E-0FF7-5B12-3C9A', N'FD1E-0FF7-5B12-3C9A', N'01024', N'2010-11-16 08:47:59.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'119', N'00:21:86:ED:77:68', N'3D1E-BA96-1BAC-0EE8', N'3D1E-BA96-1BAC-0EE8', N'01004', N'2010-11-17 08:27:41.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'121', N'00:0F:FE:92:C0:13', N'E11A-9959-19A7-74DB', N'E11A-9959-19A7-74DB', N'01031', N'2010-11-23 15:17:22.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'122', N'00:1D:92:69:0A:7C', N'1F94-0470-F6CB-530B', N'1F94-0470-F6CB-530B', N'01002', N'2010-12-02 15:36:25.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'123', N'00:24:01:14:8C:8A', N'250F-8A50-473F-6232', N'250F-8A50-473F-6232', N'01001', N'2010-12-09 10:35:31.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'124', N'18:A9:05:EC:05:4E', N'1B31-4E61-F521-DFB9', N'1B31-4E61-F521-DFB9', N'01004', N'2010-12-09 10:49:52.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'125', N'00:21:86:1B:2D:FA', N'6713-AB11-E339-62F6', N'6713-AB11-E339-62F6', N'01033', N'2010-12-09 14:19:35.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'126', N'00:11:25:6F:B4:24', N'C0FE-8217-5B49-174E', N'C0FE-8217-5B49-174E', N'01002', N'2011-02-11 15:29:42.000')
GO
GO
INSERT INTO [dbo].[Tmp_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'127', N'00:14:85:A0:E8:EC', N'3DF8-66E7-E9AC-2EC9', N'3DF8-66E7-E9AC-2EC9', N'01022', N'2011-04-01 10:01:31.000')
GO
GO

-- ----------------------------
-- Procedure structure for P_Continue_Online
-- ----------------------------
DROP PROCEDURE [dbo].[P_Continue_Online]
GO



create procedure [dbo].[P_Continue_Online]
(
	@Man_ID nvarchar(6),
	@Reg_ID smallint
)
as
begin
	update T_Sys_Online set Online_Date = getdate() where Man_ID = @Man_ID
	
	select * from T_Sys_Online where Man_ID = @Man_ID 
end




GO

-- ----------------------------
-- Procedure structure for P_Create_TranID
-- ----------------------------
DROP PROCEDURE [dbo].[P_Create_TranID]
GO



create procedure [dbo].[P_Create_TranID]
(
	@Tran_ID nvarchar(20) out,
	@Man_ID nvarchar(6)
)
as
begin
	update T_Sys_Man set Oper_Serial = 1, Pre_Work_Date = Work_Date, Work_Date = convert(nvarchar(8), getdate(), 112) where Work_Date != convert(nvarchar(8), getdate(), 112) and Man_ID = @Man_ID 
	
	select @Tran_ID = convert(nvarchar(8), getdate(), 112) + replace(space(6-len(Man_ID)) + Man_ID, ' ', '0') + replace(space(4-len(convert(nvarchar(4), Oper_Serial))) + convert(nvarchar(4), Oper_Serial), ' ', '0')  from T_Sys_Man where Man_ID = @Man_ID
		
	update T_Sys_Man set Oper_Serial = Oper_Serial + 1 where Man_ID = @Man_ID
end




GO

-- ----------------------------
-- Procedure structure for P_Delete_Column
-- ----------------------------
DROP PROCEDURE [dbo].[P_Delete_Column]
GO



create procedure [dbo].[P_Delete_Column]
(
	@DBID int,
	@TableCode nvarchar(40),
	@IsLog bit = null
)
as
begin
	delete from T_DMS_Column where DBID = @DBID and TableCode = @TableCode 
end




GO

-- ----------------------------
-- Procedure structure for P_Delete_ColumnTable
-- ----------------------------
DROP PROCEDURE [dbo].[P_Delete_ColumnTable]
GO


create procedure [dbo].[P_Delete_ColumnTable]
(
	@DBID int,
	@TableCode nvarchar(40)
)
as
begin
	delete from T_DMS_COLUMNTABLE where DBID = @DBID and TableCode = @TableCode
end



GO

-- ----------------------------
-- Procedure structure for P_Delete_Index
-- ----------------------------
DROP PROCEDURE [dbo].[P_Delete_Index]
GO


create procedure [dbo].[P_Delete_Index]
(
	@DBID int = null,
	@TableCode nvarchar(40) = null
)
as
begin
	delete from T_DMS_INDEX where DBID = @DBID and TableCode = @TableCode
	
	delete from T_DMS_INDEX_COLUMN where DBID = @DBID and TableCode = @TableCode
end



GO

-- ----------------------------
-- Procedure structure for P_Delete_Key
-- ----------------------------
DROP PROCEDURE [dbo].[P_Delete_Key]
GO


create procedure [dbo].[P_Delete_Key]
(
	@DBID int = null,
	@TableCode nvarchar(40) = null,
	@IsLog bit = null
)
as
begin
	delete from T_DMS_KEY where DBID = @DBID and TableCode = @TableCode
	
	delete from T_DMS_KEY_COLUMN where DBID = @DBID and TableCode = @TableCode
end



GO

-- ----------------------------
-- Procedure structure for P_Delete_OnlineMan
-- ----------------------------
DROP PROCEDURE [dbo].[P_Delete_OnlineMan]
GO



create procedure [dbo].[P_Delete_OnlineMan]
(
	@Man_ID nvarchar(6),
	@Reco_Man nvarchar(6)
)
as
begin
	delete T_Sys_Online where Man_ID = @Man_ID
	
	insert into T_Sys_Log (Log_Date, Man_ID, Menu_Code, Log_Action, Log_Content) values (getdate(), @Reco_Man, '0610', 1, '删除员工[' + @Man_ID + ']的在线状态')
end




GO

-- ----------------------------
-- Procedure structure for P_Delete_OperRole
-- ----------------------------
DROP PROCEDURE [dbo].[P_Delete_OperRole]
GO



create procedure [dbo].[P_Delete_OperRole]
(
	@Man_ID nvarchar(6)
)
as
begin
	delete from T_Sys_Oper_Role where Man_ID = @Man_ID
end




GO

-- ----------------------------
-- Procedure structure for P_Delete_RoleMenuAndNav
-- ----------------------------
DROP PROCEDURE [dbo].[P_Delete_RoleMenuAndNav]
GO



create procedure [dbo].[P_Delete_RoleMenuAndNav]
(
	@Role_ID smallint
)
as
begin	
	delete from T_Sys_Role_Menu where Role_ID = @Role_ID
		
	delete from T_Sys_Role_Rib where Role_ID = @Role_ID
end




GO

-- ----------------------------
-- Procedure structure for P_Delete_SetSqlDetail
-- ----------------------------
DROP PROCEDURE [dbo].[P_Delete_SetSqlDetail]
GO



create procedure [dbo].[P_Delete_SetSqlDetail]
(
	@Sql_ID nvarchar(30)
)
as
begin
	delete from T_Set_Sql_Detail where Sql_ID = @Sql_ID 
end




GO

-- ----------------------------
-- Procedure structure for P_First_Login
-- ----------------------------
DROP PROCEDURE [dbo].[P_First_Login]
GO



create procedure [dbo].[P_First_Login]
(
	@Man_ID nvarchar(6),
	@Oper_Password nvarchar(50)
)
as
begin
	update T_Sys_Man set Oper_Password = @Oper_Password, Is_First = 0, Work_Date = convert(nvarchar(8), getdate(), 112), Pre_Work_Date = convert(nvarchar(8), getdate(), 112)	where Man_ID = @Man_ID
end




GO

-- ----------------------------
-- Procedure structure for P_Get_All_Parameters
-- ----------------------------
DROP PROCEDURE [dbo].[P_Get_All_Parameters]
GO




create procedure [dbo].[P_Get_All_Parameters]
as
begin
	select Parameter_ID, Parameter_Name, Parameter_Display from T_Pmt_Parameter_Table order by Parameter_ID
	
	select Co_Status, Co_Status_Name from T_Pmt_Co_Status order by Co_Status
	
	select Dept_Status, Dept_Status_Name from T_Pmt_Dept_Status order by Dept_Status
	
	select Dept_Type, Dept_Type_Name from T_Pmt_Dept_Type order by Dept_Type
	
	select Co_Name, Co_ID from T_Sys_Company order by Co_ID
	
	select Dept_Level, Dept_Level_Name from T_Pmt_Dept_Level order by Dept_Level
	
	select Bank_ID, Bank_Name from T_Bank order by Bank_ID
	
	select Man_Type, Man_Type_Name from T_Pmt_Man_Type order by Man_Type
	
	select Man_Title, Man_Title_Name from T_Pmt_Man_Title order by Man_Title
	
	select Man_Level, Man_Level_Name from T_Pmt_Man_Level order by Man_Level
	
	select Man_Sex, Man_Sex_Name from T_Pmt_Man_Sex order by Man_Sex
	
	select Man_Status, Man_Status_Name from T_Pmt_Man_Status order by Man_Status
	
	select Auth_Bound, Auth_Bound_Name from T_Pmt_Auth_Bound order by Auth_Bound
	
	select Get_Type, Get_Type_Name from T_Bill_Get_Type order by Get_Type
	
	select Use_Type, Use_Type_Name from T_Bill_Use_Type order by Use_Type
	
	select Before_Type, Before_Type_Name from T_Bill_Before_Type order by Before_Type
	
	select Tran_Type, Tran_Type_Name from T_Bill_Tran_Type order by Tran_Type
	
	select Bill_Type, Bill_Type_Name from T_Bill_Type where Bill_Type in (2, 4, 5) order by Bill_Type
	
	select Bill_Type, Bill_Type_Name from T_Bill_Type where Bill_Type in (2, 3, 4, 5) order by Bill_Type
	
	select Back_Reason, Back_Reason_Name from T_Pmt_Back_Reason order by Back_Reason
	
	select Other_Source, Other_Source_Name from T_Bill_Other_Source order by Other_Source
	
	select Get_Tran, Get_Tran_Name from T_Bill_Get_Tran order by Get_Tran
	
	select Now_Status, Now_Status_Name from T_Bill_Now_Status order by Now_Status
	
	select Finish_Type, Finish_Type_Name from T_Pmt_Back_Finish order by Finish_Type
	
	select Audit_Money, Audit_Money_Name from T_Bill_Audit_Money order by Audit_Money
	
	select Back_Type, Back_Type_Name from T_Bill_Back_Type order by Back_Type
	
	select BackFee_Bill, BackFee_Bill_Name from T_Bill_BackFee_Bill order by BackFee_Bill
	
	select BackFee_Bill, BackFee_Bill_Name from T_Bill_BackFee_Bill where BackFee_Bill > 1 order by BackFee_Bill 
	
	select FeeBack_Model, FeeBack_Model_Name from T_Bill_FeeBack_Model order by FeeBack_Model
	
	select Oper_Type, Oper_Type_Name from T_Bill_Oper_Type order by Oper_Type
	
	select Rpt_Account,Rpt_Account_ID from T_Pmt_Rpt_Account
	
	select Rpt_Use_ID,Rpt_Use from T_Pmt_Rpt_Use order by Rpt_Use_ID
	
	select Cancel_Type,Cancel_Type_Name from T_Pmt_Cancel_Type order by Cancel_Type
	
	select BankID,BankName from ers.dbo.t_bus_bank where bankid > '000' order by bankid
end



GO

-- ----------------------------
-- Procedure structure for P_Get_AuthBound
-- ----------------------------
DROP PROCEDURE [dbo].[P_Get_AuthBound]
GO



create procedure [dbo].[P_Get_AuthBound]
(
	@Auth_Bound smallint = null,
	@Get_Action nvarchar(10) = null
)
as
begin
	if (@Get_Action = 'full') or (@Get_Action is null)
	begin
		select * from T_Pmt_Auth_Bound order by Auth_Bound
	end
	else if (@Get_Action = 'row')
	begin
		if @Auth_Bound is not null 
		begin
		select * from T_Pmt_Auth_Bound where Auth_Bound = @Auth_Bound
		end
	end
end




GO

-- ----------------------------
-- Procedure structure for P_Get_ColType
-- ----------------------------
DROP PROCEDURE [dbo].[P_Get_ColType]
GO



create procedure [dbo].[P_Get_ColType]
(
	@Col_Type smallint = null,
	@Get_Action nvarchar(10) = null
)
as
begin
	if (@Get_Action = 'full') or (@Get_Action is null)
	begin
		select Col_Type, Col_Type_Name from T_Set_Col_Type order by Col_Type
	end
	else if (@Get_Action = 'row')
	begin
		if @Col_Type is not null 
		begin
			select Col_Type, Col_Type_Name from T_Set_Col_Type where Col_Type = @Col_Type
		end
	end
end




GO

-- ----------------------------
-- Procedure structure for P_Get_ColumnByIndex
-- ----------------------------
DROP PROCEDURE [dbo].[P_Get_ColumnByIndex]
GO


create procedure [dbo].[P_Get_ColumnByIndex]
(
	@DBID int,
	@TableCode nvarchar(40),
	@IndexCode nvarchar(40)
)
as
begin
	select * from T_DMS_INDEX_COLUMN 
		where DBID = @DBID and TableCode = @TableCode and IndexCode = @IndexCode
end



GO

-- ----------------------------
-- Procedure structure for P_Get_ColumnByKey
-- ----------------------------
DROP PROCEDURE [dbo].[P_Get_ColumnByKey]
GO


create procedure [dbo].[P_Get_ColumnByKey]
(
	@DBID int,
	@TableCode nvarchar(40),
	@KeyCode nvarchar(40)
)
as
begin
	select * from T_DMS_KEY_COLUMN 
		where DBID = @DBID and TableCode = @TableCode and KeyCode = @KeyCode
end



GO

-- ----------------------------
-- Procedure structure for P_Get_ColumnByTable
-- ----------------------------
DROP PROCEDURE [dbo].[P_Get_ColumnByTable]
GO


create procedure [dbo].[P_Get_ColumnByTable]
(
	@DBID int,
	@TableCode nvarchar(40)
)
as
begin
	select a.*, b.DBName, c.TableName, c.IsPmt from T_DMS_COLUMN a, T_DMS_DB b, T_DMS_TABLE c 
		where a.DBID = @DBID and a.DBID = b.DBID and a.TableCode = c.TableCode and a.DBID = c.DBID and a.TableCode = @TableCode 
		order by a.ColumnID
end



GO

-- ----------------------------
-- Procedure structure for P_Get_ColumnTable
-- ----------------------------
DROP PROCEDURE [dbo].[P_Get_ColumnTable]
GO


create procedure [dbo].[P_Get_ColumnTable]
(
	@DBID int,
	@TableCode nvarchar(40)
)
as
begin
	select a.*, b.DataType, b.ColumnName, b.ColumnLength, b.ColumnNotNull from T_DMS_COLUMNTABLE a, T_DMS_COLUMN b where a.DBID = b.DBID and a.RelaTable = b.TableCode and a.DisplayColumn = b.ColumnCode 
		and a.DBID = @DBID and a.TableCode = @TableCode order by a.ColumnSerial 
end



GO

-- ----------------------------
-- Procedure structure for P_Get_DBByCode
-- ----------------------------
DROP PROCEDURE [dbo].[P_Get_DBByCode]
GO

create procedure [dbo].[P_Get_DBByCode]
(
	@DBCode nvarchar(40)
)
as
begin
	select * from T_DMS_DB where DBCode = @DBCode
end




GO

-- ----------------------------
-- Procedure structure for P_Get_DBForCombox
-- ----------------------------
DROP PROCEDURE [dbo].[P_Get_DBForCombox]
GO


create procedure [dbo].[P_Get_DBForCombox]
as
begin
	select DBID, DBName + '(' + DBCode + ')' DBName from T_DMS_DB order by DBID
end



GO

-- ----------------------------
-- Procedure structure for P_Get_IndexByTable
-- ----------------------------
DROP PROCEDURE [dbo].[P_Get_IndexByTable]
GO


create procedure [dbo].[P_Get_IndexByTable]
(
	@DBID int,
	@TableCode nvarchar(40)
)
as
begin
	select a.*, b.DBName, c.TableName, c.IsPmt from T_DMS_INDEX a, T_DMS_DB b, T_DMS_TABLE c 
		where a.DBID = @DBID and a.DBID = b.DBID and a.TableCode = c.TableCode and a.DBID = c.DBID and a.TableCode = @TableCode 
		order by a.IndexID
end



GO

-- ----------------------------
-- Procedure structure for P_Get_KeyByTable
-- ----------------------------
DROP PROCEDURE [dbo].[P_Get_KeyByTable]
GO


create procedure [dbo].[P_Get_KeyByTable]
(
	@DBID int,
	@TableCode nvarchar(40)
)
as
begin
	select a.*, b.DBName, c.TableName, c.IsPmt from T_DMS_KEY a, T_DMS_DB b, T_DMS_TABLE c 
		where a.DBID = @DBID and a.DBID = b.DBID and a.TableCode = c.TableCode and a.DBID = c.DBID and a.TableCode = @TableCode 
		order by a.KeyID
end



GO

-- ----------------------------
-- Procedure structure for P_Get_Man_Menus
-- ----------------------------
DROP PROCEDURE [dbo].[P_Get_Man_Menus]
GO




create procedure [dbo].[P_Get_Man_Menus]
(
	@Man_ID nvarchar(6),
	@System_ID nvarchar(2)
)
as
begin	
	select * from T_Sys_Menu_Group where Mg_Status = 0 order by Mg_Order, Mg_ID
	
	select a.*, c.M_Auth Menu_Auth
  		from T_Sys_Menu a, T_Sys_Role_Menu c, T_Sys_Oper_Role d, T_Sys_Menu_Sys e 
  		where e.System_ID = @System_ID and a.M_ID = e.M_ID and a.M_Status = 0  
  		and c.Role_ID = d.Role_ID and d.Man_ID = @Man_ID and a.M_ID = c.M_ID  
  		order by a.Mg_ID, a.M_Level, a.M_Disp, a.M_ID
  		
  select * from T_Rib_Tab order by Rib_Order
  
  select a.*, b.Rib_Tab_Name from T_Rib_Panel a, T_Rib_Tab b where a.Rib_Tab = b.Rib_Tab order by a.Rib_Tab, a.Rib_Order
  
  select distinct a.* from T_Rib_Button a, T_Sys_Rib_Sys b, T_Sys_Oper_Role c, T_Sys_Role_Rib d 
			where a.Rib_Btn = d.Rib_Btn and b.System_ID = @System_ID and a.Rib_Btn = b.Rib_Btn and c.Man_ID = @Man_ID and c.Role_ID = d.Role_ID 
end





GO

-- ----------------------------
-- Procedure structure for P_Get_ManByType
-- ----------------------------
DROP PROCEDURE [dbo].[P_Get_ManByType]
GO



create procedure [dbo].[P_Get_ManByType]
(
	@Dept_ID nvarchar(8),
	@Man_Type smallint
)
as
begin
	select a.*, b.Co_Name, c.Dept_Name, g.Man_Type_Name, d.Man_Level_Name, f.Man_Sex_Name, h.Man_Status_Name, e.Man_Title_Name  
			from T_Sys_Man a, T_Sys_Company b, T_Sys_Dept c, T_Pmt_Man_Type g, T_Pmt_Man_Level d, T_Pmt_Man_Title e, T_Pmt_Man_Sex f, T_Pmt_Man_Status h 
			where a.Co_ID = b.Co_ID and a.Dept_ID = c.Dept_ID and a.Man_Type = g.Man_Type and a.Man_Level = d.Man_Level and a.Man_Title = e.Man_Title and a.Man_Sex = f.Man_Sex and a.Man_Status = h.Man_Status 
			and a.Dept_ID = @Dept_ID and a.Man_Type = @Man_Type
end




GO

-- ----------------------------
-- Procedure structure for P_Get_MenuAuth
-- ----------------------------
DROP PROCEDURE [dbo].[P_Get_MenuAuth]
GO



create procedure [dbo].[P_Get_MenuAuth]
(
	@Auth_ID smallint = null,
	@Get_Action nvarchar(10) = null
)
as
begin
	if (@Get_Action = 'full') or (@Get_Action is null)
	begin
		select * from T_Sys_Menu_Auth order by Auth_ID
	end
	else if (@Get_Action = 'row')
	begin
		if @Auth_ID is not null 
		begin
		select * from T_Sys_Menu_Auth where Auth_ID = @Auth_ID
		end
	end
end




GO

-- ----------------------------
-- Procedure structure for P_Get_PmtSetByDB
-- ----------------------------
DROP PROCEDURE [dbo].[P_Get_PmtSetByDB]
GO


create procedure [dbo].[P_Get_PmtSetByDB]
(
	@DBID int
)
as
begin
	select * from T_DMS_PMTSET where DBID = @DBID order by TableSet
end



GO

-- ----------------------------
-- Procedure structure for P_Get_Public
-- ----------------------------
DROP PROCEDURE [dbo].[P_Get_Public]
GO



create procedure [dbo].[P_Get_Public]
(
	@Sql nvarchar(1024)
)
as
begin
	exec(@Sql)
end




GO

-- ----------------------------
-- Procedure structure for P_Get_RoleMenu
-- ----------------------------
DROP PROCEDURE [dbo].[P_Get_RoleMenu]
GO



create procedure [dbo].[P_Get_RoleMenu]
(
	@Role_ID smallint = null
)
as
begin	
	if @Role_ID is null
	begin
		select M_ID, M_Name, M_Auth, M_Auth Role_Auth, 0 Is_Select from T_Sys_Menu order by Mg_ID, M_ID
	end
	else
	begin
		select a.M_ID, a.M_Name, a.M_Auth, case when b.M_Auth is null then 0 else b.M_Auth end Role_Auth, case when b.M_Auth is null then 0 else 1 end Is_Select from T_Sys_Menu a, T_Sys_Role_Menu b where a.M_ID *= b.M_ID and b.Role_ID = @Role_ID order by a.Mg_ID, a.M_ID
	end
end




GO

-- ----------------------------
-- Procedure structure for P_Get_RoleNav
-- ----------------------------
DROP PROCEDURE [dbo].[P_Get_RoleNav]
GO



create procedure [dbo].[P_Get_RoleNav]
(
	@Role_ID smallint = null
)
as
begin	
	if @Role_ID is null
	begin
		select Rib_Btn, Rib_Btn_Name, 0 Is_Select from T_Rib_Button order by Rib_Btn
	end
	else
	begin
		select a.Rib_Btn, a.Rib_Btn_Name, case when b.Rib_Btn is null then 0 else 1 end Is_Select from T_Rib_Button a, T_Sys_Role_Rib b where a.Rib_Btn *= b.Rib_Btn and b.Role_ID = @Role_ID order by a.Rib_Btn
	end
end




GO

-- ----------------------------
-- Procedure structure for P_Get_SetByCode
-- ----------------------------
DROP PROCEDURE [dbo].[P_Get_SetByCode]
GO


create procedure [dbo].[P_Get_SetByCode]
(
	@DBID int,
	@TableCode nvarchar(40)
)
as
begin
	select * from T_DMS_TABLESET where DBID = @DBID and TableCode = @TableCode
end



GO

-- ----------------------------
-- Procedure structure for P_Get_SetManLevel
-- ----------------------------
DROP PROCEDURE [dbo].[P_Get_SetManLevel]
GO



create procedure [dbo].[P_Get_SetManLevel]
as
begin
	select Man_Level from T_Set_Man_Level
end




GO

-- ----------------------------
-- Procedure structure for P_Get_SetSql
-- ----------------------------
DROP PROCEDURE [dbo].[P_Get_SetSql]
GO



create procedure [dbo].[P_Get_SetSql]
(
	@Sql_ID nvarchar(30) = null,
	@Custom_Sql nvarchar(200) = null,
	@Get_Action nvarchar(10) = null
)
as
begin
	if (@Get_Action = 'full') or (@Get_Action is null)
	begin
		select * from T_Set_Sql order by Sql_ID
	end
	else if (@Get_Action = 'row')
	begin
		if @Sql_ID is not null 
		begin
			select * from T_Set_Sql where Sql_ID = @Sql_ID
		end
	end
	else if (@Get_Action = 'custom')
	begin
		declare @Sql nvarchar(1500)
		
		set @Sql = 'select * from T_Set_Sql where ' + @Custom_Sql + ' order by Sql_ID'
		
		exec(@Sql)
	end
	else if (@Get_Action = 'condition')
	begin
		select * from T_Set_Sql where Sql_ID = @Sql_ID
		
		select a.*, b.Sql_Name from T_Set_Sql_Detail a, T_Set_Sql b	where a.Sql_ID = @Sql_ID and a.Sql_ID = b.Sql_ID order by a.Disp_Order
	end
end




GO

-- ----------------------------
-- Procedure structure for P_Get_SetSqlDetail
-- ----------------------------
DROP PROCEDURE [dbo].[P_Get_SetSqlDetail]
GO



create procedure [dbo].[P_Get_SetSqlDetail]
(
	@Sql_ID nvarchar(30) = null,
	@Col_ID smallint = null,	
	@Get_Action nvarchar(10) = null
)
as
begin
	if (@Get_Action = 'full') or (@Get_Action is null)
	begin
		select a.*, b.Sql_Name from T_Set_Sql_Detail a, T_Set_Sql b	where a.Sql_ID = b.Sql_ID order by a.Sql_ID, a.Col_ID
	end
	else if (@Get_Action = 'row')
	begin
		select a.*, b.Sql_Name from T_Set_Sql_Detail a, T_Set_Sql b	where a.Sql_ID = @Sql_ID and a.Col_ID = @Col_ID and a.Sql_ID = b.Sql_ID
	end
	else if (@Get_Action = 'listrows')
	begin
		select a.*, b.Sql_Name from T_Set_Sql_Detail a, T_Set_Sql b	where a.Sql_ID = @Sql_ID and a.Sql_ID = b.Sql_ID order by a.Disp_Order
	end
end




GO

-- ----------------------------
-- Procedure structure for P_Get_SysCompany
-- ----------------------------
DROP PROCEDURE [dbo].[P_Get_SysCompany]
GO



create procedure [dbo].[P_Get_SysCompany]
(
	@Co_ID nvarchar(4) = null,
	@Get_Action nvarchar(10) = null
)
as
begin
	if (@Get_Action = 'full') or (@Get_Action is null)
	begin
		select a.*, b.Co_Status_Name from T_Sys_Company a, T_Pmt_Co_Status b where a.Co_Status = b.Co_Status order by a.Crt_Date desc
	end
	else if (@Get_Action = 'simplevalid')
	begin
		select * from T_Sys_Company where Co_Status = 0 order by Crt_Date desc
	end
	else if (@Get_Action = 'simplelist')
	begin
		select * from T_Sys_Company order by Crt_Date desc
	end
	else if (@Get_Action = 'row')
	begin
		if @Co_ID is not null 
		begin
			select a.*, b.Co_Status_Name from T_Sys_Company a, T_Pmt_Co_Status b where a.Co_Status = b.Co_Status and a.Co_ID = @Co_ID
		end
	end
end




GO

-- ----------------------------
-- Procedure structure for P_Get_SysDate
-- ----------------------------
DROP PROCEDURE [dbo].[P_Get_SysDate]
GO



create procedure [dbo].[P_Get_SysDate]
as
begin
	select getdate()
end




GO

-- ----------------------------
-- Procedure structure for P_Get_SysDept
-- ----------------------------
DROP PROCEDURE [dbo].[P_Get_SysDept]
GO



create procedure [dbo].[P_Get_SysDept]
(
	@Dept_ID nvarchar(8) = null,
	@Co_ID nvarchar(4) = null,
	@Get_Action nvarchar(20) = null
)
as
begin
	if (@Get_Action = 'full') or (@Get_Action is null)
	begin
		if (@Co_ID is not null)
		begin
		select a.*, b.Co_Name, e.Dept_Level_Name, d.Dept_Type_Name, c.Dept_Status_Name 
			from T_Sys_Dept a, T_Sys_Company b, T_Pmt_Dept_Level e, T_Pmt_Dept_Type d, T_Pmt_Dept_Status c 
			where a.Co_ID = b.Co_ID and a.Dept_Level = e.Dept_Level and a.Dept_Type = d.Dept_Type and a.Dept_Status = c.Dept_Status and a.Co_ID = @Co_ID  
			order by a.Co_ID, a.Dept_ID
		end
		else
		begin
		select a.*, b.Co_Name, e.Dept_Level_Name, d.Dept_Type_Name, c.Dept_Status_Name 
			from T_Sys_Dept a, T_Sys_Company b, T_Pmt_Dept_Level e, T_Pmt_Dept_Type d, T_Pmt_Dept_Status c 
			where a.Co_ID = b.Co_ID and a.Dept_Level = e.Dept_Level and a.Dept_Type = d.Dept_Type and a.Dept_Status = c.Dept_Status
			order by a.Co_ID, a.Dept_ID
		end
	end
	else if (@Get_Action = 'simplevalid')
	begin
		if (@Co_ID is not null)
		begin
			select a.*, b.Co_Name from T_Sys_Dept a, T_Sys_Company b where a.Co_ID = b.Co_ID and a.Dept_Status = 0 and a.Co_ID = @Co_ID order by a.Dept_ID
		end
		else
		begin
			select a.*, b.Co_Name from T_Sys_Dept a, T_Sys_Company b where a.Co_ID = b.Co_ID and a.Dept_Status = 0 order by a.Co_ID, a.Dept_ID
		end
	end
	else if (@Get_Action = 'simplelist')
	begin
		if (@Co_ID is not null)
		begin
			select a.*, b.Co_Name from T_Sys_Dept a, T_Sys_Company b where a.Co_ID = b.Co_ID and a.Co_ID = @Co_ID order by a.Dept_ID
		end
		else
		begin
			select a.*, b.Co_Name from T_Sys_Dept a, T_Sys_Company b where a.Co_ID = b.Co_ID order by a.Co_ID, a.Dept_ID
		end
	end
	else if (@Get_Action = 'row')
	begin
		if @Dept_ID is not null 
		begin
			select a.*, b.Co_Name, e.Dept_Level_Name, d.Dept_Type_Name, c.Dept_Status_Name 
				from T_Sys_Dept a, T_Sys_Company b, T_Pmt_Dept_Level e, T_Pmt_Dept_Type d, T_Pmt_Dept_Status c 
				where a.Co_ID = b.Co_ID and a.Dept_Level = e.Dept_Level and a.Dept_Type = d.Dept_Type and a.Dept_Status = c.Dept_Status and a.Dept_ID = @Dept_ID
		end
	end
end




GO

-- ----------------------------
-- Procedure structure for P_Get_SysDeptByCountry
-- ----------------------------
DROP PROCEDURE [dbo].[P_Get_SysDeptByCountry]
GO



create procedure [dbo].[P_Get_SysDeptByCountry]
as
begin
			select * from T_Sys_Dept where Dept_PID = '01006' order by Dept_ID
end




GO

-- ----------------------------
-- Procedure structure for P_Get_SysLog
-- ----------------------------
DROP PROCEDURE [dbo].[P_Get_SysLog]
GO



create procedure [dbo].[P_Get_SysLog]
(
	@Log_ID int = null,
	@Get_Action nvarchar(10) = null
)
as
begin
	if (@Get_Action = 'full') or (@Get_Action is null)
	begin
		select a.*, b.Man_Name from T_Sys_Log a, T_Sys_Man b where a.Man_ID = b.Man_ID order by a.Log_Date desc
	end
	else if (@Get_Action = 'row')
	begin
		if @Log_ID is not null 
		begin
			select a.*, b.Man_Name from T_Sys_Log a, T_Sys_Man b where a.Man_ID = b.Man_ID and a.Log_ID = @Log_ID
		end
	end
end




GO

-- ----------------------------
-- Procedure structure for P_Get_SysMan
-- ----------------------------
DROP PROCEDURE [dbo].[P_Get_SysMan]
GO



create procedure [dbo].[P_Get_SysMan]
(
	@Man_ID nvarchar(6) = null,
	@Co_ID nvarchar(4) = null,
	@Dept_ID nvarchar(8) = null,
	@Get_Action nvarchar(10) = null
)
as
begin
	declare @Sql nvarchar(300)
	
	if (@Get_Action = 'full') or (@Get_Action is null)
	begin
		select a.*, b.Co_Name, c.Dept_Name, g.Man_Type_Name, d.Man_Level_Name, f.Man_Sex_Name, h.Man_Status_Name, e.Man_Title_Name  
			from T_Sys_Man a, T_Sys_Company b, T_Sys_Dept c, T_Pmt_Man_Type g, T_Pmt_Man_Level d, T_Pmt_Man_Title e, T_Pmt_Man_Sex f, T_Pmt_Man_Status h 
			where a.Co_ID = b.Co_ID and a.Dept_ID = c.Dept_ID and a.Man_Type = g.Man_Type and a.Man_Level = d.Man_Level and a.Man_Title = e.Man_Title and a.Man_Sex = f.Man_Sex and a.Man_Status = h.Man_Status 
			order by a.Man_ID
	end
	else if (@Get_Action = 'simplevalid')
	begin
		set @Sql = 'select a.*, b.Co_Name, c.Dept_Name from from T_Sys_Man a, T_Sys_Company b, T_Sys_Dept c where a.Co_ID = b.Co_ID and a.Dept_ID = c.Dept_ID and a.Man_Status = 0 '
		
		if @Co_ID is not null
			set @Sql = @Sql + ' and a.Co_ID = ''' + @Co_ID  + ''' '
			
		if @Dept_ID is not null
			set @Sql = @Sql + ' and a.Dept_ID = ''' + @Dept_ID + ''' '
			
		set @Sql = @Sql + ' order by a.Man_ID'
		
		exec(@Sql)
	end
	else if (@Get_Action = 'simplelist')
	begin
		set @Sql = 'select a.*, b.Co_Name, c.Dept_Name from from T_Sys_Man a, T_Sys_Company b, T_Sys_Dept c where a.Co_ID = b.Co_ID and a.Dept_ID = c.Dept_ID '
		
		if @Co_ID is not null
			set @Sql = @Sql + ' and a.Co_ID = ''' + @Co_ID + ''' '
			
		if @Dept_ID is not null
			set @Sql = @Sql + ' and a.Dept_ID = ''' + @Dept_ID + ''' '
			
		set @Sql = @Sql + ' order by a.Man_ID'
		
		exec(@Sql)
	end
	else if (@Get_Action = 'row')
	begin
		if @Man_ID is not null 
		begin
		select a.*, b.Co_Name, c.Dept_Name, g.Man_Type_Name, d.Man_Level_Name, f.Man_Sex_Name, h.Man_Status_Name, e.Man_Title_Name  
			from T_Sys_Man a, T_Sys_Company b, T_Sys_Dept c, T_Pmt_Man_Type g, T_Pmt_Man_Level d, T_Pmt_Man_Title e, T_Pmt_Man_Sex f, T_Pmt_Man_Status h 
			where a.Co_ID = b.Co_ID and a.Dept_ID = c.Dept_ID and a.Man_Type = g.Man_Type and a.Man_Level = d.Man_Level and a.Man_Title = e.Man_Title and a.Man_Sex = f.Man_Sex and a.Man_Status = h.Man_Status and a.Man_ID = @Man_ID
		end
	end
end




GO

-- ----------------------------
-- Procedure structure for P_Get_SysManName
-- ----------------------------
DROP PROCEDURE [dbo].[P_Get_SysManName]
GO



create procedure [dbo].[P_Get_SysManName]
(
	@Man_ID nvarchar(6)
)
as
begin
	select Man_Name from T_Sys_Man where Man_ID = @Man_ID
end




GO

-- ----------------------------
-- Procedure structure for P_Get_SysMenu
-- ----------------------------
DROP PROCEDURE [dbo].[P_Get_SysMenu]
GO



create procedure [dbo].[P_Get_SysMenu]
(
	@M_ID smallint = null,
	@Get_Action nvarchar(10) = null
)
as
begin
	if (@Get_Action = 'full') or (@Get_Action is null)
	begin
		select a.*, b.Mg_Name	from T_Sys_Menu a, T_Sys_Menu_Group b where a.Mg_ID = b.Mg_ID order by a.M_ID
	end
	else if (@Get_Action = 'row')
	begin
		if @M_ID is not null 
		begin
		select a.*, b.Mg_Name	from T_Sys_Menu a, T_Sys_Menu_Group b where a.Mg_ID = b.Mg_ID and a.M_ID = @M_ID
		end
	end
end




GO

-- ----------------------------
-- Procedure structure for P_Get_SysMenuDetail
-- ----------------------------
DROP PROCEDURE [dbo].[P_Get_SysMenuDetail]
GO



create procedure [dbo].[P_Get_SysMenuDetail]
(
	@M_ID smallint = null,
	@Get_Action nvarchar(10) = null
)
as
begin
	if (@Get_Action = 'full') or (@Get_Action is null)
	begin
		select Auth_ID, M_ID from T_Sys_Menu_Detail where M_ID = @M_ID
	end
end




GO

-- ----------------------------
-- Procedure structure for P_Get_SysMenuGroup
-- ----------------------------
DROP PROCEDURE [dbo].[P_Get_SysMenuGroup]
GO



create procedure [dbo].[P_Get_SysMenuGroup]
(
	@Mg_ID smallint = null,
	@Get_Action nvarchar(10) = null
)
as
begin
	if (@Get_Action = 'full') or (@Get_Action is null)
	begin
		select * from T_Sys_Menu_Group order by Mg_ID
	end
	else if (@Get_Action = 'row')
	begin
		if @Mg_ID is not null 
		begin
		select * from T_Sys_Menu_Group where Mg_ID = @Mg_ID
		end
	end
end




GO

-- ----------------------------
-- Procedure structure for P_Get_SysOnline
-- ----------------------------
DROP PROCEDURE [dbo].[P_Get_SysOnline]
GO




create procedure [dbo].[P_Get_SysOnline]
(
	@Man_ID nvarchar(6) = null,
	@Get_Action nvarchar(10) = null
)
as
begin
	if (@Get_Action = 'full') or (@Get_Action is null)
	begin
		select a.*, b.Man_Name from T_Sys_Online a, T_Sys_Man b where a.Man_ID = b.Man_ID order by a.Man_ID
	end
	else if (@Get_Action = 'row')
	begin
		if @Man_ID is not null
		begin
			select a.*, b.Man_Name from T_Sys_Online a, T_Sys_Man b where a.Man_ID = b.Man_ID and a.Man_ID = @Man_ID and 1 != 1
		end
	end
end





GO

-- ----------------------------
-- Procedure structure for P_Get_SysRegister
-- ----------------------------
DROP PROCEDURE [dbo].[P_Get_SysRegister]
GO



create procedure [dbo].[P_Get_SysRegister]
(
	@Reg_ID smallint = null,
	@Reg_Number nvarchar(40) = null,
	@Get_Action nvarchar(10) = null
)
as
begin
	if (@Get_Action = 'full') or (@Get_Action is null)
	begin
		select a.*, b.Dept_Name from T_Sys_Register a, T_Sys_Dept b where a.Dept_ID = b.Dept_ID order by a.Reg_ID
	end
	else if (@Get_Action = 'row')
	begin
		if @Reg_ID is not null 
		begin
			select a.*, b.Dept_Name from T_Sys_Register a, T_Sys_Dept b where a.Dept_ID = b.Dept_ID and a.Reg_ID = @Reg_ID
		end
		else if @Reg_Number is not null
		begin
			select a.*, b.Dept_Name from T_Sys_Register a, T_Sys_Dept b where a.Dept_ID = b.Dept_ID and a.Reg_Number = @Reg_Number
		end
	end
end




GO

-- ----------------------------
-- Procedure structure for P_Get_SysRole
-- ----------------------------
DROP PROCEDURE [dbo].[P_Get_SysRole]
GO



create procedure [dbo].[P_Get_SysRole]
(
	@Role_ID smallint = null,
	@Get_Action nvarchar(10) = null
)
as
begin
	if (@Get_Action = 'full') or (@Get_Action is null)
	begin
		select * from T_Sys_Role order by Role_ID
	end
	else if (@Get_Action = 'row')
	begin
		if @Role_ID is not null 
		begin
			select * from T_Sys_Role where Role_ID = @Role_ID
		end
	end
end




GO

-- ----------------------------
-- Procedure structure for P_Get_SysRoleByMan
-- ----------------------------
DROP PROCEDURE [dbo].[P_Get_SysRoleByMan]
GO



create procedure [dbo].[P_Get_SysRoleByMan]
(
	@Set_Man nvarchar(6),
	@Man_ID nvarchar(6)
)
as
begin
	select d.Role_ID, d.Role_Name, case when e.Man_ID is null then 0 else 1 end Is_Select 
	from (select  distinct a.Role_ID, a.Role_Name  
	from T_Sys_Role a, T_Sys_Oper_Role b, T_Sys_Set_Role c where b.Role_ID = c.Role_ID and c.Set_Role = a.Role_ID and b.Man_ID = @Set_Man) d, T_Sys_Oper_Role e where d.Role_ID *= e.Role_ID and e.Man_ID = @Man_ID order by d.Role_ID
end




GO

-- ----------------------------
-- Procedure structure for P_Get_SysSystem
-- ----------------------------
DROP PROCEDURE [dbo].[P_Get_SysSystem]
GO



create procedure [dbo].[P_Get_SysSystem]
(
	@System_ID nvarchar(2) = null,
	@Get_Action nvarchar(10) = null
)
as
begin
	if (@Get_Action is null) or (@Get_Action = 'full')
	begin
		select * from T_Sys_System order by Crt_Date
	end
	else if (@Get_Action = 'row')
	begin
		if @System_ID is not null 
		begin
		select * from T_Sys_System where System_ID = @System_ID
		end
	end
end




GO

-- ----------------------------
-- Procedure structure for P_Get_TableByCode
-- ----------------------------
DROP PROCEDURE [dbo].[P_Get_TableByCode]
GO



create procedure [dbo].[P_Get_TableByCode]
(
	@DBID int,
	@TableCode nvarchar(40)
)
as
begin
	select * from T_DMS_TABLE where DBID = @DBID and lower(TableCode) = lower(@TableCode)
end




GO

-- ----------------------------
-- Procedure structure for P_Get_TableNoPmtByDB
-- ----------------------------
DROP PROCEDURE [dbo].[P_Get_TableNoPmtByDB]
GO


create procedure [dbo].[P_Get_TableNoPmtByDB]
(
	@DBID int
)
as
begin
	select TableCode, TableName + '(' + TableCode + ')' TableName from T_DMS_TABLE where DBID = @DBID and IsPmt = 0 order by tablename
end



GO

-- ----------------------------
-- Procedure structure for P_Insert_OperRole
-- ----------------------------
DROP PROCEDURE [dbo].[P_Insert_OperRole]
GO



create procedure [dbo].[P_Insert_OperRole]
(
	@Role_ID smallint,
	@Man_ID nvarchar(6)
)
as
begin
	delete from T_Sys_Oper_Role where Role_ID = @Role_ID and Man_ID = @Man_ID
	
	insert into T_Sys_Oper_Role (Role_ID, Man_ID) values (@Role_ID, @Man_ID)
end




GO

-- ----------------------------
-- Procedure structure for P_Insert_RoleMenu
-- ----------------------------
DROP PROCEDURE [dbo].[P_Insert_RoleMenu]
GO



create procedure [dbo].[P_Insert_RoleMenu]
(
	@Role_ID smallint,
	@M_ID smallint,
	@M_Auth int
)
as
begin	
	insert into T_Sys_Role_Menu (Role_ID, M_ID, M_Auth) values (@Role_ID, @M_ID, @M_Auth)
end




GO

-- ----------------------------
-- Procedure structure for P_Insert_RoleNav
-- ----------------------------
DROP PROCEDURE [dbo].[P_Insert_RoleNav]
GO



create procedure [dbo].[P_Insert_RoleNav]
(
	@Role_ID smallint,
	@Rib_Btn smallint
)
as
begin	
	insert into T_Sys_Role_Rib (Role_ID, Rib_Btn) values (@Role_ID, @Rib_Btn)
end




GO

-- ----------------------------
-- Procedure structure for P_Log_Column
-- ----------------------------
DROP PROCEDURE [dbo].[P_Log_Column]
GO


create procedure [dbo].[P_Log_Column]
(
	@DBID int,
	@TableCode nvarchar(40),
	@IsLog bit
)
as
begin
	
	if @IsLog = 1
	begin
		insert into H_DMS_Column (DBID, TableCode, ColumnID, ColumnName, ColumnCode, DataType, ColumnLength, ColumnPrecision, ColumnIdentity, ColumnNotNull, PreSerial, NowSerial, RecoDate) 
				select DBID, TableCode, ColumnID, ColumnName, ColumnCode, DataType, ColumnLength, ColumnPrecision, ColumnIdentity, ColumnNotNull, PreSerial, NowSerial, getdate() 
				from T_DMS_COLUMN where DBID = @DBID and TableCode = @TableCode 
	end
end



GO

-- ----------------------------
-- Procedure structure for P_Log_Index
-- ----------------------------
DROP PROCEDURE [dbo].[P_Log_Index]
GO


create procedure [dbo].[P_Log_Index]
(
	@DBID int,
	@TableCode nvarchar(40),
	@IsLog bit
)
as
begin	
	if @IsLog = 1
	begin
		declare @DBSerial int
	
		select @DBSerial = DBSerial from T_DMS_DB where DBID = @DBID
	
		insert into H_DMS_INDEX (DBID, TableCode, IndexID, IndexName, IndexCode, IsUnique, NowSerial) 
			select DBID, TableCode, IndexID, IndexName, IndexCode, IsUnique, @DBSerial from T_DMS_INDEX where DBID = @DBID and TableCode = @TableCode 
				
		insert into H_DMS_INDEX_COLUMN (DBID, TableCode, IndexCode, ColumnCode, NowSerial) 
			select DBID, TableCode, IndexCode, ColumnCode, @DBSerial from T_DMS_INDEX_COLUMN where DBID = @DBID and TableCode = @TableCode 
	end
end



GO

-- ----------------------------
-- Procedure structure for P_Log_Key
-- ----------------------------
DROP PROCEDURE [dbo].[P_Log_Key]
GO



create procedure [dbo].[P_Log_Key]
(
	@DBID int,
	@TableCode nvarchar(40),
	@IsLog bit
)
as
begin	
	if @IsLog = 1
	begin
		declare @DBSerial int
	
		select @DBSerial = DBSerial from T_DMS_DB where DBID = @DBID
	
		insert into H_DMS_Key (DBID, TableCode, KeyID, KeyName, KeyCode, IsPrimary, NowSerial) 
			select DBID, TableCode, KeyID, KeyName, KeyCode, IsPrimary, @DBSerial from H_DMS_Key where DBID = @DBID and TableCode = @TableCode 
				
		insert into H_DMS_KEY_COLUMN (DBID, TableCode, KeyCode, ColumnCode, NowSerial) 
			select DBID, TableCode, KeyCode, ColumnCode, @DBSerial from T_DMS_KEY_COLUMN where DBID = @DBID and TableCode = @TableCode 
	end
end



GO

-- ----------------------------
-- Procedure structure for P_Login_Success
-- ----------------------------
DROP PROCEDURE [dbo].[P_Login_Success]
GO



create procedure [dbo].[P_Login_Success]
(
	@Man_ID nvarchar(6),
	@Work_Date nvarchar(8)
)
as
begin
	update T_Sys_Man set Oper_Serial = 1, Pre_Work_Date = Work_Date, Work_Date = @Work_Date where Man_ID = @Man_ID
end




GO

-- ----------------------------
-- Procedure structure for P_Login_SysOnline
-- ----------------------------
DROP PROCEDURE [dbo].[P_Login_SysOnline]
GO




create procedure [dbo].[P_Login_SysOnline]
(
	@Man_ID nvarchar(6),
	@Reg_ID smallint
)
as
begin
	--insert into T_Sys_Online (Man_ID, Login_Date, Online_Date, Menu_Code, Reg_ID) values (@Man_ID, getdate(), getdate(), null, @Reg_ID)	
	
	insert into T_Sys_Log (Log_Date, Man_ID, Menu_Code, Log_Action, Log_Content) values (getdate(), @Man_ID, '0000', 1, '登录系统')
end





GO

-- ----------------------------
-- Procedure structure for P_LoginOut_SysOnline
-- ----------------------------
DROP PROCEDURE [dbo].[P_LoginOut_SysOnline]
GO




create procedure [dbo].[P_LoginOut_SysOnline]
(
	@Man_ID nvarchar(6),
	@Reg_ID smallint
)
as
begin
	--delete from T_Sys_Online where Man_ID = @Man_ID
	
	insert into T_Sys_Log (Log_Date, Man_ID, Menu_Code, Log_Action, Log_Content) values (getdate(), @Man_ID, '0000', 1, '登出系统')
end





GO

-- ----------------------------
-- Procedure structure for P_ResetMan
-- ----------------------------
DROP PROCEDURE [dbo].[P_ResetMan]
GO



create procedure [dbo].[P_ResetMan]
(
	@Man_ID nvarchar(6),
	@Oper_Password nvarchar(50)
)
as
begin
	update T_Sys_Man set Oper_Password = @Oper_Password where Man_ID = @Man_ID
end




GO

-- ----------------------------
-- Procedure structure for P_Save_Column
-- ----------------------------
DROP PROCEDURE [dbo].[P_Save_Column]
GO


create procedure [dbo].[P_Save_Column]
(
	@DBID int = null,
	@TableCode nvarchar(40) = null,
	@ColumnID int = null,
	@ColumnName nvarchar(40) = null,
	@ColumnCode nvarchar(40) = null,
	@DataType nvarchar(40) = null,
	@ColumnLength int = null,
	@ColumnPrecision int = null,
	@ColumnIdentity bit = null,
	@ColumnNotNull bit = null,
	@PreSerial int = null
)
as
begin
	insert into T_DMS_Column (DBID, TableCode, ColumnID, ColumnName, ColumnCode, DataType, ColumnLength, ColumnPrecision, ColumnIdentity, ColumnNotNull, PreSerial, NowSerial) 
			select @DBID, @TableCode, @ColumnID, @ColumnName, @ColumnCode, @DataType, @ColumnLength, @ColumnPrecision, @ColumnIdentity, @ColumnNotNull, DBSerial, DBSerial from T_DMS_DB where DBID = @DBID
end



GO

-- ----------------------------
-- Procedure structure for P_Save_ColumnTable
-- ----------------------------
DROP PROCEDURE [dbo].[P_Save_ColumnTable]
GO


create procedure [dbo].[P_Save_ColumnTable]
(
	@DBID int = null,
	@TableCode nvarchar(40) = null,
	@ColumnSerial int = null,
	@ColumnCode nvarchar(40) = null,
	@RelaTable nvarchar(40) = null,
	@RelaColumn nvarchar(40) = null,
	@DisplayColumn nvarchar(40) = null,
	@Prefix nvarchar(2) = null
)
as
begin
	insert into T_DMS_COLUMNTABLE (DBID, TableCode, ColumnSerial, ColumnCode, RelaTable, RelaColumn, DisplayColumn, Prefix) 
		values (@DBID, @TableCode, @ColumnSerial, @ColumnCode, @RelaTable, @RelaColumn, @DisplayColumn, @Prefix)
end



GO

-- ----------------------------
-- Procedure structure for P_Save_DB
-- ----------------------------
DROP PROCEDURE [dbo].[P_Save_DB]
GO

CREATE procedure [dbo].[P_Save_DB]
(
	@DBID int out,
	@DBName nvarchar(40) = null,
	@DBCode nvarchar(40) = null,
	@IsLog bit = null,
	@ACTION int
)
as
begin
	if @ACTION = 0
	begin
		if (@DBID is null) or (@DBID = 0)
		begin
			set @DBID = (select isnull(max(DBID), 0) + 1 from T_DMS_DB)
			
			insert into T_DMS_DB (DBID, DBName, DBCode, DBSerial) values (@DBID, @DBName, @DBCode, 1)
		end
	end
	else if @ACTION = 1
	begin
		if @IsLog = 1
		begin
			update T_DMS_DB set DBName = @DBName, DBCode = @DBCode, DBSerial = DBSerial + 1 where DBID = @DBID
		end
		else
		begin
			update T_DMS_DB set DBName = @DBName, DBCode = @DBCode where DBID = @DBID
		end
	end
	
	
end




GO

-- ----------------------------
-- Procedure structure for P_Save_Index
-- ----------------------------
DROP PROCEDURE [dbo].[P_Save_Index]
GO


create procedure [dbo].[P_Save_Index]
(
	@DBID int = null,
	@TableCode nvarchar(40) = null,
	@IndexID int = null,
	@IndexName nvarchar(40) = null,
	@IndexCode nvarchar(40) = null,
	@IsUnique bit = null
)
as
begin
	insert into T_DMS_INDEX (DBID, TableCode, IndexID, IndexName, IndexCode, IsUnique) 
			values (@DBID, @TableCode, @IndexID, @IndexName, @IndexCode, @IsUnique)	
end



GO

-- ----------------------------
-- Procedure structure for P_Save_IndexColumn
-- ----------------------------
DROP PROCEDURE [dbo].[P_Save_IndexColumn]
GO


create procedure [dbo].[P_Save_IndexColumn]
(
	@DBID int = null,
	@TableCode nvarchar(40) = null,
	@IndexCode nvarchar(40) = null,
	@ColumnCode nvarchar(40) = null
)
as
begin
	insert into T_DMS_INDEX_COLUMN (DBID, TableCode, IndexCode, ColumnCode) 
			values (@DBID, @TableCode, @IndexCode, @ColumnCode)	
end



GO

-- ----------------------------
-- Procedure structure for P_Save_Key
-- ----------------------------
DROP PROCEDURE [dbo].[P_Save_Key]
GO


create procedure [dbo].[P_Save_Key]
(
	@DBID int = null,
	@TableCode nvarchar(40) = null,
	@KeyID int = null,
	@KeyName nvarchar(40) = null,
	@KeyCode nvarchar(40) = null,
	@IsPrimary bit = null
)
as
begin
	insert into T_DMS_Key (DBID, TableCode, KeyID, KeyName, KeyCode, IsPrimary) 
			values (@DBID, @TableCode, @KeyID, @KeyName, @KeyCode, @IsPrimary)	
end



GO

-- ----------------------------
-- Procedure structure for P_Save_KeyColumn
-- ----------------------------
DROP PROCEDURE [dbo].[P_Save_KeyColumn]
GO


create procedure [dbo].[P_Save_KeyColumn]
(
	@DBID int = null,
	@TableCode nvarchar(40) = null,
	@KeyCode nvarchar(40) = null,
	@ColumnCode nvarchar(40) = null
)
as
begin
	insert into T_DMS_KEY_COLUMN (DBID, TableCode, KeyCode, ColumnCode) 
			values (@DBID, @TableCode, @KeyCode, @ColumnCode)	
end



GO

-- ----------------------------
-- Procedure structure for P_Save_SetSql
-- ----------------------------
DROP PROCEDURE [dbo].[P_Save_SetSql]
GO



create procedure [dbo].[P_Save_SetSql]
(
	@Sql_ID nvarchar(30),
	@Sql_Name nvarchar(50) = null,
	@Sql_Type smallint = null,
	@Sql_Text nvarchar(512) = null,
	@Sql_Main_Table nvarchar(40) = null,
	@Sql_Keys nvarchar(20) = null,
	@Sql_Order nvarchar(200) = null,
	@Sql_Group nvarchar(200) = null,
	@Sql_Having nvarchar(200) = null,
	@Sql_Dropdown nvarchar(60) = null,
	@Crt_Date datetime = null,
	@Sql_Page_Size smallint = null,
	@Sql_Page_Heigh smallint = null,
	@Sql_Page_Width smallint = null,
	@Sql_Orietation smallint = null,
	@Sql_Top_Margin smallint = null,
	@Sql_Bottom_Margin smallint = null,
	@Sql_Left_Margin smallint = null,
	@Sql_Right_Margin smallint = null,
	@Sql_Title nvarchar(80) = null,
	@Sql_Top_Font nvarchar(40) = null,
	@Sql_Font nvarchar(40) = null,
	@Sql_ISO nvarchar(30) = null,
	@Is_Print_Company bit = null,
	@Sql_Print_Set smallint = null,
	@Action smallint
)
as
begin
	if @Action = 0
	begin
		insert into T_Set_Sql
		(
			Sql_ID, Sql_Name, Sql_Type, Sql_Text, Sql_Main_Table, Sql_Keys, Sql_Order, Sql_Group, Sql_Having, Sql_Dropdown, Crt_Date, Sql_Page_Size, Sql_Page_Heigh, Sql_Page_Width, Sql_Orietation, Sql_Top_Margin, Sql_Bottom_Margin, Sql_Left_Margin, Sql_Right_Margin, Sql_Title, Sql_Top_Font, Sql_Font, Sql_ISO, Is_Print_Company, Sql_Print_Set
		) values (
			@Sql_ID, @Sql_Name, @Sql_Type, @Sql_Text, @Sql_Main_Table, @Sql_Keys, @Sql_Order, @Sql_Group, @Sql_Having, @Sql_Dropdown, @Crt_Date, @Sql_Page_Size, @Sql_Page_Heigh, @Sql_Page_Width, @Sql_Orietation, @Sql_Top_Margin, @Sql_Bottom_Margin, @Sql_Left_Margin, @Sql_Right_Margin, @Sql_Title, @Sql_Top_Font, @Sql_Font, @Sql_ISO, @Is_Print_Company, @Sql_Print_Set
		)
	end
	else if (@Action = 1)
	begin
		update T_Set_Sql set Sql_Name = @Sql_Name, 
			Sql_Type = @Sql_Type, 
			Sql_Text = @Sql_Text, 
			Sql_Main_Table = @Sql_Main_Table, 
			Sql_Keys = @Sql_Keys, 
			Sql_Order = @Sql_Order, 
			Sql_Group = @Sql_Group, 
			Sql_Having = @Sql_Having, 
			Sql_Dropdown = @Sql_Dropdown,
			Sql_Page_Size = @Sql_Page_Size, 
			Sql_Page_Heigh = @Sql_Page_Heigh, 
			Sql_Page_Width = @Sql_Page_Width, 
			Sql_Orietation = @Sql_Orietation, 
			Sql_Top_Margin = @Sql_Top_Margin, 
			Sql_Bottom_Margin = @Sql_Bottom_Margin, 
			Sql_Left_Margin = @Sql_Left_Margin, 
			Sql_Right_Margin = @Sql_Right_Margin, 
			Sql_Title = @Sql_Title, 
			Sql_Top_Font = @Sql_Top_Font, 
			Sql_Font = @Sql_Font, 
			Sql_ISO = @Sql_ISO, 
			Is_Print_Company = @Is_Print_Company, 
			Sql_Print_Set = @Sql_Print_Set 
		where Sql_ID = @Sql_ID
	end
	else
	begin
		delete from T_Set_Sql where Sql_ID = @Sql_ID
		
		delete from T_Set_Sql_Detail where Sql_ID = @Sql_ID 
	end
end




GO

-- ----------------------------
-- Procedure structure for P_Save_SetSqlDetail
-- ----------------------------
DROP PROCEDURE [dbo].[P_Save_SetSqlDetail]
GO



create procedure [dbo].[P_Save_SetSqlDetail]
(
	@Sql_ID nvarchar(30) = null,
	@Col_ID smallint = null,
	@Col_Name nvarchar(20) = null,
	@Col_Code nvarchar(20) = null,
	@Col_Base_Code nvarchar(20) = null,
	@Col_Type smallint = null,
	@Disp_Size smallint = null,
	@Disp_Order smallint = null,
	@Disp_Auth smallint = null,
	@Is_Visible bit = null,
	@Is_Print bit = null,
	@Is_Order bit = null,
	@Is_Lock bit = null,
	@Is_Alias bit = null,
	@Col_Foot smallint = null,
	@Col_Foot_Value nvarchar(30) = null,
	@Rela_Sql nvarchar(20) = null,
	@Col_Format nvarchar(30) = null,
	@Action smallint
)
as
begin
	if @Action = 0
	begin
		insert into T_Set_Sql_Detail
		(
			Sql_ID, Col_ID, Col_Name, Col_Code, Col_Base_Code, Col_Type, Disp_Size, Disp_Order, Disp_Auth, Is_Visible, Is_Print, Is_Order, Is_Lock, Is_Alias, Col_Foot, Col_Foot_Value, Rela_Sql, Col_Format
		) values (
			@Sql_ID, @Col_ID, @Col_Name, @Col_Code, @Col_Base_Code, @Col_Type, @Disp_Size, @Disp_Order, @Disp_Auth, @Is_Visible, @Is_Print, @Is_Order, @Is_Lock, @Is_Alias, @Col_Foot, @Col_Foot_Value, @Rela_Sql, @Col_Format
		)
	end
	else if (@Action = 1)
	begin
		update T_Set_Sql_Detail set 
			Col_Name = @Col_Name, 
			Col_Code = @Col_Code, 
			Col_Base_Code = @Col_Base_Code, 
			Col_Type = @Col_Type, 
			Disp_Size = @Disp_Size, 
			Disp_Order = @Disp_Order, 
			Disp_Auth = @Disp_Auth, 
			Is_Visible = @Is_Visible, 
			Is_Print = @Is_Print, 
			Is_Order = @Is_Order, 
			Is_Lock = @Is_Lock, 
			Is_Alias = @Is_Alias, 
			Col_Foot = @Col_Foot, 
			Col_Foot_Value = @Col_Foot_Value, 
			Rela_Sql = @Rela_Sql,
			Col_Format = @Col_Format 
		where Sql_ID = @Sql_ID and Col_ID = @Col_ID
	end
	else
	begin
		delete from T_Set_Sql_Detail where Sql_ID = @Sql_ID and Col_ID = @Col_ID
	end
end




GO

-- ----------------------------
-- Procedure structure for P_Save_SysCompany
-- ----------------------------
DROP PROCEDURE [dbo].[P_Save_SysCompany]
GO



create procedure [dbo].[P_Save_SysCompany]
(
	@Co_ID nvarchar(4),
	@Co_Name nvarchar(40) = null,
	@Crt_Date datetime = null,
	@Co_Address nvarchar(100) = null,
	@Co_Post nvarchar(10) = null,
	@Co_Tele nvarchar(30) = null,
	@Co_Fax nvarchar(30) = null,
	@Co_EMail nvarchar(32) = null,
	@Co_Man nvarchar(6) = null,
	@Sort_Order smallint = null,
	@Co_Status smallint = null,
	@Remark nvarchar(20) = null,
	@Action smallint
)
as
begin
	if @Action = 0
	begin
		insert into T_Sys_Company
		(
			Co_ID, Co_Name, Crt_Date, Co_Address, Co_Post, Co_Tele, Co_Fax, Co_EMail, Co_Man, Sort_Order, Co_Status, Remark
		) values (
			@Co_ID, @Co_Name, getdate(), @Co_Address, @Co_Post, @Co_Tele, @Co_Fax, @Co_EMail, @Co_Man, @Sort_Order, @Co_Status, @Remark
		)
	end
	else if (@Action = 1)
	begin
		update T_Sys_Company set Co_Name = @Co_Name, 
			Co_Address = @Co_Address, 
			Co_Post = @Co_Post, 
			Co_Tele = @Co_Tele, 
			Co_Fax = @Co_Fax, 
			Co_EMail = @Co_EMail, 
			Co_Man = @Co_Man, 
			Sort_Order = @Sort_Order, 
			Co_Status = @Co_Status,
			Remark = @Remark 
		where Co_ID = @Co_ID
	end
	else
	begin
		update T_Sys_Company set Co_Status = 1 where Co_ID = @Co_ID
		
		update T_Sys_Dept set Dept_Status = 1 where Co_ID = @Co_ID
		
		update T_Sys_Man Set Man_Status = 1 where Co_ID = @Co_ID
	end
end




GO

-- ----------------------------
-- Procedure structure for P_Save_SysDept
-- ----------------------------
DROP PROCEDURE [dbo].[P_Save_SysDept]
GO



create procedure [dbo].[P_Save_SysDept]
(
	@Dept_ID nvarchar(8),
	@Dept_Name nvarchar(30) = null,
	@Dept_Short nvarchar(4) = null,
	@Co_ID nvarchar(4) = null,
	@Dept_PID nvarchar(8) = null,
	@Crt_Date datetime = null,
	@Dept_Address nvarchar(100) = null,
	@Dept_Post nvarchar(10) = null,
	@Dept_Tele nvarchar(30) = null,
	@Dept_Fax nvarchar(30) = null,
	@Dept_EMail nvarchar(32) = null,
	@Dept_Man nvarchar(6) = null,
	@Dept_Level smallint = null,
	@Dept_Type smallint = null,
	@Dept_Depth smallint = null,
	@Sort_Order smallint = null,
	@Dept_Status smallint = null,
	@Auth_Dept nvarchar(8) = null,
	@Remark nvarchar(20) = null,
	@Action smallint
)
as
begin
	if @Action = 0
	begin
		insert into T_Sys_Dept
		(
			Dept_ID, Dept_Name, Dept_Short, Co_ID, Dept_PID, Crt_Date, Dept_Address, Dept_Post, Dept_Tele, Dept_Fax, Dept_EMail, Dept_Man, Dept_Level, Dept_Type, Dept_Depth, Sort_Order, Dept_Status, Auth_Dept, Remark
		) values (
			@Dept_ID, @Dept_Name, @Dept_Short, @Co_ID, @Dept_PID, getdate(), @Dept_Address, @Dept_Post, @Dept_Tele, @Dept_Fax, @Dept_EMail, @Dept_Man, @Dept_Level, @Dept_Type, @Dept_Depth, @Sort_Order, @Dept_Status, @Auth_Dept, @Remark
		)
		
		insert into T_Sys_Dept_Tree (Dept_PID, Dept_ID) select Dept_PID, @Dept_ID from T_Sys_Dept_Tree where Dept_ID = @Dept_PID
		
		insert into T_Sys_Dept_Tree (Dept_PID, Dept_ID) values (@Dept_ID, @Dept_ID)
	end
	else if (@Action = 1)
	begin
		update T_Sys_Dept set Dept_Name = @Dept_Name, Dept_Short = @Dept_Short, 
			Co_ID = @Co_ID, 
			Dept_PID = @Dept_PID, 
			Dept_Address = @Dept_Address, 
			Dept_Post = @Dept_Post, 
			Dept_Tele = @Dept_Tele, 
			Dept_Fax = @Dept_Fax, 
			Dept_EMail = @Dept_EMail, 
			Dept_Man = @Dept_Man, 
			Dept_Level = @Dept_Level, 
			Dept_Type = @Dept_Type, 
			Dept_Depth = @Dept_Depth, 
			Sort_Order = @Sort_Order, 
			Auth_Dept = @Auth_Dept 
		where Dept_ID = @Dept_ID
	end
	else
	begin
		update T_Sys_Dept set Dept_Status = 1 from T_Sys_Dept a, T_Sys_Dept_Tree b where a.Dept_ID = b.Dept_ID and b.Dept_PID = @Dept_ID
		
		update T_Sys_Man Set Man_Status = 1 from T_Sys_Man a, T_Sys_Dept_Tree b where a.Dept_ID = b.Dept_ID and b.Dept_PID = @Dept_ID
	end
end




GO

-- ----------------------------
-- Procedure structure for P_Save_SysLog
-- ----------------------------
DROP PROCEDURE [dbo].[P_Save_SysLog]
GO



create procedure [dbo].[P_Save_SysLog]
(
	@Log_ID int out,
	@Log_Date datetime = null,
	@Man_ID nvarchar(6) = null,
	@Menu_Code nvarchar(4) = null,
	@Log_Action smallint = null,
	@Log_Content nvarchar(100) = null,
	@Action smallint
)
as
begin
	if @Action = 0
	begin
		insert into T_Sys_Log (Log_Date, Man_ID, Menu_Code, Log_Action, Log_Content) values (getdate(), @Man_ID, @Menu_Code, @Log_Action, @Log_Content)
		select @Log_ID = @@IDENTITY
	end
	else if (@Action = 1)
	begin
		update T_Sys_Log set Log_Content = @Log_Content where Log_ID = @Log_ID
	end
	else
	begin
		delete from T_Sys_Log where Log_ID = @Log_ID
	end
end




GO

-- ----------------------------
-- Procedure structure for P_Save_SysMan
-- ----------------------------
DROP PROCEDURE [dbo].[P_Save_SysMan]
GO




create procedure [dbo].[P_Save_SysMan]
(
	@Man_ID nvarchar(6),
	@Man_Name nvarchar(10) = null,
	@Co_ID nvarchar(4) = null,
	@Dept_ID nvarchar(8) = null,
	@Man_Type smallint = null,
	@Crt_Date datetime = null,
	@Crt_Oper nvarchar(6) = null,
	@Man_Tele nvarchar(30) = null,
	@Man_EMail nvarchar(32) = null,
	@Man_Date datetime = null,
	@Man_Level smallint = null,
	@Man_Title smallint = null,
	@Man_Sex smallint = null,
	@Man_Status smallint = null,
	@Oper_Password nvarchar(50) = null,
	@Oper_Serial int = null,
	@Work_Date nvarchar(8) = null,
	@Auth_Bound smallint = null,
	@Is_Admin bit = null,
	@Remark nvarchar(20) = null,
	@Back_Cash decimal(15,2) = null,
	@Now_Cash decimal(15,2) = null,
	@Pre_Work_Date nvarchar(8) = null,
	@Is_Back bit = null,
	@Is_DayCash bit = null,
	@Action smallint
)
as
begin
	declare @Crt_Level smallint
	declare @Now_Level smallint
	
	set @Now_Level = @Man_Level
	
	set @Crt_Level = (select Man_Level from T_Sys_Man where Man_ID = @Crt_Oper)
		
	if (@Now_Level < @Crt_Level)
	begin
		set @Now_Level = @Crt_Level + 1
			
		if (@Now_Level > 4)
		begin
			set @Now_Level = 4
		end
	end
		
	if @Action = 0
	begin
		
		insert into T_Sys_Man
		(
			Man_ID, Man_Name, Co_ID, Dept_ID, Man_Type, Crt_Date, Crt_Oper, Man_Tele, Man_EMail, Man_Date, Man_Level, Man_Title, Man_Sex, Man_Status, Oper_Password, Oper_Serial, Work_Date, Auth_Bound, Is_Admin, Remark, Back_Cash, Now_Cash, Pre_Work_Date, Is_First, Is_Lock, Is_Back, Is_DayCash  
		) values (
			@Man_ID, @Man_Name, @Co_ID, @Dept_ID, @Man_Type, getdate(), @Crt_Oper, @Man_Tele, @Man_EMail, @Man_Date, @Now_Level, @Man_Title, @Man_Sex, @Man_Status, @Oper_Password, @Oper_Serial, @Work_Date, @Auth_Bound, @Is_Admin, @Remark, @Back_Cash, @Now_Cash, @Pre_Work_Date, 1, 0, @Is_Back, @Is_DayCash 
		)
	end
	else if (@Action = 1)
	begin
		update T_Sys_Man set Man_Name = @Man_Name, 
			Co_ID = @Co_ID, 
			Dept_ID = @Dept_ID, 
			Man_Type = @Man_Type, 
			Man_Tele = @Man_Tele, 
			Man_EMail = @Man_EMail, 
			Man_Date = @Man_Date, 
			Man_Level = @Now_Level, 
			Man_Title = @Man_Title, 
			Man_Sex = @Man_Sex, 
			Man_Status = @Man_Status, 
			Is_Admin = @Is_Admin, 
			Remark = @Remark,
			Is_DayCash = @Is_DayCash, 
			Is_Back = @Is_Back  
		where Man_ID = @Man_ID
	end
	else
	begin
		--0/正常 1/无效
		update T_Sys_Man set Man_Status = 1 where Man_ID = @Man_ID
	end
end





GO

-- ----------------------------
-- Procedure structure for P_Save_SysMenu
-- ----------------------------
DROP PROCEDURE [dbo].[P_Save_SysMenu]
GO



create procedure [dbo].[P_Save_SysMenu]
(
	@M_ID smallint,
	@M_Name nvarchar(40) = null,
	@M_PID smallint = null,
	@Mg_ID smallint = null,
	@M_Level smallint = null,
	@M_Disp smallint = null,
	@M_Auth int = null,
	@M_Tip nvarchar(120) = null,
	@M_Function nvarchar(64) = null,
	@Is_Line bit = null,
	@Is_Sub bit = null,
	@M_SID smallint = null,
	@M_Normal_Icon nvarchar(32) = null,
	@M_Hot_Icon nvarchar(32) = null,
	@M_Disable_Icon nvarchar(32) = null,
	@M_Icon_Index smallint = null,
	@Is_Base bit = null,
	@M_Code nvarchar(12) = null,
	@M_Status smallint = null,
	@M_Shortcut nvarchar(20) = null,
	@Action smallint
)
as
begin
	if @Action = 0
	begin
		insert into T_Sys_Menu
		(
			M_ID, M_Name, M_PID, Mg_ID, M_Level, M_Disp, M_Auth, M_Tip, M_Function, Is_Line, Is_Sub, M_SID, M_Normal_Icon, M_Hot_Icon, M_Disable_Icon, M_Icon_Index, Is_Base, M_Code, M_Status, M_Shortcut
		) values (
			@M_ID, @M_Name, @M_PID, @Mg_ID, @M_Level, @M_Disp, @M_Auth, @M_Tip, @M_Function, @Is_Line, @Is_Sub, @M_SID, @M_Normal_Icon, @M_Hot_Icon, @M_Disable_Icon, @M_Icon_Index, @Is_Base, @M_Code, @M_Status, @M_Shortcut
		)
	end
	else if (@Action = 1)
	begin
		update T_Sys_Menu set M_Name = @M_Name, 
			M_PID = @M_PID, 
			Mg_ID = @Mg_ID, 
			M_Level = @M_Level, 
			M_Disp = @M_Disp, 
			M_Auth = @M_Auth, 
			M_Tip = @M_Tip, 
			M_Function = @M_Function, 
			Is_Line = @Is_Line, 
			Is_Sub = @Is_Sub, 
			M_SID = @M_SID, 
			M_Normal_Icon = @M_Normal_Icon, 
			M_Hot_Icon = @M_Hot_Icon, 
			M_Disable_Icon = @M_Disable_Icon, 
			M_Icon_Index = @M_Icon_Index, 
			Is_Base = @Is_Base, 
			M_Code = @M_Code, 
			M_Status = @M_Status, 
			M_Shortcut = @M_Shortcut 
		where M_ID = @M_ID
	end
	else
	begin
		update T_Sys_Menu set M_Status = 1 where M_ID = @M_ID
	end
end




GO

-- ----------------------------
-- Procedure structure for P_Save_SysMenuDetail
-- ----------------------------
DROP PROCEDURE [dbo].[P_Save_SysMenuDetail]
GO



create procedure [dbo].[P_Save_SysMenuDetail]
(
	@Auth_ID smallint = null,
	@M_ID smallint = null,
	@Action smallint
)
as
begin
	if @Action = 0
	begin
		insert into T_Sys_Menu_Detail	(Auth_ID, M_ID) values (@Auth_ID, @M_ID)
	end
	else if (@Action = 1)
	begin
		update T_Sys_Menu_Detail set Auth_ID = @Auth_ID, 
			M_ID = @M_ID 
		where Auth_ID = @Auth_ID and M_ID = @M_ID
	end
	else
	begin
		delete from T_Sys_Menu_Detail where M_ID = @M_ID
	end
end




GO

-- ----------------------------
-- Procedure structure for P_Save_SysMenuGroup
-- ----------------------------
DROP PROCEDURE [dbo].[P_Save_SysMenuGroup]
GO



create procedure [dbo].[P_Save_SysMenuGroup]
(
	@Mg_ID smallint,
	@Mg_Name nvarchar(40) = null,
	@Mg_Tip nvarchar(80) = null,
	@Mg_Normal_Icon nvarchar(32) = null,
	@Mg_Hot_Icon nvarchar(32) = null,
	@Mg_Disable_Icon nvarchar(32) = null,
	@Mg_Icon_Index smallint = null,
	@Mg_Function nvarchar(64) = null,
	@Mg_Status smallint = null,
	@Mg_Order smallint = null,
	@Action smallint
)
as
begin
	if @Action = 0
	begin
		insert into T_Sys_Menu_Group
		(
			Mg_ID, Mg_Name, Mg_Tip, Mg_Normal_Icon, Mg_Hot_Icon, Mg_Disable_Icon, Mg_Icon_Index, Mg_Function, Mg_Status, Mg_Order
		) values (
			@Mg_ID, @Mg_Name, @Mg_Tip, @Mg_Normal_Icon, @Mg_Hot_Icon, @Mg_Disable_Icon, @Mg_Icon_Index, @Mg_Function, @Mg_Status, @Mg_Order
		)
	end
	else if (@Action = 1)
	begin
		update T_Sys_Menu_Group set Mg_Name = @Mg_Name, 
			Mg_Tip = @Mg_Tip, 
			Mg_Normal_Icon = @Mg_Normal_Icon, 
			Mg_Hot_Icon = @Mg_Hot_Icon, 
			Mg_Disable_Icon = @Mg_Disable_Icon, 
			Mg_Icon_Index = @Mg_Icon_Index, 
			Mg_Function = @Mg_Function, 
			Mg_Status = @Mg_Status, 
			Mg_Order = @Mg_Order 
		where Mg_ID = @Mg_ID
	end
	else
	begin
		update T_Sys_Menu_Group set Mg_Status = 1 where Mg_ID = @Mg_ID
		update T_Sys_Menu set M_Status = 1 where Mg_ID = @Mg_ID
	end
end




GO

-- ----------------------------
-- Procedure structure for P_Save_SysOnline
-- ----------------------------
DROP PROCEDURE [dbo].[P_Save_SysOnline]
GO



create procedure [dbo].[P_Save_SysOnline]
(
	@Man_ID nvarchar(6) = null,
	@Login_Date datetime = null,
	@Online_Date datetime = null,
	@Menu_Code nvarchar(4) = null,
	@Reg_ID smallint = null,
	@Action smallint
)
as
begin
	if @Action = 0
	begin
		insert into T_Sys_Online (Man_ID, Login_Date, Online_Date, Menu_Code, Reg_ID) values (@Man_ID, @Login_Date, @Online_Date, @Menu_Code, @Reg_ID)
	end
	else if (@Action = 1)
	begin
		update T_Sys_Online set 
			Online_Date = @Online_Date, 
			Menu_Code = @Menu_Code 
		where Man_ID = @Man_ID
	end
	else
	begin
		delete from T_Sys_Online where Man_ID = @Man_ID
	end
end




GO

-- ----------------------------
-- Procedure structure for P_Save_SysRegister
-- ----------------------------
DROP PROCEDURE [dbo].[P_Save_SysRegister]
GO



create procedure [dbo].[P_Save_SysRegister]
(
	@Reg_ID smallint out,
	@Cpu_Code nvarchar(40) = null,
	@Reg_Number nvarchar(40) = null,
	@Reg_Code nvarchar(40) = null,
	@Dept_ID nvarchar(8) = null,
	@Crt_Date datetime = null,
	@Action smallint
)
as
begin
	if @Action = 0
	begin
		insert into T_Sys_Register (Cpu_Code, Reg_Number, Reg_Code, Dept_ID, Crt_Date) values (	@Cpu_Code, @Reg_Number, @Reg_Code, @Dept_ID, getdate())
		select @Reg_ID = @@IDENTITY
	end
	else if (@Action = 1)
	begin
		update T_Sys_Register set 
			Reg_Number = @Reg_Number, 
			Reg_Code = @Reg_Code, 
			Dept_ID = @Dept_ID 
		where Cpu_Code = @Cpu_Code 
	end
	else
	begin
		delete from T_Sys_Register where Reg_ID = @Reg_ID
	end
end




GO

-- ----------------------------
-- Procedure structure for P_Save_SysRole
-- ----------------------------
DROP PROCEDURE [dbo].[P_Save_SysRole]
GO



CREATE procedure [dbo].[P_Save_SysRole]
(
	@Role_ID smallint out,
	@Role_Name nvarchar(16) = null,
	@Role_Desc nvarchar(60) = null,
	@Crt_Date datetime = null,
	@Role_Man nvarchar(6) = null,
	@Auth_Bound smallint = null,
	@Action smallint
)
as
begin
	if @Action = 0
	begin
		insert into T_Sys_Role (Role_Name, Role_Desc, Crt_Date, Role_Man, Auth_Bound) values (@Role_Name, '', getdate(), @Role_Man, @Auth_Bound)
		
		select @Role_ID = @@IDENTITY
	end
	else if (@Action = 1)
	begin
		update T_Sys_Role set Role_Name = @Role_Name, Auth_Bound = @Auth_Bound, Role_Desc = @Role_Desc where Role_ID = @Role_ID
	end
	else
	begin
		delete from T_Sys_Role where Role_ID = @Role_ID 
		
		delete from T_Sys_Role_Menu where Role_ID = @Role_ID
		
		delete from T_Sys_Oper_Role where Role_ID = @Role_ID
	end
end




GO

-- ----------------------------
-- Procedure structure for P_Save_SysSystem
-- ----------------------------
DROP PROCEDURE [dbo].[P_Save_SysSystem]
GO



create procedure [dbo].[P_Save_SysSystem]
(
	@System_ID nvarchar(2),
	@System_Name nvarchar(32) = null,
	@System_Version nvarchar(12) = null,
	@Crt_Date datetime = null,
	@Action smallint
)
as
begin
	if @Action = 0
	begin
		insert into T_Sys_System (System_ID, System_Name, System_Version, Crt_Date) values (@System_ID, @System_Name, @System_Version, getdate())
	end
	else if (@Action = 1)
	begin
		update T_Sys_System set System_Name = @System_Name, System_Version = @System_Version where System_ID = @System_ID
	end
	else
	begin
		delete from T_Sys_System where System_ID = @System_ID 
		--delete from T_Sys_Menu_Sys where System_ID = @System_ID
	end
end




GO

-- ----------------------------
-- Procedure structure for P_Save_Table
-- ----------------------------
DROP PROCEDURE [dbo].[P_Save_Table]
GO



CREATE procedure [dbo].[P_Save_Table]
(
	@DBID int = null,
	@TableCode nvarchar(40) = null,
	@TableName nvarchar(40) = null,
	@Comment nvarchar(400) = null,
	@IsPmt bit = null,
	@IsLog bit = null,
	@ACTION int
)
as
begin
	declare @DBSerial int
	
	select @DBSerial = DBSerial from T_DMS_DB where DBID = @DBID
	
	if @ACTION = 0
	begin
		insert into T_DMS_Table (DBID, TableName, TableCode, IsPmt, Comment, PreSerial, NowSerial) values (@DBID, @TableName, @TableCode, @IsPmt, @Comment, @DBSerial, @DBSerial)
		
		insert into H_DMS_Table (DBID, TableName, TableCode, IsPmt, Comment, PreSerial, NowSerial, RecoDate) select DBID, TableName, TableCode, IsPmt, Comment, PreSerial, NowSerial, getdate() 
			from T_DMS_Table where DBID = @DBID and TableCode = @TableCode 
	end
	else if @ACTION = 1
	begin
		if @IsLog = 1
		begin
			update T_DMS_Table set TableName = @TableName, IsPmt = @IsPmt, Comment = @Comment, PreSerial = @DBSerial, NowSerial = @DBSerial where DBID = @DBID and TableCode = @TableCode
			
			insert into H_DMS_Table (DBID, TableName, TableCode, IsPmt, Comment, PreSerial, NowSerial, RecoDate) select DBID, TableName, TableCode, IsPmt, Comment, PreSerial, NowSerial, getdate() 
				from T_DMS_Table where DBID = @DBID and TableCode = @TableCode 
		end
		else
		begin
			update T_DMS_Table set TableName = @TableName, IsPmt = @IsPmt, Comment = @Comment where DBID = @DBID and TableCode = @TableCode
		end
	end
		
end




GO

-- ----------------------------
-- Procedure structure for P_Save_TableSet
-- ----------------------------
DROP PROCEDURE [dbo].[P_Save_TableSet]
GO


create procedure [dbo].[P_Save_TableSet]
(
	@DBID int,
	@TableCode nvarchar(40),
	@TableSet nvarchar(1000)
)
as
begin
	delete from T_DMS_TABLESET where DBID = @DBID and TableCode = @TableCode
	
	insert into T_DMS_TABLESET(DBID, TableCode, TableSet) values (@DBID, @TableCode, @TableSet)
end



GO

-- ----------------------------
-- Procedure structure for P_Search_Man
-- ----------------------------
DROP PROCEDURE [dbo].[P_Search_Man]
GO



create procedure [dbo].[P_Search_Man]
(
	@Search nvarchar(8)
)
as
begin
	select Man_ID, Man_Name from T_Sys_Man a, T_Sys_Dept_Tree b where a.Man_Status = 0 and a.Dept_ID = b.Dept_ID and b.Dept_PID = @Search order by a.Man_ID
	
end




GO

-- ----------------------------
-- Procedure structure for P_Search_ManByDept
-- ----------------------------
DROP PROCEDURE [dbo].[P_Search_ManByDept]
GO



create procedure [dbo].[P_Search_ManByDept]
(
	@Dept_ID nvarchar(8)
)
as
begin
	select Man_ID, Man_Name from T_Sys_Man where Man_Status = 0 and Dept_ID = @Dept_ID order by Man_ID
	
end




GO

-- ----------------------------
-- Procedure structure for P_Search_SysMan
-- ----------------------------
DROP PROCEDURE [dbo].[P_Search_SysMan]
GO



create procedure [dbo].[P_Search_SysMan]
(
	@Search nvarchar(200) = ''
)
as
begin
	declare @Sql nvarchar(600)
	
	if (patindex('%Dept_PID%', @Search) > 0)
	begin
		set @Sql = 'select a.*, b.Co_Name, c.Dept_Name, g.Man_Type_Name, f.Man_Sex_Name, h.Man_Status_Name ' + 
			'from T_Sys_Man a, T_Sys_Company b, T_Sys_Dept c, T_Pmt_Man_Type g, T_Pmt_Man_Sex f, T_Pmt_Man_Status h, T_Sys_Dept_Tree i ' + 
			'where a.Co_ID = b.Co_ID and a.Dept_ID = c.Dept_ID and a.Man_Type = g.Man_Type and a.Man_Sex = f.Man_Sex and a.Man_Status = h.Man_Status and a.Dept_ID = i.Dept_ID ' + @Search + '	order by a.Man_ID'
	end
	else
	begin
		
		set @Sql = 'select a.*, b.Co_Name, c.Dept_Name, g.Man_Type_Name, f.Man_Sex_Name, h.Man_Status_Name ' + 
			'from T_Sys_Man a, T_Sys_Company b, T_Sys_Dept c, T_Pmt_Man_Type g, T_Pmt_Man_Sex f, T_Pmt_Man_Status h ' + 
			'where a.Co_ID = b.Co_ID and a.Dept_ID = c.Dept_ID and a.Man_Type = g.Man_Type and a.Man_Sex = f.Man_Sex and a.Man_Status = h.Man_Status ' + @Search + '	order by a.Man_ID'
	end
	
	exec(@Sql)
end




GO

-- ----------------------------
-- Procedure structure for P_Select_SysDept
-- ----------------------------
DROP PROCEDURE [dbo].[P_Select_SysDept]
GO



create procedure [dbo].[P_Select_SysDept]
(
	@Is_Valid bit
)
as
begin
	if @Is_Valid = 1
	begin
		select Dept_ID, Dept_ID + '-' + Dept_Name Dept_Name, Dept_PID from T_Sys_Dept where Dept_Status = 0 order by Dept_ID
	end
	else
	begin
		select Dept_ID, Dept_ID + '-' + Dept_Name Dept_Name, Dept_PID from T_Sys_Dept order by Dept_ID
	end
end




GO

-- ----------------------------
-- Procedure structure for P_Select_SysMan
-- ----------------------------
DROP PROCEDURE [dbo].[P_Select_SysMan]
GO



create procedure [dbo].[P_Select_SysMan]
(
	@Man_Name nvarchar(10) = null,
	@Dept_ID nvarchar(8) = null
)
as
begin
	declare @Sql nvarchar(300)
	
	if (@Man_Name is null)
	begin
		if (@Dept_ID is not null)
		begin
			select a.*, c.Dept_Name from T_Sys_Man a, T_Sys_Dept c where a.Dept_ID = c.Dept_ID and a.Man_Status = 0 and a.Dept_ID = @Dept_ID order by a.Man_ID
		end
	end
	else 
	begin
		if ((left(@Man_Name, 1) = '%') or (right(@Man_Name, 1) = '%'))
		begin
			select a.*, c.Dept_Name from T_Sys_Man a, T_Sys_Dept c where a.Dept_ID = c.Dept_ID and a.Man_Status = 0 and a.Man_Name like @Man_Name order by a.Dept_ID
		end
		else
		begin
			select a.*, c.Dept_Name from T_Sys_Man a, T_Sys_Dept c where a.Dept_ID = c.Dept_ID and a.Man_Status = 0 and a.Man_Name = @Man_Name order by a.Dept_ID
		end
	end
end




GO

-- ----------------------------
-- Procedure structure for P_SetLock
-- ----------------------------
DROP PROCEDURE [dbo].[P_SetLock]
GO



create procedure [dbo].[P_SetLock]
(
	@Man_ID nvarchar(6),
	@Is_Lock bit
)
as
begin
	update T_Sys_Man set Is_Lock = @Is_Lock where Man_ID = @Man_ID
end




GO

-- ----------------------------
-- Procedure structure for P_Valid_AuthMan
-- ----------------------------
DROP PROCEDURE [dbo].[P_Valid_AuthMan]
GO



create procedure [dbo].[P_Valid_AuthMan]
(
	@Man_ID nvarchar(6),
	@Password nvarchar(50)
)
as
begin
	select * from T_Sys_Man where Man_ID = @Man_ID and Oper_Password = @Password and Man_Status = 0	
end




GO

-- ----------------------------
-- Procedure structure for P_Valid_Login
-- ----------------------------
DROP PROCEDURE [dbo].[P_Valid_Login]
GO




CREATE procedure [dbo].[P_Valid_Login]
(
	@Man_ID nvarchar(6)
)
as
begin
	select a.*, b.Co_Status_Name from T_Sys_Company a, T_Pmt_Co_Status b, T_Sys_Man c where a.Co_Status = b.Co_Status and a.Co_ID = c.Co_ID and c.Man_ID = @Man_ID and a.Co_Status = 0
		
	select a.*, b.Co_Name, e.Dept_Level_Name, d.Dept_Type_Name, c.Dept_Status_Name
			from T_Sys_Dept a, T_Sys_Company b, T_Pmt_Dept_Level e, T_Pmt_Dept_Type d, T_Pmt_Dept_Status c, T_Sys_Man f  
			where a.Co_ID = b.Co_ID and a.Dept_Level = e.Dept_Level and a.Dept_Type = d.Dept_Type and a.Dept_Status = c.Dept_Status and a.Dept_ID = f.Dept_ID and a.Dept_Status = 0 and f.Man_ID = @Man_ID 
		
	select a.*, b.Co_Name, c.Dept_Name, g.Man_Type_Name, e.Man_Title_Name, d.Man_Level_Name, f.Man_Sex_Name, h.Man_Status_Name 
			from T_Sys_Man a, T_Sys_Company b, T_Sys_Dept c, T_Pmt_Man_Type g, T_Pmt_Man_Level d, T_Pmt_Man_Title e, T_Pmt_Man_Sex f, T_Pmt_Man_Status h 
			where a.Co_ID = b.Co_ID and a.Dept_ID = c.Dept_ID and a.Man_Type = g.Man_Type and a.Man_Level = d.Man_Level and a.Man_Title = e.Man_Title and a.Man_Sex = f.Man_Sex and a.Man_Status = h.Man_Status 
			and a.Man_ID = @Man_ID and a.Man_Status = 0 
			
	select a.Dept_Flow from T_SYs_Dept_Flow a, T_Sys_Man b where a.Dept_ID = b.Dept_ID and b.Man_ID = @Man_ID
end





GO

-- ----------------------------
-- Procedure structure for P_Valid_Password
-- ----------------------------
DROP PROCEDURE [dbo].[P_Valid_Password]
GO



create procedure [dbo].[P_Valid_Password]
(
	@Man_ID nvarchar(6),
	@Oper_Password nvarchar(50)
)
as
begin
	select count(*) Cnt from T_Sys_Man where Man_ID = @Man_ID and Oper_Password = @Oper_Password
end




GO

-- ----------------------------
-- Indexes structure for table T_DMS_COLUMN
-- ----------------------------
CREATE UNIQUE INDEX [I_DMS_COLUMN] ON [dbo].[T_DMS_COLUMN]
([DBID] ASC, [TableCode] ASC, [ColumnCode] ASC) 
WITH (IGNORE_DUP_KEY = ON)
GO

-- ----------------------------
-- Indexes structure for table T_DMS_COLUMNTABLE
-- ----------------------------
CREATE UNIQUE INDEX [I_DMS_COLUMNTABLE] ON [dbo].[T_DMS_COLUMNTABLE]
([DBID] ASC, [TableCode] ASC, [ColumnSerial] ASC) 
WITH (IGNORE_DUP_KEY = ON)
GO

-- ----------------------------
-- Indexes structure for table T_DMS_DB
-- ----------------------------
CREATE UNIQUE INDEX [I_DMS_DB] ON [dbo].[T_DMS_DB]
([DBCode] ASC) 
WITH (IGNORE_DUP_KEY = ON)
GO

-- ----------------------------
-- Primary Key structure for table T_DMS_DB
-- ----------------------------
ALTER TABLE [dbo].[T_DMS_DB] ADD PRIMARY KEY ([DBID])
GO

-- ----------------------------
-- Indexes structure for table T_DMS_INDEX
-- ----------------------------
CREATE UNIQUE INDEX [I_DMS_INDEX] ON [dbo].[T_DMS_INDEX]
([DBID] ASC, [TableCode] ASC, [IndexCode] ASC) 
WITH (IGNORE_DUP_KEY = ON)
GO

-- ----------------------------
-- Indexes structure for table T_DMS_INDEX_COLUMN
-- ----------------------------
CREATE UNIQUE INDEX [I_DMS_INDEX_COLUMN] ON [dbo].[T_DMS_INDEX_COLUMN]
([DBID] ASC, [TableCode] ASC, [IndexCode] ASC, [ColumnCode] ASC) 
WITH (IGNORE_DUP_KEY = ON)
GO

-- ----------------------------
-- Indexes structure for table T_DMS_KEY
-- ----------------------------
CREATE UNIQUE INDEX [I_DMS_KEY] ON [dbo].[T_DMS_KEY]
([DBID] ASC, [TableCode] ASC, [KeyCode] ASC) 
WITH (IGNORE_DUP_KEY = ON)
GO

-- ----------------------------
-- Indexes structure for table T_DMS_KEY_COLUMN
-- ----------------------------
CREATE UNIQUE INDEX [I_DMS_KEY_COLUMN] ON [dbo].[T_DMS_KEY_COLUMN]
([DBID] ASC, [TableCode] ASC, [KeyCode] ASC, [ColumnCode] ASC) 
WITH (IGNORE_DUP_KEY = ON)
GO

-- ----------------------------
-- Indexes structure for table T_DMS_TABLE
-- ----------------------------
CREATE UNIQUE INDEX [I_DMS_TABLE] ON [dbo].[T_DMS_TABLE]
([DBID] ASC, [TableCode] ASC) 
WITH (IGNORE_DUP_KEY = ON)
GO

-- ----------------------------
-- Indexes structure for table T_DMS_TABLESET
-- ----------------------------
CREATE UNIQUE INDEX [I_DMS_TABLESET] ON [dbo].[T_DMS_TABLESET]
([DBID] ASC, [TableCode] ASC) 
WITH (IGNORE_DUP_KEY = ON)
GO

-- ----------------------------
-- Indexes structure for table T_Pmt_Auth_Bound
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table T_Pmt_Auth_Bound
-- ----------------------------
ALTER TABLE [dbo].[T_Pmt_Auth_Bound] ADD PRIMARY KEY NONCLUSTERED ([Auth_Bound])
GO

-- ----------------------------
-- Indexes structure for table T_Pmt_Co_Status
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table T_Pmt_Co_Status
-- ----------------------------
ALTER TABLE [dbo].[T_Pmt_Co_Status] ADD PRIMARY KEY NONCLUSTERED ([Co_Status])
GO

-- ----------------------------
-- Indexes structure for table T_Pmt_Dept_Level
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table T_Pmt_Dept_Level
-- ----------------------------
ALTER TABLE [dbo].[T_Pmt_Dept_Level] ADD PRIMARY KEY NONCLUSTERED ([Dept_Level])
GO

-- ----------------------------
-- Indexes structure for table T_Pmt_Dept_Status
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table T_Pmt_Dept_Status
-- ----------------------------
ALTER TABLE [dbo].[T_Pmt_Dept_Status] ADD PRIMARY KEY NONCLUSTERED ([Dept_Status])
GO

-- ----------------------------
-- Indexes structure for table T_Pmt_Dept_Type
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table T_Pmt_Dept_Type
-- ----------------------------
ALTER TABLE [dbo].[T_Pmt_Dept_Type] ADD PRIMARY KEY NONCLUSTERED ([Dept_Type])
GO

-- ----------------------------
-- Indexes structure for table T_Pmt_Man_Level
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table T_Pmt_Man_Level
-- ----------------------------
ALTER TABLE [dbo].[T_Pmt_Man_Level] ADD PRIMARY KEY NONCLUSTERED ([Man_Level])
GO

-- ----------------------------
-- Indexes structure for table T_Pmt_Man_Sex
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table T_Pmt_Man_Sex
-- ----------------------------
ALTER TABLE [dbo].[T_Pmt_Man_Sex] ADD PRIMARY KEY NONCLUSTERED ([Man_Sex])
GO

-- ----------------------------
-- Indexes structure for table T_Pmt_Man_Status
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table T_Pmt_Man_Status
-- ----------------------------
ALTER TABLE [dbo].[T_Pmt_Man_Status] ADD PRIMARY KEY NONCLUSTERED ([Man_Status])
GO

-- ----------------------------
-- Indexes structure for table T_Pmt_Man_Title
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table T_Pmt_Man_Title
-- ----------------------------
ALTER TABLE [dbo].[T_Pmt_Man_Title] ADD PRIMARY KEY NONCLUSTERED ([Man_Title])
GO

-- ----------------------------
-- Indexes structure for table T_Pmt_Man_Type
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table T_Pmt_Man_Type
-- ----------------------------
ALTER TABLE [dbo].[T_Pmt_Man_Type] ADD PRIMARY KEY NONCLUSTERED ([Man_Type])
GO

-- ----------------------------
-- Indexes structure for table T_Pmt_Parameter_Table
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table T_Pmt_Parameter_Table
-- ----------------------------
ALTER TABLE [dbo].[T_Pmt_Parameter_Table] ADD PRIMARY KEY ([Parameter_ID])
GO

-- ----------------------------
-- Indexes structure for table T_Rib_Button
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table T_Rib_Button
-- ----------------------------
ALTER TABLE [dbo].[T_Rib_Button] ADD PRIMARY KEY ([Rib_Btn])
GO

-- ----------------------------
-- Indexes structure for table T_Rib_Panel
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table T_Rib_Panel
-- ----------------------------
ALTER TABLE [dbo].[T_Rib_Panel] ADD PRIMARY KEY ([Rib_Panel])
GO

-- ----------------------------
-- Indexes structure for table T_Rib_Tab
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table T_Rib_Tab
-- ----------------------------
ALTER TABLE [dbo].[T_Rib_Tab] ADD PRIMARY KEY ([Rib_Tab])
GO

-- ----------------------------
-- Indexes structure for table T_Set_Col_Foot
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table T_Set_Col_Foot
-- ----------------------------
ALTER TABLE [dbo].[T_Set_Col_Foot] ADD PRIMARY KEY NONCLUSTERED ([Col_Foot])
GO

-- ----------------------------
-- Indexes structure for table T_Set_Col_Type
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table T_Set_Col_Type
-- ----------------------------
ALTER TABLE [dbo].[T_Set_Col_Type] ADD PRIMARY KEY NONCLUSTERED ([Col_Type])
GO

-- ----------------------------
-- Indexes structure for table T_Set_Sql
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table T_Set_Sql
-- ----------------------------
ALTER TABLE [dbo].[T_Set_Sql] ADD PRIMARY KEY NONCLUSTERED ([Sql_ID])
GO

-- ----------------------------
-- Indexes structure for table T_Set_Sql_Detail
-- ----------------------------
CREATE UNIQUE INDEX [I_Set_Sql_Detail] ON [dbo].[T_Set_Sql_Detail]
([Sql_ID] ASC, [Col_ID] ASC) 
WITH (IGNORE_DUP_KEY = ON)
GO

-- ----------------------------
-- Indexes structure for table T_Set_Sql_Type
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table T_Set_Sql_Type
-- ----------------------------
ALTER TABLE [dbo].[T_Set_Sql_Type] ADD PRIMARY KEY NONCLUSTERED ([Sql_Type])
GO

-- ----------------------------
-- Indexes structure for table T_Sys_Company
-- ----------------------------
CREATE UNIQUE INDEX [I_Sys_Company_Unique] ON [dbo].[T_Sys_Company]
([Co_Name] ASC) 
WITH (IGNORE_DUP_KEY = ON)
GO

-- ----------------------------
-- Primary Key structure for table T_Sys_Company
-- ----------------------------
ALTER TABLE [dbo].[T_Sys_Company] ADD PRIMARY KEY NONCLUSTERED ([Co_ID])
GO

-- ----------------------------
-- Indexes structure for table T_Sys_Dept
-- ----------------------------
CREATE UNIQUE INDEX [I_Sys_Dept_Unique] ON [dbo].[T_Sys_Dept]
([Dept_Name] ASC, [Co_ID] ASC) 
WITH (IGNORE_DUP_KEY = ON)
GO

-- ----------------------------
-- Primary Key structure for table T_Sys_Dept
-- ----------------------------
ALTER TABLE [dbo].[T_Sys_Dept] ADD PRIMARY KEY NONCLUSTERED ([Dept_ID])
GO

-- ----------------------------
-- Indexes structure for table T_Sys_Dept_Flow
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table T_Sys_Dept_Flow
-- ----------------------------
ALTER TABLE [dbo].[T_Sys_Dept_Flow] ADD PRIMARY KEY NONCLUSTERED ([Dept_ID])
GO

-- ----------------------------
-- Indexes structure for table T_Sys_Dept_Tree
-- ----------------------------
CREATE UNIQUE INDEX [I_Sys_Dept_Tree] ON [dbo].[T_Sys_Dept_Tree]
([Dept_PID] ASC, [Dept_ID] ASC) 
WITH (IGNORE_DUP_KEY = ON)
GO

-- ----------------------------
-- Indexes structure for table T_Sys_Log
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table T_Sys_Log
-- ----------------------------
ALTER TABLE [dbo].[T_Sys_Log] ADD PRIMARY KEY NONCLUSTERED ([Log_ID])
GO

-- ----------------------------
-- Indexes structure for table T_Sys_Man
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table T_Sys_Man
-- ----------------------------
ALTER TABLE [dbo].[T_Sys_Man] ADD PRIMARY KEY ([Man_ID])
GO

-- ----------------------------
-- Indexes structure for table T_Sys_Menu
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table T_Sys_Menu
-- ----------------------------
ALTER TABLE [dbo].[T_Sys_Menu] ADD PRIMARY KEY NONCLUSTERED ([M_ID])
GO

-- ----------------------------
-- Indexes structure for table T_Sys_Menu_Auth
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table T_Sys_Menu_Auth
-- ----------------------------
ALTER TABLE [dbo].[T_Sys_Menu_Auth] ADD PRIMARY KEY NONCLUSTERED ([Auth_ID])
GO

-- ----------------------------
-- Indexes structure for table T_Sys_Menu_Detail
-- ----------------------------
CREATE UNIQUE INDEX [I_Menu_Detail_Unique] ON [dbo].[T_Sys_Menu_Detail]
([Auth_ID] ASC, [M_ID] ASC) 
WITH (IGNORE_DUP_KEY = ON)
GO

-- ----------------------------
-- Indexes structure for table T_Sys_Menu_Group
-- ----------------------------
CREATE UNIQUE INDEX [I_Menu_Group_Unique] ON [dbo].[T_Sys_Menu_Group]
([Mg_Name] ASC) 
WITH (IGNORE_DUP_KEY = ON)
GO

-- ----------------------------
-- Primary Key structure for table T_Sys_Menu_Group
-- ----------------------------
ALTER TABLE [dbo].[T_Sys_Menu_Group] ADD PRIMARY KEY NONCLUSTERED ([Mg_ID])
GO

-- ----------------------------
-- Indexes structure for table T_Sys_Menu_Sys
-- ----------------------------
CREATE UNIQUE INDEX [I_Sys_Menu_Sys_Unique] ON [dbo].[T_Sys_Menu_Sys]
([System_ID] ASC, [M_ID] ASC) 
WITH (IGNORE_DUP_KEY = ON)
GO

-- ----------------------------
-- Indexes structure for table T_Sys_Online
-- ----------------------------
CREATE UNIQUE INDEX [I_Sys_Online_Unique] ON [dbo].[T_Sys_Online]
([Man_ID] ASC) 
WITH (IGNORE_DUP_KEY = ON)
GO

-- ----------------------------
-- Indexes structure for table T_Sys_Oper_Role
-- ----------------------------
CREATE UNIQUE INDEX [I_Sys_Oper_Role_Unique] ON [dbo].[T_Sys_Oper_Role]
([Man_ID] ASC, [Role_ID] ASC) 
WITH (IGNORE_DUP_KEY = ON)
GO

-- ----------------------------
-- Indexes structure for table T_Sys_Register
-- ----------------------------
CREATE UNIQUE INDEX [I_Sys_Register] ON [dbo].[T_Sys_Register]
([Cpu_Code] ASC, [Dept_ID] ASC) 
WITH (IGNORE_DUP_KEY = ON)
GO

-- ----------------------------
-- Primary Key structure for table T_Sys_Register
-- ----------------------------
ALTER TABLE [dbo].[T_Sys_Register] ADD PRIMARY KEY ([Reg_ID])
GO

-- ----------------------------
-- Indexes structure for table T_Sys_Rib_Sys
-- ----------------------------
CREATE UNIQUE INDEX [I_Sys_Rib_Sys_Unique] ON [dbo].[T_Sys_Rib_Sys]
([System_ID] ASC, [Rib_Btn] ASC) 
WITH (IGNORE_DUP_KEY = ON)
GO

-- ----------------------------
-- Indexes structure for table T_Sys_Role
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table T_Sys_Role
-- ----------------------------
ALTER TABLE [dbo].[T_Sys_Role] ADD PRIMARY KEY NONCLUSTERED ([Role_ID])
GO

-- ----------------------------
-- Indexes structure for table T_Sys_Role_Menu
-- ----------------------------
CREATE UNIQUE INDEX [I_Sys_Role_Menu_Unique] ON [dbo].[T_Sys_Role_Menu]
([Role_ID] ASC, [M_ID] ASC) 
WITH (IGNORE_DUP_KEY = ON)
GO

-- ----------------------------
-- Indexes structure for table T_Sys_Role_Rib
-- ----------------------------
CREATE UNIQUE INDEX [I_Sys_Role_Rib_Unique] ON [dbo].[T_Sys_Role_Rib]
([Role_ID] ASC, [Rib_Btn] ASC) 
WITH (IGNORE_DUP_KEY = ON)
GO

-- ----------------------------
-- Indexes structure for table T_Sys_Set_Role
-- ----------------------------
CREATE UNIQUE INDEX [I_Sys_Set_Role] ON [dbo].[T_Sys_Set_Role]
([Role_ID] ASC, [Set_Role] ASC) 
WITH (IGNORE_DUP_KEY = ON)
GO

-- ----------------------------
-- Indexes structure for table T_Sys_System
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table T_Sys_System
-- ----------------------------
ALTER TABLE [dbo].[T_Sys_System] ADD PRIMARY KEY NONCLUSTERED ([System_ID])
GO
