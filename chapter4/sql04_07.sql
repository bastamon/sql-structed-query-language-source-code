use db_business 
go
select ���� + '�Ĺ����ǣ�' + cast(���� as varchar(10)) as ����˵�� 
from ְ��

use db_business 
go
select ����+ '�������ǣ�' +  (
   case
      when ����>2000  then '����'
      when ����>=1800 and ����<=2000  then '����'
      when ����>=1500 and ����<1800  then 'һ��'
      when ����<1500  then '��'
   end) as ְ������˵��
  from ְ��
