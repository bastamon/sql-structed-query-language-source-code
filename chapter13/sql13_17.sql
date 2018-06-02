
select DATENAME(DW,GETDATE()) as 今天是星期几

select DATEADD (wk,datediff(wk,0,getdate()),0) as 本周第一天的日期
