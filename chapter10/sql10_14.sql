use db_business 
go
while (select AVG(面积) from 仓库备份)<6000
  begin
    update 仓库备份 set 面积=面积+1000 where 城市!='青岛'
    select MAX(面积) as 最大仓库面积 from 仓库备份
    if (select max(面积) from 仓库备份)>4500
      break
    else
      continue
  end
  
   