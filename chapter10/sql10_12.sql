declare @x int, @sum int
select @x=0,@sum=0
while @x<=10
 begin
   set @x=@x+1
   set @sum=@sum+@x
   if @sum>30
     break
 end
 waitfor delay '00:00:03'
 print '等3秒后输出'
 print '最后结果是：'+ cast(@sum as varchar(50))
