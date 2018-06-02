use db_business 
go
Create Table T1 (Col1 int, Col2 char(3));
GO
Declare @i int
set @i = 0
Begin tran
  set @i = 0
  While (@i < 100000)
    begin
       Insert  into T1 Values (@i, CAST(@i AS char(3)))
        Set @i = @i + 1
    end
commit tran
go
dbcc inputbuffer(52)

