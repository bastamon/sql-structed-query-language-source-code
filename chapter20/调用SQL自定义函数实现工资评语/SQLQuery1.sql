use db_business 
go
create function Myfun(@gz int)
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
