declare @x0 int , @x1 int,@x2 int,@x3 int,@x4 int,@x5 int,@x6 int
  set @x0=ceiling(rand()*30)
  set @x1=ceiling(rand()*30)
  set @x2=ceiling(rand()*30)
  set @x3=ceiling(rand()*30)
  set @x4=ceiling(rand()*30)
  set @x5=ceiling(rand()*30)
  set @x6=ceiling(rand()*30)
  while 1=1
    begin
      if @x1=@x0
         set @x1=ceiling(rand()*30)
       else
         break
    end

   while 1=1
    begin
      if @x2=@x0 or @x2=@x1
         set @x2=ceiling(rand()*30)
       else
         break
    end

   while 1=1
    begin
      if @x3=@x0 or @x3=@x1 or @x3=@x2
         set @x3=ceiling(rand()*30)
       else
         break
    end

   while 1=1
    begin
      if @x4=@x0 or @x4=@x1 or @x4=@x2 or @x4=@x3
         set @x4=ceiling(rand()*30)
       else
         break
    end

 while 1=1
    begin
      if @x5=@x0 or @x5=@x1 or @x5=@x2 or @x5=@x3 or @x5=@x4
         set @x5=ceiling(rand()*30)
       else
         break
    end

   while 1=1
    begin
      if @x6=@x0 or @x6=@x1 or @x6=@x2 or @x6=@x3 or @x6=@x4 or @x6=@x5
         set @x6=ceiling(rand()*30)
       else
         break
    end
select @x0 ��һ�������,@x1 �ڶ��������,@x2 �����������,@x3 ���ĸ������,@x4 ����������,@x5 �����������,@x6 ���߸������
