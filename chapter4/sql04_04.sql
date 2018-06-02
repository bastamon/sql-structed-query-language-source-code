use db_business 
go
select 姓名,工资,工资*0.08 from 职工

use db_business 
go
select 姓名,工资,工资*0.08 as '奖金' from 职工

use db_business 
go
select 姓名,工资,(cast (工资*0.08 as decimal(18,1))) as '奖金' from 职工