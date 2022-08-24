DIR="~/../var/db/mysql"

if [-d $DIR]
    cd ~/../var/db/
    rmdir mysql
    
cd ~/../usr/metin2server-project
tar -xd metin2_mysql.tar.gz ~/../var/db/