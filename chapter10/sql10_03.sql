print @@version  --���ȫ�ֱ���


print '������������������ʱ���ǣ�'+ cast(@@IO_Busy  as varchar(10))+'��'
print '������CPU����ʱ���ǣ�'+ cast(@@CPU_Busy  as varchar(10))+'��'



use db_business  /* �����ݿ�db_business */
/*
    ����Update����wh1�ֿ�ĳ����޸�Ϊ��֣�ݡ�������ʱ���޸�Ϊ��2009-9-9��
    Ȼ������Select�����в鿴
*/
update �ֿⱸ�� set ����='֣��',����ʱ��='2009-9-9' where   �ֿ��='wh1'
select * from �ֿⱸ��


