use db_business 
go
CREATE RULE range_rule
AS 
@range>= 800 AND @range <1600
u

use db_business 
go
CREATE RULE list_rule
AS 
@list IN ('����', '�Ϻ�', '�ൺ')

use db_business 
go
CREATE RULE pattern_rule 
AS
@value LIKE '__-%[0-9]'
