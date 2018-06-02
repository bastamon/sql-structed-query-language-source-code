use db_business 
go
select 姓名,工资,工资*5.0/1000 as 代扣税,工资*0.08 as 奖金,
       工资-(工资*5.0/1000)+(工资*0.08) as 应发工资 from 职工


use db_business 
go
select 姓名,工资,工资*5.0/1000 as 代扣税,工资*0.08 as 奖金,
       cast (工资-(工资*5.0/1000)+(工资*0.08) as decimal(20,2) )as 应发工资 
       from 职工