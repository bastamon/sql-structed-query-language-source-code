declare @cj float,@str varchar(60)
set @cj=90
set @str=
case
   when @cj>100 or  @cj<0  then '������ĳɼ����ԣ��ɼ�Ӧ��0-100֮��'
   when @cj>=60 and @cj<70 then '����'
   when @cj>=70 and @cj<80 then '�е�'
   when @cj>=80 and @cj<90 then '����'
   when @cj>=90 and @cj<=100 then '����'
   else '������'
end
print '��ѧ���ĳɼ����' + @str
