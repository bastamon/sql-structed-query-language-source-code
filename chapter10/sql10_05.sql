declare @x int
set @x =1000
if @x>950 
  begin
    set @x=@x+1000
    select * from 职工 where 工资>@x
  end
else
  begin
    set @x=@x-50
    select * from 仓库 where 面积<@x
  end