use db_business 
go
select * , 
不同仓库的最大工资 =
case
   when 仓库号='wh1' then  (select max(工资) from 职工 where 仓库号='wh1')
   when 仓库号='wh2' then  (select max(工资) from 职工 where 仓库号='wh2')
   when 仓库号='wh3' then  (select max(工资) from 职工 where 仓库号='wh3')
   when 仓库号='wh4' then  (select max(工资) from 职工 where 仓库号='wh4')
end
from 职工 order by 不同仓库的最大工资



use db_business 
go
select * , 
不同仓库的最大工资与最小工资之差 =
case
   when 仓库号='wh1' then  (select (max(工资)-MIN(工资)) from 职工 where 仓库号='wh1')
   when 仓库号='wh2' then  (select (max(工资)-MIN(工资)) from 职工 where 仓库号='wh2')
   when 仓库号='wh3' then  (select (max(工资)-MIN(工资)) from 职工 where 仓库号='wh3')
   when 仓库号='wh4' then  (select (max(工资)-MIN(工资)) from 职工 where 仓库号='wh4')
end
from 职工 order by 不同仓库的最大工资与最小工资之差 desc





use db_business 
go
select * , 
实发工资 =
case
   when 工资> (select avg(工资) from 职工) then  工资*0.90
   when 工资= (select avg(工资) from 职工) then  工资
   when 工资< (select avg(工资) from 职工) then  工资*1.1
end
from 职工 order by 实发工资 asc








