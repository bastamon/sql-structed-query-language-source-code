use db_business 
go
create unique index unique_index on 仓库备份(仓库号)

use db_business 
go
create unique clustered index unique_clu_index on 职工备份(职工ID)
with ignore_dup_key