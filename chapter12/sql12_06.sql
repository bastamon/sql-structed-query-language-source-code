create proc proc_sql10 
 @hyuser varchar(50),
 @hypwd  varchar(50)
as
begin
declare @msg varchar(50)
 if @hyuser='hystu1'
    begin
      if @hypwd='111'
        set @msg='用户名与密码正确，成功登录！'
      else
        set @msg='密码不正确，请重新输入！'
    end
 else if @hyuser='hystu2'
    begin
      if @hypwd='222'
        set @msg='用户名与密码正确，成功登录！'
      else
        set @msg='密码不正确，请重新输入！'
    end
 else if @hyuser='hystu3'
    begin
      if @hypwd='333'
        set @msg='用户名与密码正确，成功登录！'
      else
        set @msg='密码不正确，请重新输入！'
    end
 else
   set @msg='用户名不正确，请重新输入！'
print @msg
end

execute proc_sql10 'hystu1','111'
