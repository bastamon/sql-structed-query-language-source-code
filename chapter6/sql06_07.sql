use db_business 
go
select * from �ֿ� where ���=(
  select max(���) from �ֿ�)

use db_business 
go
select * from ְ�� where �ֿ�� in (
 select �ֿ�� from �ֿ� where ���=(
  select max(���) from �ֿ�))

use db_business 
go
select * from �ֿ� where ��� not in (
  (select max(���) from �ֿ�),
  (select min(���) from �ֿ�))


use db_business 
go
select * from ְ�� where �ֿ�� in (
 select �ֿ�� from �ֿ� where ��� in(
  (select max(���) from �ֿ�),
  (select min(���) from �ֿ�)))

use db_business 
go
select * ,
����-(select avg(����) from ְ��) as ������ƽ������֮��  
from  ְ�� where abs(����-(select avg(����) from ְ��))>300








