use db_business 
go
select max(����) as �����,stdev(����) as ���ʱ�׼��, stdevp(����) as ���������׼��, 
var(����) as ����ͳ�Ʒ���,varp(����) as ����������췽��  
from  ְ��

use db_business 
go
select * ,(select var(���) from �ֿ� ) as ���ͳ�Ʒ��� from �ֿ�


use db_business 
go
select �Ա�,stdev(����) as ���ʱ�׼��, stdevp(����) as ���������׼��, 
var(����) as ����ͳ�Ʒ���,varp(����) as ����������췽��  
from  ְ�� group by �Ա�
use db_business 
go
create view view_mysun
as
select ����,���� from �ֿ�,ְ�� where �ֿ�.�ֿ��=ְ��.�ֿ��

use db_business 
go
select ����,stdev(����) as ���ʱ�׼��, stdevp(����) as ���������׼��, 
var(����) as ����ͳ�Ʒ���,varp(����) as ����������췽��  
from  view_mysun group by ����



