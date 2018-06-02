declare @cj float,@str varchar(60)
set @cj=90
set @str=
case
   when @cj>100 or  @cj<0  then '你输入的成绩不对，成绩应在0-100之间'
   when @cj>=60 and @cj<70 then '及格'
   when @cj>=70 and @cj<80 then '中等'
   when @cj>=80 and @cj<90 then '优良'
   when @cj>=90 and @cj<=100 then '优秀'
   else '不及格'
end
print '该学生的成绩评语：' + @str
