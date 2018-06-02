print @@version  --输出全局变量


print '服务器输入和输出花费时间是：'+ cast(@@IO_Busy  as varchar(10))+'秒'
print '服务器CPU工作时间是：'+ cast(@@CPU_Busy  as varchar(10))+'秒'



use db_business  /* 打开数据库db_business */
/*
    利用Update语句把wh1仓库的城市修改为“郑州”、创建时间修改为“2009-9-9”
    然后利用Select语句进行查看
*/
update 仓库备份 set 城市='郑州',创建时间='2009-9-9' where   仓库号='wh1'
select * from 仓库备份


