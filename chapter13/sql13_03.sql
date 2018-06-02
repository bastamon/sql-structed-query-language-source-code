declare @x real
set @x=0.34
print '变量的三角函数值：'
print '正弦值：'+cast(sin(@x)as varchar(10))
print '余弦值：'+cast(cos(@x)as varchar(10))
print '正切值：'+cast(tan(@x)as varchar(10))
print '余切值：'+cast(cot(@x)as varchar(10))

declare @x real
set @x=0.34
print '变量的反三角函数值：'
print '反正弦值：'+cast(Asin(@x)as varchar(10))
print '反余弦值：'+cast(Acos(@x)as varchar(10))
print '反正切值：'+cast(Atan(@x)as varchar(10))

use db_business 
go
select AVG(工资)*1.0 as 平均工资,SUM(工资) as 工资和,
   (AVG(工资)*1.0/SUM(工资) ) as 平均工资与工资和的比值,
   SIN(AVG(工资)*1.0/SUM(工资)) as 平均工资与工资和的比例的正弧值,
   ASIN(AVG(工资)*1.0/SUM(工资)) as 平均工资与工资和的比例的反正弧值
   from 职工 group by 仓库号



