/*Or运算符*/
use db_business
go 
select * from 仓库 where 城市='北京' or 城市='青岛'
/*In运算符*/
use db_business
go 
select * from 仓库 where 城市 in('北京' ,'青岛')



/*not运算符*/
use db_business
go  
select * from 仓库 where 城市 not in('北京')
/*比较运算符*/
use db_business
go  
select * from 仓库 where 城市!='北京'



/*使用distinct关键字*/
use db_business
go
select distinct * from 仓库 where 面积>900
/*不使用distinct关键字*/
use db_business
go
select  * from 仓库 where 面积>900






