use db_business 
go
ALTER function db_fun1(@gz varchar(50))
returns varchar(30)
begin
  declare @y varchar(30)
   if @gz>=2000
      set @y= '高工资'
   else if @gz>=1500
      set @y= '一般工资'
   else if @gz>=1200
      set @y= '低工资'
  else
      set @y='低收入'
  return @y
end

use db_business 
go
select 职工.*,dbo.db_fun1(工资) as 职工评语 from 职工

use db_business 
go
execute sp_helptext db_fun1


