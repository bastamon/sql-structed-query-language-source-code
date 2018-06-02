
/*单级排序，按工资降序*/
use db_business 
go
select * from 职工 order by 工资 desc

/*多级排序，先按工资降序，再按职工ID升序*/
use db_business 
go
select * from 职工 order by 工资 desc,职工ID ASC


