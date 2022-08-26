1.: User for the DB:

You have to create a metin2@localhost MySQL user with every Server Priviliges in order to make the serverfile work.
For password use the word password or you can change the password in CONFIG files and use your own password. 

You can create this user in navicat -> user -> new user (tick every Server Priviliges) or you can use this query too, just be sure to select the database named "mysql" before you execute it.
INSERT INTO `user` VALUES ('localhost','metin2','*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','N','','','','',0,0,0,0,'',NULL);

2.: How to import the databases:

You can import them in the console:
mysql -u root -p
(It will ask for your root password, if it's empty then just press enter)
CREATE DATABASE database_name;
exit
mysql -u root -p database_name < /path/to/sql/file.sql
(It will ask again for your root password)

Or use navicat: right click to the connection -> new database, once you created then right click to it -> execute sql file and select the .sql file.
