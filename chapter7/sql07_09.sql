use db_business 
go 
select * from ������

use db_business 
go 
select *,(select AVG(���) from ������) as ƽ�����۽��,
   (���-(select AVG(���) from ������)) as ��ƽ�����۽��֮��
 from ������
 
use db_business 
go 
select *,(select AVG(���) from ������) as ƽ�����۽��,
   (���-(select AVG(���) from ������)) as ��ƽ�����۽��֮��
 from ������ where abs(���-(select AVG(���) from ������))>6500
 
 

 
 
 
 