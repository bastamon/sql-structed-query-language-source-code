create proc proc_sql9
  @changkuhao varchar(50),
  @maxgz  int output,
  @avggz  real output
as
 begin
  select * from ְ�� where �ֿ��=@changkuhao
  select @maxgz=max(����) from ְ�� where �ֿ��=@changkuhao
  select @avggz=avg(����) from ְ�� where �ֿ��=@changkuhao
end
go

declare @x1 int,@x2 real
execute proc_sql9 'wh1',@x1 output,@x2 output
select @x1 as wh1ְ�������,@x2 as wh1ְ��ƽ������

