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
 print '��3������'
 print '������ǣ�'+ cast(@sum as varchar(50))
