declare @x real
set @x=5.687
print ceiling(@x)
print floor(@x)
print round(@x,1)
print round(@x,2)

use db_business 
go
select ����,����,����*0.105 as ����, FLOOR(����*0.105) as ������Сֵ,
  CEILING (����*0.105) as �������ֵ,round (����*0.105,2) as ������������
  from ְ��