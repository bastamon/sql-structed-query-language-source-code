use db_business 
go
select * , 
不同仓库的平均工资 =
case
   when 仓库号='wh1' then  (select avg(工资) from 职工 where 仓库号='wh1')
   when 仓库号='wh2' then  (select avg(工资) from 职工 where 仓库号='wh2')
   when 仓库号='wh3' then  (select avg(工资) from 职工 where 仓库号='wh3')
   when 仓库号='wh4' then  (select avg(工资) from 职工 where 仓库号='wh4')
end
from 职工 
