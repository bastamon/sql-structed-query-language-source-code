use db_business 
go
select ����,����,ְ������ =
   case
      when ����>2000  then '����'
      when ����>=1800 and ����<=2000  then '����'
      when ����>=1500 and ����<1800  then 'һ��'
      when ����<1500  then '��'
   end
  from ְ��