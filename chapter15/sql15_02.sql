use db_business 
go
create trigger db_trigger2 on �ֿⱸ�� for Insert,Update ,Delete      
as
begin
  execute xp_sendmail 'zhoufeng@163.com'
end
