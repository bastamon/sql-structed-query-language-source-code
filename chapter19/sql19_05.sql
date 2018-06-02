
sp_addumpdevice 'disk','zf_backupfile','d:\data\mybackupfile.bak'

backup database db_business
file ='db_business_data',
filegroup ='primary'
to zf_backupfile