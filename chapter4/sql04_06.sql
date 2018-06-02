use db_business 
go
select 姓名,工资,职工评语 =
   case
      when 工资>2000  then '优秀'
      when 工资>=1800 and 工资<=2000  then '优良'
      when 工资>=1500 and 工资<1800  then '一般'
      when 工资<1500  then '差'
   end
  from 职工