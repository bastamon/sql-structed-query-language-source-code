declare @x int, @sum int
select @x=0,@sum=0
while @x<=120
 begin
   set @x=@x+1
   if @x%2=1
     continue
     set @sum=@sum+@x
 end
 print '��1��120����ż��֮���ǣ�'+ cast(@sum as varchar(50))
