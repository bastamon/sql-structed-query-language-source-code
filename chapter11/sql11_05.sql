use db_business 
go
create view ��ͬ���й���ͳ����Ϣ��ͼ
as
select ����,AVG(����) as ��ͬ����ƽ������,MAX(����) as ��ͬ��������� 
from ������ͼ����ͼ group by ����

use db_business 
go
select * from  ��ͬ���й���ͳ����Ϣ��ͼ

use db_business 
go
create view ��ͬ�������۽��ͳ����Ϣ��ͼ
as
select ����,AVG(���) as ��ͬ����ƽ�����۽��,MAX(���) as ��ͬ����������۽�� 
from ������ͼ����ͼ group by ����

use db_business 
go
select * from  ��ͬ�������۽��ͳ����Ϣ��ͼ






