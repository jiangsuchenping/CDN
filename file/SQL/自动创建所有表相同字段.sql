sp_msforeachtable 'declare @tableId int
set @tableId = object_id(''?'')

IF NOT EXISTS (
	SELECT * FROM  syscolumns 
	WHERE id = @tableId
	AND name = ''OderNo''
)
BEGIN	
	ALTER TABLE ? ADD OderNo int		
END
 
IF NOT EXISTS (
	SELECT * FROM  syscolumns 
	WHERE id = @tableId
	AND name = ''IsDeleted''
)
BEGIN	
	ALTER TABLE ? add IsDeleted bit	
end

if not exists (
	select * from  syscolumns 
	where id = @tableId
	and name = ''IsDisabled''
)
begin	
	alter table ? add IsDisabled bit
end

if not exists (
	select * from  syscolumns 
	where id = @tableId
	and name = ''CreateUserID''
)
begin	
	alter table ? add CreateUserID uniqueidentifier	
end

if not exists (
	select * from  syscolumns 
	where id = @tableId
	and name = ''CreateTime''
)
begin	
	alter table ? add CreateTime datetime	
end


if not exists (
	select * from  syscolumns 
	where id = @tableId
	and name = ''UpdateUserID''
)
begin	
	alter table ? add UpdateUserID uniqueidentifier	
end

if not exists (
	select * from  syscolumns 
	where id = @tableId
	and name = ''UpdateTime''
)
begin	
	alter table ? add UpdateTime datetime	
end
'
 