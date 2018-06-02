declare @x int, @sum int       --声明变量
select @x=0,@sum=0              --为变量赋值
while @x<=120                    --While循环语句
 begin                             --程序块的开始
  set @sum=@sum+@x
  set @x=@x+1
 end                                --程序块的结构
                               --利用print进行输出
print '从1加1200之和是：'+ cast(@sum as varchar(50))
