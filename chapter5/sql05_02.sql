use db_business 
go
select 姓名,SUBSTRING(姓名,1,1) as 姓,SUBSTRING (姓名,2,2) as 名字,工资 from 职工