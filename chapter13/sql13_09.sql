declare @x char
declare @y varchar(10)
set @x = 'b'
set @y='hello,HOW ARE YOU!'
print 'b��ASCII�ǣ�'+cast(ascii(@x)as varchar(10))
print '����@y��ֵ��'+@y
print '�ѱ���@yת��ΪСд��ĸ��'+lower(@y)
print '�ѱ���@yת��Ϊ��д��ĸ��'+upper(@y)
print 'str()������Ӧ��'
print str(124.654,6,1)
print str(124.654,3,1)

use db_business
go
select �ֿ��, UPPER (�ֿ��) as �ֿ��ת��Ϊ��д,ְ����,
   UPPER (ְ����) as ְ����ת��Ϊ��д, ���� 
from ְ��








