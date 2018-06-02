use db_business 
go
select 仓库号,max(工资) as 不同仓库的最大工资,min(工资) as 不同仓库的最小工资,
   (max(工资)-min(工资)) as 不同仓库的最大工资与最小工资之差
  from 职工 
group by  仓库号
order by (max(工资)-min(工资)) asc
