use db_business 
go
select * from 仓库 where not(城市 ='上海' or 城市 ='济南')


use db_business 
go
select * from 仓库 where 城市 !='上海' and 城市 <>'济南'