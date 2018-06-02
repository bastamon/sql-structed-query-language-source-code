declare @yz real,@w int  --声明变量
set @w=120               --为变量赋值
 if @w<=100              --if条件语句
   begin                 --Begin程序块
     set @yz=@w*0.12     --为变量赋值
   end
 else
   begin
     set @yz=100*0.12+(@w-100)*0.05
   end
 /*输出邮件的重量和邮费*/
 print '邮件的重量是：'+cast(@w as varchar(20))+'克'
 print '邮费是：'+cast(@yz as varchar(20))+'元'


    










