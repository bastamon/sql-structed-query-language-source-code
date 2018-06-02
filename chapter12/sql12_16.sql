use master 
go
create procedure masterproc 
as
select * from spt_values


use master 
go
sp_procoption @procName='masterproc',
              @optionName='startup',
              @optionValue = 'true'





