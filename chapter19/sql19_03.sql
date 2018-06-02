
BACKUP DATABASE db_business TO DISK = 'd:\data\db_business.bak'

declare @filename varchar(1000)
set @filename='D:\data\db_business_time.bak' +CONVERT (char(10),getdate(),112)
backup database db_business to disk=@filename with stats=30