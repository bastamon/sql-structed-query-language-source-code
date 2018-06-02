declare @x int, @sum int
select @x=0,@sum=0
while @x<=120
 begin
   set @x=@x+1
   if @x%2=1
     continue
     set @sum=@sum+@x
 end
 print '从1加120所有偶数之和是：'+ cast(@sum as varchar(50))
