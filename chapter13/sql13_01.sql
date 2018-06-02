use db_business 
go
select Stdev(工资) as 工资标准差 from 职工

use db_business 
go
select 仓库号,Stdev(工资) as 工资标准差 from 职工 group by 仓库号