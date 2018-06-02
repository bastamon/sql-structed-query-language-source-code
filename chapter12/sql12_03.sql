create proc proc_sql5
 @x1 int,
 @x2 int,
 @x3 int
as
begin
 declare @max int
 if @x1>@x2
   set @max=@x1
 else
  set @max=@x2
 
 if @x3>@max
   set @max=@x3
 
 print '3个数中最大的数是：'+cast(@max as varchar(50))
end
go
execute proc_sql5 15,28,39


create proc proc_sql6 
 @x int
as
begin
  declare @i int,@cj int,@sum int
  select @i=1,@cj=1,@sum=0
  while @i<=@x
   begin
     set @cj=@cj*@i
     set @sum=@sum+@cj
     set @i=@i+1
   end
 print cast(@x as varchar(50))+'阶乘之和是：'+cast(@sum as varchar(50))
end


execute proc_sql6 6











