use db_business 
go
select �ֿ��,�Ա�,AVG(����) as ��ͬ�ֿ��ƽ������  from ְ�� 
where �Ա� is not null
group by  �ֿ��,�Ա� 

use db_business 
go
select �ֿ��,�Ա�,AVG(����) as ��ͬ�ֿ��ƽ������  from ְ�� 
where �Ա� is not null
group by  �ֿ��,�Ա� with rollup


use db_business 
go
select �ֿ��,�Ա�,AVG(����) as ��ͬ�ֿ��ƽ������  from ְ�� 
where �Ա� is not null
group by  �Ա�,�ֿ�� with rollup
