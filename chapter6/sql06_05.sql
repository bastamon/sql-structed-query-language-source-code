use db_business 
go
select * ,(select avg(工资) from 职工) as 平均工资  
from 职工


use db_business 
go
select * ,
工资-(select avg(工资) from 职工) as 工资与平均工资之差  
from 职工



use db_business 
go
select * ,工资-(select avg(工资) from 职工) as 工资与平均工资之差 , 
工资评语 =
case
   when abs(工资-(select avg(工资) from 职工))>300 then '工资差额大'
   when abs(工资-(select avg(工资) from 职工))>=100 then '工资差额一般'
   when abs(工资-(select avg(工资) from 职工))<100 then '工资差额小'
end
from 职工

use db_business 
go
select * , 
不同仓库的平均工资 =
case
   when 仓库号='wh1' then  (select avg(工资) from 职工 where 仓库号='wh1')
   when 仓库号='wh2' then  (select avg(工资) from 职工 where 仓库号='wh2')
   when 仓库号='wh3' then  (select avg(工资) from 职工 where 仓库号='wh3')
   when 仓库号='wh4' then  (select avg(工资) from 职工 where 仓库号='wh4')
end,
工资与其对应的仓库的平均工资之差 =
case
   when 仓库号='wh1' then  工资-(select avg(工资) from 职工 where 仓库号='wh1')
   when 仓库号='wh2' then  工资-(select avg(工资) from 职工 where 仓库号='wh2')
   when 仓库号='wh3' then  工资-(select avg(工资) from 职工 where 仓库号='wh3')
   when 仓库号='wh4' then  工资-(select avg(工资) from 职工 where 仓库号='wh4')
end
from 职工











