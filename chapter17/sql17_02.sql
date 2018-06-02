execute  sp_addlogin  'db_loginzhang','zhang888',
                      'db_business','english'

execute sp_password 'zhang888','zhang699','db_loginzhang'

execute sp_defaultdb 'db_loginzhang','master'

execute sp_defaultlanguage 'db_loginzhang','Japanese'

execute sp_helplogins 'db_loginzhang'

execute sp_droplogin 'db_loginzhang'