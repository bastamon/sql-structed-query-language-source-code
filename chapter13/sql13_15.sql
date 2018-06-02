
print '当前日期是：' + cast(getdate()as varchar(10))

print '当前日期是：'+cast(year(getdate()) as varchar(50))+'年'+
      cast(month(getdate()) as varchar(50))+'月'+
      cast(day(getdate()) as varchar(50))+'日'
