use db_business 
go
create table ְ��
 (
	ְ��ID  int identity(1,1) primary key,
    ְ���� varchar(50) unique,
    �ֿ��  varchar(50) references �ֿ�(�ֿ��),
    ����    varchar(50) not null ,
    �Ա�    varchar(10) check(�Ա�='Ů' or �Ա�='��') default '��',
    ����    int
 )

insert into ְ��(ְ����,�ֿ��,����,�Ա�,����) values 
   ('zg1','wh1','����','Ů',1250)
insert into ְ��(ְ����,�ֿ��,����,�Ա�,����) values 
   ('zg2','wh1','�ְ�ƽ',null,1310)
insert into ְ��(ְ����,�ֿ��,����,�Ա�,����) values 
   ('zg3','wh2','�ſ�','Ů',2050)
insert into ְ��(ְ����,�ֿ��,����,�Ա�,����) values 
   ('zg4','wh1','��ƽ̨','��',1850)
insert into ְ��(ְ����,�ֿ��,����,�Ա�,����) values 
   ('zg5','wh3','����','Ů',1962)
insert into ְ��(ְ����,�ֿ��,����,�Ա�,����) values 
   ('zg6','wh2','����ƽ','Ů',1830)
insert into ְ��(ְ����,�ֿ��,����,�Ա�,����) values 
   ('zg7','wh4','����','��',1850)
insert into ְ��(ְ����,�ֿ��,����,�Ա�,����) values 
   ('zg8','wh2','������','��',1750)
insert into ְ��(ְ����,�ֿ��,����,�Ա�,����) values 
   ('zg9','wh3','����','Ů',1250)
insert into ְ��(ְ����,�ֿ��,����,�Ա�,����) values 
   ('zg10','wh4','����','��',1850)
insert into ְ��(ְ����,�ֿ��,����,�Ա�,����) values 
   ('zg11','wh3','۶ƽ','��',1890)
insert into ְ��(ְ����,�ֿ��,����,�Ա�,����) values 
   ('zg12','wh4','����','Ů',1550)
insert into ְ��(ְ����,�ֿ��,����,�Ա�,����) values 
   ('zg13','wh2','���ҳ�','��',2150)
insert into ְ��(ְ����,�ֿ��,����,�Ա�,����) values 
   ('zg14','wh4','��Χ','��',1850)
insert into ְ��(ְ����,�ֿ��,����,�Ա�,����) values 
   ('zg15','wh1','����',null,1910)
insert into ְ��(ְ����,�ֿ��,����,�Ա�,����) values 
   ('zg16','wh2','���','Ů',2050)
insert into ְ��(ְ����,�ֿ��,����,�Ա�,����) values 
   ('zg17','wh4','������','��',1850)
insert into ְ��(ְ����,�ֿ��,����,�Ա�,����) values 
   ('zg18','wh3','��ƽ��','Ů',1962)
