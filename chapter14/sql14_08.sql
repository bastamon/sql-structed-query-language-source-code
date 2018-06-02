use db_business 
go
create procedure db_mypro 
@x int
as
begin
  declare mycursor scroll cursor
  for
  select * from Ö°¹¤
  open mycursor
  fetch absolute @x from mycursor
  close mycursor
  deallocate mycursor
end

use db_business 
go
execute db_mypro 5
