execute  sp_addlogin  'hyuser1','hy123456','db_business','english'
execute  sp_addlogin  'hyuser2','hy111111','db_business','english'
go

execute sp_grantdbaccess 'hyuser1','dbhyuser1'
execute sp_grantdbaccess 'hyuser2','dbhyuser2'
go

execute sp_addrole 'hyrole1'         
grant select,insert on �ֿ� to hyrole1  

go


grant select ,update on ְ�� to dbhyuser1


deny update on ְ�� to  dbhyuser1,hyrole1


revoke select on �ֿ� to hyrole1






