DIR="~/../var/db/mysql"

if [ -d $DIR ]; then 
    cd ~/../var/db/
    rmdir mysql
fi  
cd ~/../usr/metin2server-project
tar -zxvf metin2_mysql.tar.gz -C ~/../var/db/

