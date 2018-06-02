use db_business 
go
select * from 职工 where (仓库号='wh1' or 仓库号='wh2')
  and not 性别='女' and 工资>=1300 and 工资<=2000
  
use db_business 
go
select * from 职工 where (仓库号='wh1' or 仓库号='wh2')
  and  性别!='女' and 工资>=1300 and 工资<=2000
