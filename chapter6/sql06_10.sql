use db_business 
go
select �ֿ��,AVG(����) as ��ͬ�ֿ��ƽ������  from ְ�� 
where �Ա�!='Ů'
group by  �ֿ��

use db_business 
go
select �ֿ��,AVG(����) as ��ͬ�ֿ��ƽ������  from ְ�� 
 where �Ա� is not null 
 and (����>(select AVG(����) from ְ�� where �ֿ��='wh1'))
group by  �ֿ��










