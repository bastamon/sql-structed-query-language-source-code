use db_business 
go
select �ֿ�.�ֿ��,����,���,����,����,��� into ������Ӳ������±� 
  from �ֿ�,ְ��,������ 
  where �ֿ�.�ֿ��= ְ��.�ֿ�� and ְ��.ְ����=������.ְ����
  
  
  
use db_business 
go
select * from ������Ӳ������±�


use db_business 
go
select �ֿ��,avg(���) as ƽ�����۽��,max(���) as ������۽��,
 min(���) as ��С���۽��,
 (max(���)-min(���)) as ������۽������С���۽��֮��
 from ������Ӳ������±� group by �ֿ�� 
 having (max(���)-min(���))<12000
 
 
 
 
 use db_business 
go
select �ֿ��,avg(���) as ƽ�����۽��,max(���) as ������۽��,
 min(���) as ��С���۽��,
 (max(���)-min(���)) as ������۽������С���۽��֮�� 
 into �����ѯ�������±�
 from ������Ӳ������±� group by �ֿ��


use db_business 
go
 select * from  �����ѯ�������±� 
    where ������۽������С���۽��֮��<12000