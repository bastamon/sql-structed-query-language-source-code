use db_business 
go 
select 姓名,工资,金额 from 职工, 订购单 
   where 姓名 like '%平%' and 职工.职工号 =订购单.职工号
   
use db_business 
go  
   select 姓名,工资,金额 from 职工, 订购单 
   where 姓名 like '_平%' and 职工.职工号 =订购单.职工号

