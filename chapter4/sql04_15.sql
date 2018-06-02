use db_business 
go
select * from 职工 where 职工号='zg1' or 职工号='zg2' or
   职工号='zg11' or 职工号='zg15'
   
use db_business 
go
 select * from 职工 where  
 职工号 in('zg1','zg2','zg11','zg15')
 
 
 
 
 use db_business 
go
 select * from 职工 where  
 职工号 not in('zg1','zg2','zg11','zg15')
 
use db_business 
go
select * from 仓库 where 仓库号 in
  (select 仓库号 from 职工)
  
use db_business 
go
select * from 仓库 where 仓库号 not in
  (select 仓库号 from 职工)

  
  
 
 
 
 

   
