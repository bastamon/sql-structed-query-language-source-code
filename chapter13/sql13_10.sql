declare @i int
set @i=0
while @i<26
   begin
     print char(ascii('a')+@i)+'��ASCII���ǣ�'+cast(ascii('A')+@i as varchar(50))
     set @i=@i+1
end
