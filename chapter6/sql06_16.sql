use db_business 
go
select �ֿ��,max(����) as ��ͬ�ֿ�������,min(����) as ��ͬ�ֿ����С����,
   (max(����)-min(����)) as ��ͬ�ֿ�����������С����֮��
  from ְ�� 
group by  �ֿ��
order by (max(����)-min(����)) asc