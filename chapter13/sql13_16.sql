
print '现在的时间是：'+datename(hour,getdate())+':'+
                      datename(minute,getdate())+':'+
                      datename(second,getdate())
                      
select DATEDIFF(HOUR ,'2008-5-6 05:36','2008-5-7 03:24') as 小时差,
       DATEDIFF(MINUTE ,'2008-5-6 05:36','2008-5-7 03:24') as 分钟差
