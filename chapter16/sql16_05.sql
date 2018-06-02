begin transaction
update 职工 set 姓名='修改' where 职工号='zg3'
select * from 职工 where 职工号='zg3'
waitfor delay '00:00:15'
update 仓库 set 面积=888 where 仓库号='wh3'
select * from 仓库 where 仓库号='wh3'
commit transaction
