use db_business 
go
update �ֿⱸ�� set ����='֣��',����ʱ��='2009-9-9' where  �ֿ��='wh1'


use db_business 
go
select * from �ֿⱸ��

use db_business 
go
update �ֿⱸ�� set ���=890,����ʱ��='2008-8-8' where ���>890
go
select * from �ֿⱸ�� order by ��� desc

use db_business 
go
update �ֿⱸ�� set ���=���+80 ,���� = '����' where ���<
  ( select MIN(���) from �ֿⱸ�� where ����='����')

