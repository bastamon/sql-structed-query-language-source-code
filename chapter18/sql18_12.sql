/*使用And运算符*/
use db_business
go
select * from 职工 where 工资>=1500 and 工资<=1800
/*使用Between简化联接条件*/
use db_business
go
select * from 职工 where 工资 between 1500 and 1800
