use db_business
go
execute sp_bindrule 'range_rule', '�ֿⱸ��.���'



use db_business
go
execute sp_addtype N'Mytype',N'char(12)', N'null'


use db_business
go
execute sp_bindrule 'list_rule', 'Mytype'

use db_business
go
execute sp_bindrule 'list_rule', 'Mytype','futureonly'



