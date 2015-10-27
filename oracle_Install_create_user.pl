#2014_03_07   ÐÇÆÚÎå   add by greshem
#!/bin/bash
# Version 1.0
# AUTHOR: Xin23  http://weibo.com/231988
#1.Oracle Version and System
GetOracleVersion() {
        read -p "Which Version of Oracle You Will Install? [11|10]?     " VERSION
}
GetOracleVersion
SetVersion() {
if       [ $VERSION -eq 11 ]
        then echo 'Oracle Version is 11!        '
elif [ $VERSION -eq 10 ]
        then echo 'Oracle Version is 10!        '
else
        echo 'Please Retype The Version of Oracle You Will Install!     '
        GetOracleVersion
        SetVersion
fi
}
SetVersion
MEMORY=$(cat /proc/meminfo | grep MemTotal | awk '{print $2}')
SWAP=$(cat /proc/meminfo | grep SwapTotal | awk '{print $2}')
MEMORY_REQ=1048576
if [ $MEMORY -lt $MEMORY_REQ ]
        then echo 'Physical Memory is too small! '
        exit 1
else
        echo 'Physical Memory Check OK! '
fi
if [ $VERSION -eq 10 ]
        then 
                                if [ $MEMORY -lt 2097152 ]
                        then if [ $SWAP -lt $(echo "$MEMORY*3/2"|bc) ]
                                                        then echo 'Swap is too small! '
                                                        exit 2
                             else
                                                        echo 'Swap Check OK! '
                             fi
              elif [ $MEMORY -gt 2097152 ] || [ $MEMORY -lt 8388608 ]
                        then if [ $SWAP -lt $MEMORY ]
                                                        then echo 'Swap is too small! '
                                                        exit 2
                             else
                                                        echo 'Swap Check OK! '
                             fi
              elif    [ $MEMORY -gt 8388608 ]
                        then if [ $SWAP -lt $(echo "$MEMORY*3/4"|bc) ]
                                                        then echo 'Swap is too small! '
                                                        exit 2
                             else
                                                        echo 'Swap Check OK! '
                             fi
                                fi
elif  [ $VERSION -eq 11 ]
        then
                                if         [ $MEMORY -lt 2097152 ]
                        then if [ $SWAP -lt  $(echo "$MEMORY*3/2"|bc) ]
                                                        then echo 'Swap is too small! '
                                                       echo  exit 2
                             else
                                                        echo 'Swap Check OK! '
                             fi
              elif    [ $MEMORY -gt 2097152 ] || [ $MEMORY -lt 16777216 ]
                        then if [ $SWAP -lt $MEMORY ]
                                                        then echo 'Swap is too small! '
                                                        echo exit 2
                             else
                                                        echo 'Swap Check OK! '
                             fi
              elif    [ $MEMORY -gt 16777216 ]
                        then if [ $SWAP -lt 16777216 ]
                                                        then echo 'Swap is too small! '
                                                        echo exit 2
                             else
                                                        echo 'Swap Check OK! '
                             fi
                                fi
fi
echo 'Oracle Version and System hardware has been checked! '
#2.Software 
Rpm() {
rpm -ivh compat-libstdc++*
rpm -ivh compat-libstdc++*
rpm -ivh elfutils-libelf*i386.rpm
rpm -ivh elfutils-libelf*x86_64.rpm
rpm -ivh elfutils-libelf-devel-static*x86_64.rpm elfutils-libelf-devel*x86_64.rpm
rpm -ivh elfutils-libelf-devel-static*i386.rpm elfutils-libelf-devel*i386.rpm
rpm -ivh libaio-devel*
rpm -ivh sysstat*
rpm -ivh unixODBC-[[:digit:]]*
rpm -ivh unixODBC-devel*
rpm -ivh kernel-headers*
rpm -ivh glibc-headers*
rpm -ivh glibc-devel*
rpm -ivh libgomp*
rpm -ivh libstdc++-devel*x86_64.rpm
rpm -ivh libstdc++-devel*i386.rpm
rpm -ivh gcc-[[:digit:]]*
rpm -ivh gcc-c++*
rpm -ivh libXp-[[:digit:]]*
}
Yum() {
                                yum -y install  compat-libstdc++
				yum -y install compat-libstdc++-296
                                yum -y install  elfutils-libelf-devel-static
                                yum -y install  elfutils-libelf-devel
                                yum -y install  libaio-devel
                                yum -y install  sysstat
                                yum -y install  unixODBC
                                yum -y install  unixODBC-devel
                                yum -y install  kernel-headers
                                yum -y install  glibc-headers
                                yum -y install  glibc-devel
                                yum -y install  libgomp
                                yum -y install  gcc
                                yum -y install  gcc-c++
                                yum -y install  libstdc++-devel
                                yum -y install  libXp
}
GetYum() {
     read -p "Have you config the yum? [y|n] " YUM
     }
GetYum
RetroYum() {
if [ $YUM = y ]
        then Yum
elif [ $YUM = n ]
        then read -p "Please input rpm package's location: " MEDIA_DIR
        cd $MEDIA_DIR
        Rpm
else
  GetYum
  RetroYum
fi
}
RetroYum
echo 'Necessary RPM Package has been installed! '
#3.User and Groups
groupadd oinstall
groupadd dba
useradd -g oinstall -G dba oracle
mkdir -p /u01/app/oracle;chown -R oracle:oinstall /u01
read -p "Please input password for user oracle: " PASSWORD
echo "$PASSWORD" | passwd --stdin oracle
echo 'User and Group has been Created! '
#4.Environment
read -p "Please input ORACLE SID: " SID
su -c "echo 'export ORACLE_BASE=/u01/app/oracle' >> ~/.bash_profile" oracle
su -c "echo 'export ORACLE_SID=$SID' >> ~/.bash_profile" oracle
export ORACLE_BASE=/u01/app/oracle
if [ $VERSION = 11 ]
                then su -c 'echo "export ORACLE_HOME=$ORACLE_BASE/product/11.2.0/dbhome_1" >> ~/.bash_profile' oracle
                export ORACLE_HOME=$ORACLE_BASE/product/11.2.0/dbhome_1
elif [ $VERSION = 10 ]
                then su -c 'echo "export ORACLE_HOME=$ORACLE_BASE/product/10.2.0/db_1" >> ~/.bash_profile' oracle
                export ORACLE_HOME=$ORACLE_BASE/product/10.2.0/db_1
else
                exit 3
fi
su -c 'echo "export PATH=$PATH:$HOME/bin:$ORACLE_HOME/bin" >> ~/.bash_profile' oracle
echo 'Software Enviroment has been finished! '
#5.Operate System and Kernel Parameters 
read -p "Please input your ip address: " IP_ADDRESS
echo "$IP_ADDRESS $(hostname)" >> /etc/hosts
echo 'fs.aio-max-nr = 1048576' >> /etc/sysctl.conf
echo 'fs.file-max = 6815744' >> /etc/sysctl.conf
echo 'kernel.shmmni = 4096' >> /etc/sysctl.conf
echo 'kernel.sem = 250 32000 100 128' >> /etc/sysctl.conf
echo 'net.core.rmem_default = 262144' >> /etc/sysctl.conf
echo 'net.core.rmem_max = 4194304' >> /etc/sysctl.conf
echo 'net.core.wmem_default = 262144' >> /etc/sysctl.conf
echo 'net.core.wmem_max = 1048586' >> /etc/sysctl.conf
if [ $VERSION = 11 ]
  then echo 'net.ipv4.ip_local_port_range = 9000 65500' >> /etc/sysctl.conf
elif [ $VERSION = 10 ]
  then echo 'net.ipv4.ip_local_port_range = 1024 65000' >> /etc/sysctl.conf
fi
sysctl -p
echo 'oracle soft nproc 2047' >> /etc/security/limits.conf
echo 'oracle hard nproc 16384' >> /etc/security/limits.conf
echo 'oracle soft nofile 1024' >> /etc/security/limits.conf
echo 'oracle hard nofile 65536' >> /etc/security/limits.conf
echo 'oracle soft stack 10240' >> /etc/security/limits.conf
echo 'Operate System and Kernel Parameter has been finished! '
echo 'Now You Can Run runInstaller to start Installation of Oracle! '
