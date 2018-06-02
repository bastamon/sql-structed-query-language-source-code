
create database db_sqlserver2  --创建db_sqlserver2数据库
 on
  (
	name= db_sqlserver2_data,   --文件的逻辑名称
    filename='e:\mydata\db_sqlserver2_data.mdf',  --数据库文件要保存路径及文件名
    size=4,                     --文件的大小
    maxsize=10,                 --文件可增大到的最大大小
    filegrowth=10%              --文件的自动增量
    )
log on
(
	name= db_sqlserver2_log,
    filename='e:\mydata\db_sqlserver12_log.ldf',
    size=1,
    maxsize=6,
    filegrowth=1
)
