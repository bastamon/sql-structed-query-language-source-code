use db_business 
go
create index idx_sc3 on 职工备份(工资)

go

Dbcc dbreindex('db_business.dbo.职工备份','',100)

