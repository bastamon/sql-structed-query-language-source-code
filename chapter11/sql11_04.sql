use db_business 
go
create view �ֿ���ͼ
as
select �ֿ��,����,���,����ʱ��,
  (select AVG(���) from �ֿ�) as ƽ�����,
  (select max(���) from �ֿ�) as ������,
  (select min(���) from �ֿ�) as ��С���,
  (select sum(���) from �ֿ�) as �����
  from �ֿ�
  go
use db_business 
go
select * from �ֿ���ͼ

use db_business 
go
create view ְ����ͼ
as
select �ֿ��,ְ����,����,�Ա�,����,
  (select AVG(����) from ְ��) as ƽ������,
  (select max(����) from ְ��) as �����,
  (select min(����) from ְ��) as ��С����,
  (select sum(����) from ְ��) as ���ʺ�,
  (select avg(����) from ְ�� where �ֿ��= a.�ֿ��)as ��ͬ�ֿ��ƽ������,
  (select max(����) from ְ�� where �ֿ��= a.�ֿ��)as ��ͬ�ֿ�������,
  (select min(����) from ְ�� where �ֿ��= a.�ֿ��)as ��ͬ�ֿ����С����,
  (select sum(����) from ְ�� where �ֿ��= a.�ֿ��)as ��ͬ�ֿ�Ĺ��ʺ�
 from ְ�� a
 go
use db_business 
go
select * from ְ����ͼ

use db_business 
go
create view ��������ͼ
as
select ְ����,��������,���,
  (select AVG(���) from ������) as ƽ�����,
  (select max(���) from ������) as �����,
  (select min(���) from ������) as ��С���,
  (select sum(���) from ������) as ����,
  (select avg(���) from ������ where ְ����= a.ְ����)as ��ְͬ����ƽ�����,
  (select max(���) from ������ where ְ����= a.ְ����)as ��ְͬ���������,
  (select min(���) from ������ where ְ����= a.ְ����)as ��ְͬ������С���,
  (select sum(���) from ������ where ְ����= a.ְ����)as ��ְͬ���Ľ���
 from ������ a

use db_business 
go
select * from ��������ͼ

use db_business
go
create view ������ͼ����ͼ 
as
select �ֿ���ͼ.�ֿ��,����,���,ƽ�����,������,��С���,�����,
       ����,�Ա�,����,ƽ������,�����,��С����,
       ��ͬ�ֿ��ƽ������,��ͬ�ֿ�������,��ͬ�ֿ����С����,��ͬ�ֿ�Ĺ��ʺ�,
       ��������ͼ.ְ����,��������,���,ƽ�����,�����,��С���,����,
       ��ְͬ����ƽ�����,��ְͬ���������,��ְͬ������С���,��ְͬ���Ľ���
from �ֿ���ͼ,ְ����ͼ,��������ͼ 
 where �ֿ���ͼ.�ֿ�� =ְ����ͼ.�ֿ�� and ��������ͼ.ְ����=ְ����ͼ.ְ����


use db_business 
go
select * from  ������ͼ����ͼ


use db_business
go
create view ͳ��������Ϣ��ͼ 
as
select ����,ƽ�����,������,��С���,�����, ƽ������,�����,��С����,
       ��ͬ�ֿ��ƽ������,��ͬ�ֿ�������,��ͬ�ֿ����С����,��ͬ�ֿ�Ĺ��ʺ�,
       ƽ�����,�����,��С���,����,
       ��ְͬ����ƽ�����,��ְͬ���������,��ְͬ������С���,��ְͬ���Ľ���
from ������ͼ����ͼ 


use db_business 
go
select * from  ͳ��������Ϣ��ͼ


























