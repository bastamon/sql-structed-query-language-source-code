use db_business 
go
select * from �ֿ� where ��� in 
   (      ( select MAX(���) from �ֿ� ),(select min(���) from �ֿ�)
    )
    
use db_business 
go
select * from ������ where ְ���� in
(
 select ְ���� from ְ�� where �ֿ�� in 
 (
   select �ֿ�� from �ֿ� where ��� in 
   (      
      ( select MAX(���) from �ֿ� ),
       (select min(���) from �ֿ�)
    )
 )
)


use db_business 
go
select * from �ֿ� where �ֿ�� in
(
  select �ֿ�� from ְ�� where ���� not in
  (
    ( select MAX(����) from ְ�� ),
       (select min(����) from ְ��)
  )
 )

use db_business 
go
select * from ְ�� where ְ���� not in  (select ְ���� from ������)