if (exists (select name from sysobjects where (name = N'P_Get_KeyByTable') and (type = 'P')))
  drop procedure dbo.P_Get_KeyByTable
go

create procedure [dbo].P_Get_KeyByTable
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