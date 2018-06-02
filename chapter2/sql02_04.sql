create database db_sqlserver4
 on
  primary
  (
	name=db_sqlserver41_data,
    filename='e:\mydata\db_sqlserver41_data.mdf',
    size=4,
    maxsize=10,
    filegrowth=10%
    ),
  filegroup newgroup1
  (
	name=db_sqlserver42_data,
    filename='e:\mydata\db_sqlserver42_data.mdf',
    size=3,
    maxsize=10,
    filegrowth=1
    )
log on
(
	name=db_sqlserver41_log,
    filename='e:\mydata\db_sqlserver41_log.ldf',
    size=1,
    maxsize=6,
    filegrowth=1
)
