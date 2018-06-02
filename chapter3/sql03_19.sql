create database db_business
 on
  (
	name=db_business_data,
    filename='e:\mydata\db_business_data.mdf',
    size=4,
    maxsize=10,
    filegrowth=10%
    )
log on
(
	name=sale1_log,
    filename='e:\mydata\db_business_log.mdf',
    size=1,
    maxsize=6,
    filegrowth=1
)
