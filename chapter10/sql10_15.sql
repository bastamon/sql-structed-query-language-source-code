declare @x int,@sum int
set @x=0
set @sum=0
bz:
  set @x=@x+1
  set @sum=@sum+@x
  while @x<100 goto bz
print '����Goto�������1�ӵ�100�ĺͣ�'+ cast(@sum as varchar(50))
