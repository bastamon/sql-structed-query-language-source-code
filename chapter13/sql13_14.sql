declare @count int
set @count=1
while @count<=5
 begin
  print space(5-@count)+replicate('$',@count*2-1)
  set @count=@count+1
end
set @count=5
while @count>=0
 begin
  print space(5-@count)+replicate('$',@count*2-1)
  set @count=@count-1
end
