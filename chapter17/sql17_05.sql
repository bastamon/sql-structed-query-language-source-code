
execute sp_grantdbaccess 'db_loginzhang','db_business_user'
go
sp_addrole  'db_role', 'db_business_user'


sp_addrolemember  'db_role', 'guest'

sp_droprolemember 'db_role', 'db_business_user'
sp_droprolemember 'db_role', 'guest'
go
sp_droprole 'db_role'