use db_business 
go
insert into 职工备份(职工号,仓库号,姓名,性别,工资) 
  select 'zg201','wh1','王可平','女',1560
  union all select 'zg202','wh3','张亮科','男',1360
  union all select 'zg203','wh4','陈红','男',1890

select * from 职工备份