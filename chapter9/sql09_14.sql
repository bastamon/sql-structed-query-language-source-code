use db_business 
go
delete �ֿⱸ�� where ��� in ( 
   (select MAX(���) from �ֿⱸ��),
   (select min(���) from �ֿⱸ��)
   )
   
use db_business 
go
delete ְ������ where ����> (select AVG(����) from ְ������ )

use db_business 
go
delete ְ������ where �ֿ�� in
    (select �ֿ�� from �ֿⱸ��  where ���� in('�Ϻ�','����'))





