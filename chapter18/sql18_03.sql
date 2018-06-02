use db_business 
go
execute sp_unbindrule '仓库备份.面积'

use db_business 
go
execute sp_unbindrule  'Mytype'

use db_business 
go
execute sp_unbindrule 'Mytype', 'futureonly'
