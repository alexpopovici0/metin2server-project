DIR="~/../var/db/mysql"

if [-d $DIR]; then 
    cd ~/../var/db/
    rmdir mysql
fi  
cd ~/../usr/metin2server-project
tar -xd metin2_mysql.tar.gz ~/../var/db/