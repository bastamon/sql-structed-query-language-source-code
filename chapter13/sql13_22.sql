use db_business 
go
ALTER function db_fun1(@gz varchar(50))
returns varchar(30)
begin
  declare @y varchar(30)
   if @gz>=2000
      set @y= '�߹���'
   else if @gz>=1500
      set @y= 'һ�㹤��'
   else if @gz>=1200
      set @y= '�͹���'
  else
      set @y='������'
  return @y
end

use db_business 
go
select ְ��.*,dbo.db_fun1(����) as ְ������ from ְ��

use db_business 
go
execute sp_helptext db_fun1


