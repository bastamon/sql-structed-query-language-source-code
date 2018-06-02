create proc proc_sql9
  @changkuhao varchar(50),
  @maxgz  int output,
  @avggz  real output
as
 begin
  select * from 职工 where 仓库号=@changkuhao
  select @maxgz=max(工资) from 职工 where 仓库号=@changkuhao
  select @avggz=avg(工资) from 职工 where 仓库号=@changkuhao
end
go

declare @x1 int,@x2 real
execute proc_sql9 'wh1',@x1 output,@x2 output
select @x1 as wh1职工最大工资,@x2 as wh1职工平均工资

