use db_business 
go
create view db_view1
as
select �ֿ��,����,��� from �ֿ�

use db_business 
go
create view db_view2
as
select ����,���� from ְ�� where ����>1800 


use db_business 
go
create view db_view3
as
select ����,����,����*0.1 as ����,(����-800)*0.15 as ����˰,
    (����+(����*0.1)-((����-800)*0.15)) as ʵ������
 from ְ�� 