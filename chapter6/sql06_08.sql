use db_business 
go
select �ֿ��,AVG(����) as ��ͬ�ֿ��ƽ������  from ְ�� 
group by  �ֿ��

use db_business 
go
select ְ����,AVG(���) as ��ְͬ����ƽ�����۽��,
  MAX(���) as ��ְͬ����������۽��,
  min(���) as ��ְͬ������С���۽��,
  sum(���) as ��ְͬ���Ľ�����ۺ�
  from ������ 
group by  ְ����