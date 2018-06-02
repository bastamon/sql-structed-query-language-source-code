use db_business 
go
select 姓名,工资,工资*0.08 as '奖金' from 职工
 order by 奖金 desc
 
 
 use db_business 
go
select top 3 姓名,工资,工资*0.08 as '奖金' from 职工
 order by 奖金 asc
