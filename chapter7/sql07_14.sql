use db_business 
go
select a.* from ������ a where ���=(
      select max(���) from ������ where ְ����=a.ְ����)
      
      
use db_business 
go   
select * from ������ where ��� in
      ( select max(���) from ������ group by ְ����)
      
      
use db_business 
go
select a.* from ְ�� a where ����=(
      select max(����) from ְ�� where �ֿ��=a.�ֿ��)

use db_business 
go   
select * from ְ�� where ���� in
      ( select max(����) from ְ�� group by �ֿ��)