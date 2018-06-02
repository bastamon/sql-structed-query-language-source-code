print rand()
print rand()

print ceiling(rand()*10)
print ceiling(rand()*10)

use db_business 
go
select * from 职工 where 职工ID in (ceiling(rand()*18))