
use db_business 
go
while (select AVG(工资) from 职工备份) <3000
  begin
     update 职工备份 set 工资=工资*1.5
     select AVG(工资) as 平均工资 from 职工备份 
  end
