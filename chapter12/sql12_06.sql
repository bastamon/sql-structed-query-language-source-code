create proc proc_sql10 
 @hyuser varchar(50),
 @hypwd  varchar(50)
as
begin
declare @msg varchar(50)
 if @hyuser='hystu1'
    begin
      if @hypwd='111'
        set @msg='�û�����������ȷ���ɹ���¼��'
      else
        set @msg='���벻��ȷ�����������룡'
    end
 else if @hyuser='hystu2'
    begin
      if @hypwd='222'
        set @msg='�û�����������ȷ���ɹ���¼��'
      else
        set @msg='���벻��ȷ�����������룡'
    end
 else if @hyuser='hystu3'
    begin
      if @hypwd='333'
        set @msg='�û�����������ȷ���ɹ���¼��'
      else
        set @msg='���벻��ȷ�����������룡'
    end
 else
   set @msg='�û�������ȷ�����������룡'
print @msg
end

execute proc_sql10 'hystu1','111'
