declare @x int, @sum int       --��������
select @x=0,@sum=0              --Ϊ������ֵ
while @x<=120                    --Whileѭ�����
 begin                             --�����Ŀ�ʼ
  set @sum=@sum+@x
  set @x=@x+1
 end                                --�����Ľṹ
                               --����print�������
print '��1��1200֮���ǣ�'+ cast(@sum as varchar(50))
