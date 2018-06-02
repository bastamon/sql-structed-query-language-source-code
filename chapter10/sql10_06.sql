declare @hyuser  varchar(50) ,@hypwd varchar(50),@msg varchar(50)
select @hyuser='liping' , @hypwd='111'

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
