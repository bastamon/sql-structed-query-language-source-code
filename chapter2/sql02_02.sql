
create database db_sqlserver2  --����db_sqlserver2���ݿ�
 on
  (
	name= db_sqlserver2_data,   --�ļ����߼�����
    filename='e:\mydata\db_sqlserver2_data.mdf',  --���ݿ��ļ�Ҫ����·�����ļ���
    size=4,                     --�ļ��Ĵ�С
    maxsize=10,                 --�ļ������󵽵�����С
    filegrowth=10%              --�ļ����Զ�����
    )
log on
(
	name= db_sqlserver2_log,
    filename='e:\mydata\db_sqlserver12_log.ldf',
    size=1,
    maxsize=6,
    filegrowth=1
)
