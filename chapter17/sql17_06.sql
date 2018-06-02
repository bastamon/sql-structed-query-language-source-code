use db_business  
go
create application role my_approle 
 with password ='app888'


execute sp_approlepassword 'my_approle','app699'

execute sp_helprole 'my_approle'

drop application role my_approle