use db_business 
go
select * from ²Ö¿â where Ãæ»ý =
  (select Ãæ»ý from ²Ö¿â where ²Ö¿âºÅ='wh1')
  
  
use db_business 
go
select * from ²Ö¿â where ²Ö¿âºÅ!='wh1' and Ãæ»ý =
  (select Ãæ»ý from ²Ö¿â where ²Ö¿âºÅ='wh1')
  
 use db_business 
go
select * from ²Ö¿â where Ãæ»ý =  (select max(Ãæ»ý) from ²Ö¿â ) 