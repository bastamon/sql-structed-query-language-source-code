use db_business 
go
create function Myfun(@gz int)
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
