create database db_sqlserver3
 on
  (
	name=db_sqlserver3_data,   --��һ�������ļ����߼�����
    filename='e:\mydata\db_sqlserver31_data.mdf',
    size=4,
    maxsize=10,
    filegrowth=10%
    ),
  (
	name=Mydatabase22_data,     --�ڶ��������ļ����߼�����
    filename='e:\mydata\db_sqlserver32_data.mdf',
    size=3,
    maxsize=10,
    filegrowth=1
    )
log on
(
	name=Mydatabase21_log,     --��һ����־�ļ����߼�����
    filename='e:\mydata\db_sqlserver31_log.ldf',
    size=1,
    maxsize=6,
    filegrowth=1
),
(
	name=Mydatabase22_log,    --�ڶ�����־�ļ����߼�����
    filename='e:\mydata\db_sqlserver32_log.ldf',
    size=1,
    maxsize=6,
    filegrowth=10%
)
