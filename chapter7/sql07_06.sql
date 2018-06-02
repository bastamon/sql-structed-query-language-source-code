use db_business 
go
select * from ²Ö¿â 
     where  exists (select * from Ö°¹¤ where  ²Ö¿âºÅ=²Ö¿â.²Ö¿âºÅ)

use db_business 
go
select * from ²Ö¿â 
     where  exists (select * from Ö°¹¤ where  ²Ö¿âºÅ=²Ö¿â.²Ö¿âºÅ 
     and ¹¤×Ê>2000)



use db_business 
go
select * from ²Ö¿â 
     where  exists (select * from Ö°¹¤ where  ²Ö¿âºÅ=²Ö¿â.²Ö¿âºÅ 
     )  and ³ÇÊÐ is not null
use db_business 
go
select * from ²Ö¿â 
     where  not exists (select * from Ö°¹¤ where  ²Ö¿âºÅ=²Ö¿â.²Ö¿âºÅ ) 