begin transaction
update 仓库 set 城市='青岛' where 仓库号='wh3'
select * from 仓库 where 仓库号='wh3'
waitfor delay '00:00:18'
update 职工 set 工资=1288 where 职工号='zg3'
select * from 职工 where 职工号='zg3'
commit transaction
