use db_business 
go
select 姓名 + '的工资是：' + cast(工资 as varchar(10)) as 工资说明 
from 职工

use db_business 
go
select 姓名+ '的评语是：' +  (
   case
      when 工资>2000  then '优秀'
      when 工资>=1800 and 工资<=2000  then '优良'
      when 工资>=1500 and 工资<1800  then '一般'
      when 工资<1500  then '差'
   end) as 职工评语说明
  from 职工
