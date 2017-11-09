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

Date: 2017-11-09 13:26:44
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
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'1', N'P_POTATO_SHOW', N'1', N'主键', N'PPSID', N'NUMBER', N'0', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 17:51:43.320')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'1', N'P_POTATO_SHOW', N'2', N'省份名称', N'PROVINCENAME', N'varchar(50)', N'50', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 17:51:43.320')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'1', N'P_POTATO_SHOW', N'3', N'城市名称', N'CITYNAME', N'varchar(50)', N'50', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 17:51:43.320')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'1', N'P_POTATO_SHOW', N'4', N'区县名称', N'COUNTYNAME', N'varchar(50)', N'50', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 17:51:43.320')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'1', N'P_POTATO_SHOW', N'5', N'设备名称', N'DEVNAME', N'varchar(50)', N'50', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 17:51:43.320')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'1', N'P_POTATO_SHOW', N'6', N'开始时间', N'STARTDATE', N'DATE', N'0', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 17:51:43.320')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'1', N'P_POTATO_SHOW', N'7', N'区县编号', N'SCCID', N'NUMBER', N'0', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 17:51:43.320')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'1', N'P_POTATO_SHOW', N'8', N'代', N'GENERATION', N'INT', N'0', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 17:51:43.320')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'1', N'P_POTATO_SHOW', N'9', N'次', N'TIMES', N'INT', N'0', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 17:51:43.320')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'1', N'P_POTATO_SHOW', N'10', N'经度', N'LONGITUDE', N'NUMBER(12,2)', N'12', N'2', N'0', N'0', N'1', N'1', N'2017-11-02 17:51:43.320')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'1', N'P_POTATO_SHOW', N'11', N'纬度', N'LATITUDE', N'NUMBER(12,2)', N'12', N'2', N'0', N'0', N'1', N'1', N'2017-11-02 17:51:43.320')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'1', N'P_POTATO_SHOW', N'12', N'积分', N'SCORE', N'DECIMAL(10,2)', N'10', N'2', N'0', N'0', N'1', N'1', N'2017-11-02 17:51:43.320')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'1', N'T_Bus_Test', N'1', N'测试编号', N'TestID', N'VARCHAR2(20)', N'20', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 17:51:43.367')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'1', N'T_Bus_Test', N'2', N'测试名称', N'TestName', N'VARCHAR2(10)', N'10', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 17:51:43.367')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'1', N'T_BUS_STU', N'1', N'学生编号', N'STUID', N'NUMBER', N'0', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 17:51:43.450')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'1', N'T_BUS_STU', N'2', N'学生名称', N'STUNAME', N'VARCHAR2(10)', N'10', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 17:51:43.450')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'1', N'T_BUS_STU', N'3', N'年龄', N'STUAGE', N'INT', N'0', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 17:51:43.450')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'1', N'T_BUS_STU', N'4', N'学历', N'EDUCATION', N'VARCHAR2(20)', N'20', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 17:51:43.450')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'1', N'T_BUS_STU', N'5', N'家庭住址', N'STUADDR', N'VARCHAR2(100)', N'100', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 17:51:43.450')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'1', N'T_BUS_STU', N'6', N'父亲', N'STUFARTHER', N'VARCHAR2(10)', N'10', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 17:51:43.450')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'1', N'T_BUS_STU', N'7', N'母亲', N'STUMOTHER', N'VARCHAR2(10)', N'10', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 17:51:43.450')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Sys_Company', N'1', N'公司编码', N'CoID', N'varchar(2)', N'2', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:53.327')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Sys_Company', N'2', N'公司名称', N'CoName', N'varchar(40)', N'40', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:53.327')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Sys_Company', N'3', N'公司简称', N'CoShort', N'varchar(6)', N'6', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:53.327')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Sys_Company', N'4', N'打印抬头', N'CoHeader', N'varchar(40)', N'40', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:53.327')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Sys_Company', N'5', N'排序序号', N'SortOrder', N'smallint', N'0', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:53.327')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Sys_Company', N'6', N'公司类型', N'CoType', N'varchar(1)', N'1', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:53.327')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Sys_Company', N'7', N'公司状态', N'CoStatus', N'varchar(1)', N'1', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:53.327')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Sys_Company', N'8', N'备用', N'Remark', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:53.327')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Sys_User_Dept', N'1', N'操作员编号', N'UserID', N'varchar(14)', N'14', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:53.390')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Sys_User_Dept', N'2', N'机构编号', N'DeptID', N'varchar(6)', N'6', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:53.390')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Sys_User_Dept', N'3', N'机构名称', N'DeptName', N'varchar(40)', N'40', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:53.390')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Sys_User', N'1', N'操作员编号', N'UserID', N'varchar(14)', N'14', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:53.527')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Sys_User', N'2', N'操作员姓名', N'UserName', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:53.527')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Sys_User', N'3', N'所属机构', N'DeptID', N'varchar(6)', N'6', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:53.527')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Sys_User', N'4', N'所属公司', N'CoID', N'varchar(2)', N'2', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:53.527')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Sys_User', N'5', N'创建日期', N'CrtDate', N'datetime', N'0', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:53.527')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Sys_User', N'6', N'操作员岗位', N'UserPost', N'varchar(2)', N'2', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:53.527')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Sys_User', N'7', N'操作员级别', N'UserLevel', N'varchar(2)', N'2', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:53.527')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Sys_User', N'8', N'操作员职务', N'UserTitle', N'varchar(2)', N'2', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:53.527')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Sys_User', N'9', N'操作员状态', N'UserStatus', N'varchar(1)', N'1', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:53.527')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Sys_User', N'10', N'登陆密码', N'UserPassword', N'varchar(50)', N'50', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:53.527')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Sys_User', N'11', N'业务流水号', N'UserSerial', N'int', N'0', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:53.527')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Sys_User', N'12', N'当前工作日期', N'WorkDate', N'varchar(8)', N'8', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:53.527')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Sys_User', N'13', N'上一有效工作日', N'PreWorkDate', N'varchar(8)', N'8', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:53.527')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Sys_User', N'14', N'数据权限范围', N'AuthBound', N'varchar(1)', N'1', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:53.527')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Sys_User', N'15', N'是否系统管理员', N'IsAdmin', N'bit', N'0', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:53.527')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Sys_User', N'16', N'是否锁定', N'IsLock', N'bit', N'0', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:53.527')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Sys_User', N'17', N'是否首次登录', N'IsFirst', N'bit', N'0', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:53.527')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Sys_User', N'18', N'输错密码次数', N'ErrorPassword', N'smallint', N'0', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:53.527')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Sys_User', N'19', N'操作员电话', N'UserTele', N'varchar(32)', N'32', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:53.527')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Sys_User', N'20', N'操作员电子邮件', N'UserEmail', N'varchar(32)', N'32', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:53.527')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Sys_User', N'21', N'密码最后修改日期', N'ModifyPassword', N'datetime', N'0', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:53.527')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Sys_User', N'22', N'备用', N'Remark', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:53.527')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Db_Column', N'1', N'表编号', N'TableID', N'varchar(6)', N'6', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:53.603')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Db_Column', N'2', N'字段编号', N'ColumnSerail', N'smallint', N'0', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:53.603')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Db_Column', N'3', N'字段名称', N'CloumnName', N'varchar(40)', N'40', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:53.603')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Db_Column', N'4', N'字段代码', N'ColumnCode', N'varchar(40)', N'40', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:53.603')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Db_Column', N'5', N'数据类型', N'ColType', N'varchar(1)', N'1', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:53.603')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Db_Column', N'6', N'字段长度', N'ColumnLength', N'smallint', N'0', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:53.603')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Db_Column', N'7', N'字段精度', N'ColumnPercision', N'smallint', N'0', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:53.603')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Db_Column', N'8', N'是否为主键', N'IsKey', N'bit', N'0', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:53.603')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Db_Column', N'9', N'是否为空', N'IsNull', N'bit', N'0', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:53.603')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Db_Table', N'1', N'表编号', N'TableID', N'varchar(6)', N'6', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:53.663')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Db_Table', N'2', N'表名称', N'TableName', N'varchar(40)', N'40', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:53.663')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Db_Table', N'3', N'表代码', N'TableCode', N'varchar(40)', N'40', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:53.663')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Db_Table', N'4', N'主键字段', N'TableKey', N'varchar(50)', N'50', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:53.663')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Db_Table', N'5', N'名称字段', N'TableKeyName', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:53.663')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Sys_Dept', N'1', N'机构编号', N'DeptID', N'varchar(6)', N'6', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:53.747')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Sys_Dept', N'2', N'机构名称', N'DeptName', N'varchar(40)', N'40', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:53.747')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Sys_Dept', N'3', N'机构简称', N'DeptShort', N'varchar(6)', N'6', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:53.747')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Sys_Dept', N'4', N'所属公司', N'CoID', N'varchar(2)', N'2', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:53.747')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Sys_Dept', N'5', N'上级机构编号', N'DeptPID', N'varchar(6)', N'6', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:53.747')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Sys_Dept', N'6', N'城市代码', N'CityCode', N'varchar(6)', N'6', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:53.747')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Sys_Dept', N'7', N'机构级别', N'DeptLevel', N'varchar(2)', N'2', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:53.747')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Sys_Dept', N'8', N'机构类别', N'DeptType', N'varchar(2)', N'2', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:53.747')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Sys_Dept', N'9', N'机构层次深度', N'DeptDepth', N'int', N'0', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:53.747')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Sys_Dept', N'10', N'排序序号', N'SortOrder', N'int', N'0', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:53.747')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Sys_Dept', N'11', N'机构状态', N'DeptStatus', N'varchar(1)', N'1', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:53.747')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Sys_Dept', N'12', N'备用', N'Remark', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:53.747')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Sys_Dept_Tree', N'1', N'父机构编号', N'DeptPID', N'varchar(6)', N'6', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:53.793')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Sys_Dept_Tree', N'2', N'子机构编号', N'DeptID', N'varchar(6)', N'6', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:53.793')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Sys_Dept_Tree', N'3', N'子机构名称', N'DeptName', N'varchar(40)', N'40', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:53.793')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Sys_Set', N'1', N'参数编码', N'SetCode', N'varchar(30)', N'30', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:53.850')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Sys_Set', N'2', N'参数名称', N'SetName', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:53.850')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Sys_Set', N'3', N'参数值', N'SetValue', N'varchar(64)', N'64', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:53.850')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Sys_Set', N'4', N'是否可修改', N'IsModify', N'bit', N'0', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:53.850')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Sys_Set', N'5', N'参数类型', N'ColType', N'varchar(1)', N'1', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:53.850')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Sys_Set', N'6', N'是否可为个人参数', N'IsUser', N'bit', N'0', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:53.850')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Sys_User_Set', N'1', N'用户编号', N'UserID', N'varchar(14)', N'14', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:53.897')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Sys_User_Set', N'2', N'参数编码', N'SetCode', N'varchar(30)', N'30', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:53.897')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Sys_User_Set', N'3', N'参数值', N'SetValue', N'varchar(64)', N'64', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:53.897')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Sys_User_Set', N'4', N'参数类型', N'ColType', N'varchar(1)', N'1', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:53.897')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Sys_Serial', N'1', N'序号编号', N'SerialID', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:53.940')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Sys_Serial', N'2', N'序号当前值', N'SerialValue', N'int', N'0', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:53.940')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Sys_Menu_Group', N'1', N'菜单组编号', N'MgID', N'smallint', N'0', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:54.163')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Sys_Menu_Group', N'2', N'菜单组名称', N'MgName', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:54.163')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Sys_Menu_Group', N'3', N'菜单组描述', N'MgTip', N'varchar(40)', N'40', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:54.163')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Sys_Menu_Group', N'4', N'正常状态显示图标', N'MgNormalIcon', N'varchar(32)', N'32', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:54.163')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Sys_Menu_Group', N'5', N'激活状态显示图标', N'MgHotIcon', N'varchar(32)', N'32', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:54.163')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Sys_Menu_Group', N'6', N'无效状态显示图标', N'MgDisableIcon', N'varchar(32)', N'32', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:54.163')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Sys_Menu_Group', N'7', N'菜单组功能函数接口', N'MgFunction', N'varchar(64)', N'64', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:54.163')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Sys_Menu_Group', N'8', N'菜单组状态', N'MgStatus', N'varchar(1)', N'1', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:54.163')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Sys_Menu_Group', N'9', N'排序', N'MgOrder', N'smallint', N'0', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:54.163')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Sys_Menu', N'1', N'菜单编号', N'MID', N'smallint', N'0', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:54.430')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Sys_Menu', N'2', N'菜单名称', N'MName', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:54.430')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Sys_Menu', N'3', N'父菜单编号', N'MPID', N'smallint', N'0', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:54.430')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Sys_Menu', N'4', N'菜单组编号', N'MgID', N'smallint', N'0', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:54.430')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Sys_Menu', N'5', N'菜单层次', N'MDepth', N'smallint', N'0', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:54.430')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Sys_Menu', N'6', N'显示顺序', N'MDisp', N'smallint', N'0', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:54.430')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Sys_Menu', N'7', N'菜单权限定义', N'MAuth', N'int', N'0', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:54.430')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Sys_Menu', N'8', N'菜单功能描述', N'MTip', N'varchar(60)', N'60', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:54.430')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Sys_Menu', N'9', N'菜单功能函数接口', N'MFunction', N'varchar(64)', N'64', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:54.430')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Sys_Menu', N'10', N'菜单下显示分割线', N'IsLine', N'bit', N'0', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:54.430')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Sys_Menu', N'11', N'是否存在子菜单', N'IsSub', N'bit', N'0', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:54.430')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Sys_Menu', N'12', N'第一个子菜单编号', N'MSID', N'smallint', N'0', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:54.430')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Sys_Menu', N'13', N'正常状态显示图标', N'MNormalIcon', N'varchar(32)', N'32', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:54.430')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Sys_Menu', N'14', N'激活状态显示图标', N'MHotIcon', N'varchar(32)', N'32', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:54.430')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Sys_Menu', N'15', N'无效状态显示图标', N'MDisableIcon', N'varchar(32)', N'32', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:54.430')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Sys_Menu', N'16', N'基础菜单标志', N'IsBase', N'bit', N'0', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:54.430')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Sys_Menu', N'17', N'菜单功能代码', N'MCode', N'varchar(12)', N'12', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:54.430')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Sys_Menu', N'18', N'菜单状态', N'MStatus', N'varchar(1)', N'1', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:54.430')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Sys_Menu', N'19', N'菜单快捷方式', N'MShortcut', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:54.430')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Sys_Menu', N'20', N'是否直接窗口打开', N'IsTab', N'bit', N'0', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:54.430')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Sys_Menu', N'21', N'是否单机版', N'IsMutil', N'bit', N'0', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:54.430')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Sys_Menu_Detail', N'1', N'权限类型编号', N'AuthID', N'smallint', N'0', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:54.480')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Sys_Menu_Detail', N'2', N'菜单编号', N'MID', N'smallint', N'0', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:54.480')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Sys_Menu_Auth', N'1', N'权限类型编号', N'AuthID', N'smallint', N'0', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:54.530')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Sys_Menu_Auth', N'2', N'权限类型名称', N'AuthName', N'varchar(10)', N'10', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:54.530')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Sys_Menu_Auth', N'3', N'权限类型编码', N'AuthCode', N'varchar(10)', N'10', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:54.530')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Sys_User_Role', N'1', N'操作员编号', N'UserID', N'varchar(14)', N'14', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:54.577')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Sys_User_Role', N'2', N'角色编号', N'RoleID', N'smallint', N'0', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:54.577')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Sys_Role_Menu', N'1', N'角色编号', N'RoleID', N'smallint', N'0', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:54.627')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Sys_Role_Menu', N'2', N'菜单编号', N'MID', N'smallint', N'0', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:54.627')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Sys_Role_Menu', N'3', N'权限定义', N'MAuth', N'int', N'0', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:54.627')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Sys_Role_Rib', N'1', N'角色编号', N'RoleID', N'smallint', N'0', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:54.687')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Sys_Role_Rib', N'2', N'导航按钮编号', N'RibBtn', N'int', N'0', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:54.687')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Sys_Role_Detail', N'1', N'权限类型编号', N'AuthID', N'smallint', N'0', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:54.737')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Sys_Role_Detail', N'2', N'菜单编号', N'MID', N'smallint', N'0', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:54.737')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Sys_Role_Detail', N'3', N'角色编号', N'RoleID', N'smallint', N'0', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:54.737')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Sys_Role', N'1', N'角色编号', N'RoleID', N'smallint', N'0', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:54.783')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Sys_Role', N'2', N'角色名称', N'RoleName', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:54.783')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Pmt_Tran_Action', N'1', N'交易动作编号', N'TranAction', N'varchar(2)', N'2', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:54.823')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Pmt_Tran_Action', N'2', N'交易动作名称', N'TranActionName', N'varchar(10)', N'10', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:54.823')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Pmt_Co_Status', N'1', N'公司状态编号', N'CoStatus', N'varchar(1)', N'1', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:54.860')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Pmt_Co_Status', N'2', N'公司状态名称', N'CoStatusName', N'varchar(10)', N'10', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:54.860')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Bas_Province', N'1', N'省份编号', N'ProvinceID', N'varchar(6)', N'6', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:54.900')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Bas_Province', N'2', N'省份', N'ProvinceName', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:54.900')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Bas_City', N'1', N'城市编号', N'CityID', N'varchar(6)', N'6', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:54.950')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Bas_City', N'2', N'城市名称', N'CityName', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:54.950')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Bas_City', N'3', N'所属省份', N'ProvinceID', N'varchar(6)', N'6', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:54.950')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Bas_City', N'4', N'城市编码', N'CityCode', N'varchar(2)', N'2', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:54.950')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Bas_Area', N'1', N'区编号', N'AreaID', N'varchar(6)', N'6', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:54.997')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Bas_Area', N'2', N'区名称', N'AreaName', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:54.997')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Bas_Area', N'3', N'所属城市', N'CityID', N'varchar(6)', N'6', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:54.997')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Bas_Area', N'4', N'区县编号', N'AreaCode', N'varchar(4)', N'4', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:54.997')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Bas_Town', N'1', N'镇编号', N'TownID', N'varchar(6)', N'6', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:55.047')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Bas_Town', N'2', N'镇名称', N'TownName', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:55.047')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Bas_Town', N'3', N'所属区', N'AreaID', N'varchar(6)', N'6', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:55.047')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Bas_Village', N'1', N'村编号', N'VillageID', N'varchar(8)', N'8', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:55.090')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Bas_Village', N'2', N'村名称', N'VillageName', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:55.090')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Bas_Village', N'3', N'所属镇', N'TownID', N'varchar(6)', N'6', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:55.090')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Bus_Base', N'1', N'基地编号', N'BaseID', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:55.290')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Bus_Base', N'2', N'基地名称', N'BaseName', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:55.290')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Bus_Base', N'3', N'所属城市', N'CityID', N'varchar(6)', N'6', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:55.290')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Bus_Base', N'4', N'所属区县', N'AreaID', N'varchar(6)', N'6', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:55.290')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Bus_Base', N'5', N'所属乡镇', N'TownID', N'varchar(6)', N'6', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:55.290')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Bus_Base', N'6', N'所属村域', N'VillageID', N'varchar(8)', N'8', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:55.290')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Bus_Base', N'7', N'详细地址', N'AddrInfo', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:55.290')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Bus_Base', N'8', N'营业执照', N'BusiLic', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:55.290')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Bus_Base', N'9', N'经纬度', N'BaseCoord', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:55.290')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Bus_Base', N'10', N'基地联系方式', N'BaseTele', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:55.290')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Bus_Base', N'11', N'网络条件', N'NetStatus', N'varchar(2)', N'2', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:55.290')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Bus_Base', N'12', N'经营主体', N'BusiStatus', N'varchar(2)', N'2', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:55.290')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Bus_Base', N'13', N'生产资质', N'PrdStatus', N'varchar(2)', N'2', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:55.290')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Bus_Base', N'14', N'种植面积', N'PlanArea', N'decimal(10,2)', N'10', N'2', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:55.290')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Bus_Base', N'15', N'去年种植面积', N'LastArea', N'decimal(10,2)', N'10', N'2', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:55.290')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Bus_Base', N'16', N'投产面积', N'PrdArea', N'decimal(10,2)', N'10', N'2', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:55.290')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Bus_Base', N'17', N'新建果园面积', N'NewArea', N'decimal(10,2)', N'10', N'2', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:55.290')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Bus_Base', N'18', N'主要种植品种和授粉方式', N'BreedPoll', N'varchar(100)', N'100', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:55.290')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Bus_Base', N'19', N'种植地形', N'PlanLand', N'varchar(2)', N'2', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:55.290')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Bus_Base', N'20', N'定植方式', N'PlanMethod', N'varchar(2)', N'2', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:55.290')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Bus_Base', N'21', N'建园时间', N'BuildDate', N'datetime', N'0', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:55.290')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Bus_Base', N'22', N'平均苗龄', N'AvgAge', N'decimal(5,2)', N'5', N'2', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:55.290')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Bus_Base', N'23', N'亩产量', N'PerOut', N'decimal(10,2)', N'10', N'2', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:55.290')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Bus_Base', N'24', N'亩产量去年同期数', N'LastPerOut', N'decimal(10,2)', N'10', N'2', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:55.290')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Bus_Base', N'25', N'年产量', N'YearOut', N'decimal(10,2)', N'10', N'2', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:55.290')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Bus_Base', N'26', N'年产量去年同期数', N'LastYearOut', N'decimal(10,2)', N'10', N'2', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:55.290')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Bus_Base', N'27', N'年批次数', N'YearBatch', N'int', N'0', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:55.290')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Bus_Base', N'28', N'年产值', N'YearValue', N'decimal(10,2)', N'10', N'2', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:55.290')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Bus_Base', N'29', N'年销售总量', N'YearQty', N'decimal(10,2)', N'10', N'2', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:55.290')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Bus_Base', N'30', N'大果占比', N'BigPercent', N'decimal(5,2)', N'5', N'2', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:55.290')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Bus_Base', N'31', N'毛果占比', N'ComosePercent', N'decimal(5,2)', N'5', N'2', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:55.290')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Bus_Base', N'32', N'负责人姓名', N'ChargeName', N'varchar(10)', N'10', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:55.290')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Bus_Base', N'33', N'籍贯', N'NativePlace', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:55.290')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Bus_Base', N'34', N'年龄', N'ChargeAge', N'int', N'0', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:55.290')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Bus_Base', N'35', N'负责人联系方式', N'ChargeTele', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:55.290')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Bus_Base', N'36', N'学历', N'DegreeType', N'varchar(2)', N'2', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:55.290')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Bus_Base', N'37', N'身份证号', N'CardCode', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:55.290')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Bus_Base', N'38', N'管理者人数', N'ManagerCount', N'int', N'0', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:55.290')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Bus_Base', N'39', N'固定工人数', N'WorkerCount', N'int', N'0', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:55.290')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Bus_Base', N'40', N'年使用临时工数', N'TempCount', N'int', N'0', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:55.290')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Bus_Base', N'41', N'固定工负责工作', N'WorkerDesc', N'varchar(100)', N'100', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:55.290')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Bus_Base', N'42', N'临时工负责工作', N'TempDesc', N'varchar(100)', N'100', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:55.290')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Bus_Base', N'43', N'填写人', N'TranUser', N'varchar(14)', N'14', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:55.290')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Bus_Base', N'44', N'填写人姓名', N'TranUserName', N'varchar(10)', N'10', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:55.290')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Bus_Base', N'45', N'填写时间', N'TranDate', N'datetime', N'0', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:55.290')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Pmt_Net_Status', N'1', N'网络条件编号', N'NetStatus', N'varchar(2)', N'2', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:55.340')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Pmt_Net_Status', N'2', N'网络条件名称', N'NetStatusName', N'varchar(10)', N'10', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:55.340')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Pmt_Busi_Status', N'1', N'经营主体编号', N'BusiStatus', N'varchar(2)', N'2', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:55.380')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Pmt_Busi_Status', N'2', N'经营主体名称', N'BusiStatusName', N'varchar(10)', N'10', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:55.380')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Pmt_Prd_Status', N'1', N'生产资质编号', N'PrdStatus', N'varchar(2)', N'2', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:55.420')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Pmt_Prd_Status', N'2', N'生产资质名称', N'PrdStatusName', N'varchar(10)', N'10', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:55.420')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Pmt_Plan_Land', N'1', N'种植地形编号', N'PlanLand', N'varchar(2)', N'2', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:55.460')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Pmt_Plan_Land', N'2', N'种植地形名称', N'PlanLandName', N'varchar(10)', N'10', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:55.460')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Pmt_Plan_Method', N'1', N'定植方式编号', N'PlanMethod', N'varchar(2)', N'2', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:55.500')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Pmt_Plan_Method', N'2', N'定植方式名称', N'PlanMethodName', N'varchar(10)', N'10', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:55.500')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Pmt_Degree_Type', N'1', N'学历编号', N'DegreeType', N'varchar(2)', N'2', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:55.540')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Pmt_Degree_Type', N'2', N'学历名称', N'DegreeTypeName', N'varchar(10)', N'10', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:55.540')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Info_Dev', N'1', N'设备编号', N'DevID', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:55.657')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Info_Dev', N'2', N'设备名称', N'DevName', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:55.657')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Info_Dev', N'3', N'基地编号', N'BaseID', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:55.657')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Info_Dev', N'4', N'基地名称', N'BaseName', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:55.657')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Info_Dev', N'5', N'安装时间', N'InstallDate', N'datetime', N'0', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:55.657')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Info_Dev', N'6', N'安装人员', N'InstallUser', N'varchar(10)', N'10', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:55.657')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Info_Dev', N'7', N'设备类型', N'DevType', N'varchar(2)', N'2', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:55.657')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Info_Dev', N'8', N'设备状态', N'DevStatus', N'varchar(2)', N'2', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:55.657')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Info_Dev', N'9', N'设备经纬度', N'DevCoord', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:55.657')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Info_Dev', N'10', N'维修联系人', N'RepairUser', N'varchar(10)', N'10', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:55.657')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Info_Dev', N'11', N'维修人电话', N'RepairTele', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:55.657')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Info_Dev', N'12', N'设备维修次数', N'RepairCount', N'int', N'0', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:55.657')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Info_Dev', N'13', N'目前设备持有人', N'DevOwner', N'varchar(10)', N'10', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:55.657')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Info_Dev', N'14', N'持有人电话', N'OwnerTele', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:55.657')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Info_Dev', N'15', N'备注说明', N'Remark', N'varchar(200)', N'200', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:55.657')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Info_Dev', N'16', N'所属省份', N'ProvinceID', N'varchar(6)', N'6', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:55.657')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Info_Dev', N'17', N'所属城市', N'CityID', N'varchar(6)', N'6', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:55.657')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Info_Dev', N'18', N'所属区县', N'AreaID', N'varchar(6)', N'6', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:55.657')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Info_Dev', N'19', N'所属乡镇', N'TownID', N'varchar(6)', N'6', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:55.657')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Info_Dev', N'20', N'所属村域', N'VillageID', N'varchar(8)', N'8', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:55.657')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Info_Dev', N'21', N'填写人', N'TranUser', N'varchar(14)', N'14', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:55.657')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Info_Dev', N'22', N'填写人姓名', N'TranUserName', N'varchar(10)', N'10', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:55.657')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Info_Dev', N'23', N'填写人部门', N'TranDept', N'varchar(6)', N'6', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:55.657')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Info_Dev', N'24', N'填写时间', N'TranDate', N'datetime', N'0', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:55.657')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Pmt_Dev_Type', N'1', N'设备类型编号', N'DevType', N'varchar(2)', N'2', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:55.697')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Pmt_Dev_Type', N'2', N'设备类型', N'DevTypeName', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:55.697')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Pmt_Dev_Status', N'1', N'设备状态编号', N'DevStatus', N'varchar(2)', N'2', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:55.740')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Pmt_Dev_Status', N'2', N'设备状态', N'DevStatusName', N'varchar(10)', N'10', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:55.740')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Dev_Repair', N'1', N'设备维修记录编号', N'RepairID', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:55.833')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Dev_Repair', N'2', N'故障设备编号', N'DevID', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:55.833')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Dev_Repair', N'3', N'故障设备名称', N'DevName', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:55.833')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Dev_Repair', N'4', N'电话沟通记录', N'TeleRecord', N'varchar(200)', N'200', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:55.833')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Dev_Repair', N'5', N'维修完成时间', N'FinishDate', N'datetime', N'0', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:55.833')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Dev_Repair', N'6', N'维修过程记录', N'RepairDesc', N'varchar(300)', N'300', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:55.833')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Dev_Repair', N'7', N'本次维修花费', N'RepairCost', N'decimal(10,2)', N'10', N'2', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:55.833')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Dev_Repair', N'8', N'维修满意度评价', N'RepairEval', N'varchar(100)', N'100', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:55.833')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Dev_Repair', N'9', N'是否已维修', N'IsRepair', N'bit', N'0', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:55.833')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Dev_Repair', N'10', N'填写人', N'TranUser', N'varchar(14)', N'14', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:55.833')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Dev_Repair', N'11', N'填写人姓名', N'TranUserName', N'varchar(10)', N'10', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:55.833')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Dev_Repair', N'12', N'填写人部门', N'TranDept', N'varchar(6)', N'6', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:55.833')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Dev_Repair', N'13', N'填写时间', N'TranDate', N'datetime', N'0', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:55.833')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Dev_Plan', N'1', N'计划编号', N'PlanID', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:55.900')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Dev_Plan', N'2', N'设备编号', N'DevID', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:55.900')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Dev_Plan', N'3', N'设备名称', N'DevName', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:55.900')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Dev_Plan', N'4', N'核查开始时间', N'BeginDate', N'datetime', N'0', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:55.900')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Dev_Plan', N'5', N'核查结束时间', N'EndDate', N'datetime', N'0', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:55.900')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Dev_Plan', N'6', N'是否完成', N'IsComplete', N'bit', N'0', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:55.900')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Dev_Plan', N'7', N'填写人', N'TranUser', N'varchar(14)', N'14', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:55.900')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Dev_Plan', N'8', N'填写人姓名', N'TranUserName', N'varchar(10)', N'10', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:55.900')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Dev_Plan', N'9', N'填写人部门', N'TranDept', N'varchar(6)', N'6', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:55.900')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Dev_Plan', N'10', N'填写时间', N'TranDate', N'datetime', N'0', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:55.900')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Dev_Check', N'1', N'核查编号', N'CheckID', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:55.990')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Dev_Check', N'2', N'计划编号', N'PlanID', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:55.990')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Dev_Check', N'3', N'仪器编号', N'DevID', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:55.990')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Dev_Check', N'4', N'仪器名称', N'DevName', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:55.990')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Dev_Check', N'5', N'上次检定日期', N'LastCheck', N'datetime', N'0', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:55.990')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Dev_Check', N'6', N'测量范围', N'DevRange', N'varchar(40)', N'40', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:55.990')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Dev_Check', N'7', N'核查精度', N'DevPrecision', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:55.990')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Dev_Check', N'8', N'检查日期', N'CheckDate', N'datetime', N'0', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:55.990')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Dev_Check', N'9', N'检查情况', N'CheckDesc', N'varchar(200)', N'200', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:55.990')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Dev_Check', N'10', N'检查结论', N'CheckResult', N'varchar(200)', N'200', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:55.990')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Dev_Check', N'11', N'备注', N'Remark', N'varchar(200)', N'200', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:55.990')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Dev_Check', N'12', N'检查人', N'CheckUser', N'varchar(10)', N'10', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:55.990')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Dev_Check', N'13', N'填写人', N'TranUser', N'varchar(14)', N'14', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:55.990')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Dev_Check', N'14', N'填写人姓名', N'TranUserName', N'varchar(10)', N'10', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:55.990')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Dev_Check', N'15', N'填写人部门', N'TranDept', N'varchar(6)', N'6', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:55.990')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Dev_Check', N'16', N'填写时间', N'TranDate', N'datetime', N'0', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:55.990')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Sugar', N'1', N'采集编号', N'SugarID', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.063')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Sugar', N'2', N'设备编号', N'DevID', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.063')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Sugar', N'3', N'采集时间', N'CollectDate', N'datetime', N'0', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.063')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Sugar', N'4', N'当前基地', N'BaseID', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.063')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Sugar', N'5', N'检测批次', N'SugarBatch', N'varchar(10)', N'10', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.063')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Sugar', N'6', N'检测品种', N'VarietyName', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.063')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Sugar', N'7', N'调查人员', N'SurveyUser', N'varchar(10)', N'10', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.063')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Sugar', N'8', N'糖度', N'SugarLevel', N'decimal(5,2)', N'5', N'2', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.063')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Sugar', N'9', N'填写人', N'TranUser', N'varchar(14)', N'14', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.063')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Sugar', N'10', N'填写人姓名', N'TranUserName', N'varchar(10)', N'10', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.063')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Sugar', N'11', N'填写人部门', N'TranDept', N'varchar(6)', N'6', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.063')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Sugar', N'12', N'填写时间', N'TranDate', N'datetime', N'0', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.063')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Area', N'1', N'采集编号', N'AreaID', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.147')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Area', N'2', N'设备编号', N'DevID', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.147')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Area', N'3', N'采集时间', N'CollectDate', N'datetime', N'0', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.147')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Area', N'4', N'调查基地编号', N'BaseID', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.147')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Area', N'5', N'作物种类', N'CropKinds', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.147')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Area', N'6', N'调查人员', N'SurveyUser', N'varchar(10)', N'10', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.147')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Area', N'7', N'面积', N'AreaValue', N'decimal(10,2)', N'10', N'2', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.147')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Area', N'8', N'周长', N'CircumValue', N'decimal(10,2)', N'10', N'2', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.147')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Area', N'9', N'填写人', N'TranUser', N'varchar(14)', N'14', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.147')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Area', N'10', N'填写人姓名', N'TranUserName', N'varchar(10)', N'10', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.147')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Area', N'11', N'填写人部门', N'TranDept', N'varchar(6)', N'6', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.147')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Area', N'12', N'填写时间', N'TranDate', N'datetime', N'0', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.147')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Pest', N'1', N'采集编号', N'PestID', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.247')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Pest', N'2', N'设备编号', N'DevID', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.247')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Pest', N'3', N'检测时间', N'CollectDate', N'datetime', N'0', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.247')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Pest', N'4', N'调查基地', N'BaseID', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.247')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Pest', N'5', N'调查人员', N'SurveyUser', N'varchar(10)', N'10', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.247')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Pest', N'6', N'检查批次', N'PestBatch', N'varchar(8)', N'8', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.247')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Pest', N'7', N'检测品种', N'VarietyName', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.247')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Pest', N'8', N'检测通道', N'PestChannel', N'int', N'0', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.247')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Pest', N'9', N'抑制率', N'InhiRatio', N'decimal(5,2)', N'5', N'2', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.247')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Pest', N'10', N'浓度', N'PestContent', N'decimal(5,2)', N'5', N'2', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.247')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Pest', N'11', N'检测结果', N'PestResult', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.247')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Pest', N'12', N'重量', N'PestWeight', N'decimal(10,2)', N'10', N'2', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.247')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Pest', N'13', N'填写人', N'TranUser', N'varchar(14)', N'14', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.247')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Pest', N'14', N'填写人姓名', N'TranUserName', N'varchar(10)', N'10', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.247')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Pest', N'15', N'填写人部门', N'TranDept', N'varchar(6)', N'6', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.247')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Pest', N'16', N'填写时间', N'TranDate', N'datetime', N'0', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.247')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Soil', N'1', N'采集编号', N'SoilID', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.403')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Soil', N'2', N'设备编号', N'DevID', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.403')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Soil', N'3', N'检测时间', N'CollectDate', N'datetime', N'0', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.403')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Soil', N'4', N'调查基地', N'BaseID', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.403')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Soil', N'5', N'调查人员', N'SurveyUser', N'varchar(10)', N'10', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.403')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Soil', N'6', N'作物种类', N'CropKinds', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.403')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Soil', N'7', N'铵态氮含量', N'NitroRatio', N'decimal(5,2)', N'5', N'2', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.403')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Soil', N'8', N'氮检测通道', N'NitroChannel', N'int', N'0', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.403')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Soil', N'9', N'氮肥料种类', N'NitroKinds', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.403')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Soil', N'10', N'含氮率', N'NitroContent', N'int', N'0', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.403')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Soil', N'11', N'氮利用率', N'NitroUse', N'int', N'0', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.403')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Soil', N'12', N'氮目标产量', N'NitroGoal', N'int', N'0', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.403')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Soil', N'13', N'氮施肥方案', N'NitroFert', N'decimal(5,1)', N'5', N'1', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.403')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Soil', N'14', N'速效磷含量', N'PhosRatio', N'decimal(5,2)', N'5', N'2', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.403')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Soil', N'15', N'磷检测通道', N'PhosChannel', N'int', N'0', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.403')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Soil', N'16', N'磷肥料种类', N'PhosKinds', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.403')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Soil', N'17', N'含磷率', N'PhosContent', N'int', N'0', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.403')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Soil', N'18', N'磷利用率', N'PhosUse', N'int', N'0', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.403')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Soil', N'19', N'磷目标产量', N'PhosGoal', N'int', N'0', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.403')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Soil', N'20', N'磷施肥方案', N'PhosFert', N'decimal(5,1)', N'5', N'1', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.403')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Soil', N'21', N'有效钾含量', N'KaliumRatio', N'decimal(5,2)', N'5', N'2', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.403')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Soil', N'22', N'钾检测通道', N'KaliumChannel', N'int', N'0', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.403')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Soil', N'23', N'钾肥料种类', N'KaliumKinds', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.403')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Soil', N'24', N'含钾率', N'KaliumContent', N'int', N'0', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.403')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Soil', N'25', N'钾利用率', N'KaliumUse', N'int', N'0', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.403')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Soil', N'26', N'钾目标产量', N'KaliumGoal', N'int', N'0', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.403')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Soil', N'27', N'钾施肥方案', N'KaliumFert', N'decimal(5,1)', N'5', N'1', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.403')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Soil', N'28', N'有机质含量', N'OrgaRatio', N'decimal(5,2)', N'5', N'2', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.403')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Soil', N'29', N'土壤盐分', N'SoilSalt', N'decimal(8,2)', N'8', N'2', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.403')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Soil', N'30', N'填写人', N'TranUser', N'varchar(14)', N'14', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.403')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Soil', N'31', N'填写人姓名', N'TranUserName', N'varchar(10)', N'10', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.403')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Soil', N'32', N'填写人部门', N'TranDept', N'varchar(6)', N'6', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.403')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Soil', N'33', N'填写时间', N'TranDate', N'datetime', N'0', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.403')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Hardness', N'1', N'采集编号', N'HardnessID', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.493')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Hardness', N'2', N'设备编号', N'DevID', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.493')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Hardness', N'3', N'采集时间', N'CollectDate', N'datetime', N'0', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.493')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Hardness', N'4', N'调查基地', N'BaseID', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.493')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Hardness', N'5', N'调查人员', N'SurveyUser', N'varchar(10)', N'10', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.493')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Hardness', N'6', N'检测批次', N'HardnessBatch', N'varchar(10)', N'10', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.493')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Hardness', N'7', N'检测品种', N'VarietyName', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.493')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Hardness', N'8', N'硬度', N'HardnessLevel', N'decimal(5,2)', N'5', N'2', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.493')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Hardness', N'9', N'备注', N'Remark', N'varchar(100)', N'100', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.493')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Hardness', N'10', N'填写人', N'TranUser', N'varchar(14)', N'14', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.493')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Hardness', N'11', N'填写人姓名', N'TranUserName', N'varchar(10)', N'10', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.493')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Hardness', N'12', N'填写人部门', N'TranDept', N'varchar(6)', N'6', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.493')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Hardness', N'13', N'填写日期', N'TranDate', N'datetime', N'0', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.493')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Insect', N'1', N'病虫害编号', N'InsectID', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.593')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Insect', N'2', N'设备编号', N'DevID', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.593')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Insect', N'3', N'采集时间', N'CollectDate', N'datetime', N'0', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.593')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Insect', N'4', N'调查基地', N'BaseID', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.593')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Insect', N'5', N'作物种类', N'CropKinds', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.593')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Insect', N'6', N'采集地点', N'CollectAddr', N'varchar(50)', N'50', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.593')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Insect', N'7', N'调查人员', N'SurveyUser', N'varchar(10)', N'10', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.593')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Insect', N'8', N'病虫害', N'InsectKind', N'varchar(2)', N'2', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.593')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Insect', N'9', N'名称', N'InsectName', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.593')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Insect', N'10', N'调查株数', N'SurveyPlants', N'int', N'0', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.593')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Insect', N'11', N'调查枝条数', N'SurveyWattle', N'int', N'0', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.593')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Insect', N'12', N'病/虫枝数', N'InsectWattle', N'int', N'0', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.593')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Insect', N'13', N'病/虫枝率', N'InsectPercent', N'decimal(5,2)', N'5', N'2', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.593')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Insect', N'14', N'备注', N'Remark', N'varchar(200)', N'200', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.593')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Insect', N'15', N'填写人', N'TranUser', N'varchar(14)', N'14', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.593')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Insect', N'16', N'填写人姓名', N'TranUserName', N'varchar(10)', N'10', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.593')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Insect', N'17', N'填写人部门', N'TranDept', N'varchar(6)', N'6', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.593')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Insect', N'18', N'填写日期', N'TranDate', N'datetime', N'0', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.593')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Weather', N'1', N'采集编号', N'WeatherID', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.760')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Weather', N'2', N'设备编号', N'DevID', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.760')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Weather', N'3', N'检测时间', N'CollectDate', N'datetime', N'0', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.760')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Weather', N'4', N'调查基地', N'BaseID', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.760')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Weather', N'5', N'湿度', N'HumiRatio', N'decimal(5,2)', N'5', N'2', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.760')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Weather', N'6', N'温度', N'TemperRatio', N'decimal(5,2)', N'5', N'2', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.760')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Weather', N'7', N'小时最高温度', N'MaxTemper', N'decimal(5,2)', N'5', N'2', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.760')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Weather', N'8', N'小时最低温度', N'MinTemper', N'decimal(5,2)', N'5', N'2', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.760')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Weather', N'9', N'露点温度', N'DewTemper', N'decimal(5,2)', N'5', N'2', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.760')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Weather', N'10', N'小时降水量', N'AmountPreci', N'decimal(8,2)', N'8', N'2', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.760')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Weather', N'11', N'小时最大雨量', N'MaxPreci', N'decimal(8,2)', N'8', N'2', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.760')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Weather', N'12', N'平均风速', N'WindSpeed', N'decimal(8,2)', N'8', N'2', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.760')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Weather', N'13', N'平均风向', N'WindDirect', N'decimal(5,2)', N'5', N'2', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.760')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Weather', N'14', N'最高风速', N'MaxWind', N'decimal(8,2)', N'8', N'2', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.760')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Weather', N'15', N'最高风速风向', N'MaxSpeedDirect', N'varchar(200)', N'200', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.760')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Weather', N'16', N'气压', N'AirPress', N'decimal(8,2)', N'8', N'2', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.760')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Weather', N'17', N'太阳辐射', N'SunRadi', N'decimal(8,2)', N'8', N'2', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.760')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Weather', N'18', N'紫外线强度', N'UltraRay', N'decimal(8,2)', N'8', N'2', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.760')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Weather', N'19', N'蒸散量', N'EvapValue', N'decimal(8,2)', N'8', N'2', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.760')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Weather', N'20', N'最大太阳辐射', N'MaxRadi', N'decimal(8,2)', N'8', N'2', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.760')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Weather', N'21', N'最强紫外线', N'MaxRay', N'decimal(8,2)', N'8', N'2', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.760')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Weather', N'22', N'土壤温度1', N'SoilTemperOne', N'decimal(5,2)', N'5', N'2', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.760')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Weather', N'23', N'土壤温度2', N'SoilTemperTwo', N'decimal(5,2)', N'5', N'2', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.760')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Weather', N'24', N'土壤温度3', N'SoilTemperThree', N'decimal(5,2)', N'5', N'2', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.760')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Weather', N'25', N'土壤温度4', N'SoilTemperFour', N'decimal(5,2)', N'5', N'2', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.760')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Weather', N'26', N'土壤水势1', N'SoilWaterOne', N'decimal(5,2)', N'5', N'2', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.760')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Weather', N'27', N'土壤水势2', N'SoilWaterTwo', N'decimal(5,2)', N'5', N'2', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.760')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Weather', N'28', N'土壤水势3', N'SoilWaterThree', N'decimal(5,2)', N'5', N'2', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.760')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Weather', N'29', N'土壤水势4', N'SoilWaterFour', N'decimal(5,2)', N'5', N'2', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.760')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Weather', N'30', N'叶面温度1', N'LeafTemperOne', N'decimal(5,2)', N'5', N'2', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.760')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Weather', N'31', N'叶面温度2', N'LeafTemperTwo', N'decimal(5,2)', N'5', N'2', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.760')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Weather', N'32', N'叶面湿度1', N'LeafHumiOne', N'decimal(5,2)', N'5', N'2', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.760')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Weather', N'33', N'页面湿度2', N'LeafHumiTwo', N'decimal(5,2)', N'5', N'2', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.760')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Weather', N'34', N'填写人', N'TranUser', N'varchar(14)', N'14', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.760')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Weather', N'35', N'填写人姓名', N'TranUserName', N'varchar(10)', N'10', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.760')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Weather', N'36', N'填写人部门', N'TranDept', N'varchar(6)', N'6', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.760')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Collect_Weather', N'37', N'填写时间', N'TranDate', N'datetime', N'0', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.760')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Pmt_Insect_Kind', N'1', N'病虫害种类', N'InsectKind', N'varchar(2)', N'2', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.810')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'2', N'T_Pmt_Insect_Kind', N'2', N'病虫害种类名称', N'InsectKindName', N'varchar(10)', N'10', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 18:43:56.810')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'3', N'T_Bus_Ask', N'3', N'答案内容', N'AnswerContent', N'text', N'0', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 19:01:32.860')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'3', N'T_Bus_Ask', N'2', N'问题内容', N'AskContent', N'varchar(200)', N'200', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 19:01:32.860')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'3', N'T_Bus_Ask', N'1', N'答案编号', N'AskID', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 19:01:32.860')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'3', N'T_Bus_Ask', N'4', N'是否已回答', N'IsAnswered', N'bit', N'0', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 19:01:32.860')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'3', N'T_Bus_Ask', N'7', N'填写时间', N'TranDate', N'datetime', N'0', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 19:01:32.860')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'3', N'T_Bus_Ask', N'5', N'填写人', N'TranUser', N'varchar(14)', N'14', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 19:01:32.860')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'3', N'T_Bus_Ask', N'6', N'填写人姓名', N'TranUserName', N'nvarchar(10)', N'10', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 19:01:32.860')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'3', N'T_Bas_City', N'1', N'城市编号', N'CityID', N'varchar(6)', N'6', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 19:01:32.917')
GO
GO
INSERT INTO [dbo].[H_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial], [RecoDate]) VALUES (N'3', N'T_Bas_City', N'2', N'城市名称', N'CityName', N'nvarchar(10)', N'10', N'0', N'0', N'0', N'1', N'1', N'2017-11-02 19:01:32.917')
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
INSERT INTO [dbo].[H_DMS_INDEX] ([DBID], [TableCode], [IndexID], [IndexName], [IndexCode], [IsUnique], [NowSerial]) VALUES (N'1', N'T_Bus_Test', N'1', N'I_Bus_Test', N'I_Bus_Test', N'1', N'1')
GO
GO
INSERT INTO [dbo].[H_DMS_INDEX] ([DBID], [TableCode], [IndexID], [IndexName], [IndexCode], [IsUnique], [NowSerial]) VALUES (N'2', N'T_Sys_User_Dept', N'1', N'I_Sys_User_Dept', N'I_Sys_User_Dept', N'1', N'1')
GO
GO
INSERT INTO [dbo].[H_DMS_INDEX] ([DBID], [TableCode], [IndexID], [IndexName], [IndexCode], [IsUnique], [NowSerial]) VALUES (N'2', N'T_Db_Column', N'1', N'I_Db_Column', N'I_Db_Column', N'1', N'1')
GO
GO
INSERT INTO [dbo].[H_DMS_INDEX] ([DBID], [TableCode], [IndexID], [IndexName], [IndexCode], [IsUnique], [NowSerial]) VALUES (N'2', N'T_Sys_Dept_Tree', N'1', N'I_Sys_Dept_Tree', N'I_Sys_Dept_Tree', N'1', N'1')
GO
GO
INSERT INTO [dbo].[H_DMS_INDEX] ([DBID], [TableCode], [IndexID], [IndexName], [IndexCode], [IsUnique], [NowSerial]) VALUES (N'2', N'T_Sys_User_Set', N'1', N'I_Sys_User_Set', N'I_Sys_User_Set', N'1', N'1')
GO
GO
INSERT INTO [dbo].[H_DMS_INDEX] ([DBID], [TableCode], [IndexID], [IndexName], [IndexCode], [IsUnique], [NowSerial]) VALUES (N'2', N'T_Sys_Menu_Group', N'1', N'I_Sys_Menu_Group', N'I_Sys_Menu_Group', N'1', N'1')
GO
GO
INSERT INTO [dbo].[H_DMS_INDEX] ([DBID], [TableCode], [IndexID], [IndexName], [IndexCode], [IsUnique], [NowSerial]) VALUES (N'2', N'T_Sys_Menu_Detail', N'1', N'I_Sys_Menu_Detail', N'I_Sys_Menu_Detail', N'1', N'1')
GO
GO
INSERT INTO [dbo].[H_DMS_INDEX] ([DBID], [TableCode], [IndexID], [IndexName], [IndexCode], [IsUnique], [NowSerial]) VALUES (N'2', N'T_Sys_User_Role', N'1', N'I_Sys_User_Role', N'I_Sys_User_Role', N'1', N'1')
GO
GO
INSERT INTO [dbo].[H_DMS_INDEX] ([DBID], [TableCode], [IndexID], [IndexName], [IndexCode], [IsUnique], [NowSerial]) VALUES (N'2', N'T_Sys_Role_Menu', N'1', N'I_Sys_Role_Menu', N'I_Sys_Role_Menu', N'1', N'1')
GO
GO
INSERT INTO [dbo].[H_DMS_INDEX] ([DBID], [TableCode], [IndexID], [IndexName], [IndexCode], [IsUnique], [NowSerial]) VALUES (N'2', N'T_Sys_Role_Rib', N'1', N'I_Sys_Role_Rib', N'I_Sys_Role_Rib', N'1', N'1')
GO
GO
INSERT INTO [dbo].[H_DMS_INDEX] ([DBID], [TableCode], [IndexID], [IndexName], [IndexCode], [IsUnique], [NowSerial]) VALUES (N'2', N'T_Sys_Role_Detail', N'1', N'I_Sys_Role_Detail', N'I_Sys_Role_Detail', N'0', N'1')
GO
GO

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
INSERT INTO [dbo].[H_DMS_INDEX_COLUMN] ([DBID], [TableCode], [IndexCode], [ColumnCode], [NowSerial]) VALUES (N'1', N'T_Bus_Test', N'I_Bus_Test', N'TestID', N'1')
GO
GO
INSERT INTO [dbo].[H_DMS_INDEX_COLUMN] ([DBID], [TableCode], [IndexCode], [ColumnCode], [NowSerial]) VALUES (N'1', N'T_Bus_Test', N'I_Bus_Test', N'TestName', N'1')
GO
GO
INSERT INTO [dbo].[H_DMS_INDEX_COLUMN] ([DBID], [TableCode], [IndexCode], [ColumnCode], [NowSerial]) VALUES (N'2', N'T_Sys_User_Dept', N'I_Sys_User_Dept', N'DeptID', N'1')
GO
GO
INSERT INTO [dbo].[H_DMS_INDEX_COLUMN] ([DBID], [TableCode], [IndexCode], [ColumnCode], [NowSerial]) VALUES (N'2', N'T_Sys_User_Dept', N'I_Sys_User_Dept', N'UserID', N'1')
GO
GO
INSERT INTO [dbo].[H_DMS_INDEX_COLUMN] ([DBID], [TableCode], [IndexCode], [ColumnCode], [NowSerial]) VALUES (N'2', N'T_Db_Column', N'I_Db_Column', N'ColumnSerail', N'1')
GO
GO
INSERT INTO [dbo].[H_DMS_INDEX_COLUMN] ([DBID], [TableCode], [IndexCode], [ColumnCode], [NowSerial]) VALUES (N'2', N'T_Db_Column', N'I_Db_Column', N'TableID', N'1')
GO
GO
INSERT INTO [dbo].[H_DMS_INDEX_COLUMN] ([DBID], [TableCode], [IndexCode], [ColumnCode], [NowSerial]) VALUES (N'2', N'T_Sys_Dept_Tree', N'I_Sys_Dept_Tree', N'DeptID', N'1')
GO
GO
INSERT INTO [dbo].[H_DMS_INDEX_COLUMN] ([DBID], [TableCode], [IndexCode], [ColumnCode], [NowSerial]) VALUES (N'2', N'T_Sys_Dept_Tree', N'I_Sys_Dept_Tree', N'DeptPID', N'1')
GO
GO
INSERT INTO [dbo].[H_DMS_INDEX_COLUMN] ([DBID], [TableCode], [IndexCode], [ColumnCode], [NowSerial]) VALUES (N'2', N'T_Sys_User_Set', N'I_Sys_User_Set', N'SetCode', N'1')
GO
GO
INSERT INTO [dbo].[H_DMS_INDEX_COLUMN] ([DBID], [TableCode], [IndexCode], [ColumnCode], [NowSerial]) VALUES (N'2', N'T_Sys_User_Set', N'I_Sys_User_Set', N'UserID', N'1')
GO
GO
INSERT INTO [dbo].[H_DMS_INDEX_COLUMN] ([DBID], [TableCode], [IndexCode], [ColumnCode], [NowSerial]) VALUES (N'2', N'T_Sys_Menu_Group', N'I_Sys_Menu_Group', N'MgName', N'1')
GO
GO
INSERT INTO [dbo].[H_DMS_INDEX_COLUMN] ([DBID], [TableCode], [IndexCode], [ColumnCode], [NowSerial]) VALUES (N'2', N'T_Sys_Menu_Detail', N'I_Sys_Menu_Detail', N'AuthID', N'1')
GO
GO
INSERT INTO [dbo].[H_DMS_INDEX_COLUMN] ([DBID], [TableCode], [IndexCode], [ColumnCode], [NowSerial]) VALUES (N'2', N'T_Sys_Menu_Detail', N'I_Sys_Menu_Detail', N'MID', N'1')
GO
GO
INSERT INTO [dbo].[H_DMS_INDEX_COLUMN] ([DBID], [TableCode], [IndexCode], [ColumnCode], [NowSerial]) VALUES (N'2', N'T_Sys_User_Role', N'I_Sys_User_Role', N'RoleID', N'1')
GO
GO
INSERT INTO [dbo].[H_DMS_INDEX_COLUMN] ([DBID], [TableCode], [IndexCode], [ColumnCode], [NowSerial]) VALUES (N'2', N'T_Sys_User_Role', N'I_Sys_User_Role', N'UserID', N'1')
GO
GO
INSERT INTO [dbo].[H_DMS_INDEX_COLUMN] ([DBID], [TableCode], [IndexCode], [ColumnCode], [NowSerial]) VALUES (N'2', N'T_Sys_Role_Menu', N'I_Sys_Role_Menu', N'MID', N'1')
GO
GO
INSERT INTO [dbo].[H_DMS_INDEX_COLUMN] ([DBID], [TableCode], [IndexCode], [ColumnCode], [NowSerial]) VALUES (N'2', N'T_Sys_Role_Menu', N'I_Sys_Role_Menu', N'RoleID', N'1')
GO
GO
INSERT INTO [dbo].[H_DMS_INDEX_COLUMN] ([DBID], [TableCode], [IndexCode], [ColumnCode], [NowSerial]) VALUES (N'2', N'T_Sys_Role_Rib', N'I_Sys_Role_Rib', N'RibBtn', N'1')
GO
GO
INSERT INTO [dbo].[H_DMS_INDEX_COLUMN] ([DBID], [TableCode], [IndexCode], [ColumnCode], [NowSerial]) VALUES (N'2', N'T_Sys_Role_Rib', N'I_Sys_Role_Rib', N'RoleID', N'1')
GO
GO
INSERT INTO [dbo].[H_DMS_INDEX_COLUMN] ([DBID], [TableCode], [IndexCode], [ColumnCode], [NowSerial]) VALUES (N'2', N'T_Sys_Role_Detail', N'I_Sys_Role_Detail', N'AuthID', N'1')
GO
GO
INSERT INTO [dbo].[H_DMS_INDEX_COLUMN] ([DBID], [TableCode], [IndexCode], [ColumnCode], [NowSerial]) VALUES (N'2', N'T_Sys_Role_Detail', N'I_Sys_Role_Detail', N'MID', N'1')
GO
GO
INSERT INTO [dbo].[H_DMS_INDEX_COLUMN] ([DBID], [TableCode], [IndexCode], [ColumnCode], [NowSerial]) VALUES (N'2', N'T_Sys_Role_Detail', N'I_Sys_Role_Detail', N'RoleID', N'1')
GO
GO

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
INSERT INTO [dbo].[H_DMS_KEY_COLUMN] ([DBID], [TableCode], [KeyCode], [ColumnCode], [NowSerial]) VALUES (N'1', N'P_POTATO_SHOW', N'K_POTATO_SHOW', N'PPSID', N'1')
GO
GO
INSERT INTO [dbo].[H_DMS_KEY_COLUMN] ([DBID], [TableCode], [KeyCode], [ColumnCode], [NowSerial]) VALUES (N'1', N'T_BUS_STU', N'K_BUS_STU', N'STUID', N'1')
GO
GO
INSERT INTO [dbo].[H_DMS_KEY_COLUMN] ([DBID], [TableCode], [KeyCode], [ColumnCode], [NowSerial]) VALUES (N'2', N'T_Sys_Company', N'K_Sys_Company', N'CoID', N'1')
GO
GO
INSERT INTO [dbo].[H_DMS_KEY_COLUMN] ([DBID], [TableCode], [KeyCode], [ColumnCode], [NowSerial]) VALUES (N'2', N'T_Sys_User', N'K_Sys_User', N'UserID', N'1')
GO
GO
INSERT INTO [dbo].[H_DMS_KEY_COLUMN] ([DBID], [TableCode], [KeyCode], [ColumnCode], [NowSerial]) VALUES (N'2', N'T_Db_Table', N'K_Db_Table', N'TableID', N'1')
GO
GO
INSERT INTO [dbo].[H_DMS_KEY_COLUMN] ([DBID], [TableCode], [KeyCode], [ColumnCode], [NowSerial]) VALUES (N'2', N'T_Sys_Dept', N'K_Sys_Dept', N'DeptID', N'1')
GO
GO
INSERT INTO [dbo].[H_DMS_KEY_COLUMN] ([DBID], [TableCode], [KeyCode], [ColumnCode], [NowSerial]) VALUES (N'2', N'T_Sys_Set', N'K_Sys_Set', N'SetCode', N'1')
GO
GO
INSERT INTO [dbo].[H_DMS_KEY_COLUMN] ([DBID], [TableCode], [KeyCode], [ColumnCode], [NowSerial]) VALUES (N'2', N'T_Sys_Serial', N'K_Sys_Serial', N'SerialID', N'1')
GO
GO
INSERT INTO [dbo].[H_DMS_KEY_COLUMN] ([DBID], [TableCode], [KeyCode], [ColumnCode], [NowSerial]) VALUES (N'2', N'T_Sys_Menu', N'K_Sys_Menu', N'MID', N'1')
GO
GO
INSERT INTO [dbo].[H_DMS_KEY_COLUMN] ([DBID], [TableCode], [KeyCode], [ColumnCode], [NowSerial]) VALUES (N'2', N'T_Sys_Menu_Auth', N'K_Sys_Menu_Auth', N'AuthID', N'1')
GO
GO
INSERT INTO [dbo].[H_DMS_KEY_COLUMN] ([DBID], [TableCode], [KeyCode], [ColumnCode], [NowSerial]) VALUES (N'2', N'T_Sys_Role', N'K_Sys_Role', N'RoleID', N'1')
GO
GO
INSERT INTO [dbo].[H_DMS_KEY_COLUMN] ([DBID], [TableCode], [KeyCode], [ColumnCode], [NowSerial]) VALUES (N'2', N'T_Pmt_Tran_Action', N'K_Pmt_Tran_Action', N'TranAction', N'1')
GO
GO
INSERT INTO [dbo].[H_DMS_KEY_COLUMN] ([DBID], [TableCode], [KeyCode], [ColumnCode], [NowSerial]) VALUES (N'2', N'T_Pmt_Co_Status', N'K_Pmt_Co_Status', N'CoStatus', N'1')
GO
GO
INSERT INTO [dbo].[H_DMS_KEY_COLUMN] ([DBID], [TableCode], [KeyCode], [ColumnCode], [NowSerial]) VALUES (N'2', N'T_Bas_Province', N'K_Bas_Province', N'ProvinceID', N'1')
GO
GO
INSERT INTO [dbo].[H_DMS_KEY_COLUMN] ([DBID], [TableCode], [KeyCode], [ColumnCode], [NowSerial]) VALUES (N'2', N'T_Bas_City', N'K_Bas_City', N'CityID', N'1')
GO
GO
INSERT INTO [dbo].[H_DMS_KEY_COLUMN] ([DBID], [TableCode], [KeyCode], [ColumnCode], [NowSerial]) VALUES (N'2', N'T_Bas_Area', N'K_Bas_Area', N'AreaID', N'1')
GO
GO
INSERT INTO [dbo].[H_DMS_KEY_COLUMN] ([DBID], [TableCode], [KeyCode], [ColumnCode], [NowSerial]) VALUES (N'2', N'T_Bas_Town', N'K_Bas_Town', N'TownID', N'1')
GO
GO
INSERT INTO [dbo].[H_DMS_KEY_COLUMN] ([DBID], [TableCode], [KeyCode], [ColumnCode], [NowSerial]) VALUES (N'2', N'T_Bas_Village', N'K_Bas_Village', N'VillageID', N'1')
GO
GO
INSERT INTO [dbo].[H_DMS_KEY_COLUMN] ([DBID], [TableCode], [KeyCode], [ColumnCode], [NowSerial]) VALUES (N'2', N'T_Bus_Base', N'K_Bus_Base', N'BaseID', N'1')
GO
GO
INSERT INTO [dbo].[H_DMS_KEY_COLUMN] ([DBID], [TableCode], [KeyCode], [ColumnCode], [NowSerial]) VALUES (N'2', N'T_Pmt_Net_Status', N'K_Pmt_Net_Status', N'NetStatus', N'1')
GO
GO
INSERT INTO [dbo].[H_DMS_KEY_COLUMN] ([DBID], [TableCode], [KeyCode], [ColumnCode], [NowSerial]) VALUES (N'2', N'T_Pmt_Busi_Status', N'K_Pmt_Busi_Status', N'BusiStatus', N'1')
GO
GO
INSERT INTO [dbo].[H_DMS_KEY_COLUMN] ([DBID], [TableCode], [KeyCode], [ColumnCode], [NowSerial]) VALUES (N'2', N'T_Pmt_Prd_Status', N'K_Pmt_Prd_Status', N'PrdStatus', N'1')
GO
GO
INSERT INTO [dbo].[H_DMS_KEY_COLUMN] ([DBID], [TableCode], [KeyCode], [ColumnCode], [NowSerial]) VALUES (N'2', N'T_Pmt_Plan_Land', N'K_Pmt_Plan_Land', N'PlanLand', N'1')
GO
GO
INSERT INTO [dbo].[H_DMS_KEY_COLUMN] ([DBID], [TableCode], [KeyCode], [ColumnCode], [NowSerial]) VALUES (N'2', N'T_Pmt_Plan_Method', N'K_Pmt_Plan_Method', N'PlanMethod', N'1')
GO
GO
INSERT INTO [dbo].[H_DMS_KEY_COLUMN] ([DBID], [TableCode], [KeyCode], [ColumnCode], [NowSerial]) VALUES (N'2', N'T_Pmt_Degree_Type', N'K_Pmt_Degree_Type', N'DegreeType', N'1')
GO
GO
INSERT INTO [dbo].[H_DMS_KEY_COLUMN] ([DBID], [TableCode], [KeyCode], [ColumnCode], [NowSerial]) VALUES (N'2', N'T_Info_Dev', N'K_Info_Dev', N'DevID', N'1')
GO
GO
INSERT INTO [dbo].[H_DMS_KEY_COLUMN] ([DBID], [TableCode], [KeyCode], [ColumnCode], [NowSerial]) VALUES (N'2', N'T_Pmt_Dev_Type', N'K_Pmt_Dev_Type', N'DevType', N'1')
GO
GO
INSERT INTO [dbo].[H_DMS_KEY_COLUMN] ([DBID], [TableCode], [KeyCode], [ColumnCode], [NowSerial]) VALUES (N'2', N'T_Pmt_Dev_Status', N'K_Pmt_Dev_Status', N'DevStatus', N'1')
GO
GO
INSERT INTO [dbo].[H_DMS_KEY_COLUMN] ([DBID], [TableCode], [KeyCode], [ColumnCode], [NowSerial]) VALUES (N'2', N'T_Dev_Repair', N'K_Dev_Repair', N'RepairID', N'1')
GO
GO
INSERT INTO [dbo].[H_DMS_KEY_COLUMN] ([DBID], [TableCode], [KeyCode], [ColumnCode], [NowSerial]) VALUES (N'2', N'T_Dev_Plan', N'K_Dev_Plan', N'PlanID', N'1')
GO
GO
INSERT INTO [dbo].[H_DMS_KEY_COLUMN] ([DBID], [TableCode], [KeyCode], [ColumnCode], [NowSerial]) VALUES (N'2', N'T_Dev_Check', N'K_Dev_Check', N'CheckID', N'1')
GO
GO
INSERT INTO [dbo].[H_DMS_KEY_COLUMN] ([DBID], [TableCode], [KeyCode], [ColumnCode], [NowSerial]) VALUES (N'2', N'T_Collect_Sugar', N'K_Collect_Sugar', N'SugarID', N'1')
GO
GO
INSERT INTO [dbo].[H_DMS_KEY_COLUMN] ([DBID], [TableCode], [KeyCode], [ColumnCode], [NowSerial]) VALUES (N'2', N'T_Collect_Area', N'K_Collect_Area', N'AreaID', N'1')
GO
GO
INSERT INTO [dbo].[H_DMS_KEY_COLUMN] ([DBID], [TableCode], [KeyCode], [ColumnCode], [NowSerial]) VALUES (N'2', N'T_Collect_Pest', N'K_Collect_Pest', N'PestID', N'1')
GO
GO
INSERT INTO [dbo].[H_DMS_KEY_COLUMN] ([DBID], [TableCode], [KeyCode], [ColumnCode], [NowSerial]) VALUES (N'2', N'T_Collect_Soil', N'K_Collect_Soil', N'SoilID', N'1')
GO
GO
INSERT INTO [dbo].[H_DMS_KEY_COLUMN] ([DBID], [TableCode], [KeyCode], [ColumnCode], [NowSerial]) VALUES (N'2', N'T_Collect_Hardness', N'K_Collect_Hardness', N'HardnessID', N'1')
GO
GO
INSERT INTO [dbo].[H_DMS_KEY_COLUMN] ([DBID], [TableCode], [KeyCode], [ColumnCode], [NowSerial]) VALUES (N'2', N'T_Collect_Insect', N'K_Collect_Insect', N'InsectID', N'1')
GO
GO
INSERT INTO [dbo].[H_DMS_KEY_COLUMN] ([DBID], [TableCode], [KeyCode], [ColumnCode], [NowSerial]) VALUES (N'2', N'T_Collect_Weather', N'K_Collect_Weather', N'WeatherID', N'1')
GO
GO
INSERT INTO [dbo].[H_DMS_KEY_COLUMN] ([DBID], [TableCode], [KeyCode], [ColumnCode], [NowSerial]) VALUES (N'2', N'T_Pmt_Insect_Kind', N'K_Pmt_Insect_Kind', N'InsectKind', N'1')
GO
GO
INSERT INTO [dbo].[H_DMS_KEY_COLUMN] ([DBID], [TableCode], [KeyCode], [ColumnCode], [NowSerial]) VALUES (N'3', N'T_Bus_Ask', N'K_Bus_Ask', N'AskID', N'1')
GO
GO
INSERT INTO [dbo].[H_DMS_KEY_COLUMN] ([DBID], [TableCode], [KeyCode], [ColumnCode], [NowSerial]) VALUES (N'3', N'T_Bas_City', N'K_Bas_City', N'CityID', N'1')
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
INSERT INTO [dbo].[H_DMS_TABLE] ([DBID], [TableName], [TableCode], [IsPmt], [NowSerial], [RecoDate], [PreSerial], [Comment]) VALUES (N'1', N'马铃薯展示数据表', N'P_POTATO_SHOW', N'0', N'1', N'2017-11-02 17:51:43.253', N'1', N'')
GO
GO
INSERT INTO [dbo].[H_DMS_TABLE] ([DBID], [TableName], [TableCode], [IsPmt], [NowSerial], [RecoDate], [PreSerial], [Comment]) VALUES (N'1', N'测试表', N'T_Bus_Test', N'0', N'1', N'2017-11-02 17:51:43.353', N'1', N'')
GO
GO
INSERT INTO [dbo].[H_DMS_TABLE] ([DBID], [TableName], [TableCode], [IsPmt], [NowSerial], [RecoDate], [PreSerial], [Comment]) VALUES (N'1', N'学生表', N'T_BUS_STU', N'0', N'1', N'2017-11-02 17:51:43.413', N'1', N'')
GO
GO
INSERT INTO [dbo].[H_DMS_TABLE] ([DBID], [TableName], [TableCode], [IsPmt], [NowSerial], [RecoDate], [PreSerial], [Comment]) VALUES (N'2', N'系统表-公司信息表', N'T_Sys_Company', N'0', N'1', N'2017-11-02 18:43:53.277', N'1', N'')
GO
GO
INSERT INTO [dbo].[H_DMS_TABLE] ([DBID], [TableName], [TableCode], [IsPmt], [NowSerial], [RecoDate], [PreSerial], [Comment]) VALUES (N'2', N'系统表-可操作机构表', N'T_Sys_User_Dept', N'0', N'1', N'2017-11-02 18:43:53.360', N'1', N'')
GO
GO
INSERT INTO [dbo].[H_DMS_TABLE] ([DBID], [TableName], [TableCode], [IsPmt], [NowSerial], [RecoDate], [PreSerial], [Comment]) VALUES (N'2', N'系统表-操作员信息表', N'T_Sys_User', N'0', N'1', N'2017-11-02 18:43:53.427', N'1', N'')
GO
GO
INSERT INTO [dbo].[H_DMS_TABLE] ([DBID], [TableName], [TableCode], [IsPmt], [NowSerial], [RecoDate], [PreSerial], [Comment]) VALUES (N'2', N'系统表-数据字段表', N'T_Db_Column', N'0', N'1', N'2017-11-02 18:43:53.557', N'1', N'')
GO
GO
INSERT INTO [dbo].[H_DMS_TABLE] ([DBID], [TableName], [TableCode], [IsPmt], [NowSerial], [RecoDate], [PreSerial], [Comment]) VALUES (N'2', N'系统表-数据库表', N'T_Db_Table', N'0', N'1', N'2017-11-02 18:43:53.640', N'1', N'')
GO
GO
INSERT INTO [dbo].[H_DMS_TABLE] ([DBID], [TableName], [TableCode], [IsPmt], [NowSerial], [RecoDate], [PreSerial], [Comment]) VALUES (N'2', N'系统表-机构信息表', N'T_Sys_Dept', N'0', N'1', N'2017-11-02 18:43:53.690', N'1', N'')
GO
GO
INSERT INTO [dbo].[H_DMS_TABLE] ([DBID], [TableName], [TableCode], [IsPmt], [NowSerial], [RecoDate], [PreSerial], [Comment]) VALUES (N'2', N'系统表-机构关系表', N'T_Sys_Dept_Tree', N'0', N'1', N'2017-11-02 18:43:53.777', N'1', N'')
GO
GO
INSERT INTO [dbo].[H_DMS_TABLE] ([DBID], [TableName], [TableCode], [IsPmt], [NowSerial], [RecoDate], [PreSerial], [Comment]) VALUES (N'2', N'系统表-系统参数表', N'T_Sys_Set', N'0', N'1', N'2017-11-02 18:43:53.823', N'1', N'')
GO
GO
INSERT INTO [dbo].[H_DMS_TABLE] ([DBID], [TableName], [TableCode], [IsPmt], [NowSerial], [RecoDate], [PreSerial], [Comment]) VALUES (N'2', N'系统表-系统参数（参数）表', N'T_Sys_User_Set', N'0', N'1', N'2017-11-02 18:43:53.877', N'1', N'')
GO
GO
INSERT INTO [dbo].[H_DMS_TABLE] ([DBID], [TableName], [TableCode], [IsPmt], [NowSerial], [RecoDate], [PreSerial], [Comment]) VALUES (N'2', N'系统表-系统序号表', N'T_Sys_Serial', N'0', N'1', N'2017-11-02 18:43:53.927', N'1', N'')
GO
GO
INSERT INTO [dbo].[H_DMS_TABLE] ([DBID], [TableName], [TableCode], [IsPmt], [NowSerial], [RecoDate], [PreSerial], [Comment]) VALUES (N'2', N'系统表-系统菜单组表', N'T_Sys_Menu_Group', N'0', N'1', N'2017-11-02 18:43:54.087', N'1', N'')
GO
GO
INSERT INTO [dbo].[H_DMS_TABLE] ([DBID], [TableName], [TableCode], [IsPmt], [NowSerial], [RecoDate], [PreSerial], [Comment]) VALUES (N'2', N'系统表-系统菜单表', N'T_Sys_Menu', N'0', N'1', N'2017-11-02 18:43:54.193', N'1', N'')
GO
GO
INSERT INTO [dbo].[H_DMS_TABLE] ([DBID], [TableName], [TableCode], [IsPmt], [NowSerial], [RecoDate], [PreSerial], [Comment]) VALUES (N'2', N'系统表-菜单操作权限明细表', N'T_Sys_Menu_Detail', N'0', N'1', N'2017-11-02 18:43:54.463', N'1', N'')
GO
GO
INSERT INTO [dbo].[H_DMS_TABLE] ([DBID], [TableName], [TableCode], [IsPmt], [NowSerial], [RecoDate], [PreSerial], [Comment]) VALUES (N'2', N'系统表-菜单操作权限设置表', N'T_Sys_Menu_Auth', N'0', N'1', N'2017-11-02 18:43:54.510', N'1', N'')
GO
GO
INSERT INTO [dbo].[H_DMS_TABLE] ([DBID], [TableName], [TableCode], [IsPmt], [NowSerial], [RecoDate], [PreSerial], [Comment]) VALUES (N'2', N'系统表-角色分配表', N'T_Sys_User_Role', N'0', N'1', N'2017-11-02 18:43:54.560', N'1', N'')
GO
GO
INSERT INTO [dbo].[H_DMS_TABLE] ([DBID], [TableName], [TableCode], [IsPmt], [NowSerial], [RecoDate], [PreSerial], [Comment]) VALUES (N'2', N'系统表-角色功能分配表', N'T_Sys_Role_Menu', N'0', N'1', N'2017-11-02 18:43:54.610', N'1', N'')
GO
GO
INSERT INTO [dbo].[H_DMS_TABLE] ([DBID], [TableName], [TableCode], [IsPmt], [NowSerial], [RecoDate], [PreSerial], [Comment]) VALUES (N'2', N'系统表-角色导航分配表', N'T_Sys_Role_Rib', N'0', N'1', N'2017-11-02 18:43:54.670', N'1', N'')
GO
GO
INSERT INTO [dbo].[H_DMS_TABLE] ([DBID], [TableName], [TableCode], [IsPmt], [NowSerial], [RecoDate], [PreSerial], [Comment]) VALUES (N'2', N'系统表-角色菜单操作权限明细表', N'T_Sys_Role_Detail', N'0', N'1', N'2017-11-02 18:43:54.720', N'1', N'')
GO
GO
INSERT INTO [dbo].[H_DMS_TABLE] ([DBID], [TableName], [TableCode], [IsPmt], [NowSerial], [RecoDate], [PreSerial], [Comment]) VALUES (N'2', N'系统表-角色表', N'T_Sys_Role', N'0', N'1', N'2017-11-02 18:43:54.770', N'1', N'')
GO
GO
INSERT INTO [dbo].[H_DMS_TABLE] ([DBID], [TableName], [TableCode], [IsPmt], [NowSerial], [RecoDate], [PreSerial], [Comment]) VALUES (N'2', N'系统表（参数）-交易动作表', N'T_Pmt_Tran_Action', N'1', N'1', N'2017-11-02 18:43:54.810', N'1', N'')
GO
GO
INSERT INTO [dbo].[H_DMS_TABLE] ([DBID], [TableName], [TableCode], [IsPmt], [NowSerial], [RecoDate], [PreSerial], [Comment]) VALUES (N'2', N'系统表（参数）-公司状态参数表', N'T_Pmt_Co_Status', N'1', N'1', N'2017-11-02 18:43:54.850', N'1', N'')
GO
GO
INSERT INTO [dbo].[H_DMS_TABLE] ([DBID], [TableName], [TableCode], [IsPmt], [NowSerial], [RecoDate], [PreSerial], [Comment]) VALUES (N'2', N'1001-基础表-省份表', N'T_Bas_Province', N'0', N'1', N'2017-11-02 18:43:54.887', N'1', N'')
GO
GO
INSERT INTO [dbo].[H_DMS_TABLE] ([DBID], [TableName], [TableCode], [IsPmt], [NowSerial], [RecoDate], [PreSerial], [Comment]) VALUES (N'2', N'1002-基础表-城市表', N'T_Bas_City', N'0', N'1', N'2017-11-02 18:43:54.930', N'1', N'')
GO
GO
INSERT INTO [dbo].[H_DMS_TABLE] ([DBID], [TableName], [TableCode], [IsPmt], [NowSerial], [RecoDate], [PreSerial], [Comment]) VALUES (N'2', N'1003-基础表-区县表', N'T_Bas_Area', N'0', N'1', N'2017-11-02 18:43:54.977', N'1', N'')
GO
GO
INSERT INTO [dbo].[H_DMS_TABLE] ([DBID], [TableName], [TableCode], [IsPmt], [NowSerial], [RecoDate], [PreSerial], [Comment]) VALUES (N'2', N'1004-基础表-乡镇表', N'T_Bas_Town', N'0', N'1', N'2017-11-02 18:43:55.030', N'1', N'')
GO
GO
INSERT INTO [dbo].[H_DMS_TABLE] ([DBID], [TableName], [TableCode], [IsPmt], [NowSerial], [RecoDate], [PreSerial], [Comment]) VALUES (N'2', N'1005-基础表-村域表', N'T_Bas_Village', N'0', N'1', N'2017-11-02 18:43:55.073', N'1', N'')
GO
GO
INSERT INTO [dbo].[H_DMS_TABLE] ([DBID], [TableName], [TableCode], [IsPmt], [NowSerial], [RecoDate], [PreSerial], [Comment]) VALUES (N'2', N'2001-业务表-基地信息表', N'T_Bus_Base', N'0', N'1', N'2017-11-02 18:43:55.117', N'1', N'')
GO
GO
INSERT INTO [dbo].[H_DMS_TABLE] ([DBID], [TableName], [TableCode], [IsPmt], [NowSerial], [RecoDate], [PreSerial], [Comment]) VALUES (N'2', N'2002-参数表-网络条件表', N'T_Pmt_Net_Status', N'1', N'1', N'2017-11-02 18:43:55.323', N'1', N'')
GO
GO
INSERT INTO [dbo].[H_DMS_TABLE] ([DBID], [TableName], [TableCode], [IsPmt], [NowSerial], [RecoDate], [PreSerial], [Comment]) VALUES (N'2', N'2002-参数表-经营主体表', N'T_Pmt_Busi_Status', N'1', N'1', N'2017-11-02 18:43:55.367', N'1', N'')
GO
GO
INSERT INTO [dbo].[H_DMS_TABLE] ([DBID], [TableName], [TableCode], [IsPmt], [NowSerial], [RecoDate], [PreSerial], [Comment]) VALUES (N'2', N'2002-参数表-生产资质表', N'T_Pmt_Prd_Status', N'1', N'1', N'2017-11-02 18:43:55.407', N'1', N'')
GO
GO
INSERT INTO [dbo].[H_DMS_TABLE] ([DBID], [TableName], [TableCode], [IsPmt], [NowSerial], [RecoDate], [PreSerial], [Comment]) VALUES (N'2', N'2002-参数表-种植地形表', N'T_Pmt_Plan_Land', N'1', N'1', N'2017-11-02 18:43:55.447', N'1', N'')
GO
GO
INSERT INTO [dbo].[H_DMS_TABLE] ([DBID], [TableName], [TableCode], [IsPmt], [NowSerial], [RecoDate], [PreSerial], [Comment]) VALUES (N'2', N'2002-参数表-定植方式表', N'T_Pmt_Plan_Method', N'1', N'1', N'2017-11-02 18:43:55.487', N'1', N'')
GO
GO
INSERT INTO [dbo].[H_DMS_TABLE] ([DBID], [TableName], [TableCode], [IsPmt], [NowSerial], [RecoDate], [PreSerial], [Comment]) VALUES (N'2', N'2002-参数表-学历表', N'T_Pmt_Degree_Type', N'1', N'1', N'2017-11-02 18:43:55.527', N'1', N'')
GO
GO
INSERT INTO [dbo].[H_DMS_TABLE] ([DBID], [TableName], [TableCode], [IsPmt], [NowSerial], [RecoDate], [PreSerial], [Comment]) VALUES (N'2', N'2011-业务表-设备信息表', N'T_Info_Dev', N'0', N'1', N'2017-11-02 18:43:55.567', N'1', N'')
GO
GO
INSERT INTO [dbo].[H_DMS_TABLE] ([DBID], [TableName], [TableCode], [IsPmt], [NowSerial], [RecoDate], [PreSerial], [Comment]) VALUES (N'2', N'2012-参数表-设备类型表', N'T_Pmt_Dev_Type', N'1', N'1', N'2017-11-02 18:43:55.683', N'1', N'')
GO
GO
INSERT INTO [dbo].[H_DMS_TABLE] ([DBID], [TableName], [TableCode], [IsPmt], [NowSerial], [RecoDate], [PreSerial], [Comment]) VALUES (N'2', N'2012-参数表-设备状态表', N'T_Pmt_Dev_Status', N'1', N'1', N'2017-11-02 18:43:55.730', N'1', N'')
GO
GO
INSERT INTO [dbo].[H_DMS_TABLE] ([DBID], [TableName], [TableCode], [IsPmt], [NowSerial], [RecoDate], [PreSerial], [Comment]) VALUES (N'2', N'2021-业务表-设备维修记录表', N'T_Dev_Repair', N'0', N'1', N'2017-11-02 18:43:55.770', N'1', N'')
GO
GO
INSERT INTO [dbo].[H_DMS_TABLE] ([DBID], [TableName], [TableCode], [IsPmt], [NowSerial], [RecoDate], [PreSerial], [Comment]) VALUES (N'2', N'2031-业务表-设备期间核查计划表', N'T_Dev_Plan', N'0', N'1', N'2017-11-02 18:43:55.860', N'1', N'')
GO
GO
INSERT INTO [dbo].[H_DMS_TABLE] ([DBID], [TableName], [TableCode], [IsPmt], [NowSerial], [RecoDate], [PreSerial], [Comment]) VALUES (N'2', N'2032-业务表-设备期间核查记录表', N'T_Dev_Check', N'0', N'1', N'2017-11-02 18:43:55.930', N'1', N'')
GO
GO
INSERT INTO [dbo].[H_DMS_TABLE] ([DBID], [TableName], [TableCode], [IsPmt], [NowSerial], [RecoDate], [PreSerial], [Comment]) VALUES (N'2', N'3001-业务表-糖度采集表', N'T_Collect_Sugar', N'0', N'1', N'2017-11-02 18:43:56.017', N'1', N'')
GO
GO
INSERT INTO [dbo].[H_DMS_TABLE] ([DBID], [TableName], [TableCode], [IsPmt], [NowSerial], [RecoDate], [PreSerial], [Comment]) VALUES (N'2', N'3002-业务表-面积测量采集表', N'T_Collect_Area', N'0', N'1', N'2017-11-02 18:43:56.097', N'1', N'')
GO
GO
INSERT INTO [dbo].[H_DMS_TABLE] ([DBID], [TableName], [TableCode], [IsPmt], [NowSerial], [RecoDate], [PreSerial], [Comment]) VALUES (N'2', N'3003-业务表-农药残留采集表', N'T_Collect_Pest', N'0', N'1', N'2017-11-02 18:43:56.180', N'1', N'')
GO
GO
INSERT INTO [dbo].[H_DMS_TABLE] ([DBID], [TableName], [TableCode], [IsPmt], [NowSerial], [RecoDate], [PreSerial], [Comment]) VALUES (N'2', N'3004-业务表-土壤养分采集表', N'T_Collect_Soil', N'0', N'1', N'2017-11-02 18:43:56.273', N'1', N'')
GO
GO
INSERT INTO [dbo].[H_DMS_TABLE] ([DBID], [TableName], [TableCode], [IsPmt], [NowSerial], [RecoDate], [PreSerial], [Comment]) VALUES (N'2', N'3005-业务表-果实硬度采集表', N'T_Collect_Hardness', N'0', N'1', N'2017-11-02 18:43:56.437', N'1', N'')
GO
GO
INSERT INTO [dbo].[H_DMS_TABLE] ([DBID], [TableName], [TableCode], [IsPmt], [NowSerial], [RecoDate], [PreSerial], [Comment]) VALUES (N'2', N'3006-业务表-病虫害调查表', N'T_Collect_Insect', N'0', N'1', N'2017-11-02 18:43:56.523', N'1', N'')
GO
GO
INSERT INTO [dbo].[H_DMS_TABLE] ([DBID], [TableName], [TableCode], [IsPmt], [NowSerial], [RecoDate], [PreSerial], [Comment]) VALUES (N'2', N'3008-业务表-无线农业气象表', N'T_Collect_Weather', N'0', N'1', N'2017-11-02 18:43:56.620', N'1', N'')
GO
GO
INSERT INTO [dbo].[H_DMS_TABLE] ([DBID], [TableName], [TableCode], [IsPmt], [NowSerial], [RecoDate], [PreSerial], [Comment]) VALUES (N'2', N'3007-参数表-病虫害种类', N'T_Pmt_Insect_Kind', N'1', N'1', N'2017-11-02 18:43:56.790', N'1', N'')
GO
GO
INSERT INTO [dbo].[H_DMS_TABLE] ([DBID], [TableName], [TableCode], [IsPmt], [NowSerial], [RecoDate], [PreSerial], [Comment]) VALUES (N'3', N'问题表', N'T_Bus_Ask', N'0', N'1', N'2017-11-02 19:01:32.820', N'1', N'')
GO
GO
INSERT INTO [dbo].[H_DMS_TABLE] ([DBID], [TableName], [TableCode], [IsPmt], [NowSerial], [RecoDate], [PreSerial], [Comment]) VALUES (N'3', N'基础表-城市表', N'T_Bas_City', N'0', N'1', N'2017-11-02 19:01:32.897', N'1', N'')
GO
GO

-- ----------------------------
-- Table structure for T_Bus_Project
-- ----------------------------
DROP TABLE [dbo].[T_Bus_Project]
GO
CREATE TABLE [dbo].[T_Bus_Project] (
[ProjectID] varchar(20) NOT NULL ,
[ProjectCode] nvarchar(20) NOT NULL ,
[ProjectName] nvarchar(50) NOT NULL ,
[ProjectType] varchar(2) NOT NULL ,
[ProjectManager] varchar(14) NOT NULL ,
[WorkDate] decimal(10,2) NOT NULL ,
[WorkUnit] varchar(2) NOT NULL ,
[ProjectDesc] text NULL ,
[TranDate] datetime NULL ,
[TranUser] varchar(10) NULL 
)


GO

-- ----------------------------
-- Records of T_Bus_Project
-- ----------------------------
INSERT INTO [dbo].[T_Bus_Project] ([ProjectID], [ProjectCode], [ProjectName], [ProjectType], [ProjectManager], [WorkDate], [WorkUnit], [ProjectDesc], [TranDate], [TranUser]) VALUES (N'PK201711060000000005', N'444', N'222', N'01', N'999', N'222.00', N'01', N'222', N'2017-11-07 18:00:29.910', N'999')
GO
GO
INSERT INTO [dbo].[T_Bus_Project] ([ProjectID], [ProjectCode], [ProjectName], [ProjectType], [ProjectManager], [WorkDate], [WorkUnit], [ProjectDesc], [TranDate], [TranUser]) VALUES (N'PK201711070000000001', N'333', N'33', N'02', N'999', N'33.00', N'01', N'333', N'2017-11-07 19:19:07.167', N'999')
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
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'1', N'P_POTATO_SHOW', N'1', N'主键', N'PPSID', N'NUMBER', N'0', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'1', N'P_POTATO_SHOW', N'2', N'省份名称', N'PROVINCENAME', N'varchar(50)', N'50', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'1', N'P_POTATO_SHOW', N'3', N'城市名称', N'CITYNAME', N'varchar(50)', N'50', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'1', N'P_POTATO_SHOW', N'4', N'区县名称', N'COUNTYNAME', N'varchar(50)', N'50', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'1', N'P_POTATO_SHOW', N'5', N'设备名称', N'DEVNAME', N'varchar(50)', N'50', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'1', N'P_POTATO_SHOW', N'6', N'开始时间', N'STARTDATE', N'DATE', N'0', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'1', N'P_POTATO_SHOW', N'7', N'区县编号', N'SCCID', N'NUMBER', N'0', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'1', N'P_POTATO_SHOW', N'8', N'代', N'GENERATION', N'INT', N'0', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'1', N'P_POTATO_SHOW', N'9', N'次', N'TIMES', N'INT', N'0', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'1', N'P_POTATO_SHOW', N'10', N'经度', N'LONGITUDE', N'NUMBER(12,2)', N'12', N'2', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'1', N'P_POTATO_SHOW', N'11', N'纬度', N'LATITUDE', N'NUMBER(12,2)', N'12', N'2', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'1', N'P_POTATO_SHOW', N'12', N'积分', N'SCORE', N'DECIMAL(10,2)', N'10', N'2', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'1', N'T_Bus_Test', N'1', N'测试编号', N'TestID', N'VARCHAR2(20)', N'20', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'1', N'T_Bus_Test', N'2', N'测试名称', N'TestName', N'VARCHAR2(10)', N'10', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'1', N'T_BUS_STU', N'1', N'学生编号', N'STUID', N'NUMBER', N'0', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'1', N'T_BUS_STU', N'2', N'学生名称', N'STUNAME', N'VARCHAR2(10)', N'10', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'1', N'T_BUS_STU', N'3', N'年龄', N'STUAGE', N'INT', N'0', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'1', N'T_BUS_STU', N'4', N'学历', N'EDUCATION', N'VARCHAR2(20)', N'20', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'1', N'T_BUS_STU', N'5', N'家庭住址', N'STUADDR', N'VARCHAR2(100)', N'100', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'1', N'T_BUS_STU', N'6', N'父亲', N'STUFARTHER', N'VARCHAR2(10)', N'10', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'1', N'T_BUS_STU', N'7', N'母亲', N'STUMOTHER', N'VARCHAR2(10)', N'10', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Sys_Company', N'1', N'公司编码', N'CoID', N'varchar(2)', N'2', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Sys_Company', N'2', N'公司名称', N'CoName', N'varchar(40)', N'40', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Sys_Company', N'3', N'公司简称', N'CoShort', N'varchar(6)', N'6', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Sys_Company', N'4', N'打印抬头', N'CoHeader', N'varchar(40)', N'40', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Sys_Company', N'5', N'排序序号', N'SortOrder', N'smallint', N'0', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Sys_Company', N'6', N'公司类型', N'CoType', N'varchar(1)', N'1', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Sys_Company', N'7', N'公司状态', N'CoStatus', N'varchar(1)', N'1', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Sys_Company', N'8', N'备用', N'Remark', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Sys_User_Dept', N'1', N'操作员编号', N'UserID', N'varchar(14)', N'14', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Sys_User_Dept', N'2', N'机构编号', N'DeptID', N'varchar(6)', N'6', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Sys_User_Dept', N'3', N'机构名称', N'DeptName', N'varchar(40)', N'40', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Sys_User', N'1', N'操作员编号', N'UserID', N'varchar(14)', N'14', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Sys_User', N'2', N'操作员姓名', N'UserName', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Sys_User', N'3', N'所属机构', N'DeptID', N'varchar(6)', N'6', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Sys_User', N'4', N'所属公司', N'CoID', N'varchar(2)', N'2', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Sys_User', N'5', N'创建日期', N'CrtDate', N'datetime', N'0', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Sys_User', N'6', N'操作员岗位', N'UserPost', N'varchar(2)', N'2', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Sys_User', N'7', N'操作员级别', N'UserLevel', N'varchar(2)', N'2', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Sys_User', N'8', N'操作员职务', N'UserTitle', N'varchar(2)', N'2', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Sys_User', N'9', N'操作员状态', N'UserStatus', N'varchar(1)', N'1', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Sys_User', N'10', N'登陆密码', N'UserPassword', N'varchar(50)', N'50', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Sys_User', N'11', N'业务流水号', N'UserSerial', N'int', N'0', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Sys_User', N'12', N'当前工作日期', N'WorkDate', N'varchar(8)', N'8', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Sys_User', N'13', N'上一有效工作日', N'PreWorkDate', N'varchar(8)', N'8', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Sys_User', N'14', N'数据权限范围', N'AuthBound', N'varchar(1)', N'1', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Sys_User', N'15', N'是否系统管理员', N'IsAdmin', N'bit', N'0', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Sys_User', N'16', N'是否锁定', N'IsLock', N'bit', N'0', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Sys_User', N'17', N'是否首次登录', N'IsFirst', N'bit', N'0', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Sys_User', N'18', N'输错密码次数', N'ErrorPassword', N'smallint', N'0', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Sys_User', N'19', N'操作员电话', N'UserTele', N'varchar(32)', N'32', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Sys_User', N'20', N'操作员电子邮件', N'UserEmail', N'varchar(32)', N'32', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Sys_User', N'21', N'密码最后修改日期', N'ModifyPassword', N'datetime', N'0', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Sys_User', N'22', N'备用', N'Remark', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Db_Column', N'1', N'表编号', N'TableID', N'varchar(6)', N'6', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Db_Column', N'2', N'字段编号', N'ColumnSerail', N'smallint', N'0', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Db_Column', N'3', N'字段名称', N'CloumnName', N'varchar(40)', N'40', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Db_Column', N'4', N'字段代码', N'ColumnCode', N'varchar(40)', N'40', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Db_Column', N'5', N'数据类型', N'ColType', N'varchar(1)', N'1', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Db_Column', N'6', N'字段长度', N'ColumnLength', N'smallint', N'0', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Db_Column', N'7', N'字段精度', N'ColumnPercision', N'smallint', N'0', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Db_Column', N'8', N'是否为主键', N'IsKey', N'bit', N'0', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Db_Column', N'9', N'是否为空', N'IsNull', N'bit', N'0', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Db_Table', N'1', N'表编号', N'TableID', N'varchar(6)', N'6', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Db_Table', N'2', N'表名称', N'TableName', N'varchar(40)', N'40', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Db_Table', N'3', N'表代码', N'TableCode', N'varchar(40)', N'40', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Db_Table', N'4', N'主键字段', N'TableKey', N'varchar(50)', N'50', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Db_Table', N'5', N'名称字段', N'TableKeyName', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Sys_Dept', N'1', N'机构编号', N'DeptID', N'varchar(6)', N'6', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Sys_Dept', N'2', N'机构名称', N'DeptName', N'varchar(40)', N'40', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Sys_Dept', N'3', N'机构简称', N'DeptShort', N'varchar(6)', N'6', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Sys_Dept', N'4', N'所属公司', N'CoID', N'varchar(2)', N'2', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Sys_Dept', N'5', N'上级机构编号', N'DeptPID', N'varchar(6)', N'6', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Sys_Dept', N'6', N'城市代码', N'CityCode', N'varchar(6)', N'6', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Sys_Dept', N'7', N'机构级别', N'DeptLevel', N'varchar(2)', N'2', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Sys_Dept', N'8', N'机构类别', N'DeptType', N'varchar(2)', N'2', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Sys_Dept', N'9', N'机构层次深度', N'DeptDepth', N'int', N'0', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Sys_Dept', N'10', N'排序序号', N'SortOrder', N'int', N'0', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Sys_Dept', N'11', N'机构状态', N'DeptStatus', N'varchar(1)', N'1', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Sys_Dept', N'12', N'备用', N'Remark', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Sys_Dept_Tree', N'1', N'父机构编号', N'DeptPID', N'varchar(6)', N'6', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Sys_Dept_Tree', N'2', N'子机构编号', N'DeptID', N'varchar(6)', N'6', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Sys_Dept_Tree', N'3', N'子机构名称', N'DeptName', N'varchar(40)', N'40', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Sys_Set', N'1', N'参数编码', N'SetCode', N'varchar(30)', N'30', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Sys_Set', N'2', N'参数名称', N'SetName', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Sys_Set', N'3', N'参数值', N'SetValue', N'varchar(64)', N'64', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Sys_Set', N'4', N'是否可修改', N'IsModify', N'bit', N'0', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Sys_Set', N'5', N'参数类型', N'ColType', N'varchar(1)', N'1', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Sys_Set', N'6', N'是否可为个人参数', N'IsUser', N'bit', N'0', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Sys_User_Set', N'1', N'用户编号', N'UserID', N'varchar(14)', N'14', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Sys_User_Set', N'2', N'参数编码', N'SetCode', N'varchar(30)', N'30', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Sys_User_Set', N'3', N'参数值', N'SetValue', N'varchar(64)', N'64', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Sys_User_Set', N'4', N'参数类型', N'ColType', N'varchar(1)', N'1', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Sys_Serial', N'1', N'序号编号', N'SerialID', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Sys_Serial', N'2', N'序号当前值', N'SerialValue', N'int', N'0', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Sys_Menu_Group', N'1', N'菜单组编号', N'MgID', N'smallint', N'0', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Sys_Menu_Group', N'2', N'菜单组名称', N'MgName', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Sys_Menu_Group', N'3', N'菜单组描述', N'MgTip', N'varchar(40)', N'40', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Sys_Menu_Group', N'4', N'正常状态显示图标', N'MgNormalIcon', N'varchar(32)', N'32', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Sys_Menu_Group', N'5', N'激活状态显示图标', N'MgHotIcon', N'varchar(32)', N'32', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Sys_Menu_Group', N'6', N'无效状态显示图标', N'MgDisableIcon', N'varchar(32)', N'32', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Sys_Menu_Group', N'7', N'菜单组功能函数接口', N'MgFunction', N'varchar(64)', N'64', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Sys_Menu_Group', N'8', N'菜单组状态', N'MgStatus', N'varchar(1)', N'1', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Sys_Menu_Group', N'9', N'排序', N'MgOrder', N'smallint', N'0', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Sys_Menu', N'1', N'菜单编号', N'MID', N'smallint', N'0', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Sys_Menu', N'2', N'菜单名称', N'MName', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Sys_Menu', N'3', N'父菜单编号', N'MPID', N'smallint', N'0', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Sys_Menu', N'4', N'菜单组编号', N'MgID', N'smallint', N'0', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Sys_Menu', N'5', N'菜单层次', N'MDepth', N'smallint', N'0', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Sys_Menu', N'6', N'显示顺序', N'MDisp', N'smallint', N'0', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Sys_Menu', N'7', N'菜单权限定义', N'MAuth', N'int', N'0', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Sys_Menu', N'8', N'菜单功能描述', N'MTip', N'varchar(60)', N'60', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Sys_Menu', N'9', N'菜单功能函数接口', N'MFunction', N'varchar(64)', N'64', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Sys_Menu', N'10', N'菜单下显示分割线', N'IsLine', N'bit', N'0', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Sys_Menu', N'11', N'是否存在子菜单', N'IsSub', N'bit', N'0', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Sys_Menu', N'12', N'第一个子菜单编号', N'MSID', N'smallint', N'0', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Sys_Menu', N'13', N'正常状态显示图标', N'MNormalIcon', N'varchar(32)', N'32', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Sys_Menu', N'14', N'激活状态显示图标', N'MHotIcon', N'varchar(32)', N'32', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Sys_Menu', N'15', N'无效状态显示图标', N'MDisableIcon', N'varchar(32)', N'32', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Sys_Menu', N'16', N'基础菜单标志', N'IsBase', N'bit', N'0', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Sys_Menu', N'17', N'菜单功能代码', N'MCode', N'varchar(12)', N'12', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Sys_Menu', N'18', N'菜单状态', N'MStatus', N'varchar(1)', N'1', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Sys_Menu', N'19', N'菜单快捷方式', N'MShortcut', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Sys_Menu', N'20', N'是否直接窗口打开', N'IsTab', N'bit', N'0', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Sys_Menu', N'21', N'是否单机版', N'IsMutil', N'bit', N'0', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Sys_Menu_Detail', N'1', N'权限类型编号', N'AuthID', N'smallint', N'0', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Sys_Menu_Detail', N'2', N'菜单编号', N'MID', N'smallint', N'0', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Sys_Menu_Auth', N'1', N'权限类型编号', N'AuthID', N'smallint', N'0', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Sys_Menu_Auth', N'2', N'权限类型名称', N'AuthName', N'varchar(10)', N'10', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Sys_Menu_Auth', N'3', N'权限类型编码', N'AuthCode', N'varchar(10)', N'10', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Sys_User_Role', N'1', N'操作员编号', N'UserID', N'varchar(14)', N'14', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Sys_User_Role', N'2', N'角色编号', N'RoleID', N'smallint', N'0', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Sys_Role_Menu', N'1', N'角色编号', N'RoleID', N'smallint', N'0', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Sys_Role_Menu', N'2', N'菜单编号', N'MID', N'smallint', N'0', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Sys_Role_Menu', N'3', N'权限定义', N'MAuth', N'int', N'0', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Sys_Role_Rib', N'1', N'角色编号', N'RoleID', N'smallint', N'0', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Sys_Role_Rib', N'2', N'导航按钮编号', N'RibBtn', N'int', N'0', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Sys_Role_Detail', N'1', N'权限类型编号', N'AuthID', N'smallint', N'0', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Sys_Role_Detail', N'2', N'菜单编号', N'MID', N'smallint', N'0', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Sys_Role_Detail', N'3', N'角色编号', N'RoleID', N'smallint', N'0', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Sys_Role', N'1', N'角色编号', N'RoleID', N'smallint', N'0', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Sys_Role', N'2', N'角色名称', N'RoleName', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Pmt_Tran_Action', N'1', N'交易动作编号', N'TranAction', N'varchar(2)', N'2', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Pmt_Tran_Action', N'2', N'交易动作名称', N'TranActionName', N'varchar(10)', N'10', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Pmt_Co_Status', N'1', N'公司状态编号', N'CoStatus', N'varchar(1)', N'1', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Pmt_Co_Status', N'2', N'公司状态名称', N'CoStatusName', N'varchar(10)', N'10', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Bas_Province', N'1', N'省份编号', N'ProvinceID', N'varchar(6)', N'6', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Bas_Province', N'2', N'省份', N'ProvinceName', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Bas_City', N'1', N'城市编号', N'CityID', N'varchar(6)', N'6', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Bas_City', N'2', N'城市名称', N'CityName', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Bas_City', N'3', N'所属省份', N'ProvinceID', N'varchar(6)', N'6', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Bas_City', N'4', N'城市编码', N'CityCode', N'varchar(2)', N'2', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Bas_Area', N'1', N'区编号', N'AreaID', N'varchar(6)', N'6', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Bas_Area', N'2', N'区名称', N'AreaName', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Bas_Area', N'3', N'所属城市', N'CityID', N'varchar(6)', N'6', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Bas_Area', N'4', N'区县编号', N'AreaCode', N'varchar(4)', N'4', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Bas_Town', N'1', N'镇编号', N'TownID', N'varchar(6)', N'6', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Bas_Town', N'2', N'镇名称', N'TownName', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Bas_Town', N'3', N'所属区', N'AreaID', N'varchar(6)', N'6', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Bas_Village', N'1', N'村编号', N'VillageID', N'varchar(8)', N'8', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Bas_Village', N'2', N'村名称', N'VillageName', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Bas_Village', N'3', N'所属镇', N'TownID', N'varchar(6)', N'6', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Bus_Base', N'1', N'基地编号', N'BaseID', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Bus_Base', N'2', N'基地名称', N'BaseName', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Bus_Base', N'3', N'所属城市', N'CityID', N'varchar(6)', N'6', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Bus_Base', N'4', N'所属区县', N'AreaID', N'varchar(6)', N'6', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Bus_Base', N'5', N'所属乡镇', N'TownID', N'varchar(6)', N'6', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Bus_Base', N'6', N'所属村域', N'VillageID', N'varchar(8)', N'8', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Bus_Base', N'7', N'详细地址', N'AddrInfo', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Bus_Base', N'8', N'营业执照', N'BusiLic', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Bus_Base', N'9', N'经纬度', N'BaseCoord', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Bus_Base', N'10', N'基地联系方式', N'BaseTele', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Bus_Base', N'11', N'网络条件', N'NetStatus', N'varchar(2)', N'2', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Bus_Base', N'12', N'经营主体', N'BusiStatus', N'varchar(2)', N'2', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Bus_Base', N'13', N'生产资质', N'PrdStatus', N'varchar(2)', N'2', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Bus_Base', N'14', N'种植面积', N'PlanArea', N'decimal(10,2)', N'10', N'2', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Bus_Base', N'15', N'去年种植面积', N'LastArea', N'decimal(10,2)', N'10', N'2', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Bus_Base', N'16', N'投产面积', N'PrdArea', N'decimal(10,2)', N'10', N'2', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Bus_Base', N'17', N'新建果园面积', N'NewArea', N'decimal(10,2)', N'10', N'2', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Bus_Base', N'18', N'主要种植品种和授粉方式', N'BreedPoll', N'varchar(100)', N'100', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Bus_Base', N'19', N'种植地形', N'PlanLand', N'varchar(2)', N'2', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Bus_Base', N'20', N'定植方式', N'PlanMethod', N'varchar(2)', N'2', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Bus_Base', N'21', N'建园时间', N'BuildDate', N'datetime', N'0', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Bus_Base', N'22', N'平均苗龄', N'AvgAge', N'decimal(5,2)', N'5', N'2', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Bus_Base', N'23', N'亩产量', N'PerOut', N'decimal(10,2)', N'10', N'2', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Bus_Base', N'24', N'亩产量去年同期数', N'LastPerOut', N'decimal(10,2)', N'10', N'2', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Bus_Base', N'25', N'年产量', N'YearOut', N'decimal(10,2)', N'10', N'2', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Bus_Base', N'26', N'年产量去年同期数', N'LastYearOut', N'decimal(10,2)', N'10', N'2', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Bus_Base', N'27', N'年批次数', N'YearBatch', N'int', N'0', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Bus_Base', N'28', N'年产值', N'YearValue', N'decimal(10,2)', N'10', N'2', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Bus_Base', N'29', N'年销售总量', N'YearQty', N'decimal(10,2)', N'10', N'2', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Bus_Base', N'30', N'大果占比', N'BigPercent', N'decimal(5,2)', N'5', N'2', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Bus_Base', N'31', N'毛果占比', N'ComosePercent', N'decimal(5,2)', N'5', N'2', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Bus_Base', N'32', N'负责人姓名', N'ChargeName', N'varchar(10)', N'10', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Bus_Base', N'33', N'籍贯', N'NativePlace', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Bus_Base', N'34', N'年龄', N'ChargeAge', N'int', N'0', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Bus_Base', N'35', N'负责人联系方式', N'ChargeTele', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Bus_Base', N'36', N'学历', N'DegreeType', N'varchar(2)', N'2', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Bus_Base', N'37', N'身份证号', N'CardCode', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Bus_Base', N'38', N'管理者人数', N'ManagerCount', N'int', N'0', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Bus_Base', N'39', N'固定工人数', N'WorkerCount', N'int', N'0', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Bus_Base', N'40', N'年使用临时工数', N'TempCount', N'int', N'0', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Bus_Base', N'41', N'固定工负责工作', N'WorkerDesc', N'varchar(100)', N'100', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Bus_Base', N'42', N'临时工负责工作', N'TempDesc', N'varchar(100)', N'100', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Bus_Base', N'43', N'填写人', N'TranUser', N'varchar(14)', N'14', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Bus_Base', N'44', N'填写人姓名', N'TranUserName', N'varchar(10)', N'10', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Bus_Base', N'45', N'填写时间', N'TranDate', N'datetime', N'0', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Pmt_Net_Status', N'1', N'网络条件编号', N'NetStatus', N'varchar(2)', N'2', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Pmt_Net_Status', N'2', N'网络条件名称', N'NetStatusName', N'varchar(10)', N'10', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Pmt_Busi_Status', N'1', N'经营主体编号', N'BusiStatus', N'varchar(2)', N'2', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Pmt_Busi_Status', N'2', N'经营主体名称', N'BusiStatusName', N'varchar(10)', N'10', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Pmt_Prd_Status', N'1', N'生产资质编号', N'PrdStatus', N'varchar(2)', N'2', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Pmt_Prd_Status', N'2', N'生产资质名称', N'PrdStatusName', N'varchar(10)', N'10', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Pmt_Plan_Land', N'1', N'种植地形编号', N'PlanLand', N'varchar(2)', N'2', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Pmt_Plan_Land', N'2', N'种植地形名称', N'PlanLandName', N'varchar(10)', N'10', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Pmt_Plan_Method', N'1', N'定植方式编号', N'PlanMethod', N'varchar(2)', N'2', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Pmt_Plan_Method', N'2', N'定植方式名称', N'PlanMethodName', N'varchar(10)', N'10', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Pmt_Degree_Type', N'1', N'学历编号', N'DegreeType', N'varchar(2)', N'2', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Pmt_Degree_Type', N'2', N'学历名称', N'DegreeTypeName', N'varchar(10)', N'10', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Info_Dev', N'1', N'设备编号', N'DevID', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Info_Dev', N'2', N'设备名称', N'DevName', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Info_Dev', N'3', N'基地编号', N'BaseID', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Info_Dev', N'4', N'基地名称', N'BaseName', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Info_Dev', N'5', N'安装时间', N'InstallDate', N'datetime', N'0', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Info_Dev', N'6', N'安装人员', N'InstallUser', N'varchar(10)', N'10', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Info_Dev', N'7', N'设备类型', N'DevType', N'varchar(2)', N'2', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Info_Dev', N'8', N'设备状态', N'DevStatus', N'varchar(2)', N'2', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Info_Dev', N'9', N'设备经纬度', N'DevCoord', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Info_Dev', N'10', N'维修联系人', N'RepairUser', N'varchar(10)', N'10', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Info_Dev', N'11', N'维修人电话', N'RepairTele', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Info_Dev', N'12', N'设备维修次数', N'RepairCount', N'int', N'0', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Info_Dev', N'13', N'目前设备持有人', N'DevOwner', N'varchar(10)', N'10', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Info_Dev', N'14', N'持有人电话', N'OwnerTele', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Info_Dev', N'15', N'备注说明', N'Remark', N'varchar(200)', N'200', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Info_Dev', N'16', N'所属省份', N'ProvinceID', N'varchar(6)', N'6', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Info_Dev', N'17', N'所属城市', N'CityID', N'varchar(6)', N'6', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Info_Dev', N'18', N'所属区县', N'AreaID', N'varchar(6)', N'6', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Info_Dev', N'19', N'所属乡镇', N'TownID', N'varchar(6)', N'6', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Info_Dev', N'20', N'所属村域', N'VillageID', N'varchar(8)', N'8', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Info_Dev', N'21', N'填写人', N'TranUser', N'varchar(14)', N'14', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Info_Dev', N'22', N'填写人姓名', N'TranUserName', N'varchar(10)', N'10', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Info_Dev', N'23', N'填写人部门', N'TranDept', N'varchar(6)', N'6', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Info_Dev', N'24', N'填写时间', N'TranDate', N'datetime', N'0', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Pmt_Dev_Type', N'1', N'设备类型编号', N'DevType', N'varchar(2)', N'2', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Pmt_Dev_Type', N'2', N'设备类型', N'DevTypeName', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Pmt_Dev_Status', N'1', N'设备状态编号', N'DevStatus', N'varchar(2)', N'2', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Pmt_Dev_Status', N'2', N'设备状态', N'DevStatusName', N'varchar(10)', N'10', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Dev_Repair', N'1', N'设备维修记录编号', N'RepairID', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Dev_Repair', N'2', N'故障设备编号', N'DevID', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Dev_Repair', N'3', N'故障设备名称', N'DevName', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Dev_Repair', N'4', N'电话沟通记录', N'TeleRecord', N'varchar(200)', N'200', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Dev_Repair', N'5', N'维修完成时间', N'FinishDate', N'datetime', N'0', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Dev_Repair', N'6', N'维修过程记录', N'RepairDesc', N'varchar(300)', N'300', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Dev_Repair', N'7', N'本次维修花费', N'RepairCost', N'decimal(10,2)', N'10', N'2', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Dev_Repair', N'8', N'维修满意度评价', N'RepairEval', N'varchar(100)', N'100', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Dev_Repair', N'9', N'是否已维修', N'IsRepair', N'bit', N'0', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Dev_Repair', N'10', N'填写人', N'TranUser', N'varchar(14)', N'14', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Dev_Repair', N'11', N'填写人姓名', N'TranUserName', N'varchar(10)', N'10', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Dev_Repair', N'12', N'填写人部门', N'TranDept', N'varchar(6)', N'6', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Dev_Repair', N'13', N'填写时间', N'TranDate', N'datetime', N'0', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Dev_Plan', N'1', N'计划编号', N'PlanID', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Dev_Plan', N'2', N'设备编号', N'DevID', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Dev_Plan', N'3', N'设备名称', N'DevName', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Dev_Plan', N'4', N'核查开始时间', N'BeginDate', N'datetime', N'0', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Dev_Plan', N'5', N'核查结束时间', N'EndDate', N'datetime', N'0', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Dev_Plan', N'6', N'是否完成', N'IsComplete', N'bit', N'0', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Dev_Plan', N'7', N'填写人', N'TranUser', N'varchar(14)', N'14', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Dev_Plan', N'8', N'填写人姓名', N'TranUserName', N'varchar(10)', N'10', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Dev_Plan', N'9', N'填写人部门', N'TranDept', N'varchar(6)', N'6', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Dev_Plan', N'10', N'填写时间', N'TranDate', N'datetime', N'0', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Dev_Check', N'1', N'核查编号', N'CheckID', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Dev_Check', N'2', N'计划编号', N'PlanID', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Dev_Check', N'3', N'仪器编号', N'DevID', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Dev_Check', N'4', N'仪器名称', N'DevName', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Dev_Check', N'5', N'上次检定日期', N'LastCheck', N'datetime', N'0', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Dev_Check', N'6', N'测量范围', N'DevRange', N'varchar(40)', N'40', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Dev_Check', N'7', N'核查精度', N'DevPrecision', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Dev_Check', N'8', N'检查日期', N'CheckDate', N'datetime', N'0', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Dev_Check', N'9', N'检查情况', N'CheckDesc', N'varchar(200)', N'200', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Dev_Check', N'10', N'检查结论', N'CheckResult', N'varchar(200)', N'200', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Dev_Check', N'11', N'备注', N'Remark', N'varchar(200)', N'200', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Dev_Check', N'12', N'检查人', N'CheckUser', N'varchar(10)', N'10', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Dev_Check', N'13', N'填写人', N'TranUser', N'varchar(14)', N'14', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Dev_Check', N'14', N'填写人姓名', N'TranUserName', N'varchar(10)', N'10', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Dev_Check', N'15', N'填写人部门', N'TranDept', N'varchar(6)', N'6', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Dev_Check', N'16', N'填写时间', N'TranDate', N'datetime', N'0', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Sugar', N'1', N'采集编号', N'SugarID', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Sugar', N'2', N'设备编号', N'DevID', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Sugar', N'3', N'采集时间', N'CollectDate', N'datetime', N'0', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Sugar', N'4', N'当前基地', N'BaseID', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Sugar', N'5', N'检测批次', N'SugarBatch', N'varchar(10)', N'10', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Sugar', N'6', N'检测品种', N'VarietyName', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Sugar', N'7', N'调查人员', N'SurveyUser', N'varchar(10)', N'10', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Sugar', N'8', N'糖度', N'SugarLevel', N'decimal(5,2)', N'5', N'2', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Sugar', N'9', N'填写人', N'TranUser', N'varchar(14)', N'14', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Sugar', N'10', N'填写人姓名', N'TranUserName', N'varchar(10)', N'10', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Sugar', N'11', N'填写人部门', N'TranDept', N'varchar(6)', N'6', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Sugar', N'12', N'填写时间', N'TranDate', N'datetime', N'0', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Area', N'1', N'采集编号', N'AreaID', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Area', N'2', N'设备编号', N'DevID', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Area', N'3', N'采集时间', N'CollectDate', N'datetime', N'0', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Area', N'4', N'调查基地编号', N'BaseID', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Area', N'5', N'作物种类', N'CropKinds', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Area', N'6', N'调查人员', N'SurveyUser', N'varchar(10)', N'10', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Area', N'7', N'面积', N'AreaValue', N'decimal(10,2)', N'10', N'2', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Area', N'8', N'周长', N'CircumValue', N'decimal(10,2)', N'10', N'2', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Area', N'9', N'填写人', N'TranUser', N'varchar(14)', N'14', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Area', N'10', N'填写人姓名', N'TranUserName', N'varchar(10)', N'10', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Area', N'11', N'填写人部门', N'TranDept', N'varchar(6)', N'6', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Area', N'12', N'填写时间', N'TranDate', N'datetime', N'0', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Pest', N'1', N'采集编号', N'PestID', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Pest', N'2', N'设备编号', N'DevID', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Pest', N'3', N'检测时间', N'CollectDate', N'datetime', N'0', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Pest', N'4', N'调查基地', N'BaseID', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Pest', N'5', N'调查人员', N'SurveyUser', N'varchar(10)', N'10', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Pest', N'6', N'检查批次', N'PestBatch', N'varchar(8)', N'8', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Pest', N'7', N'检测品种', N'VarietyName', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Pest', N'8', N'检测通道', N'PestChannel', N'int', N'0', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Pest', N'9', N'抑制率', N'InhiRatio', N'decimal(5,2)', N'5', N'2', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Pest', N'10', N'浓度', N'PestContent', N'decimal(5,2)', N'5', N'2', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Pest', N'11', N'检测结果', N'PestResult', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Pest', N'12', N'重量', N'PestWeight', N'decimal(10,2)', N'10', N'2', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Pest', N'13', N'填写人', N'TranUser', N'varchar(14)', N'14', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Pest', N'14', N'填写人姓名', N'TranUserName', N'varchar(10)', N'10', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Pest', N'15', N'填写人部门', N'TranDept', N'varchar(6)', N'6', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Pest', N'16', N'填写时间', N'TranDate', N'datetime', N'0', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Soil', N'1', N'采集编号', N'SoilID', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Soil', N'2', N'设备编号', N'DevID', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Soil', N'3', N'检测时间', N'CollectDate', N'datetime', N'0', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Soil', N'4', N'调查基地', N'BaseID', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Soil', N'5', N'调查人员', N'SurveyUser', N'varchar(10)', N'10', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Soil', N'6', N'作物种类', N'CropKinds', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Soil', N'7', N'铵态氮含量', N'NitroRatio', N'decimal(5,2)', N'5', N'2', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Soil', N'8', N'氮检测通道', N'NitroChannel', N'int', N'0', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Soil', N'9', N'氮肥料种类', N'NitroKinds', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Soil', N'10', N'含氮率', N'NitroContent', N'int', N'0', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Soil', N'11', N'氮利用率', N'NitroUse', N'int', N'0', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Soil', N'12', N'氮目标产量', N'NitroGoal', N'int', N'0', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Soil', N'13', N'氮施肥方案', N'NitroFert', N'decimal(5,1)', N'5', N'1', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Soil', N'14', N'速效磷含量', N'PhosRatio', N'decimal(5,2)', N'5', N'2', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Soil', N'15', N'磷检测通道', N'PhosChannel', N'int', N'0', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Soil', N'16', N'磷肥料种类', N'PhosKinds', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Soil', N'17', N'含磷率', N'PhosContent', N'int', N'0', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Soil', N'18', N'磷利用率', N'PhosUse', N'int', N'0', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Soil', N'19', N'磷目标产量', N'PhosGoal', N'int', N'0', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Soil', N'20', N'磷施肥方案', N'PhosFert', N'decimal(5,1)', N'5', N'1', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Soil', N'21', N'有效钾含量', N'KaliumRatio', N'decimal(5,2)', N'5', N'2', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Soil', N'22', N'钾检测通道', N'KaliumChannel', N'int', N'0', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Soil', N'23', N'钾肥料种类', N'KaliumKinds', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Soil', N'24', N'含钾率', N'KaliumContent', N'int', N'0', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Soil', N'25', N'钾利用率', N'KaliumUse', N'int', N'0', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Soil', N'26', N'钾目标产量', N'KaliumGoal', N'int', N'0', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Soil', N'27', N'钾施肥方案', N'KaliumFert', N'decimal(5,1)', N'5', N'1', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Soil', N'28', N'有机质含量', N'OrgaRatio', N'decimal(5,2)', N'5', N'2', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Soil', N'29', N'土壤盐分', N'SoilSalt', N'decimal(8,2)', N'8', N'2', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Soil', N'30', N'填写人', N'TranUser', N'varchar(14)', N'14', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Soil', N'31', N'填写人姓名', N'TranUserName', N'varchar(10)', N'10', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Soil', N'32', N'填写人部门', N'TranDept', N'varchar(6)', N'6', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Soil', N'33', N'填写时间', N'TranDate', N'datetime', N'0', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Hardness', N'1', N'采集编号', N'HardnessID', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Hardness', N'2', N'设备编号', N'DevID', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Hardness', N'3', N'采集时间', N'CollectDate', N'datetime', N'0', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Hardness', N'4', N'调查基地', N'BaseID', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Hardness', N'5', N'调查人员', N'SurveyUser', N'varchar(10)', N'10', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Hardness', N'6', N'检测批次', N'HardnessBatch', N'varchar(10)', N'10', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Hardness', N'7', N'检测品种', N'VarietyName', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Hardness', N'8', N'硬度', N'HardnessLevel', N'decimal(5,2)', N'5', N'2', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Hardness', N'9', N'备注', N'Remark', N'varchar(100)', N'100', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Hardness', N'10', N'填写人', N'TranUser', N'varchar(14)', N'14', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Hardness', N'11', N'填写人姓名', N'TranUserName', N'varchar(10)', N'10', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Hardness', N'12', N'填写人部门', N'TranDept', N'varchar(6)', N'6', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Hardness', N'13', N'填写日期', N'TranDate', N'datetime', N'0', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Insect', N'1', N'病虫害编号', N'InsectID', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Insect', N'2', N'设备编号', N'DevID', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Insect', N'3', N'采集时间', N'CollectDate', N'datetime', N'0', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Insect', N'4', N'调查基地', N'BaseID', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Insect', N'5', N'作物种类', N'CropKinds', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Insect', N'6', N'采集地点', N'CollectAddr', N'varchar(50)', N'50', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Insect', N'7', N'调查人员', N'SurveyUser', N'varchar(10)', N'10', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Insect', N'8', N'病虫害', N'InsectKind', N'varchar(2)', N'2', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Insect', N'9', N'名称', N'InsectName', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Insect', N'10', N'调查株数', N'SurveyPlants', N'int', N'0', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Insect', N'11', N'调查枝条数', N'SurveyWattle', N'int', N'0', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Insect', N'12', N'病/虫枝数', N'InsectWattle', N'int', N'0', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Insect', N'13', N'病/虫枝率', N'InsectPercent', N'decimal(5,2)', N'5', N'2', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Insect', N'14', N'备注', N'Remark', N'varchar(200)', N'200', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Insect', N'15', N'填写人', N'TranUser', N'varchar(14)', N'14', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Insect', N'16', N'填写人姓名', N'TranUserName', N'varchar(10)', N'10', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Insect', N'17', N'填写人部门', N'TranDept', N'varchar(6)', N'6', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Insect', N'18', N'填写日期', N'TranDate', N'datetime', N'0', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Weather', N'1', N'采集编号', N'WeatherID', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Weather', N'2', N'设备编号', N'DevID', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Weather', N'3', N'检测时间', N'CollectDate', N'datetime', N'0', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Weather', N'4', N'调查基地', N'BaseID', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Weather', N'5', N'湿度', N'HumiRatio', N'decimal(5,2)', N'5', N'2', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Weather', N'6', N'温度', N'TemperRatio', N'decimal(5,2)', N'5', N'2', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Weather', N'7', N'小时最高温度', N'MaxTemper', N'decimal(5,2)', N'5', N'2', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Weather', N'8', N'小时最低温度', N'MinTemper', N'decimal(5,2)', N'5', N'2', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Weather', N'9', N'露点温度', N'DewTemper', N'decimal(5,2)', N'5', N'2', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Weather', N'10', N'小时降水量', N'AmountPreci', N'decimal(8,2)', N'8', N'2', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Weather', N'11', N'小时最大雨量', N'MaxPreci', N'decimal(8,2)', N'8', N'2', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Weather', N'12', N'平均风速', N'WindSpeed', N'decimal(8,2)', N'8', N'2', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Weather', N'13', N'平均风向', N'WindDirect', N'decimal(5,2)', N'5', N'2', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Weather', N'14', N'最高风速', N'MaxWind', N'decimal(8,2)', N'8', N'2', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Weather', N'15', N'最高风速风向', N'MaxSpeedDirect', N'varchar(200)', N'200', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Weather', N'16', N'气压', N'AirPress', N'decimal(8,2)', N'8', N'2', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Weather', N'17', N'太阳辐射', N'SunRadi', N'decimal(8,2)', N'8', N'2', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Weather', N'18', N'紫外线强度', N'UltraRay', N'decimal(8,2)', N'8', N'2', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Weather', N'19', N'蒸散量', N'EvapValue', N'decimal(8,2)', N'8', N'2', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Weather', N'20', N'最大太阳辐射', N'MaxRadi', N'decimal(8,2)', N'8', N'2', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Weather', N'21', N'最强紫外线', N'MaxRay', N'decimal(8,2)', N'8', N'2', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Weather', N'22', N'土壤温度1', N'SoilTemperOne', N'decimal(5,2)', N'5', N'2', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Weather', N'23', N'土壤温度2', N'SoilTemperTwo', N'decimal(5,2)', N'5', N'2', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Weather', N'24', N'土壤温度3', N'SoilTemperThree', N'decimal(5,2)', N'5', N'2', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Weather', N'25', N'土壤温度4', N'SoilTemperFour', N'decimal(5,2)', N'5', N'2', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Weather', N'26', N'土壤水势1', N'SoilWaterOne', N'decimal(5,2)', N'5', N'2', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Weather', N'27', N'土壤水势2', N'SoilWaterTwo', N'decimal(5,2)', N'5', N'2', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Weather', N'28', N'土壤水势3', N'SoilWaterThree', N'decimal(5,2)', N'5', N'2', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Weather', N'29', N'土壤水势4', N'SoilWaterFour', N'decimal(5,2)', N'5', N'2', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Weather', N'30', N'叶面温度1', N'LeafTemperOne', N'decimal(5,2)', N'5', N'2', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Weather', N'31', N'叶面温度2', N'LeafTemperTwo', N'decimal(5,2)', N'5', N'2', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Weather', N'32', N'叶面湿度1', N'LeafHumiOne', N'decimal(5,2)', N'5', N'2', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Weather', N'33', N'页面湿度2', N'LeafHumiTwo', N'decimal(5,2)', N'5', N'2', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Weather', N'34', N'填写人', N'TranUser', N'varchar(14)', N'14', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Weather', N'35', N'填写人姓名', N'TranUserName', N'varchar(10)', N'10', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Weather', N'36', N'填写人部门', N'TranDept', N'varchar(6)', N'6', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Collect_Weather', N'37', N'填写时间', N'TranDate', N'datetime', N'0', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Pmt_Insect_Kind', N'1', N'病虫害种类', N'InsectKind', N'varchar(2)', N'2', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'2', N'T_Pmt_Insect_Kind', N'2', N'病虫害种类名称', N'InsectKindName', N'varchar(10)', N'10', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'3', N'T_Bus_Ask', N'1', N'答案编号', N'AskID', N'varchar(20)', N'20', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'3', N'T_Bus_Ask', N'2', N'问题内容', N'AskContent', N'varchar(200)', N'200', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'3', N'T_Bus_Ask', N'3', N'答案内容', N'AnswerContent', N'text', N'0', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'3', N'T_Bus_Ask', N'4', N'是否已回答', N'IsAnswered', N'bit', N'0', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'3', N'T_Bus_Ask', N'5', N'填写人', N'TranUser', N'varchar(14)', N'14', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'3', N'T_Bus_Ask', N'6', N'填写人姓名', N'TranUserName', N'nvarchar(10)', N'10', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'3', N'T_Bus_Ask', N'7', N'填写时间', N'TranDate', N'datetime', N'0', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'3', N'T_Bas_City', N'1', N'城市编号', N'CityID', N'varchar(6)', N'6', N'0', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMN] ([DBID], [TableCode], [ColumnID], [ColumnName], [ColumnCode], [DataType], [ColumnLength], [ColumnPrecision], [ColumnIdentity], [ColumnNotNull], [NowSerial], [PreSerial]) VALUES (N'3', N'T_Bas_City', N'2', N'城市名称', N'CityName', N'nvarchar(10)', N'10', N'0', N'0', N'0', N'1', N'1')
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
INSERT INTO [dbo].[T_DMS_COLUMNTABLE] ([DBID], [TableCode], [ColumnSerial], [ColumnCode], [RelaTable], [RelaColumn], [DisplayColumn], [Prefix]) VALUES (N'1', N'T_Bus_Test', N'1', N'TestID', N'T_Bus_Test', N'TestID', N'TestID', N'a')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMNTABLE] ([DBID], [TableCode], [ColumnSerial], [ColumnCode], [RelaTable], [RelaColumn], [DisplayColumn], [Prefix]) VALUES (N'1', N'T_Bus_Test', N'2', N'TestName', N'T_Bus_Test', N'TestName', N'TestName', N'a')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMNTABLE] ([DBID], [TableCode], [ColumnSerial], [ColumnCode], [RelaTable], [RelaColumn], [DisplayColumn], [Prefix]) VALUES (N'2', N'T_Bas_City', N'1', N'CityID', N'T_Bas_City', N'CityID', N'CityID', N'a')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMNTABLE] ([DBID], [TableCode], [ColumnSerial], [ColumnCode], [RelaTable], [RelaColumn], [DisplayColumn], [Prefix]) VALUES (N'2', N'T_Bas_City', N'2', N'CityName', N'T_Bas_City', N'CityName', N'CityName', N'a')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMNTABLE] ([DBID], [TableCode], [ColumnSerial], [ColumnCode], [RelaTable], [RelaColumn], [DisplayColumn], [Prefix]) VALUES (N'2', N'T_Bas_City', N'3', N'ProvinceID', N'T_Bas_City', N'ProvinceID', N'ProvinceID', N'a')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMNTABLE] ([DBID], [TableCode], [ColumnSerial], [ColumnCode], [RelaTable], [RelaColumn], [DisplayColumn], [Prefix]) VALUES (N'2', N'T_Bas_City', N'4', N'CityCode', N'T_Bas_City', N'CityCode', N'CityCode', N'a')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMNTABLE] ([DBID], [TableCode], [ColumnSerial], [ColumnCode], [RelaTable], [RelaColumn], [DisplayColumn], [Prefix]) VALUES (N'3', N'T_Bas_City', N'1', N'CityID', N'T_Bas_City', N'CityID', N'CityID', N'a')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMNTABLE] ([DBID], [TableCode], [ColumnSerial], [ColumnCode], [RelaTable], [RelaColumn], [DisplayColumn], [Prefix]) VALUES (N'3', N'T_Bas_City', N'2', N'CityName', N'T_Bas_City', N'CityName', N'CityName', N'a')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMNTABLE] ([DBID], [TableCode], [ColumnSerial], [ColumnCode], [RelaTable], [RelaColumn], [DisplayColumn], [Prefix]) VALUES (N'3', N'T_Bus_Ask', N'1', N'AskID', N'T_Bus_Ask', N'AskID', N'AskID', N'a')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMNTABLE] ([DBID], [TableCode], [ColumnSerial], [ColumnCode], [RelaTable], [RelaColumn], [DisplayColumn], [Prefix]) VALUES (N'3', N'T_Bus_Ask', N'2', N'AskContent', N'T_Bus_Ask', N'AskContent', N'AskContent', N'a')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMNTABLE] ([DBID], [TableCode], [ColumnSerial], [ColumnCode], [RelaTable], [RelaColumn], [DisplayColumn], [Prefix]) VALUES (N'3', N'T_Bus_Ask', N'3', N'AnswerContent', N'T_Bus_Ask', N'AnswerContent', N'AnswerContent', N'a')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMNTABLE] ([DBID], [TableCode], [ColumnSerial], [ColumnCode], [RelaTable], [RelaColumn], [DisplayColumn], [Prefix]) VALUES (N'3', N'T_Bus_Ask', N'4', N'IsAnswered', N'T_Bus_Ask', N'IsAnswered', N'IsAnswered', N'a')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMNTABLE] ([DBID], [TableCode], [ColumnSerial], [ColumnCode], [RelaTable], [RelaColumn], [DisplayColumn], [Prefix]) VALUES (N'3', N'T_Bus_Ask', N'5', N'TranUser', N'T_Bus_Ask', N'TranUser', N'TranUser', N'a')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMNTABLE] ([DBID], [TableCode], [ColumnSerial], [ColumnCode], [RelaTable], [RelaColumn], [DisplayColumn], [Prefix]) VALUES (N'3', N'T_Bus_Ask', N'6', N'TranUserName', N'T_Bus_Ask', N'TranUserName', N'TranUserName', N'a')
GO
GO
INSERT INTO [dbo].[T_DMS_COLUMNTABLE] ([DBID], [TableCode], [ColumnSerial], [ColumnCode], [RelaTable], [RelaColumn], [DisplayColumn], [Prefix]) VALUES (N'3', N'T_Bus_Ask', N'7', N'TranDate', N'T_Bus_Ask', N'TranDate', N'TranDate', N'a')
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
[DBSerial] int NOT NULL ,
[DBType] varchar(2) NOT NULL 
)


GO

-- ----------------------------
-- Records of T_DMS_DB
-- ----------------------------
INSERT INTO [dbo].[T_DMS_DB] ([DBID], [DBName], [DBCode], [DBSerial], [DBType]) VALUES (N'1', N'四川预警', N'四川预警', N'1', N'3')
GO
GO
INSERT INTO [dbo].[T_DMS_DB] ([DBID], [DBName], [DBCode], [DBSerial], [DBType]) VALUES (N'2', N'贵州火龙果大数据中心', N'贵州火龙果大数据中心', N'1', N'2')
GO
GO
INSERT INTO [dbo].[T_DMS_DB] ([DBID], [DBName], [DBCode], [DBSerial], [DBType]) VALUES (N'3', N'生产力', N'生产力', N'1', N'1')
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
INSERT INTO [dbo].[T_DMS_INDEX] ([DBID], [TableCode], [IndexID], [IndexName], [IndexCode], [IsUnique]) VALUES (N'1', N'T_Bus_Test', N'1', N'I_Bus_Test', N'I_Bus_Test', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_INDEX] ([DBID], [TableCode], [IndexID], [IndexName], [IndexCode], [IsUnique]) VALUES (N'2', N'T_Sys_User_Dept', N'1', N'I_Sys_User_Dept', N'I_Sys_User_Dept', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_INDEX] ([DBID], [TableCode], [IndexID], [IndexName], [IndexCode], [IsUnique]) VALUES (N'2', N'T_Db_Column', N'1', N'I_Db_Column', N'I_Db_Column', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_INDEX] ([DBID], [TableCode], [IndexID], [IndexName], [IndexCode], [IsUnique]) VALUES (N'2', N'T_Sys_Dept_Tree', N'1', N'I_Sys_Dept_Tree', N'I_Sys_Dept_Tree', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_INDEX] ([DBID], [TableCode], [IndexID], [IndexName], [IndexCode], [IsUnique]) VALUES (N'2', N'T_Sys_User_Set', N'1', N'I_Sys_User_Set', N'I_Sys_User_Set', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_INDEX] ([DBID], [TableCode], [IndexID], [IndexName], [IndexCode], [IsUnique]) VALUES (N'2', N'T_Sys_Menu_Group', N'1', N'I_Sys_Menu_Group', N'I_Sys_Menu_Group', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_INDEX] ([DBID], [TableCode], [IndexID], [IndexName], [IndexCode], [IsUnique]) VALUES (N'2', N'T_Sys_Menu_Detail', N'1', N'I_Sys_Menu_Detail', N'I_Sys_Menu_Detail', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_INDEX] ([DBID], [TableCode], [IndexID], [IndexName], [IndexCode], [IsUnique]) VALUES (N'2', N'T_Sys_User_Role', N'1', N'I_Sys_User_Role', N'I_Sys_User_Role', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_INDEX] ([DBID], [TableCode], [IndexID], [IndexName], [IndexCode], [IsUnique]) VALUES (N'2', N'T_Sys_Role_Menu', N'1', N'I_Sys_Role_Menu', N'I_Sys_Role_Menu', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_INDEX] ([DBID], [TableCode], [IndexID], [IndexName], [IndexCode], [IsUnique]) VALUES (N'2', N'T_Sys_Role_Rib', N'1', N'I_Sys_Role_Rib', N'I_Sys_Role_Rib', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_INDEX] ([DBID], [TableCode], [IndexID], [IndexName], [IndexCode], [IsUnique]) VALUES (N'2', N'T_Sys_Role_Detail', N'1', N'I_Sys_Role_Detail', N'I_Sys_Role_Detail', N'0')
GO
GO

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
INSERT INTO [dbo].[T_DMS_INDEX_COLUMN] ([DBID], [TableCode], [IndexCode], [ColumnCode]) VALUES (N'1', N'T_Bus_Test', N'I_Bus_Test', N'TestID')
GO
GO
INSERT INTO [dbo].[T_DMS_INDEX_COLUMN] ([DBID], [TableCode], [IndexCode], [ColumnCode]) VALUES (N'1', N'T_Bus_Test', N'I_Bus_Test', N'TestName')
GO
GO
INSERT INTO [dbo].[T_DMS_INDEX_COLUMN] ([DBID], [TableCode], [IndexCode], [ColumnCode]) VALUES (N'2', N'T_Db_Column', N'I_Db_Column', N'ColumnSerail')
GO
GO
INSERT INTO [dbo].[T_DMS_INDEX_COLUMN] ([DBID], [TableCode], [IndexCode], [ColumnCode]) VALUES (N'2', N'T_Db_Column', N'I_Db_Column', N'TableID')
GO
GO
INSERT INTO [dbo].[T_DMS_INDEX_COLUMN] ([DBID], [TableCode], [IndexCode], [ColumnCode]) VALUES (N'2', N'T_Sys_Dept_Tree', N'I_Sys_Dept_Tree', N'DeptID')
GO
GO
INSERT INTO [dbo].[T_DMS_INDEX_COLUMN] ([DBID], [TableCode], [IndexCode], [ColumnCode]) VALUES (N'2', N'T_Sys_Dept_Tree', N'I_Sys_Dept_Tree', N'DeptPID')
GO
GO
INSERT INTO [dbo].[T_DMS_INDEX_COLUMN] ([DBID], [TableCode], [IndexCode], [ColumnCode]) VALUES (N'2', N'T_Sys_Menu_Detail', N'I_Sys_Menu_Detail', N'AuthID')
GO
GO
INSERT INTO [dbo].[T_DMS_INDEX_COLUMN] ([DBID], [TableCode], [IndexCode], [ColumnCode]) VALUES (N'2', N'T_Sys_Menu_Detail', N'I_Sys_Menu_Detail', N'MID')
GO
GO
INSERT INTO [dbo].[T_DMS_INDEX_COLUMN] ([DBID], [TableCode], [IndexCode], [ColumnCode]) VALUES (N'2', N'T_Sys_Menu_Group', N'I_Sys_Menu_Group', N'MgName')
GO
GO
INSERT INTO [dbo].[T_DMS_INDEX_COLUMN] ([DBID], [TableCode], [IndexCode], [ColumnCode]) VALUES (N'2', N'T_Sys_Role_Detail', N'I_Sys_Role_Detail', N'AuthID')
GO
GO
INSERT INTO [dbo].[T_DMS_INDEX_COLUMN] ([DBID], [TableCode], [IndexCode], [ColumnCode]) VALUES (N'2', N'T_Sys_Role_Detail', N'I_Sys_Role_Detail', N'MID')
GO
GO
INSERT INTO [dbo].[T_DMS_INDEX_COLUMN] ([DBID], [TableCode], [IndexCode], [ColumnCode]) VALUES (N'2', N'T_Sys_Role_Detail', N'I_Sys_Role_Detail', N'RoleID')
GO
GO
INSERT INTO [dbo].[T_DMS_INDEX_COLUMN] ([DBID], [TableCode], [IndexCode], [ColumnCode]) VALUES (N'2', N'T_Sys_Role_Menu', N'I_Sys_Role_Menu', N'MID')
GO
GO
INSERT INTO [dbo].[T_DMS_INDEX_COLUMN] ([DBID], [TableCode], [IndexCode], [ColumnCode]) VALUES (N'2', N'T_Sys_Role_Menu', N'I_Sys_Role_Menu', N'RoleID')
GO
GO
INSERT INTO [dbo].[T_DMS_INDEX_COLUMN] ([DBID], [TableCode], [IndexCode], [ColumnCode]) VALUES (N'2', N'T_Sys_Role_Rib', N'I_Sys_Role_Rib', N'RibBtn')
GO
GO
INSERT INTO [dbo].[T_DMS_INDEX_COLUMN] ([DBID], [TableCode], [IndexCode], [ColumnCode]) VALUES (N'2', N'T_Sys_Role_Rib', N'I_Sys_Role_Rib', N'RoleID')
GO
GO
INSERT INTO [dbo].[T_DMS_INDEX_COLUMN] ([DBID], [TableCode], [IndexCode], [ColumnCode]) VALUES (N'2', N'T_Sys_User_Dept', N'I_Sys_User_Dept', N'DeptID')
GO
GO
INSERT INTO [dbo].[T_DMS_INDEX_COLUMN] ([DBID], [TableCode], [IndexCode], [ColumnCode]) VALUES (N'2', N'T_Sys_User_Dept', N'I_Sys_User_Dept', N'UserID')
GO
GO
INSERT INTO [dbo].[T_DMS_INDEX_COLUMN] ([DBID], [TableCode], [IndexCode], [ColumnCode]) VALUES (N'2', N'T_Sys_User_Role', N'I_Sys_User_Role', N'RoleID')
GO
GO
INSERT INTO [dbo].[T_DMS_INDEX_COLUMN] ([DBID], [TableCode], [IndexCode], [ColumnCode]) VALUES (N'2', N'T_Sys_User_Role', N'I_Sys_User_Role', N'UserID')
GO
GO
INSERT INTO [dbo].[T_DMS_INDEX_COLUMN] ([DBID], [TableCode], [IndexCode], [ColumnCode]) VALUES (N'2', N'T_Sys_User_Set', N'I_Sys_User_Set', N'SetCode')
GO
GO
INSERT INTO [dbo].[T_DMS_INDEX_COLUMN] ([DBID], [TableCode], [IndexCode], [ColumnCode]) VALUES (N'2', N'T_Sys_User_Set', N'I_Sys_User_Set', N'UserID')
GO
GO

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
INSERT INTO [dbo].[T_DMS_KEY] ([DBID], [TableCode], [KeyID], [KeyName], [KeyCode], [IsPrimary]) VALUES (N'1', N'P_POTATO_SHOW', N'1', N'K_POTATO_SHOW', N'K_POTATO_SHOW', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_KEY] ([DBID], [TableCode], [KeyID], [KeyName], [KeyCode], [IsPrimary]) VALUES (N'1', N'T_BUS_STU', N'1', N'K_BUS_STU', N'K_BUS_STU', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_KEY] ([DBID], [TableCode], [KeyID], [KeyName], [KeyCode], [IsPrimary]) VALUES (N'2', N'T_Sys_Company', N'1', N'K_Sys_Company', N'K_Sys_Company', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_KEY] ([DBID], [TableCode], [KeyID], [KeyName], [KeyCode], [IsPrimary]) VALUES (N'2', N'T_Sys_User', N'1', N'K_Sys_User', N'K_Sys_User', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_KEY] ([DBID], [TableCode], [KeyID], [KeyName], [KeyCode], [IsPrimary]) VALUES (N'2', N'T_Db_Table', N'1', N'K_Db_Table', N'K_Db_Table', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_KEY] ([DBID], [TableCode], [KeyID], [KeyName], [KeyCode], [IsPrimary]) VALUES (N'2', N'T_Sys_Dept', N'1', N'K_Sys_Dept', N'K_Sys_Dept', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_KEY] ([DBID], [TableCode], [KeyID], [KeyName], [KeyCode], [IsPrimary]) VALUES (N'2', N'T_Sys_Set', N'1', N'K_Sys_Set', N'K_Sys_Set', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_KEY] ([DBID], [TableCode], [KeyID], [KeyName], [KeyCode], [IsPrimary]) VALUES (N'2', N'T_Sys_Serial', N'1', N'K_Sys_Serial', N'K_Sys_Serial', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_KEY] ([DBID], [TableCode], [KeyID], [KeyName], [KeyCode], [IsPrimary]) VALUES (N'2', N'T_Sys_Menu', N'1', N'K_Sys_Menu', N'K_Sys_Menu', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_KEY] ([DBID], [TableCode], [KeyID], [KeyName], [KeyCode], [IsPrimary]) VALUES (N'2', N'T_Sys_Menu_Auth', N'1', N'K_Sys_Menu_Auth', N'K_Sys_Menu_Auth', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_KEY] ([DBID], [TableCode], [KeyID], [KeyName], [KeyCode], [IsPrimary]) VALUES (N'2', N'T_Sys_Role', N'1', N'K_Sys_Role', N'K_Sys_Role', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_KEY] ([DBID], [TableCode], [KeyID], [KeyName], [KeyCode], [IsPrimary]) VALUES (N'2', N'T_Pmt_Tran_Action', N'1', N'K_Pmt_Tran_Action', N'K_Pmt_Tran_Action', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_KEY] ([DBID], [TableCode], [KeyID], [KeyName], [KeyCode], [IsPrimary]) VALUES (N'2', N'T_Pmt_Co_Status', N'1', N'K_Pmt_Co_Status', N'K_Pmt_Co_Status', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_KEY] ([DBID], [TableCode], [KeyID], [KeyName], [KeyCode], [IsPrimary]) VALUES (N'2', N'T_Bas_Province', N'1', N'K_Bas_Province', N'K_Bas_Province', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_KEY] ([DBID], [TableCode], [KeyID], [KeyName], [KeyCode], [IsPrimary]) VALUES (N'2', N'T_Bas_City', N'1', N'K_Bas_City', N'K_Bas_City', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_KEY] ([DBID], [TableCode], [KeyID], [KeyName], [KeyCode], [IsPrimary]) VALUES (N'2', N'T_Bas_Area', N'1', N'K_Bas_Area', N'K_Bas_Area', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_KEY] ([DBID], [TableCode], [KeyID], [KeyName], [KeyCode], [IsPrimary]) VALUES (N'2', N'T_Bas_Town', N'1', N'K_Bas_Town', N'K_Bas_Town', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_KEY] ([DBID], [TableCode], [KeyID], [KeyName], [KeyCode], [IsPrimary]) VALUES (N'2', N'T_Bas_Village', N'1', N'K_Bas_Village', N'K_Bas_Village', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_KEY] ([DBID], [TableCode], [KeyID], [KeyName], [KeyCode], [IsPrimary]) VALUES (N'2', N'T_Bus_Base', N'1', N'K_Bus_Base', N'K_Bus_Base', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_KEY] ([DBID], [TableCode], [KeyID], [KeyName], [KeyCode], [IsPrimary]) VALUES (N'2', N'T_Pmt_Net_Status', N'1', N'K_Pmt_Net_Status', N'K_Pmt_Net_Status', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_KEY] ([DBID], [TableCode], [KeyID], [KeyName], [KeyCode], [IsPrimary]) VALUES (N'2', N'T_Pmt_Busi_Status', N'1', N'K_Pmt_Busi_Status', N'K_Pmt_Busi_Status', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_KEY] ([DBID], [TableCode], [KeyID], [KeyName], [KeyCode], [IsPrimary]) VALUES (N'2', N'T_Pmt_Prd_Status', N'1', N'K_Pmt_Prd_Status', N'K_Pmt_Prd_Status', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_KEY] ([DBID], [TableCode], [KeyID], [KeyName], [KeyCode], [IsPrimary]) VALUES (N'2', N'T_Pmt_Plan_Land', N'1', N'K_Pmt_Plan_Land', N'K_Pmt_Plan_Land', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_KEY] ([DBID], [TableCode], [KeyID], [KeyName], [KeyCode], [IsPrimary]) VALUES (N'2', N'T_Pmt_Plan_Method', N'1', N'K_Pmt_Plan_Method', N'K_Pmt_Plan_Method', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_KEY] ([DBID], [TableCode], [KeyID], [KeyName], [KeyCode], [IsPrimary]) VALUES (N'2', N'T_Pmt_Degree_Type', N'1', N'K_Pmt_Degree_Type', N'K_Pmt_Degree_Type', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_KEY] ([DBID], [TableCode], [KeyID], [KeyName], [KeyCode], [IsPrimary]) VALUES (N'2', N'T_Info_Dev', N'1', N'K_Info_Dev', N'K_Info_Dev', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_KEY] ([DBID], [TableCode], [KeyID], [KeyName], [KeyCode], [IsPrimary]) VALUES (N'2', N'T_Pmt_Dev_Type', N'1', N'K_Pmt_Dev_Type', N'K_Pmt_Dev_Type', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_KEY] ([DBID], [TableCode], [KeyID], [KeyName], [KeyCode], [IsPrimary]) VALUES (N'2', N'T_Pmt_Dev_Status', N'1', N'K_Pmt_Dev_Status', N'K_Pmt_Dev_Status', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_KEY] ([DBID], [TableCode], [KeyID], [KeyName], [KeyCode], [IsPrimary]) VALUES (N'2', N'T_Dev_Repair', N'1', N'K_Dev_Repair', N'K_Dev_Repair', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_KEY] ([DBID], [TableCode], [KeyID], [KeyName], [KeyCode], [IsPrimary]) VALUES (N'2', N'T_Dev_Plan', N'1', N'K_Dev_Plan', N'K_Dev_Plan', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_KEY] ([DBID], [TableCode], [KeyID], [KeyName], [KeyCode], [IsPrimary]) VALUES (N'2', N'T_Dev_Check', N'1', N'K_Dev_Check', N'K_Dev_Check', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_KEY] ([DBID], [TableCode], [KeyID], [KeyName], [KeyCode], [IsPrimary]) VALUES (N'2', N'T_Collect_Sugar', N'1', N'K_Collect_Sugar', N'K_Collect_Sugar', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_KEY] ([DBID], [TableCode], [KeyID], [KeyName], [KeyCode], [IsPrimary]) VALUES (N'2', N'T_Collect_Area', N'1', N'K_Collect_Area', N'K_Collect_Area', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_KEY] ([DBID], [TableCode], [KeyID], [KeyName], [KeyCode], [IsPrimary]) VALUES (N'2', N'T_Collect_Pest', N'1', N'K_Collect_Pest', N'K_Collect_Pest', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_KEY] ([DBID], [TableCode], [KeyID], [KeyName], [KeyCode], [IsPrimary]) VALUES (N'2', N'T_Collect_Soil', N'1', N'K_Collect_Soil', N'K_Collect_Soil', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_KEY] ([DBID], [TableCode], [KeyID], [KeyName], [KeyCode], [IsPrimary]) VALUES (N'2', N'T_Collect_Hardness', N'1', N'K_Collect_Hardness', N'K_Collect_Hardness', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_KEY] ([DBID], [TableCode], [KeyID], [KeyName], [KeyCode], [IsPrimary]) VALUES (N'2', N'T_Collect_Insect', N'1', N'K_Collect_Insect', N'K_Collect_Insect', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_KEY] ([DBID], [TableCode], [KeyID], [KeyName], [KeyCode], [IsPrimary]) VALUES (N'2', N'T_Collect_Weather', N'1', N'K_Collect_Weather', N'K_Collect_Weather', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_KEY] ([DBID], [TableCode], [KeyID], [KeyName], [KeyCode], [IsPrimary]) VALUES (N'2', N'T_Pmt_Insect_Kind', N'1', N'K_Pmt_Insect_Kind', N'K_Pmt_Insect_Kind', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_KEY] ([DBID], [TableCode], [KeyID], [KeyName], [KeyCode], [IsPrimary]) VALUES (N'3', N'T_Bus_Ask', N'1', N'K_Bus_Ask', N'K_Bus_Ask', N'1')
GO
GO
INSERT INTO [dbo].[T_DMS_KEY] ([DBID], [TableCode], [KeyID], [KeyName], [KeyCode], [IsPrimary]) VALUES (N'3', N'T_Bas_City', N'1', N'K_Bas_City', N'K_Bas_City', N'1')
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
INSERT INTO [dbo].[T_DMS_KEY_COLUMN] ([DBID], [TableCode], [KeyCode], [ColumnCode]) VALUES (N'1', N'P_POTATO_SHOW', N'K_POTATO_SHOW', N'PPSID')
GO
GO
INSERT INTO [dbo].[T_DMS_KEY_COLUMN] ([DBID], [TableCode], [KeyCode], [ColumnCode]) VALUES (N'1', N'T_BUS_STU', N'K_BUS_STU', N'STUID')
GO
GO
INSERT INTO [dbo].[T_DMS_KEY_COLUMN] ([DBID], [TableCode], [KeyCode], [ColumnCode]) VALUES (N'2', N'T_Bas_Area', N'K_Bas_Area', N'AreaID')
GO
GO
INSERT INTO [dbo].[T_DMS_KEY_COLUMN] ([DBID], [TableCode], [KeyCode], [ColumnCode]) VALUES (N'2', N'T_Bas_City', N'K_Bas_City', N'CityID')
GO
GO
INSERT INTO [dbo].[T_DMS_KEY_COLUMN] ([DBID], [TableCode], [KeyCode], [ColumnCode]) VALUES (N'2', N'T_Bas_Province', N'K_Bas_Province', N'ProvinceID')
GO
GO
INSERT INTO [dbo].[T_DMS_KEY_COLUMN] ([DBID], [TableCode], [KeyCode], [ColumnCode]) VALUES (N'2', N'T_Bas_Town', N'K_Bas_Town', N'TownID')
GO
GO
INSERT INTO [dbo].[T_DMS_KEY_COLUMN] ([DBID], [TableCode], [KeyCode], [ColumnCode]) VALUES (N'2', N'T_Bas_Village', N'K_Bas_Village', N'VillageID')
GO
GO
INSERT INTO [dbo].[T_DMS_KEY_COLUMN] ([DBID], [TableCode], [KeyCode], [ColumnCode]) VALUES (N'2', N'T_Bus_Base', N'K_Bus_Base', N'BaseID')
GO
GO
INSERT INTO [dbo].[T_DMS_KEY_COLUMN] ([DBID], [TableCode], [KeyCode], [ColumnCode]) VALUES (N'2', N'T_Collect_Area', N'K_Collect_Area', N'AreaID')
GO
GO
INSERT INTO [dbo].[T_DMS_KEY_COLUMN] ([DBID], [TableCode], [KeyCode], [ColumnCode]) VALUES (N'2', N'T_Collect_Hardness', N'K_Collect_Hardness', N'HardnessID')
GO
GO
INSERT INTO [dbo].[T_DMS_KEY_COLUMN] ([DBID], [TableCode], [KeyCode], [ColumnCode]) VALUES (N'2', N'T_Collect_Insect', N'K_Collect_Insect', N'InsectID')
GO
GO
INSERT INTO [dbo].[T_DMS_KEY_COLUMN] ([DBID], [TableCode], [KeyCode], [ColumnCode]) VALUES (N'2', N'T_Collect_Pest', N'K_Collect_Pest', N'PestID')
GO
GO
INSERT INTO [dbo].[T_DMS_KEY_COLUMN] ([DBID], [TableCode], [KeyCode], [ColumnCode]) VALUES (N'2', N'T_Collect_Soil', N'K_Collect_Soil', N'SoilID')
GO
GO
INSERT INTO [dbo].[T_DMS_KEY_COLUMN] ([DBID], [TableCode], [KeyCode], [ColumnCode]) VALUES (N'2', N'T_Collect_Sugar', N'K_Collect_Sugar', N'SugarID')
GO
GO
INSERT INTO [dbo].[T_DMS_KEY_COLUMN] ([DBID], [TableCode], [KeyCode], [ColumnCode]) VALUES (N'2', N'T_Collect_Weather', N'K_Collect_Weather', N'WeatherID')
GO
GO
INSERT INTO [dbo].[T_DMS_KEY_COLUMN] ([DBID], [TableCode], [KeyCode], [ColumnCode]) VALUES (N'2', N'T_Db_Table', N'K_Db_Table', N'TableID')
GO
GO
INSERT INTO [dbo].[T_DMS_KEY_COLUMN] ([DBID], [TableCode], [KeyCode], [ColumnCode]) VALUES (N'2', N'T_Dev_Check', N'K_Dev_Check', N'CheckID')
GO
GO
INSERT INTO [dbo].[T_DMS_KEY_COLUMN] ([DBID], [TableCode], [KeyCode], [ColumnCode]) VALUES (N'2', N'T_Dev_Plan', N'K_Dev_Plan', N'PlanID')
GO
GO
INSERT INTO [dbo].[T_DMS_KEY_COLUMN] ([DBID], [TableCode], [KeyCode], [ColumnCode]) VALUES (N'2', N'T_Dev_Repair', N'K_Dev_Repair', N'RepairID')
GO
GO
INSERT INTO [dbo].[T_DMS_KEY_COLUMN] ([DBID], [TableCode], [KeyCode], [ColumnCode]) VALUES (N'2', N'T_Info_Dev', N'K_Info_Dev', N'DevID')
GO
GO
INSERT INTO [dbo].[T_DMS_KEY_COLUMN] ([DBID], [TableCode], [KeyCode], [ColumnCode]) VALUES (N'2', N'T_Pmt_Busi_Status', N'K_Pmt_Busi_Status', N'BusiStatus')
GO
GO
INSERT INTO [dbo].[T_DMS_KEY_COLUMN] ([DBID], [TableCode], [KeyCode], [ColumnCode]) VALUES (N'2', N'T_Pmt_Co_Status', N'K_Pmt_Co_Status', N'CoStatus')
GO
GO
INSERT INTO [dbo].[T_DMS_KEY_COLUMN] ([DBID], [TableCode], [KeyCode], [ColumnCode]) VALUES (N'2', N'T_Pmt_Degree_Type', N'K_Pmt_Degree_Type', N'DegreeType')
GO
GO
INSERT INTO [dbo].[T_DMS_KEY_COLUMN] ([DBID], [TableCode], [KeyCode], [ColumnCode]) VALUES (N'2', N'T_Pmt_Dev_Status', N'K_Pmt_Dev_Status', N'DevStatus')
GO
GO
INSERT INTO [dbo].[T_DMS_KEY_COLUMN] ([DBID], [TableCode], [KeyCode], [ColumnCode]) VALUES (N'2', N'T_Pmt_Dev_Type', N'K_Pmt_Dev_Type', N'DevType')
GO
GO
INSERT INTO [dbo].[T_DMS_KEY_COLUMN] ([DBID], [TableCode], [KeyCode], [ColumnCode]) VALUES (N'2', N'T_Pmt_Insect_Kind', N'K_Pmt_Insect_Kind', N'InsectKind')
GO
GO
INSERT INTO [dbo].[T_DMS_KEY_COLUMN] ([DBID], [TableCode], [KeyCode], [ColumnCode]) VALUES (N'2', N'T_Pmt_Net_Status', N'K_Pmt_Net_Status', N'NetStatus')
GO
GO
INSERT INTO [dbo].[T_DMS_KEY_COLUMN] ([DBID], [TableCode], [KeyCode], [ColumnCode]) VALUES (N'2', N'T_Pmt_Plan_Land', N'K_Pmt_Plan_Land', N'PlanLand')
GO
GO
INSERT INTO [dbo].[T_DMS_KEY_COLUMN] ([DBID], [TableCode], [KeyCode], [ColumnCode]) VALUES (N'2', N'T_Pmt_Plan_Method', N'K_Pmt_Plan_Method', N'PlanMethod')
GO
GO
INSERT INTO [dbo].[T_DMS_KEY_COLUMN] ([DBID], [TableCode], [KeyCode], [ColumnCode]) VALUES (N'2', N'T_Pmt_Prd_Status', N'K_Pmt_Prd_Status', N'PrdStatus')
GO
GO
INSERT INTO [dbo].[T_DMS_KEY_COLUMN] ([DBID], [TableCode], [KeyCode], [ColumnCode]) VALUES (N'2', N'T_Pmt_Tran_Action', N'K_Pmt_Tran_Action', N'TranAction')
GO
GO
INSERT INTO [dbo].[T_DMS_KEY_COLUMN] ([DBID], [TableCode], [KeyCode], [ColumnCode]) VALUES (N'2', N'T_Sys_Company', N'K_Sys_Company', N'CoID')
GO
GO
INSERT INTO [dbo].[T_DMS_KEY_COLUMN] ([DBID], [TableCode], [KeyCode], [ColumnCode]) VALUES (N'2', N'T_Sys_Dept', N'K_Sys_Dept', N'DeptID')
GO
GO
INSERT INTO [dbo].[T_DMS_KEY_COLUMN] ([DBID], [TableCode], [KeyCode], [ColumnCode]) VALUES (N'2', N'T_Sys_Menu', N'K_Sys_Menu', N'MID')
GO
GO
INSERT INTO [dbo].[T_DMS_KEY_COLUMN] ([DBID], [TableCode], [KeyCode], [ColumnCode]) VALUES (N'2', N'T_Sys_Menu_Auth', N'K_Sys_Menu_Auth', N'AuthID')
GO
GO
INSERT INTO [dbo].[T_DMS_KEY_COLUMN] ([DBID], [TableCode], [KeyCode], [ColumnCode]) VALUES (N'2', N'T_Sys_Role', N'K_Sys_Role', N'RoleID')
GO
GO
INSERT INTO [dbo].[T_DMS_KEY_COLUMN] ([DBID], [TableCode], [KeyCode], [ColumnCode]) VALUES (N'2', N'T_Sys_Serial', N'K_Sys_Serial', N'SerialID')
GO
GO
INSERT INTO [dbo].[T_DMS_KEY_COLUMN] ([DBID], [TableCode], [KeyCode], [ColumnCode]) VALUES (N'2', N'T_Sys_Set', N'K_Sys_Set', N'SetCode')
GO
GO
INSERT INTO [dbo].[T_DMS_KEY_COLUMN] ([DBID], [TableCode], [KeyCode], [ColumnCode]) VALUES (N'2', N'T_Sys_User', N'K_Sys_User', N'UserID')
GO
GO
INSERT INTO [dbo].[T_DMS_KEY_COLUMN] ([DBID], [TableCode], [KeyCode], [ColumnCode]) VALUES (N'3', N'T_Bas_City', N'K_Bas_City', N'CityID')
GO
GO
INSERT INTO [dbo].[T_DMS_KEY_COLUMN] ([DBID], [TableCode], [KeyCode], [ColumnCode]) VALUES (N'3', N'T_Bus_Ask', N'K_Bus_Ask', N'AskID')
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
INSERT INTO [dbo].[T_DMS_TABLE] ([DBID], [TableName], [TableCode], [IsPmt], [NowSerial], [PreSerial], [Comment]) VALUES (N'1', N'马铃薯展示数据表', N'P_POTATO_SHOW', N'0', N'1', N'1', N'')
GO
GO
INSERT INTO [dbo].[T_DMS_TABLE] ([DBID], [TableName], [TableCode], [IsPmt], [NowSerial], [PreSerial], [Comment]) VALUES (N'1', N'测试表', N'T_Bus_Test', N'0', N'1', N'1', N'')
GO
GO
INSERT INTO [dbo].[T_DMS_TABLE] ([DBID], [TableName], [TableCode], [IsPmt], [NowSerial], [PreSerial], [Comment]) VALUES (N'1', N'学生表', N'T_BUS_STU', N'0', N'1', N'1', N'')
GO
GO
INSERT INTO [dbo].[T_DMS_TABLE] ([DBID], [TableName], [TableCode], [IsPmt], [NowSerial], [PreSerial], [Comment]) VALUES (N'2', N'系统表-公司信息表', N'T_Sys_Company', N'0', N'1', N'1', N'')
GO
GO
INSERT INTO [dbo].[T_DMS_TABLE] ([DBID], [TableName], [TableCode], [IsPmt], [NowSerial], [PreSerial], [Comment]) VALUES (N'2', N'系统表-可操作机构表', N'T_Sys_User_Dept', N'0', N'1', N'1', N'')
GO
GO
INSERT INTO [dbo].[T_DMS_TABLE] ([DBID], [TableName], [TableCode], [IsPmt], [NowSerial], [PreSerial], [Comment]) VALUES (N'2', N'系统表-操作员信息表', N'T_Sys_User', N'0', N'1', N'1', N'')
GO
GO
INSERT INTO [dbo].[T_DMS_TABLE] ([DBID], [TableName], [TableCode], [IsPmt], [NowSerial], [PreSerial], [Comment]) VALUES (N'2', N'系统表-数据字段表', N'T_Db_Column', N'0', N'1', N'1', N'')
GO
GO
INSERT INTO [dbo].[T_DMS_TABLE] ([DBID], [TableName], [TableCode], [IsPmt], [NowSerial], [PreSerial], [Comment]) VALUES (N'2', N'系统表-数据库表', N'T_Db_Table', N'0', N'1', N'1', N'')
GO
GO
INSERT INTO [dbo].[T_DMS_TABLE] ([DBID], [TableName], [TableCode], [IsPmt], [NowSerial], [PreSerial], [Comment]) VALUES (N'2', N'系统表-机构信息表', N'T_Sys_Dept', N'0', N'1', N'1', N'')
GO
GO
INSERT INTO [dbo].[T_DMS_TABLE] ([DBID], [TableName], [TableCode], [IsPmt], [NowSerial], [PreSerial], [Comment]) VALUES (N'2', N'系统表-机构关系表', N'T_Sys_Dept_Tree', N'0', N'1', N'1', N'')
GO
GO
INSERT INTO [dbo].[T_DMS_TABLE] ([DBID], [TableName], [TableCode], [IsPmt], [NowSerial], [PreSerial], [Comment]) VALUES (N'2', N'系统表-系统参数表', N'T_Sys_Set', N'0', N'1', N'1', N'')
GO
GO
INSERT INTO [dbo].[T_DMS_TABLE] ([DBID], [TableName], [TableCode], [IsPmt], [NowSerial], [PreSerial], [Comment]) VALUES (N'2', N'系统表-系统参数（参数）表', N'T_Sys_User_Set', N'0', N'1', N'1', N'')
GO
GO
INSERT INTO [dbo].[T_DMS_TABLE] ([DBID], [TableName], [TableCode], [IsPmt], [NowSerial], [PreSerial], [Comment]) VALUES (N'2', N'系统表-系统序号表', N'T_Sys_Serial', N'0', N'1', N'1', N'')
GO
GO
INSERT INTO [dbo].[T_DMS_TABLE] ([DBID], [TableName], [TableCode], [IsPmt], [NowSerial], [PreSerial], [Comment]) VALUES (N'2', N'系统表-系统菜单组表', N'T_Sys_Menu_Group', N'0', N'1', N'1', N'')
GO
GO
INSERT INTO [dbo].[T_DMS_TABLE] ([DBID], [TableName], [TableCode], [IsPmt], [NowSerial], [PreSerial], [Comment]) VALUES (N'2', N'系统表-系统菜单表', N'T_Sys_Menu', N'0', N'1', N'1', N'')
GO
GO
INSERT INTO [dbo].[T_DMS_TABLE] ([DBID], [TableName], [TableCode], [IsPmt], [NowSerial], [PreSerial], [Comment]) VALUES (N'2', N'系统表-菜单操作权限明细表', N'T_Sys_Menu_Detail', N'0', N'1', N'1', N'')
GO
GO
INSERT INTO [dbo].[T_DMS_TABLE] ([DBID], [TableName], [TableCode], [IsPmt], [NowSerial], [PreSerial], [Comment]) VALUES (N'2', N'系统表-菜单操作权限设置表', N'T_Sys_Menu_Auth', N'0', N'1', N'1', N'')
GO
GO
INSERT INTO [dbo].[T_DMS_TABLE] ([DBID], [TableName], [TableCode], [IsPmt], [NowSerial], [PreSerial], [Comment]) VALUES (N'2', N'系统表-角色分配表', N'T_Sys_User_Role', N'0', N'1', N'1', N'')
GO
GO
INSERT INTO [dbo].[T_DMS_TABLE] ([DBID], [TableName], [TableCode], [IsPmt], [NowSerial], [PreSerial], [Comment]) VALUES (N'2', N'系统表-角色功能分配表', N'T_Sys_Role_Menu', N'0', N'1', N'1', N'')
GO
GO
INSERT INTO [dbo].[T_DMS_TABLE] ([DBID], [TableName], [TableCode], [IsPmt], [NowSerial], [PreSerial], [Comment]) VALUES (N'2', N'系统表-角色导航分配表', N'T_Sys_Role_Rib', N'0', N'1', N'1', N'')
GO
GO
INSERT INTO [dbo].[T_DMS_TABLE] ([DBID], [TableName], [TableCode], [IsPmt], [NowSerial], [PreSerial], [Comment]) VALUES (N'2', N'系统表-角色菜单操作权限明细表', N'T_Sys_Role_Detail', N'0', N'1', N'1', N'')
GO
GO
INSERT INTO [dbo].[T_DMS_TABLE] ([DBID], [TableName], [TableCode], [IsPmt], [NowSerial], [PreSerial], [Comment]) VALUES (N'2', N'系统表-角色表', N'T_Sys_Role', N'0', N'1', N'1', N'')
GO
GO
INSERT INTO [dbo].[T_DMS_TABLE] ([DBID], [TableName], [TableCode], [IsPmt], [NowSerial], [PreSerial], [Comment]) VALUES (N'2', N'系统表（参数）-交易动作表', N'T_Pmt_Tran_Action', N'1', N'1', N'1', N'')
GO
GO
INSERT INTO [dbo].[T_DMS_TABLE] ([DBID], [TableName], [TableCode], [IsPmt], [NowSerial], [PreSerial], [Comment]) VALUES (N'2', N'系统表（参数）-公司状态参数表', N'T_Pmt_Co_Status', N'1', N'1', N'1', N'')
GO
GO
INSERT INTO [dbo].[T_DMS_TABLE] ([DBID], [TableName], [TableCode], [IsPmt], [NowSerial], [PreSerial], [Comment]) VALUES (N'2', N'1001-基础表-省份表', N'T_Bas_Province', N'0', N'1', N'1', N'')
GO
GO
INSERT INTO [dbo].[T_DMS_TABLE] ([DBID], [TableName], [TableCode], [IsPmt], [NowSerial], [PreSerial], [Comment]) VALUES (N'2', N'1002-基础表-城市表', N'T_Bas_City', N'0', N'1', N'1', N'')
GO
GO
INSERT INTO [dbo].[T_DMS_TABLE] ([DBID], [TableName], [TableCode], [IsPmt], [NowSerial], [PreSerial], [Comment]) VALUES (N'2', N'1003-基础表-区县表', N'T_Bas_Area', N'0', N'1', N'1', N'')
GO
GO
INSERT INTO [dbo].[T_DMS_TABLE] ([DBID], [TableName], [TableCode], [IsPmt], [NowSerial], [PreSerial], [Comment]) VALUES (N'2', N'1004-基础表-乡镇表', N'T_Bas_Town', N'0', N'1', N'1', N'')
GO
GO
INSERT INTO [dbo].[T_DMS_TABLE] ([DBID], [TableName], [TableCode], [IsPmt], [NowSerial], [PreSerial], [Comment]) VALUES (N'2', N'1005-基础表-村域表', N'T_Bas_Village', N'0', N'1', N'1', N'')
GO
GO
INSERT INTO [dbo].[T_DMS_TABLE] ([DBID], [TableName], [TableCode], [IsPmt], [NowSerial], [PreSerial], [Comment]) VALUES (N'2', N'2001-业务表-基地信息表', N'T_Bus_Base', N'0', N'1', N'1', N'')
GO
GO
INSERT INTO [dbo].[T_DMS_TABLE] ([DBID], [TableName], [TableCode], [IsPmt], [NowSerial], [PreSerial], [Comment]) VALUES (N'2', N'2002-参数表-网络条件表', N'T_Pmt_Net_Status', N'1', N'1', N'1', N'')
GO
GO
INSERT INTO [dbo].[T_DMS_TABLE] ([DBID], [TableName], [TableCode], [IsPmt], [NowSerial], [PreSerial], [Comment]) VALUES (N'2', N'2002-参数表-经营主体表', N'T_Pmt_Busi_Status', N'1', N'1', N'1', N'')
GO
GO
INSERT INTO [dbo].[T_DMS_TABLE] ([DBID], [TableName], [TableCode], [IsPmt], [NowSerial], [PreSerial], [Comment]) VALUES (N'2', N'2002-参数表-生产资质表', N'T_Pmt_Prd_Status', N'1', N'1', N'1', N'')
GO
GO
INSERT INTO [dbo].[T_DMS_TABLE] ([DBID], [TableName], [TableCode], [IsPmt], [NowSerial], [PreSerial], [Comment]) VALUES (N'2', N'2002-参数表-种植地形表', N'T_Pmt_Plan_Land', N'1', N'1', N'1', N'')
GO
GO
INSERT INTO [dbo].[T_DMS_TABLE] ([DBID], [TableName], [TableCode], [IsPmt], [NowSerial], [PreSerial], [Comment]) VALUES (N'2', N'2002-参数表-定植方式表', N'T_Pmt_Plan_Method', N'1', N'1', N'1', N'')
GO
GO
INSERT INTO [dbo].[T_DMS_TABLE] ([DBID], [TableName], [TableCode], [IsPmt], [NowSerial], [PreSerial], [Comment]) VALUES (N'2', N'2002-参数表-学历表', N'T_Pmt_Degree_Type', N'1', N'1', N'1', N'')
GO
GO
INSERT INTO [dbo].[T_DMS_TABLE] ([DBID], [TableName], [TableCode], [IsPmt], [NowSerial], [PreSerial], [Comment]) VALUES (N'2', N'2011-业务表-设备信息表', N'T_Info_Dev', N'0', N'1', N'1', N'')
GO
GO
INSERT INTO [dbo].[T_DMS_TABLE] ([DBID], [TableName], [TableCode], [IsPmt], [NowSerial], [PreSerial], [Comment]) VALUES (N'2', N'2012-参数表-设备类型表', N'T_Pmt_Dev_Type', N'1', N'1', N'1', N'')
GO
GO
INSERT INTO [dbo].[T_DMS_TABLE] ([DBID], [TableName], [TableCode], [IsPmt], [NowSerial], [PreSerial], [Comment]) VALUES (N'2', N'2012-参数表-设备状态表', N'T_Pmt_Dev_Status', N'1', N'1', N'1', N'')
GO
GO
INSERT INTO [dbo].[T_DMS_TABLE] ([DBID], [TableName], [TableCode], [IsPmt], [NowSerial], [PreSerial], [Comment]) VALUES (N'2', N'2021-业务表-设备维修记录表', N'T_Dev_Repair', N'0', N'1', N'1', N'')
GO
GO
INSERT INTO [dbo].[T_DMS_TABLE] ([DBID], [TableName], [TableCode], [IsPmt], [NowSerial], [PreSerial], [Comment]) VALUES (N'2', N'2031-业务表-设备期间核查计划表', N'T_Dev_Plan', N'0', N'1', N'1', N'')
GO
GO
INSERT INTO [dbo].[T_DMS_TABLE] ([DBID], [TableName], [TableCode], [IsPmt], [NowSerial], [PreSerial], [Comment]) VALUES (N'2', N'2032-业务表-设备期间核查记录表', N'T_Dev_Check', N'0', N'1', N'1', N'')
GO
GO
INSERT INTO [dbo].[T_DMS_TABLE] ([DBID], [TableName], [TableCode], [IsPmt], [NowSerial], [PreSerial], [Comment]) VALUES (N'2', N'3001-业务表-糖度采集表', N'T_Collect_Sugar', N'0', N'1', N'1', N'')
GO
GO
INSERT INTO [dbo].[T_DMS_TABLE] ([DBID], [TableName], [TableCode], [IsPmt], [NowSerial], [PreSerial], [Comment]) VALUES (N'2', N'3002-业务表-面积测量采集表', N'T_Collect_Area', N'0', N'1', N'1', N'')
GO
GO
INSERT INTO [dbo].[T_DMS_TABLE] ([DBID], [TableName], [TableCode], [IsPmt], [NowSerial], [PreSerial], [Comment]) VALUES (N'2', N'3003-业务表-农药残留采集表', N'T_Collect_Pest', N'0', N'1', N'1', N'')
GO
GO
INSERT INTO [dbo].[T_DMS_TABLE] ([DBID], [TableName], [TableCode], [IsPmt], [NowSerial], [PreSerial], [Comment]) VALUES (N'2', N'3004-业务表-土壤养分采集表', N'T_Collect_Soil', N'0', N'1', N'1', N'')
GO
GO
INSERT INTO [dbo].[T_DMS_TABLE] ([DBID], [TableName], [TableCode], [IsPmt], [NowSerial], [PreSerial], [Comment]) VALUES (N'2', N'3005-业务表-果实硬度采集表', N'T_Collect_Hardness', N'0', N'1', N'1', N'')
GO
GO
INSERT INTO [dbo].[T_DMS_TABLE] ([DBID], [TableName], [TableCode], [IsPmt], [NowSerial], [PreSerial], [Comment]) VALUES (N'2', N'3006-业务表-病虫害调查表', N'T_Collect_Insect', N'0', N'1', N'1', N'')
GO
GO
INSERT INTO [dbo].[T_DMS_TABLE] ([DBID], [TableName], [TableCode], [IsPmt], [NowSerial], [PreSerial], [Comment]) VALUES (N'2', N'3008-业务表-无线农业气象表', N'T_Collect_Weather', N'0', N'1', N'1', N'')
GO
GO
INSERT INTO [dbo].[T_DMS_TABLE] ([DBID], [TableName], [TableCode], [IsPmt], [NowSerial], [PreSerial], [Comment]) VALUES (N'2', N'3007-参数表-病虫害种类', N'T_Pmt_Insect_Kind', N'1', N'1', N'1', N'')
GO
GO
INSERT INTO [dbo].[T_DMS_TABLE] ([DBID], [TableName], [TableCode], [IsPmt], [NowSerial], [PreSerial], [Comment]) VALUES (N'3', N'问题表', N'T_Bus_Ask', N'0', N'1', N'1', N'')
GO
GO
INSERT INTO [dbo].[T_DMS_TABLE] ([DBID], [TableName], [TableCode], [IsPmt], [NowSerial], [PreSerial], [Comment]) VALUES (N'3', N'基础表-城市表', N'T_Bas_City', N'0', N'1', N'1', N'')
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
INSERT INTO [dbo].[T_DMS_TABLESET] ([DBID], [TableCode], [TableSet]) VALUES (N'1', N'T_Bus_Test', N'G|BusTest|TestID
S|BusTest|TestID')
GO
GO
INSERT INTO [dbo].[T_DMS_TABLESET] ([DBID], [TableCode], [TableSet]) VALUES (N'2', N'T_Bas_City', N'G|BusCity|CityID
S|BusCity|CityID')
GO
GO
INSERT INTO [dbo].[T_DMS_TABLESET] ([DBID], [TableCode], [TableSet]) VALUES (N'3', N'T_Bas_City', N'G|BusCity|CityID
S|BusCity|CityID')
GO
GO
INSERT INTO [dbo].[T_DMS_TABLESET] ([DBID], [TableCode], [TableSet]) VALUES (N'3', N'T_Bus_Ask', N'G|BusAsk|AskID
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
INSERT INTO [dbo].[T_Pmt_Man_Status] ([Man_Status], [Man_Status_Name]) VALUES (N'1', N'无效')
GO
GO
INSERT INTO [dbo].[T_Pmt_Man_Status] ([Man_Status], [Man_Status_Name]) VALUES (N'0', N'正常')
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
INSERT INTO [dbo].[T_Pmt_Man_Title] ([Man_Title], [Man_Title_Name]) VALUES (N'2', N'聘用人员')
GO
GO
INSERT INTO [dbo].[T_Pmt_Man_Title] ([Man_Title], [Man_Title_Name]) VALUES (N'1', N'正式员工')
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
INSERT INTO [dbo].[T_Pmt_Man_Type] ([Man_Type], [Man_Type_Name]) VALUES (N'1', N'公司领导')
GO
GO
INSERT INTO [dbo].[T_Pmt_Man_Type] ([Man_Type], [Man_Type_Name]) VALUES (N'2', N'财务主任')
GO
GO
INSERT INTO [dbo].[T_Pmt_Man_Type] ([Man_Type], [Man_Type_Name]) VALUES (N'3', N'营销主任')
GO
GO
INSERT INTO [dbo].[T_Pmt_Man_Type] ([Man_Type], [Man_Type_Name]) VALUES (N'4', N'电费中心主任')
GO
GO
INSERT INTO [dbo].[T_Pmt_Man_Type] ([Man_Type], [Man_Type_Name]) VALUES (N'5', N'客服中心主任')
GO
GO
INSERT INTO [dbo].[T_Pmt_Man_Type] ([Man_Type], [Man_Type_Name]) VALUES (N'6', N'农电所长')
GO
GO
INSERT INTO [dbo].[T_Pmt_Man_Type] ([Man_Type], [Man_Type_Name]) VALUES (N'7', N'系统管理员')
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
-- Table structure for T_Pmt_Project_Type
-- ----------------------------
DROP TABLE [dbo].[T_Pmt_Project_Type]
GO
CREATE TABLE [dbo].[T_Pmt_Project_Type] (
[ProjectType] varchar(2) NOT NULL ,
[ProjectTypeName] nvarchar(20) NOT NULL 
)


GO

-- ----------------------------
-- Records of T_Pmt_Project_Type
-- ----------------------------
INSERT INTO [dbo].[T_Pmt_Project_Type] ([ProjectType], [ProjectTypeName]) VALUES (N'01', N'交付类')
GO
GO
INSERT INTO [dbo].[T_Pmt_Project_Type] ([ProjectType], [ProjectTypeName]) VALUES (N'02', N'自研类')
GO
GO

-- ----------------------------
-- Table structure for T_Pmt_Work_Unit
-- ----------------------------
DROP TABLE [dbo].[T_Pmt_Work_Unit]
GO
CREATE TABLE [dbo].[T_Pmt_Work_Unit] (
[WorkUnit] varchar(2) NOT NULL ,
[WorkUnitName] nvarchar(20) NOT NULL 
)


GO

-- ----------------------------
-- Records of T_Pmt_Work_Unit
-- ----------------------------
INSERT INTO [dbo].[T_Pmt_Work_Unit] ([WorkUnit], [WorkUnitName]) VALUES (N'01', N'人/日')
GO
GO
INSERT INTO [dbo].[T_Pmt_Work_Unit] ([WorkUnit], [WorkUnitName]) VALUES (N'02', N'人/时')
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
DBCC CHECKIDENT(N'[dbo].[T_Rib_Button]', RESEED, 19)
GO

-- ----------------------------
-- Records of T_Rib_Button
-- ----------------------------
SET IDENTITY_INSERT [dbo].[T_Rib_Button] ON
GO
INSERT INTO [dbo].[T_Rib_Button] ([Rib_Btn], [Rib_Btn_Name], [Rib_Btn_Type], [Rib_Order], [Rib_Panel], [Rib_Tab], [Rib_Image], [Rib_Image_Index], [M_Function], [M_Code], [M_ID], [Rib_Code]) VALUES (N'1', N'导入SqlServer文件', N'1', N'1', N'1', N'1', N'', N'13', N'SqlServer.ImportPdm', N'', N'0', N'')
GO
GO
INSERT INTO [dbo].[T_Rib_Button] ([Rib_Btn], [Rib_Btn_Name], [Rib_Btn_Type], [Rib_Order], [Rib_Panel], [Rib_Tab], [Rib_Image], [Rib_Image_Index], [M_Function], [M_Code], [M_ID], [Rib_Code]) VALUES (N'2', N'生成Gpersist代码', N'1', N'2', N'1', N'1', N'', N'16', N'SqlServer.CodeBuild', N'', N'0', N'')
GO
GO
INSERT INTO [dbo].[T_Rib_Button] ([Rib_Btn], [Rib_Btn_Name], [Rib_Btn_Type], [Rib_Order], [Rib_Panel], [Rib_Tab], [Rib_Image], [Rib_Image_Index], [M_Function], [M_Code], [M_ID], [Rib_Code]) VALUES (N'3', N'导入MySql文件', N'1', N'1', N'2', N'2', N'', N'14', N'MySql.ImportPdm', N'', N'0', N'')
GO
GO
INSERT INTO [dbo].[T_Rib_Button] ([Rib_Btn], [Rib_Btn_Name], [Rib_Btn_Type], [Rib_Order], [Rib_Panel], [Rib_Tab], [Rib_Image], [Rib_Image_Index], [M_Function], [M_Code], [M_ID], [Rib_Code]) VALUES (N'4', N'生成Gpersist代码', N'1', N'2', N'2', N'2', N'', N'16', N'MySql.CodeBuild', N'', N'0', N'')
GO
GO
INSERT INTO [dbo].[T_Rib_Button] ([Rib_Btn], [Rib_Btn_Name], [Rib_Btn_Type], [Rib_Order], [Rib_Panel], [Rib_Tab], [Rib_Image], [Rib_Image_Index], [M_Function], [M_Code], [M_ID], [Rib_Code]) VALUES (N'5', N'导入Oracle文件', N'1', N'1', N'3', N'3', N'', N'15', N'Oracle.ImportPdm', N'', N'0', N'')
GO
GO
INSERT INTO [dbo].[T_Rib_Button] ([Rib_Btn], [Rib_Btn_Name], [Rib_Btn_Type], [Rib_Order], [Rib_Panel], [Rib_Tab], [Rib_Image], [Rib_Image_Index], [M_Function], [M_Code], [M_ID], [Rib_Code]) VALUES (N'6', N'生成Gpersist代码', N'1', N'2', N'3', N'3', N'', N'16', N'Oracle.CodeBuild', N'', N'0', N'')
GO
GO
INSERT INTO [dbo].[T_Rib_Button] ([Rib_Btn], [Rib_Btn_Name], [Rib_Btn_Type], [Rib_Order], [Rib_Panel], [Rib_Tab], [Rib_Image], [Rib_Image_Index], [M_Function], [M_Code], [M_ID], [Rib_Code]) VALUES (N'7', N'公司', N'1', N'1', N'4', N'4', N'', N'0', N'ManCompany', N'', N'0', N'')
GO
GO
INSERT INTO [dbo].[T_Rib_Button] ([Rib_Btn], [Rib_Btn_Name], [Rib_Btn_Type], [Rib_Order], [Rib_Panel], [Rib_Tab], [Rib_Image], [Rib_Image_Index], [M_Function], [M_Code], [M_ID], [Rib_Code]) VALUES (N'8', N'部门', N'1', N'2', N'4', N'4', N'', N'1', N'ManDept', N'', N'0', N'')
GO
GO
INSERT INTO [dbo].[T_Rib_Button] ([Rib_Btn], [Rib_Btn_Name], [Rib_Btn_Type], [Rib_Order], [Rib_Panel], [Rib_Tab], [Rib_Image], [Rib_Image_Index], [M_Function], [M_Code], [M_ID], [Rib_Code]) VALUES (N'9', N'员工', N'1', N'3', N'4', N'4', N'', N'2', N'ManMan', N'', N'0', N'')
GO
GO
INSERT INTO [dbo].[T_Rib_Button] ([Rib_Btn], [Rib_Btn_Name], [Rib_Btn_Type], [Rib_Order], [Rib_Panel], [Rib_Tab], [Rib_Image], [Rib_Image_Index], [M_Function], [M_Code], [M_ID], [Rib_Code]) VALUES (N'10', N'角色', N'1', N'1', N'5', N'4', N'', N'3', N'ManRole', N'', N'0', N'')
GO
GO
INSERT INTO [dbo].[T_Rib_Button] ([Rib_Btn], [Rib_Btn_Name], [Rib_Btn_Type], [Rib_Order], [Rib_Panel], [Rib_Tab], [Rib_Image], [Rib_Image_Index], [M_Function], [M_Code], [M_ID], [Rib_Code]) VALUES (N'11', N'角色分配', N'1', N'2', N'5', N'4', N'', N'4', N'SetRole', N'', N'0', N'')
GO
GO
INSERT INTO [dbo].[T_Rib_Button] ([Rib_Btn], [Rib_Btn_Name], [Rib_Btn_Type], [Rib_Order], [Rib_Panel], [Rib_Tab], [Rib_Image], [Rib_Image_Index], [M_Function], [M_Code], [M_ID], [Rib_Code]) VALUES (N'12', N'员工解锁', N'1', N'1', N'6', N'4', N'', N'5', N'UnLockMan', N'', N'0', N'')
GO
GO
INSERT INTO [dbo].[T_Rib_Button] ([Rib_Btn], [Rib_Btn_Name], [Rib_Btn_Type], [Rib_Order], [Rib_Panel], [Rib_Tab], [Rib_Image], [Rib_Image_Index], [M_Function], [M_Code], [M_ID], [Rib_Code]) VALUES (N'13', N'密码重置', N'1', N'2', N'6', N'4', N'', N'6', N'ResetMan', N'', N'0', N'')
GO
GO
INSERT INTO [dbo].[T_Rib_Button] ([Rib_Btn], [Rib_Btn_Name], [Rib_Btn_Type], [Rib_Order], [Rib_Panel], [Rib_Tab], [Rib_Image], [Rib_Image_Index], [M_Function], [M_Code], [M_ID], [Rib_Code]) VALUES (N'14', N'在线状态删除', N'1', N'3', N'6', N'4', N'', N'7', N'SetOnineMan', N'', N'0', N'')
GO
GO
INSERT INTO [dbo].[T_Rib_Button] ([Rib_Btn], [Rib_Btn_Name], [Rib_Btn_Type], [Rib_Order], [Rib_Panel], [Rib_Tab], [Rib_Image], [Rib_Image_Index], [M_Function], [M_Code], [M_ID], [Rib_Code]) VALUES (N'15', N'注册信息删除', N'1', N'4', N'6', N'4', N'', N'8', N'DeleteRegister', N'', N'0', N'')
GO
GO
INSERT INTO [dbo].[T_Rib_Button] ([Rib_Btn], [Rib_Btn_Name], [Rib_Btn_Type], [Rib_Order], [Rib_Panel], [Rib_Tab], [Rib_Image], [Rib_Image_Index], [M_Function], [M_Code], [M_ID], [Rib_Code]) VALUES (N'16', N'部门类型', N'1', N'5', N'6', N'4', N'', N'9', N'ManDeptType', N'', N'0', N'')
GO
GO
INSERT INTO [dbo].[T_Rib_Button] ([Rib_Btn], [Rib_Btn_Name], [Rib_Btn_Type], [Rib_Order], [Rib_Panel], [Rib_Tab], [Rib_Image], [Rib_Image_Index], [M_Function], [M_Code], [M_ID], [Rib_Code]) VALUES (N'17', N'员工岗位', N'1', N'6', N'6', N'4', N'', N'10', N'ManManType', N'', N'0', N'')
GO
GO
INSERT INTO [dbo].[T_Rib_Button] ([Rib_Btn], [Rib_Btn_Name], [Rib_Btn_Type], [Rib_Order], [Rib_Panel], [Rib_Tab], [Rib_Image], [Rib_Image_Index], [M_Function], [M_Code], [M_ID], [Rib_Code]) VALUES (N'18', N'员工级别', N'1', N'7', N'6', N'4', N'', N'11', N'ManManLevel', N'', N'0', N'')
GO
GO
INSERT INTO [dbo].[T_Rib_Button] ([Rib_Btn], [Rib_Btn_Name], [Rib_Btn_Type], [Rib_Order], [Rib_Panel], [Rib_Tab], [Rib_Image], [Rib_Image_Index], [M_Function], [M_Code], [M_ID], [Rib_Code]) VALUES (N'19', N'员工职务', N'1', N'8', N'6', N'4', N'', N'12', N'ManManTitle', N'', N'0', N'')
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
[Rib_Panel_Name] nvarchar(20) NOT NULL ,
[Rib_Order] smallint NOT NULL ,
[Rib_Tab] smallint NOT NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[T_Rib_Panel]', RESEED, 6)
GO

-- ----------------------------
-- Records of T_Rib_Panel
-- ----------------------------
SET IDENTITY_INSERT [dbo].[T_Rib_Panel] ON
GO
INSERT INTO [dbo].[T_Rib_Panel] ([Rib_Panel], [Rib_Panel_Name], [Rib_Order], [Rib_Tab]) VALUES (N'1', N'SqlServer环境代码', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_Rib_Panel] ([Rib_Panel], [Rib_Panel_Name], [Rib_Order], [Rib_Tab]) VALUES (N'2', N'MySql环境代码', N'1', N'2')
GO
GO
INSERT INTO [dbo].[T_Rib_Panel] ([Rib_Panel], [Rib_Panel_Name], [Rib_Order], [Rib_Tab]) VALUES (N'3', N'Oracle环境代码', N'1', N'3')
GO
GO
INSERT INTO [dbo].[T_Rib_Panel] ([Rib_Panel], [Rib_Panel_Name], [Rib_Order], [Rib_Tab]) VALUES (N'4', N'公司部门', N'1', N'4')
GO
GO
INSERT INTO [dbo].[T_Rib_Panel] ([Rib_Panel], [Rib_Panel_Name], [Rib_Order], [Rib_Tab]) VALUES (N'5', N'角色', N'2', N'4')
GO
GO
INSERT INTO [dbo].[T_Rib_Panel] ([Rib_Panel], [Rib_Panel_Name], [Rib_Order], [Rib_Tab]) VALUES (N'6', N'其他', N'3', N'4')
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
[Rib_Tab_Name] nvarchar(20) NOT NULL ,
[Rib_Order] smallint NOT NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[T_Rib_Tab]', RESEED, 4)
GO

-- ----------------------------
-- Records of T_Rib_Tab
-- ----------------------------
SET IDENTITY_INSERT [dbo].[T_Rib_Tab] ON
GO
INSERT INTO [dbo].[T_Rib_Tab] ([Rib_Tab], [Rib_Tab_Name], [Rib_Order]) VALUES (N'1', N'SqlServer', N'1')
GO
GO
INSERT INTO [dbo].[T_Rib_Tab] ([Rib_Tab], [Rib_Tab_Name], [Rib_Order]) VALUES (N'2', N'MySql', N'2')
GO
GO
INSERT INTO [dbo].[T_Rib_Tab] ([Rib_Tab], [Rib_Tab_Name], [Rib_Order]) VALUES (N'3', N'Oracle', N'3')
GO
GO
INSERT INTO [dbo].[T_Rib_Tab] ([Rib_Tab], [Rib_Tab_Name], [Rib_Order]) VALUES (N'4', N'系统管理', N'4')
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
INSERT INTO [dbo].[T_Set_Sql] ([Sql_ID], [Sql_Name], [Sql_Type], [Sql_Text], [Sql_Main_Table], [Sql_Keys], [Sql_Order], [Sql_Group], [Sql_Having], [Sql_Dropdown], [Crt_Date], [Sql_Page_Size], [Sql_Page_Heigh], [Sql_Page_Width], [Sql_Orietation], [Sql_Top_Margin], [Sql_Bottom_Margin], [Sql_Left_Margin], [Sql_Right_Margin], [Sql_Title], [Sql_Top_Font], [Sql_Font], [Sql_ISO], [Is_Print_Company], [Sql_Print_Set]) VALUES (N'P_Search_BusProject', N'项目管理', N'2', N'P_Search_BusProject', N'T_Bus_Project', null, null, null, null, null, N'2017-11-06 11:47:54.000', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', null, null, null, null, N'0', N'0')
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
INSERT INTO [dbo].[T_Set_Sql_Detail] ([Sql_ID], [Col_ID], [Col_Name], [Col_Code], [Col_Base_Code], [Col_Type], [Disp_Size], [Disp_Order], [Disp_Auth], [Is_Visible], [Is_Print], [Is_Order], [Is_Lock], [Is_Alias], [Col_Foot], [Col_Foot_Value], [Rela_Sql], [Col_Format]) VALUES (N'P_Search_BusProject', N'1', N'项目代号', N'ProjectCode', N'ProjectCode', N'7', N'100', N'1', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'', N'', N'')
GO
GO
INSERT INTO [dbo].[T_Set_Sql_Detail] ([Sql_ID], [Col_ID], [Col_Name], [Col_Code], [Col_Base_Code], [Col_Type], [Disp_Size], [Disp_Order], [Disp_Auth], [Is_Visible], [Is_Print], [Is_Order], [Is_Lock], [Is_Alias], [Col_Foot], [Col_Foot_Value], [Rela_Sql], [Col_Format]) VALUES (N'P_Search_BusProject', N'2', N'项目名称', N'ProjectName', N'ProjectName', N'7', N'200', N'2', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'', N'', N'')
GO
GO
INSERT INTO [dbo].[T_Set_Sql_Detail] ([Sql_ID], [Col_ID], [Col_Name], [Col_Code], [Col_Base_Code], [Col_Type], [Disp_Size], [Disp_Order], [Disp_Auth], [Is_Visible], [Is_Print], [Is_Order], [Is_Lock], [Is_Alias], [Col_Foot], [Col_Foot_Value], [Rela_Sql], [Col_Format]) VALUES (N'P_Search_BusProject', N'3', N'项目类型', N'ProjectTypeName', N'ProjectTypeName', N'7', N'200', N'3', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'', N'', N'')
GO
GO
INSERT INTO [dbo].[T_Set_Sql_Detail] ([Sql_ID], [Col_ID], [Col_Name], [Col_Code], [Col_Base_Code], [Col_Type], [Disp_Size], [Disp_Order], [Disp_Auth], [Is_Visible], [Is_Print], [Is_Order], [Is_Lock], [Is_Alias], [Col_Foot], [Col_Foot_Value], [Rela_Sql], [Col_Format]) VALUES (N'P_Search_BusProject', N'4', N'项目经理', N'ProjectManager', N'ProjectManager', N'7', N'200', N'4', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'', N'', N'')
GO
GO
INSERT INTO [dbo].[T_Set_Sql_Detail] ([Sql_ID], [Col_ID], [Col_Name], [Col_Code], [Col_Base_Code], [Col_Type], [Disp_Size], [Disp_Order], [Disp_Auth], [Is_Visible], [Is_Print], [Is_Order], [Is_Lock], [Is_Alias], [Col_Foot], [Col_Foot_Value], [Rela_Sql], [Col_Format]) VALUES (N'P_Search_BusProject', N'5', N'项目编号', N'ProjectID', N'ProjectID', N'7', N'100', N'5', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'', N'', N'')
GO
GO
INSERT INTO [dbo].[T_Set_Sql_Detail] ([Sql_ID], [Col_ID], [Col_Name], [Col_Code], [Col_Base_Code], [Col_Type], [Disp_Size], [Disp_Order], [Disp_Auth], [Is_Visible], [Is_Print], [Is_Order], [Is_Lock], [Is_Alias], [Col_Foot], [Col_Foot_Value], [Rela_Sql], [Col_Format]) VALUES (N'P_Search_BusProject', N'6', N'工时', N'WorkDate', N'WorkDate', N'7', N'100', N'6', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'', N'', N'')
GO
GO
INSERT INTO [dbo].[T_Set_Sql_Detail] ([Sql_ID], [Col_ID], [Col_Name], [Col_Code], [Col_Base_Code], [Col_Type], [Disp_Size], [Disp_Order], [Disp_Auth], [Is_Visible], [Is_Print], [Is_Order], [Is_Lock], [Is_Alias], [Col_Foot], [Col_Foot_Value], [Rela_Sql], [Col_Format]) VALUES (N'P_Search_BusProject', N'7', N'项目描述', N'ProjectDesc', N'ProjectDesc', N'7', N'100', N'7', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'', N'', N'')
GO
GO
INSERT INTO [dbo].[T_Set_Sql_Detail] ([Sql_ID], [Col_ID], [Col_Name], [Col_Code], [Col_Base_Code], [Col_Type], [Disp_Size], [Disp_Order], [Disp_Auth], [Is_Visible], [Is_Print], [Is_Order], [Is_Lock], [Is_Alias], [Col_Foot], [Col_Foot_Value], [Rela_Sql], [Col_Format]) VALUES (N'P_Search_BusProject', N'8', N'创建时间', N'TranDate', N'TranDate', N'3', N'100', N'8', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'', N'', N'')
GO
GO
INSERT INTO [dbo].[T_Set_Sql_Detail] ([Sql_ID], [Col_ID], [Col_Name], [Col_Code], [Col_Base_Code], [Col_Type], [Disp_Size], [Disp_Order], [Disp_Auth], [Is_Visible], [Is_Print], [Is_Order], [Is_Lock], [Is_Alias], [Col_Foot], [Col_Foot_Value], [Rela_Sql], [Col_Format]) VALUES (N'P_Search_BusProject', N'9', N'项目描述', N'TranUser', N'TranUser', N'7', N'100', N'9', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'', N'', N'')
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
DBCC CHECKIDENT(N'[dbo].[T_Sys_Log]', RESEED, 1130)
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
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'263', N'2017-10-26 15:47:43.127', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'264', N'2017-10-26 15:52:46.403', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'265', N'2017-10-26 15:54:02.620', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'266', N'2017-10-26 15:57:47.270', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'267', N'2017-10-26 16:05:57.837', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'268', N'2017-10-26 16:06:10.957', N'999', N'0610', N'1', N'删除员工[999]的在线状态')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'269', N'2017-10-26 16:14:18.653', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'270', N'2017-10-26 16:15:52.830', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'271', N'2017-10-26 16:20:55.007', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'272', N'2017-10-26 16:37:14.507', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'273', N'2017-10-26 16:38:33.837', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'274', N'2017-10-26 16:39:10.280', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'275', N'2017-10-26 16:39:19.733', N'999', N'0610', N'1', N'删除员工[999]的在线状态')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'276', N'2017-10-26 16:39:54.893', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'277', N'2017-10-26 16:41:54.527', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'278', N'2017-10-26 16:42:04.563', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'279', N'2017-10-26 16:42:45.470', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'280', N'2017-10-26 16:43:04.793', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'281', N'2017-10-26 16:43:40.323', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'282', N'2017-10-26 16:43:58.203', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'283', N'2017-10-26 16:44:53.217', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'284', N'2017-10-26 16:44:59.403', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'285', N'2017-10-26 16:45:24.233', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'286', N'2017-10-26 16:45:31.770', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'296', N'2017-10-26 17:28:37.417', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'297', N'2017-10-26 17:32:00.737', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'298', N'2017-10-26 17:33:21.157', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'299', N'2017-10-26 17:42:54.363', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'300', N'2017-10-26 17:43:12.363', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'349', N'2017-10-26 20:34:48.107', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'357', N'2017-10-27 09:21:05.947', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'358', N'2017-10-27 10:14:36.037', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'359', N'2017-10-27 10:14:47.337', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'383', N'2017-10-27 14:40:23.687', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'405', N'2017-10-27 16:22:52.327', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'425', N'2017-10-27 17:02:05.837', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'433', N'2017-10-27 17:43:24.487', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'434', N'2017-10-27 17:54:26.350', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'435', N'2017-10-27 17:55:56.230', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'436', N'2017-10-27 18:02:10.423', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'437', N'2017-10-27 18:02:49.920', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'438', N'2017-10-28 12:55:08.573', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'439', N'2017-10-28 12:58:00.037', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'440', N'2017-10-28 13:01:37.547', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'441', N'2017-10-28 13:03:16.313', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'442', N'2017-10-28 13:11:43.980', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'443', N'2017-10-28 13:13:55.560', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'444', N'2017-10-28 13:17:24.750', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'445', N'2017-10-28 13:18:43.160', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'446', N'2017-10-28 13:22:58.397', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'447', N'2017-10-28 13:23:29.100', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'448', N'2017-10-28 13:27:08.053', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'449', N'2017-10-28 13:29:26.247', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'450', N'2017-10-28 13:31:01.683', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'451', N'2017-10-28 13:33:08.040', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'452', N'2017-10-28 13:33:54.823', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'453', N'2017-10-28 13:39:14.667', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'454', N'2017-10-28 13:40:33.610', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'455', N'2017-10-28 13:42:44.303', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'456', N'2017-10-28 13:44:12.117', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'457', N'2017-10-28 13:45:31.483', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'458', N'2017-10-28 13:47:08.920', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'459', N'2017-10-28 13:53:38.150', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'460', N'2017-10-28 13:54:10.230', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'461', N'2017-10-28 13:54:46.210', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'462', N'2017-10-28 13:56:28.630', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'463', N'2017-10-28 13:57:01.473', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'464', N'2017-10-28 14:03:54.267', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'465', N'2017-10-28 14:04:40.920', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'466', N'2017-10-28 14:06:05.743', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'467', N'2017-10-28 14:26:31.753', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'468', N'2017-10-28 14:28:39.690', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'469', N'2017-10-28 14:30:20.503', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'470', N'2017-10-28 14:34:19.073', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'471', N'2017-10-28 14:47:58.940', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'472', N'2017-10-28 14:48:33.127', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'473', N'2017-10-28 14:50:39.993', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'474', N'2017-10-28 14:54:15.467', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'475', N'2017-10-28 14:58:28.993', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'476', N'2017-10-28 14:59:16.470', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'477', N'2017-10-28 15:01:13.617', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'478', N'2017-10-28 15:08:15.173', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'479', N'2017-10-28 15:09:51.067', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'480', N'2017-10-28 15:10:24.597', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'481', N'2017-10-28 15:12:07.233', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'482', N'2017-10-28 15:13:15.743', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'483', N'2017-10-28 15:55:54.647', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'484', N'2017-10-28 15:57:41.700', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'485', N'2017-10-28 16:01:46.700', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'486', N'2017-10-28 16:02:42.500', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'487', N'2017-10-28 16:04:10.000', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'488', N'2017-10-28 16:05:17.443', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'489', N'2017-10-28 16:10:34.020', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'490', N'2017-10-28 16:12:33.190', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'491', N'2017-10-28 16:18:16.713', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'492', N'2017-10-28 16:19:26.133', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'493', N'2017-10-28 16:22:17.067', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'494', N'2017-10-28 16:31:40.350', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'495', N'2017-10-28 16:39:19.183', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'496', N'2017-10-28 16:41:37.397', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'503', N'2017-10-30 09:09:43.077', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'504', N'2017-10-30 09:27:11.073', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'505', N'2017-10-30 09:31:53.007', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'506', N'2017-10-30 09:36:32.237', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'507', N'2017-10-30 09:37:36.633', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'508', N'2017-10-30 09:38:54.003', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'509', N'2017-10-30 09:42:37.030', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'510', N'2017-10-30 09:44:07.120', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'511', N'2017-10-30 09:44:45.053', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'512', N'2017-10-30 09:46:31.327', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'513', N'2017-10-30 09:46:56.133', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'514', N'2017-10-30 09:48:24.630', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'515', N'2017-10-30 09:50:21.783', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'516', N'2017-10-30 09:52:47.283', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'517', N'2017-10-30 09:53:23.150', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'518', N'2017-10-30 09:55:04.610', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'519', N'2017-10-30 09:59:13.323', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'520', N'2017-10-30 09:59:37.263', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'521', N'2017-10-30 10:00:57.607', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'522', N'2017-10-30 10:01:19.850', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'523', N'2017-10-30 10:02:11.277', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'524', N'2017-10-30 10:04:43.807', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'525', N'2017-10-30 10:10:13.827', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'526', N'2017-10-30 10:11:23.917', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'527', N'2017-10-30 10:11:55.380', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'528', N'2017-10-30 10:12:38.570', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'529', N'2017-10-30 10:12:50.623', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'530', N'2017-10-30 10:13:03.467', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'531', N'2017-10-30 10:13:34.563', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'532', N'2017-10-30 10:13:45.913', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'533', N'2017-10-30 10:16:11.220', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'534', N'2017-10-30 10:16:25.957', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'535', N'2017-10-30 10:17:22.320', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'536', N'2017-10-30 10:18:01.490', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'537', N'2017-10-30 10:18:39.837', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'538', N'2017-10-30 10:20:34.583', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'539', N'2017-10-30 10:20:48.847', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'540', N'2017-10-30 10:21:00.620', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'541', N'2017-10-30 10:22:19.793', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'542', N'2017-10-30 10:24:26.150', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'543', N'2017-10-30 10:27:22.730', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'544', N'2017-10-30 10:28:17.350', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'545', N'2017-10-30 10:30:25.640', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'546', N'2017-10-30 10:31:40.537', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'547', N'2017-10-30 10:32:59.853', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'548', N'2017-10-30 10:33:12.813', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'549', N'2017-10-30 10:34:32.600', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'550', N'2017-10-30 10:42:45.497', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'551', N'2017-10-30 10:43:06.577', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'552', N'2017-10-30 10:43:16.737', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'553', N'2017-10-30 10:46:40.033', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'554', N'2017-10-30 10:47:28.697', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'555', N'2017-10-30 10:49:49.547', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'556', N'2017-10-30 10:50:35.200', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'557', N'2017-10-30 10:52:54.380', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'558', N'2017-10-30 10:55:03.317', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'559', N'2017-10-30 10:55:29.403', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'560', N'2017-10-30 10:56:21.223', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'561', N'2017-10-30 10:56:31.137', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'562', N'2017-10-30 10:57:52.523', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'563', N'2017-10-30 10:59:22.440', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'564', N'2017-10-30 11:03:14.197', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'565', N'2017-10-30 11:03:32.250', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'566', N'2017-10-30 11:05:29.620', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'567', N'2017-10-30 11:06:25.313', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'568', N'2017-10-30 11:07:41.150', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'570', N'2017-10-30 11:13:15.217', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'571', N'2017-10-30 11:21:11.430', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'572', N'2017-10-30 11:22:31.623', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'573', N'2017-10-30 11:23:43.510', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'574', N'2017-10-30 11:24:52.060', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'575', N'2017-10-30 11:25:20.630', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'576', N'2017-10-30 11:25:35.673', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'577', N'2017-10-30 11:25:53.967', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'578', N'2017-10-30 11:26:24.037', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'288', N'2017-10-26 17:00:33.800', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'291', N'2017-10-26 17:02:31.110', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'292', N'2017-10-26 17:05:05.410', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'293', N'2017-10-26 17:05:17.550', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'294', N'2017-10-26 17:05:47.623', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'295', N'2017-10-26 17:06:04.200', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'310', N'2017-10-26 18:44:55.830', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'318', N'2017-10-26 18:58:51.790', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'320', N'2017-10-26 19:11:58.973', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'321', N'2017-10-26 19:13:34.700', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'322', N'2017-10-26 19:15:06.343', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'323', N'2017-10-26 19:16:39.073', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'324', N'2017-10-26 19:23:06.320', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'325', N'2017-10-26 19:25:25.687', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'345', N'2017-10-26 20:10:44.873', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'355', N'2017-10-26 20:51:46.747', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'569', N'2017-10-30 11:12:10.713', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'579', N'2017-10-30 11:34:40.090', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'580', N'2017-10-30 11:35:02.840', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'581', N'2017-10-30 11:35:33.870', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'582', N'2017-10-30 11:36:05.020', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'583', N'2017-10-30 11:36:52.443', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'584', N'2017-10-30 11:39:52.630', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'607', N'2017-10-30 15:57:39.503', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'611', N'2017-10-30 16:17:17.583', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'612', N'2017-10-30 16:17:28.847', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'613', N'2017-10-30 16:22:54.307', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'614', N'2017-10-30 16:23:01.777', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'617', N'2017-10-30 16:30:31.967', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'618', N'2017-10-30 16:30:46.307', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'625', N'2017-10-30 16:37:30.983', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'626', N'2017-10-30 16:40:16.967', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'627', N'2017-10-30 16:40:24.633', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'628', N'2017-10-30 16:41:05.790', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'629', N'2017-10-30 16:41:13.057', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'630', N'2017-10-30 16:44:16.323', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'631', N'2017-10-30 16:46:16.950', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'632', N'2017-10-30 16:58:34.767', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'633', N'2017-10-30 16:58:55.923', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'635', N'2017-10-30 19:26:05.550', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'636', N'2017-10-30 19:26:38.747', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'637', N'2017-10-30 19:26:54.400', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'638', N'2017-10-30 19:27:56.490', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'639', N'2017-10-30 19:28:41.027', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'640', N'2017-10-30 19:56:03.970', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'641', N'2017-10-30 19:57:07.237', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'642', N'2017-10-30 19:58:32.793', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'643', N'2017-10-30 20:00:06.570', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'644', N'2017-10-30 20:00:54.260', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'645', N'2017-10-30 20:06:40.300', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'646', N'2017-10-30 20:07:50.297', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'647', N'2017-10-30 20:11:31.930', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'648', N'2017-10-30 20:12:47.437', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'649', N'2017-10-30 20:13:08.633', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'650', N'2017-10-30 20:14:36.687', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'651', N'2017-10-30 20:14:59.740', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'652', N'2017-10-30 20:16:52.587', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'653', N'2017-10-30 20:17:11.080', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'654', N'2017-10-30 20:18:03.900', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'655', N'2017-10-30 20:23:22.487', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'656', N'2017-10-30 20:24:38.800', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'657', N'2017-10-30 20:25:15.400', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'658', N'2017-10-30 20:27:06.113', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'659', N'2017-10-30 20:32:06.647', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'660', N'2017-10-30 20:35:29.060', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'661', N'2017-10-30 20:37:05.277', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'662', N'2017-10-31 10:24:22.747', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'663', N'2017-10-31 11:37:32.910', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'664', N'2017-10-31 15:12:38.150', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'665', N'2017-10-31 15:23:45.307', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'666', N'2017-10-31 15:24:21.737', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'667', N'2017-10-31 15:25:02.853', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'668', N'2017-10-31 15:26:35.393', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'669', N'2017-10-31 15:27:48.690', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'670', N'2017-10-31 15:29:17.660', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'671', N'2017-10-31 16:26:26.643', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'673', N'2017-10-31 16:33:30.750', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'674', N'2017-10-31 16:36:04.717', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'675', N'2017-10-31 16:40:10.640', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'676', N'2017-10-31 16:40:31.957', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'677', N'2017-10-31 16:42:10.003', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'678', N'2017-10-31 16:42:38.463', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'679', N'2017-10-31 16:43:10.833', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'680', N'2017-10-31 16:46:09.813', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'681', N'2017-10-31 16:47:29.163', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'682', N'2017-10-31 16:48:04.747', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'683', N'2017-10-31 16:48:38.203', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'684', N'2017-10-31 16:49:16.190', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'685', N'2017-10-31 16:50:47.620', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'686', N'2017-10-31 16:52:41.733', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'687', N'2017-10-31 16:53:05.800', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'688', N'2017-10-31 16:54:11.127', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'689', N'2017-10-31 17:32:58.080', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'690', N'2017-10-31 17:33:32.900', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'691', N'2017-10-31 17:33:54.063', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'692', N'2017-10-31 17:34:33.953', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'693', N'2017-10-31 17:35:46.197', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'695', N'2017-10-31 17:39:59.617', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'696', N'2017-10-31 17:41:27.407', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'697', N'2017-10-31 18:51:26.520', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'698', N'2017-10-31 18:54:48.930', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'699', N'2017-10-31 18:55:45.990', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'700', N'2017-10-31 19:00:33.923', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'701', N'2017-10-31 19:07:24.117', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'702', N'2017-10-31 19:11:48.123', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'703', N'2017-10-31 19:12:20.343', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'704', N'2017-10-31 19:21:52.300', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'706', N'2017-10-31 19:32:12.810', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'707', N'2017-10-31 19:32:43.057', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'708', N'2017-10-31 19:33:03.703', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'710', N'2017-10-31 19:41:25.360', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'711', N'2017-10-31 19:42:58.683', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'712', N'2017-10-31 19:43:24.750', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'713', N'2017-10-31 19:45:29.910', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'714', N'2017-10-31 19:51:01.203', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'715', N'2017-10-31 19:52:51.587', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'716', N'2017-10-31 19:53:02.977', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'717', N'2017-10-31 19:55:07.283', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'718', N'2017-10-31 19:55:41.853', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'720', N'2017-10-31 20:03:58.383', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'721', N'2017-10-31 20:06:31.333', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'722', N'2017-10-31 20:06:40.607', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'724', N'2017-10-31 20:12:26.457', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'726', N'2017-10-31 20:21:07.947', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'727', N'2017-10-31 20:25:07.437', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'728', N'2017-10-31 20:25:40.590', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'729', N'2017-10-31 20:26:00.043', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'730', N'2017-10-31 20:26:16.663', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'731', N'2017-10-31 20:27:30.887', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'732', N'2017-10-31 20:28:31.230', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'734', N'2017-10-31 20:38:25.810', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'748', N'2017-10-31 21:06:04.743', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'749', N'2017-11-01 09:14:15.963', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'750', N'2017-11-01 10:29:49.043', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'751', N'2017-11-01 10:32:15.290', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'752', N'2017-11-01 10:33:04.763', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'753', N'2017-11-01 10:33:43.547', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'756', N'2017-11-01 10:39:55.557', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'757', N'2017-11-01 10:43:14.920', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'758', N'2017-11-01 10:46:22.050', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'759', N'2017-11-01 10:47:05.213', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'760', N'2017-11-01 10:58:47.670', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'761', N'2017-11-01 11:09:18.057', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'762', N'2017-11-01 11:09:53.897', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'763', N'2017-11-01 11:10:07.673', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'764', N'2017-11-01 11:11:17.053', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'301', N'2017-10-26 17:43:45.820', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'302', N'2017-10-26 17:44:03.523', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'303', N'2017-10-26 17:45:22.237', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'304', N'2017-10-26 17:45:26.603', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'305', N'2017-10-26 17:45:53.480', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'306', N'2017-10-26 17:47:13.260', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'307', N'2017-10-26 18:01:14.183', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'308', N'2017-10-26 18:01:39.970', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'312', N'2017-10-26 18:51:34.803', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'319', N'2017-10-26 19:10:28.670', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'326', N'2017-10-26 19:43:43.590', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'328', N'2017-10-26 19:46:04.033', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'329', N'2017-10-26 19:47:05.347', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'330', N'2017-10-26 19:48:13.450', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'331', N'2017-10-26 19:49:01.870', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'332', N'2017-10-26 19:50:27.897', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'333', N'2017-10-26 19:51:17.503', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'334', N'2017-10-26 19:53:14.767', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'335', N'2017-10-26 19:57:28.387', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'336', N'2017-10-26 19:58:01.803', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'337', N'2017-10-26 19:58:11.100', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'338', N'2017-10-26 19:58:35.010', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'339', N'2017-10-26 19:59:01.423', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'340', N'2017-10-26 20:00:29.130', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'342', N'2017-10-26 20:04:29.693', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'343', N'2017-10-26 20:04:35.507', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'344', N'2017-10-26 20:06:13.790', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'346', N'2017-10-26 20:10:54.957', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'347', N'2017-10-26 20:11:21.797', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'348', N'2017-10-26 20:11:28.807', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'341', N'2017-10-26 20:02:55.363', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'327', N'2017-10-26 19:45:41.557', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'317', N'2017-10-26 18:53:44.967', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'316', N'2017-10-26 18:53:16.000', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'315', N'2017-10-26 18:52:27.260', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'314', N'2017-10-26 18:52:18.763', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'313', N'2017-10-26 18:51:47.740', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'311', N'2017-10-26 18:45:52.120', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'309', N'2017-10-26 18:06:54.953', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'290', N'2017-10-26 17:02:22.547', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'289', N'2017-10-26 17:00:41.720', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'287', N'2017-10-26 16:50:09.593', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'350', N'2017-10-26 20:48:59.727', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'351', N'2017-10-26 20:49:19.603', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'352', N'2017-10-26 20:49:53.087', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'353', N'2017-10-26 20:50:01.213', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'354', N'2017-10-26 20:51:33.430', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'356', N'2017-10-26 20:59:35.780', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'615', N'2017-10-30 16:24:56.400', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'616', N'2017-10-30 16:26:51.697', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'754', N'2017-11-01 10:37:19.903', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'755', N'2017-11-01 10:38:07.077', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'770', N'2017-11-01 11:56:21.547', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'772', N'2017-11-01 13:26:05.310', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'776', N'2017-11-01 13:33:56.143', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'782', N'2017-11-01 13:52:59.533', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'786', N'2017-11-01 14:18:48.513', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'787', N'2017-11-01 14:20:07.880', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'788', N'2017-11-01 14:21:09.957', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'789', N'2017-11-01 14:36:30.117', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'790', N'2017-11-01 14:39:47.963', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'791', N'2017-11-01 14:42:45.583', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'792', N'2017-11-01 17:01:50.750', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'793', N'2017-11-01 17:03:35.827', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'794', N'2017-11-01 17:06:12.250', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'795', N'2017-11-01 17:07:42.987', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'796', N'2017-11-01 17:52:34.127', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'797', N'2017-11-01 17:54:46.467', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'798', N'2017-11-01 17:55:13.823', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'799', N'2017-11-01 17:56:24.880', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'800', N'2017-11-01 17:58:01.810', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'801', N'2017-11-01 17:59:17.953', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'802', N'2017-11-01 18:05:36.923', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'803', N'2017-11-01 18:06:40.453', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'804', N'2017-11-01 18:29:06.547', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'805', N'2017-11-01 18:30:21.170', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'806', N'2017-11-01 18:31:13.380', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'808', N'2017-11-01 18:38:07.423', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'809', N'2017-11-01 18:41:00.960', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'810', N'2017-11-01 18:41:20.573', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'811', N'2017-11-01 18:52:11.120', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'812', N'2017-11-01 18:54:13.087', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'813', N'2017-11-01 18:55:12.750', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'814', N'2017-11-01 18:55:45.553', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'815', N'2017-11-01 18:56:23.843', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'816', N'2017-11-01 19:08:27.017', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'817', N'2017-11-01 19:51:04.743', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'818', N'2017-11-01 19:51:12.897', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'820', N'2017-11-01 19:53:25.693', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'821', N'2017-11-01 19:55:14.210', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'822', N'2017-11-01 19:55:20.397', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'823', N'2017-11-01 19:56:53.043', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'824', N'2017-11-01 19:57:00.357', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'825', N'2017-11-01 19:58:47.550', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'826', N'2017-11-01 19:58:54.180', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'827', N'2017-11-01 20:04:49.007', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'828', N'2017-11-01 20:05:24.713', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'831', N'2017-11-01 21:00:31.120', N'000', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'832', N'2017-11-01 21:00:34.410', N'000', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'833', N'2017-11-01 21:00:53.433', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'834', N'2017-11-01 21:03:26.007', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'835', N'2017-11-01 21:03:58.810', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'836', N'2017-11-01 21:04:28.247', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'837', N'2017-11-02 09:21:16.610', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'839', N'2017-11-02 09:31:21.550', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'840', N'2017-11-02 09:32:16.053', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'841', N'2017-11-02 09:35:47.870', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'842', N'2017-11-02 09:37:29.323', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'843', N'2017-11-02 09:40:52.357', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'844', N'2017-11-02 09:41:25.807', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'845', N'2017-11-02 09:41:52.157', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'846', N'2017-11-02 09:42:11.417', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'847', N'2017-11-02 09:47:31.893', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'848', N'2017-11-02 09:50:05.060', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'849', N'2017-11-02 09:50:18.807', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'850', N'2017-11-02 09:52:11.823', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'851', N'2017-11-02 09:56:48.033', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'852', N'2017-11-02 09:58:32.400', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'853', N'2017-11-02 10:04:14.037', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'854', N'2017-11-02 10:06:59.370', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'855', N'2017-11-02 10:11:32.920', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'856', N'2017-11-02 10:12:53.440', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'857', N'2017-11-02 10:13:41.627', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'858', N'2017-11-02 10:17:22.953', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'859', N'2017-11-02 10:19:22.020', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'860', N'2017-11-02 10:21:22.867', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'861', N'2017-11-02 10:22:23.430', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'862', N'2017-11-02 10:26:06.480', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'863', N'2017-11-02 10:28:38.547', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'864', N'2017-11-02 10:31:42.217', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'873', N'2017-11-02 15:52:21.043', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'874', N'2017-11-02 16:03:27.347', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'875', N'2017-11-02 16:06:40.247', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'877', N'2017-11-02 16:19:24.963', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'878', N'2017-11-02 16:20:58.007', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'879', N'2017-11-02 16:25:27.797', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'880', N'2017-11-02 16:27:03.930', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'881', N'2017-11-02 16:28:51.807', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'882', N'2017-11-02 16:29:44.890', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'883', N'2017-11-02 16:32:27.170', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'884', N'2017-11-02 16:52:20.480', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'885', N'2017-11-02 16:52:47.717', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'886', N'2017-11-02 17:20:06.160', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'888', N'2017-11-02 17:37:08.547', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'892', N'2017-11-02 17:47:37.710', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'893', N'2017-11-02 17:51:32.423', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'360', N'2017-10-27 10:17:12.843', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'361', N'2017-10-27 13:19:16.153', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'362', N'2017-10-27 13:29:03.883', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'363', N'2017-10-27 13:51:32.323', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'364', N'2017-10-27 13:55:06.727', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'365', N'2017-10-27 13:59:04.730', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'366', N'2017-10-27 14:00:29.493', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'367', N'2017-10-27 14:03:30.847', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'368', N'2017-10-27 14:13:46.983', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'369', N'2017-10-27 14:16:51.947', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'370', N'2017-10-27 14:17:16.153', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'371', N'2017-10-27 14:17:38.867', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'372', N'2017-10-27 14:18:18.827', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'373', N'2017-10-27 14:19:11.733', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'374', N'2017-10-27 14:19:36.050', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'375', N'2017-10-27 14:20:35.387', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'376', N'2017-10-27 14:21:29.370', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'377', N'2017-10-27 14:23:02.687', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'378', N'2017-10-27 14:28:47.000', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'379', N'2017-10-27 14:30:24.877', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'380', N'2017-10-27 14:31:19.293', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'381', N'2017-10-27 14:34:15.513', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'382', N'2017-10-27 14:36:02.467', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'384', N'2017-10-27 14:47:52.930', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'385', N'2017-10-27 14:48:51.667', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'386', N'2017-10-27 14:49:17.760', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'387', N'2017-10-27 14:51:24.460', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'388', N'2017-10-27 14:52:03.633', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'389', N'2017-10-27 14:53:07.227', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'390', N'2017-10-27 14:53:32.747', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'391', N'2017-10-27 14:56:23.700', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'392', N'2017-10-27 14:56:49.023', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'393', N'2017-10-27 14:58:10.143', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'394', N'2017-10-27 14:59:04.437', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'395', N'2017-10-27 15:00:42.980', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'396', N'2017-10-27 15:02:07.827', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'397', N'2017-10-27 15:09:03.733', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'398', N'2017-10-27 15:10:56.460', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'399', N'2017-10-27 15:12:07.413', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'400', N'2017-10-27 15:13:39.260', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'401', N'2017-10-27 16:11:18.803', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'402', N'2017-10-27 16:12:50.857', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'403', N'2017-10-27 16:13:58.480', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'404', N'2017-10-27 16:14:27.860', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'406', N'2017-10-27 16:23:37.980', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'407', N'2017-10-27 16:26:04.333', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'408', N'2017-10-27 16:28:11.537', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'409', N'2017-10-27 16:29:26.743', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'410', N'2017-10-27 16:31:28.930', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'411', N'2017-10-27 16:32:45.627', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'412', N'2017-10-27 16:35:14.313', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'413', N'2017-10-27 16:37:04.813', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'414', N'2017-10-27 16:38:33.583', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'415', N'2017-10-27 16:39:41.260', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'416', N'2017-10-27 16:41:07.133', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'417', N'2017-10-27 16:45:02.823', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'418', N'2017-10-27 16:48:02.957', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'419', N'2017-10-27 16:48:09.467', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'420', N'2017-10-27 16:49:26.233', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'421', N'2017-10-27 16:53:54.660', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'422', N'2017-10-27 16:54:49.343', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'423', N'2017-10-27 16:56:30.037', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'424', N'2017-10-27 16:58:19.450', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'426', N'2017-10-27 17:02:49.863', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'427', N'2017-10-27 17:06:21.850', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'428', N'2017-10-27 17:20:44.537', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'429', N'2017-10-27 17:21:41.280', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'430', N'2017-10-27 17:22:23.690', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'431', N'2017-10-27 17:22:45.107', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'432', N'2017-10-27 17:23:49.567', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'497', N'2017-10-28 16:49:31.543', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'498', N'2017-10-28 16:53:05.527', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'499', N'2017-10-28 17:00:33.733', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'500', N'2017-10-28 17:01:08.670', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'501', N'2017-10-28 17:02:15.217', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'502', N'2017-10-28 17:03:57.070', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'619', N'2017-10-30 16:31:39.147', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'620', N'2017-10-30 16:32:41.210', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'621', N'2017-10-30 16:32:49.970', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'622', N'2017-10-30 16:34:15.037', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'623', N'2017-10-30 16:34:35.493', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'624', N'2017-10-30 16:35:03.170', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'894', N'2017-11-02 17:53:20.577', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'895', N'2017-11-02 18:08:27.527', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'896', N'2017-11-02 18:33:58.867', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'897', N'2017-11-02 18:38:27.923', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'898', N'2017-11-02 18:40:20.623', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'899', N'2017-11-02 18:43:28.017', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'900', N'2017-11-02 18:48:50.810', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'901', N'2017-11-02 18:50:03.723', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'902', N'2017-11-02 18:58:53.710', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'903', N'2017-11-02 19:01:17.530', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'904', N'2017-11-02 19:02:55.323', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'905', N'2017-11-02 19:36:26.163', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'906', N'2017-11-02 19:51:36.487', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'907', N'2017-11-02 19:53:12.333', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'908', N'2017-11-02 19:54:14.990', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'909', N'2017-11-02 19:55:40.893', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'910', N'2017-11-02 19:56:51.103', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'911', N'2017-11-02 19:57:23.880', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'912', N'2017-11-02 20:00:46.913', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'913', N'2017-11-02 20:17:09.533', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'914', N'2017-11-02 20:21:18.467', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'915', N'2017-11-02 20:24:13.677', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'916', N'2017-11-02 20:25:12.800', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'917', N'2017-11-02 20:25:35.790', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'918', N'2017-11-02 20:32:39.030', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'919', N'2017-11-02 20:36:19.743', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'920', N'2017-11-02 20:39:02.390', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'921', N'2017-11-02 20:41:27.240', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'922', N'2017-11-02 20:43:17.853', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'923', N'2017-11-02 20:48:24.747', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'924', N'2017-11-02 20:50:07.700', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'925', N'2017-11-02 20:50:39.807', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'926', N'2017-11-02 20:57:14.430', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'927', N'2017-11-03 09:35:16.593', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'585', N'2017-10-30 13:18:50.843', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'735', N'2017-10-31 20:42:24.820', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'736', N'2017-10-31 20:43:15.670', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'737', N'2017-10-31 20:43:45.683', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'738', N'2017-10-31 20:44:22.493', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'739', N'2017-10-31 20:44:37.183', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'740', N'2017-10-31 20:44:58.900', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'741', N'2017-10-31 20:45:16.320', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'742', N'2017-10-31 20:46:26.877', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'743', N'2017-10-31 20:47:07.353', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'744', N'2017-10-31 20:47:45.217', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'745', N'2017-10-31 20:49:29.260', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'746', N'2017-10-31 20:50:07.707', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'747', N'2017-10-31 20:50:54.487', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'807', N'2017-11-01 18:36:41.560', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'819', N'2017-11-01 19:51:16.003', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'838', N'2017-11-02 09:25:03.777', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'865', N'2017-11-02 10:43:18.957', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'872', N'2017-11-02 15:52:00.560', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'876', N'2017-11-02 16:13:41.143', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'586', N'2017-10-30 13:23:11.337', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'587', N'2017-10-30 13:23:19.763', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'588', N'2017-10-30 13:23:32.823', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'589', N'2017-10-30 13:24:16.700', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'590', N'2017-10-30 13:26:38.420', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'591', N'2017-10-30 13:27:44.170', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'592', N'2017-10-30 13:27:56.190', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'593', N'2017-10-30 13:34:27.613', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'594', N'2017-10-30 13:38:04.687', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'595', N'2017-10-30 13:40:59.187', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'596', N'2017-10-30 13:41:21.013', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'597', N'2017-10-30 13:42:59.273', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'598', N'2017-10-30 13:43:22.853', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'599', N'2017-10-30 13:43:43.077', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'600', N'2017-10-30 13:45:16.867', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'601', N'2017-10-30 13:45:38.950', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'602', N'2017-10-30 13:46:04.290', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'603', N'2017-10-30 13:46:27.630', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'604', N'2017-10-30 13:48:11.827', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'605', N'2017-10-30 13:48:55.927', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'606', N'2017-10-30 14:00:12.553', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'608', N'2017-10-30 16:01:06.393', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'609', N'2017-10-30 16:01:41.827', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'610', N'2017-10-30 16:01:52.513', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'672', N'2017-10-31 16:29:43.590', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'694', N'2017-10-31 17:39:12.040', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'705', N'2017-10-31 19:31:43.320', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'709', N'2017-10-31 19:41:13.977', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'719', N'2017-10-31 20:03:06.417', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'723', N'2017-10-31 20:11:43.633', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'725', N'2017-10-31 20:14:46.200', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'733', N'2017-10-31 20:36:31.417', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'634', N'2017-10-30 17:01:14.707', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'765', N'2017-11-01 11:18:43.760', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'766', N'2017-11-01 11:19:42.520', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'767', N'2017-11-01 11:20:26.600', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'768', N'2017-11-01 11:23:03.970', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'769', N'2017-11-01 11:23:35.147', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'771', N'2017-11-01 11:56:32.450', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'773', N'2017-11-01 13:27:59.337', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'774', N'2017-11-01 13:28:47.227', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'775', N'2017-11-01 13:29:04.757', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'777', N'2017-11-01 13:34:57.117', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'778', N'2017-11-01 13:37:50.990', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'779', N'2017-11-01 13:47:35.080', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'780', N'2017-11-01 13:48:43.570', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'781', N'2017-11-01 13:49:12.740', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'783', N'2017-11-01 13:55:33.963', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'784', N'2017-11-01 13:57:06.080', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'785', N'2017-11-01 13:57:43.550', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'887', N'2017-11-02 17:25:47.500', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'889', N'2017-11-02 17:43:03.250', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'890', N'2017-11-02 17:45:17.140', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'891', N'2017-11-02 17:46:30.510', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'829', N'2017-11-01 20:59:57.790', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'830', N'2017-11-01 21:00:12.827', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'866', N'2017-11-02 10:44:05.163', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'867', N'2017-11-02 10:44:58.093', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'868', N'2017-11-02 10:46:00.120', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'869', N'2017-11-02 10:53:24.820', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'870', N'2017-11-02 10:54:25.810', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'871', N'2017-11-02 10:55:38.517', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'928', N'2017-11-03 10:32:37.230', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'929', N'2017-11-03 10:34:40.323', N'999', N'0610', N'1', N'删除员工[000]的在线状态')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'930', N'2017-11-03 10:37:08.197', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'931', N'2017-11-03 10:38:07.030', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'932', N'2017-11-03 10:41:05.503', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'933', N'2017-11-03 10:43:13.253', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'934', N'2017-11-03 10:43:57.107', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'935', N'2017-11-03 10:44:37.107', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'936', N'2017-11-03 10:53:06.220', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'937', N'2017-11-03 10:53:33.310', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'938', N'2017-11-03 10:54:54.130', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'939', N'2017-11-03 10:55:11.873', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'940', N'2017-11-03 10:58:49.177', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'941', N'2017-11-03 10:58:56.287', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'942', N'2017-11-03 10:59:09.410', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'943', N'2017-11-03 17:43:08.340', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'944', N'2017-11-03 17:43:23.373', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'945', N'2017-11-03 17:43:50.503', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'946', N'2017-11-03 17:52:06.637', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'947', N'2017-11-03 17:52:15.257', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'948', N'2017-11-03 17:56:05.510', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'949', N'2017-11-03 17:56:21.273', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'950', N'2017-11-03 17:59:23.027', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'951', N'2017-11-03 18:01:43.117', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'952', N'2017-11-04 09:23:23.893', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'953', N'2017-11-04 09:23:26.923', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'954', N'2017-11-04 09:28:31.170', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'955', N'2017-11-04 10:13:41.027', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'956', N'2017-11-06 09:13:48.830', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'957', N'2017-11-06 10:02:07.290', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'958', N'2017-11-06 10:02:39.617', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'959', N'2017-11-06 10:02:46.233', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'960', N'2017-11-06 10:03:16.547', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'961', N'2017-11-06 10:03:47.853', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'962', N'2017-11-06 10:04:23.180', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'963', N'2017-11-06 10:05:00.647', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'964', N'2017-11-06 10:05:23.213', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'965', N'2017-11-06 10:48:31.127', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'966', N'2017-11-06 10:56:15.530', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'967', N'2017-11-06 10:56:53.407', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'968', N'2017-11-06 11:02:15.100', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'969', N'2017-11-06 11:04:40.203', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'970', N'2017-11-06 11:05:16.967', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'971', N'2017-11-06 11:06:48.297', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'972', N'2017-11-06 11:07:34.853', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'973', N'2017-11-06 11:18:27.557', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'974', N'2017-11-06 11:22:28.810', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'977', N'2017-11-06 13:30:35.277', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'979', N'2017-11-06 15:52:02.253', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'980', N'2017-11-06 15:52:40.667', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'981', N'2017-11-06 15:55:55.040', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'982', N'2017-11-06 15:56:32.820', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'983', N'2017-11-06 16:18:05.163', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'984', N'2017-11-06 16:19:06.783', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'985', N'2017-11-06 16:21:52.370', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'986', N'2017-11-06 16:22:50.943', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'987', N'2017-11-06 16:27:54.270', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'988', N'2017-11-06 16:28:42.277', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'989', N'2017-11-06 16:29:08.927', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'990', N'2017-11-06 16:29:18.910', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'991', N'2017-11-06 16:35:38.400', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'992', N'2017-11-06 16:37:15.503', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'993', N'2017-11-06 16:37:38.090', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'995', N'2017-11-06 16:46:48.030', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'996', N'2017-11-06 16:47:07.143', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'997', N'2017-11-06 16:47:25.370', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'998', N'2017-11-06 16:48:18.387', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'999', N'2017-11-06 16:52:17.320', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'1000', N'2017-11-06 16:52:43.037', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'1001', N'2017-11-06 16:56:46.197', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'1002', N'2017-11-06 16:58:44.150', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'1003', N'2017-11-06 16:59:19.700', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'1011', N'2017-11-06 17:51:48.567', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'1012', N'2017-11-06 17:52:32.557', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'1013', N'2017-11-06 17:59:53.097', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'1014', N'2017-11-06 18:00:53.343', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'1024', N'2017-11-06 20:27:12.877', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'1025', N'2017-11-06 20:28:24.283', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'1026', N'2017-11-06 20:28:56.397', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'1027', N'2017-11-06 20:30:23.783', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'1028', N'2017-11-06 20:30:58.890', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'1029', N'2017-11-06 20:33:48.940', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'1031', N'2017-11-06 20:38:49.460', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'1038', N'2017-11-07 09:04:40.767', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'1040', N'2017-11-07 09:18:33.183', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'1042', N'2017-11-07 09:37:19.573', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'1043', N'2017-11-07 09:38:50.707', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'1044', N'2017-11-07 09:39:25.197', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'1045', N'2017-11-07 09:40:07.927', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'1046', N'2017-11-07 09:49:55.877', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'1047', N'2017-11-07 10:00:14.880', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'1048', N'2017-11-07 10:04:42.373', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'1049', N'2017-11-07 10:05:32.073', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'975', N'2017-11-06 11:39:33.340', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'976', N'2017-11-06 13:29:21.307', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'978', N'2017-11-06 15:39:33.853', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'994', N'2017-11-06 16:44:37.813', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'1004', N'2017-11-06 17:00:07.153', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'1005', N'2017-11-06 17:02:15.050', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'1006', N'2017-11-06 17:02:28.317', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'1007', N'2017-11-06 17:15:35.407', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'1008', N'2017-11-06 17:15:38.243', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'1009', N'2017-11-06 17:15:46.997', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'1010', N'2017-11-06 17:24:07.133', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'1015', N'2017-11-06 19:11:34.250', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'1016', N'2017-11-06 19:12:26.890', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'1017', N'2017-11-06 19:12:43.740', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'1018', N'2017-11-06 19:13:16.197', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'1019', N'2017-11-06 19:27:55.270', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'1020', N'2017-11-06 19:29:06.520', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'1021', N'2017-11-06 19:29:22.967', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'1022', N'2017-11-06 19:29:38.563', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'1023', N'2017-11-06 20:09:20.873', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'1030', N'2017-11-06 20:34:51.210', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'1032', N'2017-11-06 20:45:23.470', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'1033', N'2017-11-06 20:46:51.840', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'1034', N'2017-11-06 20:47:27.180', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'1035', N'2017-11-06 20:49:00.340', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'1036', N'2017-11-06 21:03:31.447', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'1037', N'2017-11-06 21:07:52.253', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'1039', N'2017-11-07 09:15:20.930', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'1041', N'2017-11-07 09:24:03.327', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'1050', N'2017-11-07 10:11:22.090', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'1051', N'2017-11-07 10:21:51.070', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'1068', N'2017-11-07 21:03:42.197', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'1069', N'2017-11-08 14:51:43.823', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'1070', N'2017-11-08 15:34:57.877', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'1071', N'2017-11-09 09:02:55.117', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'1072', N'2017-11-09 09:10:37.330', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'1073', N'2017-11-09 09:10:44.780', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'1074', N'2017-11-09 09:11:16.100', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'1075', N'2017-11-09 09:16:09.210', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'1076', N'2017-11-09 09:16:35.630', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'1077', N'2017-11-09 09:16:45.030', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'1078', N'2017-11-09 09:16:55.880', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'1079', N'2017-11-09 09:17:07.930', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'1080', N'2017-11-09 09:17:12.730', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'1081', N'2017-11-09 09:17:34.613', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'1082', N'2017-11-09 09:17:43.517', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'1083', N'2017-11-09 09:19:49.457', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'1084', N'2017-11-09 09:27:03.013', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'1085', N'2017-11-09 09:27:25.943', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'1086', N'2017-11-09 09:28:26.190', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'1087', N'2017-11-09 10:16:20.257', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'1088', N'2017-11-09 10:17:26.290', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'1089', N'2017-11-09 10:18:33.280', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'1090', N'2017-11-09 10:19:09.240', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'1091', N'2017-11-09 10:19:24.390', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'1092', N'2017-11-09 10:19:54.340', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'1093', N'2017-11-09 10:20:21.557', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'1100', N'2017-11-09 10:56:31.580', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'1101', N'2017-11-09 11:00:57.443', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'1110', N'2017-11-09 11:12:37.110', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'1111', N'2017-11-09 11:14:44.147', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'1112', N'2017-11-09 11:16:02.227', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'1113', N'2017-11-09 11:22:18.460', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'1115', N'2017-11-09 11:26:29.773', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'1117', N'2017-11-09 11:34:30.063', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'1119', N'2017-11-09 11:40:29.723', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'1123', N'2017-11-09 11:46:46.883', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'1125', N'2017-11-09 12:22:38.607', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'1127', N'2017-11-09 13:14:18.303', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'1128', N'2017-11-09 13:14:32.700', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'1129', N'2017-11-09 13:16:10.573', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'1130', N'2017-11-09 13:16:28.573', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'1052', N'2017-11-07 10:22:56.543', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'1053', N'2017-11-07 10:35:43.303', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'1054', N'2017-11-07 10:36:02.147', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'1055', N'2017-11-07 10:39:38.497', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'1056', N'2017-11-07 10:39:51.307', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'1057', N'2017-11-07 10:42:55.573', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'1058', N'2017-11-07 10:43:38.507', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'1059', N'2017-11-07 10:49:12.220', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'1061', N'2017-11-07 11:05:50.480', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'1062', N'2017-11-07 11:06:03.497', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'1063', N'2017-11-07 13:29:12.533', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'1064', N'2017-11-07 13:29:30.060', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'1065', N'2017-11-07 14:45:19.873', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'1066', N'2017-11-07 14:47:15.680', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'1067', N'2017-11-07 14:58:50.770', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'1060', N'2017-11-07 10:53:57.203', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'1094', N'2017-11-09 10:22:37.990', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'1095', N'2017-11-09 10:23:26.430', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'1096', N'2017-11-09 10:24:31.783', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'1098', N'2017-11-09 10:33:33.530', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'1099', N'2017-11-09 10:34:09.650', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'1102', N'2017-11-09 11:01:22.790', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'1103', N'2017-11-09 11:02:49.910', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'1104', N'2017-11-09 11:04:15.660', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'1105', N'2017-11-09 11:06:53.360', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'1106', N'2017-11-09 11:07:12.107', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'1107', N'2017-11-09 11:07:47.777', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'1108', N'2017-11-09 11:08:51.760', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'1109', N'2017-11-09 11:11:02.357', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'1114', N'2017-11-09 11:22:32.827', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'1116', N'2017-11-09 11:27:03.480', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'1118', N'2017-11-09 11:34:51.597', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'1120', N'2017-11-09 11:41:05.593', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'1121', N'2017-11-09 11:41:40.503', N'999', N'0000', N'1', N'登出系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'1122', N'2017-11-09 11:41:52.950', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'1124', N'2017-11-09 11:47:32.360', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'1126', N'2017-11-09 12:25:07.960', N'999', N'0000', N'1', N'登录系统')
GO
GO
INSERT INTO [dbo].[T_Sys_Log] ([Log_ID], [Log_Date], [Man_ID], [Menu_Code], [Log_Action], [Log_Content]) VALUES (N'1097', N'2017-11-09 10:33:19.590', N'999', N'0000', N'1', N'登出系统')
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
INSERT INTO [dbo].[T_Sys_Man] ([Man_ID], [Man_Name], [Co_ID], [Dept_ID], [Man_Type], [Crt_Date], [Crt_Oper], [Man_Tele], [Man_EMail], [Man_Date], [Man_Level], [Man_Title], [Man_Sex], [Man_Status], [Oper_Password], [Oper_Serial], [Work_Date], [Auth_Bound], [Is_Admin], [Remark], [Back_Cash], [Now_Cash], [Pre_Work_Date], [Is_Lock], [Is_First], [Is_Back], [Is_DayCash]) VALUES (N'000', N'领导01', N'01', N'01000', N'1', N'2010-01-28 17:40:07.000', N'999', N'13555225542', N'', N'2017-11-09 11:37:23.280', N'1', N'1', N'1', N'0', N'C6F057B86584942E415435FFB1FA93D4', N'1', N'20171101', N'2', N'0', N'', N'.00', N'.00', N'20171101', N'0', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_Sys_Man] ([Man_ID], [Man_Name], [Co_ID], [Dept_ID], [Man_Type], [Crt_Date], [Crt_Oper], [Man_Tele], [Man_EMail], [Man_Date], [Man_Level], [Man_Title], [Man_Sex], [Man_Status], [Oper_Password], [Oper_Serial], [Work_Date], [Auth_Bound], [Is_Admin], [Remark], [Back_Cash], [Now_Cash], [Pre_Work_Date], [Is_Lock], [Is_First], [Is_Back], [Is_DayCash]) VALUES (N'2121', N'2121', N'01', N'01000', N'1', N'2017-11-06 20:45:52.437', N'999', N'2121', N'', N'2017-11-06 20:45:52.420', N'1', N'1', N'1', N'0', N'02B1BE0D48924C327124732726097157', N'1', N'20171106', N'0', N'0', N'', N'.00', N'.00', N'20171106', N'0', N'1', N'1', N'1')
GO
GO
INSERT INTO [dbo].[T_Sys_Man] ([Man_ID], [Man_Name], [Co_ID], [Dept_ID], [Man_Type], [Crt_Date], [Crt_Oper], [Man_Tele], [Man_EMail], [Man_Date], [Man_Level], [Man_Title], [Man_Sex], [Man_Status], [Oper_Password], [Oper_Serial], [Work_Date], [Auth_Bound], [Is_Admin], [Remark], [Back_Cash], [Now_Cash], [Pre_Work_Date], [Is_Lock], [Is_First], [Is_Back], [Is_DayCash]) VALUES (N'999', N'管理员01', N'01', N'01999', N'7', N'2010-01-28 17:40:07.000', N'999', N'44', N'', N'2017-10-26 10:15:24.860', N'1', N'1', N'1', N'0', N'C4CA4238A0B923820DCC509A6F75849B', N'1', N'20171023', N'1', N'0', N'', N'.00', N'.00', N'20171022', N'0', N'0', N'1', N'1')
GO
GO

-- ----------------------------
-- Table structure for T_Sys_Man_Project
-- ----------------------------
DROP TABLE [dbo].[T_Sys_Man_Project]
GO
CREATE TABLE [dbo].[T_Sys_Man_Project] (
[ManID] nvarchar(6) NOT NULL ,
[ProjectID] varchar(20) NULL 
)


GO

-- ----------------------------
-- Records of T_Sys_Man_Project
-- ----------------------------
INSERT INTO [dbo].[T_Sys_Man_Project] ([ManID], [ProjectID]) VALUES (N'2121', N'PK201711060000000005')
GO
GO
INSERT INTO [dbo].[T_Sys_Man_Project] ([ManID], [ProjectID]) VALUES (N'2121', N'PK201711070000000001')
GO
GO
INSERT INTO [dbo].[T_Sys_Man_Project] ([ManID], [ProjectID]) VALUES (N'999', N'PK201711060000000005')
GO
GO
INSERT INTO [dbo].[T_Sys_Man_Project] ([ManID], [ProjectID]) VALUES (N'999', N'PK201711070000000001')
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
INSERT INTO [dbo].[T_Sys_Menu] ([M_ID], [M_Name], [M_PID], [Mg_ID], [M_Level], [M_Disp], [M_Auth], [M_Tip], [M_Function], [Is_Line], [Is_Sub], [M_SID], [M_Normal_Icon], [M_Hot_Icon], [M_Disable_Icon], [M_Icon_Index], [Is_Base], [M_Code], [M_Status], [M_Shortcut]) VALUES (N'101', N'导入SqlServer文件', N'101', N'1', N'1', N'1', N'47', N'PDM转入数据库', N'SqlServer.ImportPdm', N'0', N'0', N'0', null, null, null, N'-1', N'0', N'0101', N'0', N'')
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
INSERT INTO [dbo].[T_Sys_Menu] ([M_ID], [M_Name], [M_PID], [Mg_ID], [M_Level], [M_Disp], [M_Auth], [M_Tip], [M_Function], [Is_Line], [Is_Sub], [M_SID], [M_Normal_Icon], [M_Hot_Icon], [M_Disable_Icon], [M_Icon_Index], [Is_Base], [M_Code], [M_Status], [M_Shortcut]) VALUES (N'102', N'生成Gpersist代码', N'102', N'1', N'1', N'2', N'47', N'生成开发相关代码', N'SqlServer.CodeBuild', N'0', N'0', N'0', N'', N'', N'', N'-1', N'0', N'0102', N'0', N'')
GO
GO
INSERT INTO [dbo].[T_Sys_Menu] ([M_ID], [M_Name], [M_PID], [Mg_ID], [M_Level], [M_Disp], [M_Auth], [M_Tip], [M_Function], [Is_Line], [Is_Sub], [M_SID], [M_Normal_Icon], [M_Hot_Icon], [M_Disable_Icon], [M_Icon_Index], [Is_Base], [M_Code], [M_Status], [M_Shortcut]) VALUES (N'201', N'导入MySql文件', N'201', N'2', N'1', N'1', N'47', N'PDM转入数据库', N'MySql.ImportPdm', N'0', N'0', N'0', N'', N'', N'', N'-1', N'0', N'0201', N'0', N'')
GO
GO
INSERT INTO [dbo].[T_Sys_Menu] ([M_ID], [M_Name], [M_PID], [Mg_ID], [M_Level], [M_Disp], [M_Auth], [M_Tip], [M_Function], [Is_Line], [Is_Sub], [M_SID], [M_Normal_Icon], [M_Hot_Icon], [M_Disable_Icon], [M_Icon_Index], [Is_Base], [M_Code], [M_Status], [M_Shortcut]) VALUES (N'202', N'生成Gpersist代码', N'202', N'2', N'1', N'2', N'47', N'生成开发相关代码', N'MySql.CodeBuild', N'0', N'0', N'0', N'', N'', N'', N'-1', N'0', N'0202', N'0', N'')
GO
GO
INSERT INTO [dbo].[T_Sys_Menu] ([M_ID], [M_Name], [M_PID], [Mg_ID], [M_Level], [M_Disp], [M_Auth], [M_Tip], [M_Function], [Is_Line], [Is_Sub], [M_SID], [M_Normal_Icon], [M_Hot_Icon], [M_Disable_Icon], [M_Icon_Index], [Is_Base], [M_Code], [M_Status], [M_Shortcut]) VALUES (N'301', N'导入Oracle文件', N'301', N'3', N'1', N'1', N'47', N'PDM转入数据库', N'Oracle.ImportPdm', N'0', N'0', N'0', N'', N'', N'', N'-1', N'0', N'0301', N'0', N'')
GO
GO
INSERT INTO [dbo].[T_Sys_Menu] ([M_ID], [M_Name], [M_PID], [Mg_ID], [M_Level], [M_Disp], [M_Auth], [M_Tip], [M_Function], [Is_Line], [Is_Sub], [M_SID], [M_Normal_Icon], [M_Hot_Icon], [M_Disable_Icon], [M_Icon_Index], [Is_Base], [M_Code], [M_Status], [M_Shortcut]) VALUES (N'302', N'生成Gpersist代码', N'302', N'3', N'1', N'2', N'47', N'生成开发相关代码', N'Oracle.CodeBuild', N'0', N'0', N'0', N'', N'', N'', N'-1', N'0', N'0302', N'0', N'')
GO
GO
INSERT INTO [dbo].[T_Sys_Menu] ([M_ID], [M_Name], [M_PID], [Mg_ID], [M_Level], [M_Disp], [M_Auth], [M_Tip], [M_Function], [Is_Line], [Is_Sub], [M_SID], [M_Normal_Icon], [M_Hot_Icon], [M_Disable_Icon], [M_Icon_Index], [Is_Base], [M_Code], [M_Status], [M_Shortcut]) VALUES (N'401', N'项目管理', N'401', N'4', N'1', N'1', N'47', N'项目管理', N'ProjectManage', N'0', N'0', N'0', null, null, null, N'-1', N'0', N'0401', N'0', null)
GO
GO
INSERT INTO [dbo].[T_Sys_Menu] ([M_ID], [M_Name], [M_PID], [Mg_ID], [M_Level], [M_Disp], [M_Auth], [M_Tip], [M_Function], [Is_Line], [Is_Sub], [M_SID], [M_Normal_Icon], [M_Hot_Icon], [M_Disable_Icon], [M_Icon_Index], [Is_Base], [M_Code], [M_Status], [M_Shortcut]) VALUES (N'402', N'分配人员', N'402', N'4', N'1', N'1', N'515', N'进行开发人员分配', N'SetDeveloper', N'0', N'0', N'0', null, null, null, N'-1', N'0', N'0402', N'0', null)
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
INSERT INTO [dbo].[T_Sys_Menu_Group] ([Mg_ID], [Mg_Name], [Mg_Tip], [Mg_Normal_Icon], [Mg_Hot_Icon], [Mg_Disable_Icon], [Mg_Icon_Index], [Mg_Function], [Mg_Status], [Mg_Order]) VALUES (N'1', N'SqlServer', N'数据库定义', null, null, null, N'-1', null, N'0', N'1')
GO
GO
INSERT INTO [dbo].[T_Sys_Menu_Group] ([Mg_ID], [Mg_Name], [Mg_Tip], [Mg_Normal_Icon], [Mg_Hot_Icon], [Mg_Disable_Icon], [Mg_Icon_Index], [Mg_Function], [Mg_Status], [Mg_Order]) VALUES (N'6', N'系统管理', N'系统管理', null, null, null, N'-1', null, N'0', N'6')
GO
GO
INSERT INTO [dbo].[T_Sys_Menu_Group] ([Mg_ID], [Mg_Name], [Mg_Tip], [Mg_Normal_Icon], [Mg_Hot_Icon], [Mg_Disable_Icon], [Mg_Icon_Index], [Mg_Function], [Mg_Status], [Mg_Order]) VALUES (N'2', N'MySql', N'MySql代码生成', null, null, null, N'-1', null, N'0', N'2')
GO
GO
INSERT INTO [dbo].[T_Sys_Menu_Group] ([Mg_ID], [Mg_Name], [Mg_Tip], [Mg_Normal_Icon], [Mg_Hot_Icon], [Mg_Disable_Icon], [Mg_Icon_Index], [Mg_Function], [Mg_Status], [Mg_Order]) VALUES (N'3', N'Oracle', N'Oracle代码生成', null, null, null, N'-1', null, N'0', N'3')
GO
GO
INSERT INTO [dbo].[T_Sys_Menu_Group] ([Mg_ID], [Mg_Name], [Mg_Tip], [Mg_Normal_Icon], [Mg_Hot_Icon], [Mg_Disable_Icon], [Mg_Icon_Index], [Mg_Function], [Mg_Status], [Mg_Order]) VALUES (N'4', N'项目管理', N'项目管理', null, null, null, N'-1', null, N'0', N'4')
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
INSERT INTO [dbo].[T_Sys_Online] ([Man_ID], [Login_Date], [Online_Date], [Menu_Code], [Reg_ID]) VALUES (N'999', N'2017-11-09 13:16:28.573', N'2017-11-09 13:16:28.573', null, N'5')
GO
GO

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
DBCC CHECKIDENT(N'[dbo].[T_Sys_Register]', RESEED, 5)
GO

-- ----------------------------
-- Records of T_Sys_Register
-- ----------------------------
SET IDENTITY_INSERT [dbo].[T_Sys_Register] ON
GO
INSERT INTO [dbo].[T_Sys_Register] ([Reg_ID], [Cpu_Code], [Reg_Number], [Reg_Code], [Dept_ID], [Crt_Date]) VALUES (N'5', N'80:A5:89:42:55:AD', N'3824-6287-F90A-1E8E', N'3824-6287-F90A-1E8E', N'01999', N'2017-11-01 21:00:47.080')
GO
GO
SET IDENTITY_INSERT [dbo].[T_Sys_Register] OFF
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
INSERT INTO [dbo].[T_Sys_Role_Menu] ([Role_ID], [M_ID], [M_Auth]) VALUES (N'1', N'201', N'11')
GO
GO
INSERT INTO [dbo].[T_Sys_Role_Menu] ([Role_ID], [M_ID], [M_Auth]) VALUES (N'1', N'202', N'47')
GO
GO
INSERT INTO [dbo].[T_Sys_Role_Menu] ([Role_ID], [M_ID], [M_Auth]) VALUES (N'1', N'301', N'0')
GO
GO
INSERT INTO [dbo].[T_Sys_Role_Menu] ([Role_ID], [M_ID], [M_Auth]) VALUES (N'1', N'302', N'7')
GO
GO
INSERT INTO [dbo].[T_Sys_Role_Menu] ([Role_ID], [M_ID], [M_Auth]) VALUES (N'1', N'401', N'47')
GO
GO
INSERT INTO [dbo].[T_Sys_Role_Menu] ([Role_ID], [M_ID], [M_Auth]) VALUES (N'1', N'402', N'515')
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
INSERT INTO [dbo].[T_Sys_Role_Menu] ([Role_ID], [M_ID], [M_Auth]) VALUES (N'1', N'610', N'512')
GO
GO
INSERT INTO [dbo].[T_Sys_Role_Menu] ([Role_ID], [M_ID], [M_Auth]) VALUES (N'1', N'611', N'512')
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
INSERT INTO [dbo].[T_Sys_Role_Rib] ([Role_ID], [Rib_Btn]) VALUES (N'1', N'13')
GO
GO
INSERT INTO [dbo].[T_Sys_Role_Rib] ([Role_ID], [Rib_Btn]) VALUES (N'1', N'14')
GO
GO
INSERT INTO [dbo].[T_Sys_Role_Rib] ([Role_ID], [Rib_Btn]) VALUES (N'1', N'15')
GO
GO
INSERT INTO [dbo].[T_Sys_Role_Rib] ([Role_ID], [Rib_Btn]) VALUES (N'1', N'16')
GO
GO
INSERT INTO [dbo].[T_Sys_Role_Rib] ([Role_ID], [Rib_Btn]) VALUES (N'1', N'17')
GO
GO
INSERT INTO [dbo].[T_Sys_Role_Rib] ([Role_ID], [Rib_Btn]) VALUES (N'1', N'18')
GO
GO
INSERT INTO [dbo].[T_Sys_Role_Rib] ([Role_ID], [Rib_Btn]) VALUES (N'1', N'19')
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
-- Procedure structure for P_Create_ProjectID
-- ----------------------------
DROP PROCEDURE [dbo].[P_Create_ProjectID]
GO


create procedure [dbo].[P_Create_ProjectID]
(
	@ProjectID varchar(20) out
)
as
begin
	declare @maxno int
	select @maxno = max(right(ProjectID,10)) from T_Bus_Project
		 where left(ProjectID ,10) = 'PK'+replace(convert(varchar(10),getdate(),120),'-','')
	if @maxno is null
		select @ProjectID = 'PK' + replace(convert(varchar(10),getdate(),120),'-','') +'0000000001'
	else
		select @ProjectID = 'PK'+ replace(convert(varchar(10),getdate(),120),'-','')
			+replace(space(10-len(@maxno+1)),space(1),'0')+ltrim(str(@maxno+1))
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
-- Procedure structure for P_Get_BusProject
-- ----------------------------
DROP PROCEDURE [dbo].[P_Get_BusProject]
GO


create procedure [dbo].[P_Get_BusProject]
(
	@ProjectID varchar(20) = null,
	@Get_Action nvarchar(10) = null
)
as
begin
	declare @Sql nvarchar(300)
	if (@Get_Action = 'row')
	begin
		if @ProjectID is not null 
		begin
			select * from t_bus_project where projectid = @ProjectID;
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
(
	@DBType varchar(2) = null
)
as
begin
	select DBID, DBName + '(' + DBCode + ')' DBName from T_DMS_DB where DBType = @DBType order by DBID
end







GO

-- ----------------------------
-- Procedure structure for P_Get_Developer
-- ----------------------------
DROP PROCEDURE [dbo].[P_Get_Developer]
GO

CREATE procedure [dbo].[P_Get_Developer]
(
	@ProjectID varchar(20) = null
)
as
begin
	select a.Man_ID, a.Man_Name, case when b.Man_ID is null then 0 else 1 end Is_Select
		from T_Sys_Man a, (select d.Man_ID, d.Man_Name from T_Sys_Man_Project c, T_Sys_Man d where c.ManID *= d.Man_ID and c.ProjectID = @ProjectID) b
		where a.Man_ID *= b.Man_ID
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
	@Man_ID nvarchar(6)
)
as
begin	
	select * from T_Sys_Menu_Group where Mg_Status = 0 order by Mg_Order, Mg_ID
	
	select a.*, b.M_Auth Menu_Auth
  		from T_Sys_Menu a, T_Sys_Role_Menu b, T_Sys_Oper_Role c
  		where a.M_ID = b.M_ID and b.Role_ID = c.Role_ID and a.M_Status = 0 and c.Man_ID = @Man_ID  
  		order by a.Mg_ID, a.M_Level, a.M_Disp, a.M_ID;
  		
  select * from T_Rib_Tab order by Rib_Order
  
  select a.*, b.Rib_Tab_Name from T_Rib_Panel a, T_Rib_Tab b where a.Rib_Tab = b.Rib_Tab order by a.Rib_Tab, a.Rib_Order
  
  select distinct a.* from T_Rib_Button a, T_Sys_Role_Rib b, T_Sys_Oper_Role c
			where a.Rib_Btn = b.Rib_Btn and b.Role_ID = c.Role_ID and c.Man_ID = @Man_ID
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






CREATE procedure [dbo].[P_Get_RoleMenu]
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







CREATE procedure [dbo].[P_Get_SysOnline]
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
			select a.*, b.Man_Name from T_Sys_Online a, T_Sys_Man b where a.Man_ID = b.Man_ID and a.Man_ID = @Man_ID
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







CREATE procedure [dbo].[P_Login_SysOnline]
(
	@Man_ID nvarchar(6),
	@Reg_ID smallint
)
as
begin
	insert into T_Sys_Online (Man_ID, Login_Date, Online_Date, Menu_Code, Reg_ID) values (@Man_ID, getdate(), getdate(), null, @Reg_ID)	
	insert into T_Sys_Log (Log_Date, Man_ID, Menu_Code, Log_Action, Log_Content) values (getdate(), @Man_ID, '0000', 1, '登录系统')
end








GO

-- ----------------------------
-- Procedure structure for P_LoginOut_SysOnline
-- ----------------------------
DROP PROCEDURE [dbo].[P_LoginOut_SysOnline]
GO







CREATE procedure [dbo].[P_LoginOut_SysOnline]
(
	@Man_ID nvarchar(6),
	@Reg_ID smallint
)
as
begin
	delete from T_Sys_Online where Man_ID = @Man_ID
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
-- Procedure structure for P_Save_BusProject
-- ----------------------------
DROP PROCEDURE [dbo].[P_Save_BusProject]
GO


CREATE procedure [dbo].[P_Save_BusProject]
(
	@ProjectID varchar(20) out,
	@ProjectCode nvarchar(20) = null,
	@ProjectName nvarchar(50) = null,
	@ProjectType varchar(2) = null,
	@ProjectManager varchar(14) = null,
	@WorkDate decimal(10,2) = null,
	@WorkUnit varchar(2) = null,
	@ProjectDesc text = null,
	@TranDate datetime = null,
	@TranUser varchar(10) = null,
	@ACTION int
)
as
begin
	if @ACTION = 0
	begin
		begin
			exec P_Create_ProjectID @ProjectID output
			insert into T_Bus_Project (ProjectID, ProjectCode, ProjectName, ProjectType, ProjectManager, WorkDate, WorkUnit, ProjectDesc, TranDate, TranUser) values (@ProjectID, @ProjectCode, @ProjectName, @ProjectType, @ProjectManager, @WorkDate, @WorkUnit, @ProjectDesc, @TranDate, @TranUser)
		end
	end
	else if @ACTION = 1
	begin
	
		update T_Bus_Project set 
			ProjectCode = @ProjectCode,
			ProjectName = @ProjectName,
			ProjectType = @ProjectType,
			ProjectManager = @ProjectManager,
			WorkDate = @WorkDate,
			WorkUnit = @WorkUnit,
			ProjectDesc = @ProjectDesc,
			TranDate = @TranDate,
			TranUser = @TranUser
			where ProjectID = @ProjectID
		
	end
	else if @ACTION = 2
	begin
		delete from T_Bus_Project where ProjectID = @ProjectID
	end
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
	@DBType varchar(2) = null,
	@ACTION int
)
as
begin
	if @ACTION = 0
	begin
		if (@DBID is null) or (@DBID = 0)
		begin
			set @DBID = (select isnull(max(DBID), 0) + 1 from T_DMS_DB)
			
			insert into T_DMS_DB (DBID, DBName, DBCode, DBSerial, DBType) values (@DBID, @DBName, @DBCode, 1, @DBType)
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
-- Procedure structure for P_Save_Developer
-- ----------------------------
DROP PROCEDURE [dbo].[P_Save_Developer]
GO
CREATE procedure [dbo].[P_Save_Developer]
(
	@ManID nvarchar(6) = null,
	@ProjectID varchar(20) = null,
	@Action smallint
)
as
begin
	if @Action = 0
	begin
		insert into T_Sys_Man_Project(ManID,ProjectID) values (@ManID, @ProjectID)
	end
	else if @Action = 2
	begin
		delete from T_Sys_Man_Project where ProjectID = @ProjectID
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
-- Procedure structure for P_Save_PmtSet
-- ----------------------------
DROP PROCEDURE [dbo].[P_Save_PmtSet]
GO




create procedure [dbo].[P_Save_PmtSet]
(
	@DBID int,
	@TableSet nvarchar(400)
)
as
begin
	delete from T_DMS_PMTSET where DBID = @DBID and TableSet = @TableSet
	
	insert into T_DMS_PMTSET(DBID, TableSet) values (@DBID, @TableSet)
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
-- Procedure structure for P_Search_BusProject
-- ----------------------------
DROP PROCEDURE [dbo].[P_Search_BusProject]
GO


create procedure [dbo].[P_Search_BusProject]
(
	@Search nvarchar(300)
)
as
begin
	declare @Sql nvarchar(800)
	
	if (patindex('%projectname%', @Search) > 0)
	begin
		set @Sql = 'select a.*, b.ProjectTypeName ' + 
			'from t_bus_project a, t_pmt_project_type b where a.projecttype = b.projecttype ' + @Search + 
			' order by a.projectid desc'
	end
	else
	begin
		set @Sql = 'select  a.*, b.ProjectTypeName ' +
			'from t_bus_project a, t_pmt_project_type b where a.projecttype = b.projecttype ' + @Search + 
			' order by a.projectid desc'
	end
	
	exec(@Sql)
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
-- Indexes structure for table T_Bus_Project
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table T_Bus_Project
-- ----------------------------
ALTER TABLE [dbo].[T_Bus_Project] ADD PRIMARY KEY ([ProjectID])
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
-- Indexes structure for table T_Pmt_Project_Type
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table T_Pmt_Project_Type
-- ----------------------------
ALTER TABLE [dbo].[T_Pmt_Project_Type] ADD PRIMARY KEY ([ProjectType])
GO

-- ----------------------------
-- Indexes structure for table T_Pmt_Work_Unit
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table T_Pmt_Work_Unit
-- ----------------------------
ALTER TABLE [dbo].[T_Pmt_Work_Unit] ADD PRIMARY KEY ([WorkUnit])
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
-- Indexes structure for table T_Sys_Man_Project
-- ----------------------------
CREATE INDEX [I_Sys_Man_Project] ON [dbo].[T_Sys_Man_Project]
([ManID] ASC, [ProjectID] ASC) 
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
