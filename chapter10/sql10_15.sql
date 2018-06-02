declare @x int,@sum int
set @x=0
set @sum=0
bz:
  set @x=@x+1
  set @sum=@sum+@x
  while @x<100 goto bz
print '利用Goto语名求从1加到100的和：'+ cast(@sum as varchar(50))
