print abs(-2)
print abs(5)
print sign(10)
print sign(-45)
print sign(0)

use db_business 
go
select �ֿ��,����,���,(select AVG(���) from �ֿ�) as ƽ�����,
   ���-(select AVG(���) from �ֿ�) as �����ƽ�����֮��,
   ABS(���-(select AVG(���) from �ֿ�)) as �����ƽ�����֮��ľ���ֵ,
   SIGN (���-(select AVG(���) from �ֿ�)) as �����ƽ�����֮���������
   from �ֿ�