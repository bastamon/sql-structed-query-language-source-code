use db_business 
go
drop rule range_rule

use db_business 
go
drop rule  list_rule,pattern_rule




use db_business 
go
CREATE RULE range_rule
AS 
@range>= 800 AND @range <1600
go
execute sp_bindrule 'range_rule', '�ֿⱸ��.���'

use db_business 
go
execute sp_unbindrule '�ֿⱸ��.���'
drop rule range_rule






