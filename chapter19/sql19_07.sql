
RESTORE DATABASE db_business FROM   DISK = N'd:\data\db_business.bak' 

restore database db_business
file ='db_business_data',
filegroup ='primary'
from zf_backupfile

