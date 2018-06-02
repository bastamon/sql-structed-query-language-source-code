use db_business 
go
create type addr_type as table
(
  street  varchar(30),
  city    varchar(30),
  zip     varchar(10),
  country  varchar(30),
  type_of_addr char(1)
)

use db_business 
go
create table my_table 
(
    id  int,
    sname varchar(20),
    saddress  addr_type
)

create type usd as decimal(12,2) not null
