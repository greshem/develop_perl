cat db_install.rsp |grep -v ^#|grep -v ^$ >  install_2013.rsp 



#修改了以下内容：
oracle.install.responseFileVersion="/oracle/install/rspfmt_dbinstall_response_schema_v11_2_0"
oracle.install.option=INSTALL_DB_SWONLY
ORACLE_HOSTNAME=
UNIX_GROUP_NAME=oinstall
INVENTORY_LOCATION="/apps/oracle/oraInventory"
SELECTED_LANGUAGES=en
ORACLE_HOME="/apps/oracle/product/11.2.0/dbhome_1"
ORACLE_BASE="/apps/oracle"
oracle.install.db.InstallEdition=EE
oracle.install.db.EEOptionsSelection=true
DECLINE_SECURITY_UPDATES=true


########
/tmp/dir/runInstaller -force -silent -noconfig -responseFile  /home/oracle/db_qianqianqian.rsp 

