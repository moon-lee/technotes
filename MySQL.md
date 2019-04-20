## Reset root password

1. Stop Service
2. Create re-set password and save as mysql-init.txt

    * ALTER USER 'root'@'localhost' IDENTIFIED BY 'Password';
3. In Console, 

    * mysqld --defaults-file="C:\\ProgramData\\MySQL\\MySQL Server 8.0\\my.ini"
             --init-file=c:\\mysql-init.txt

             C:\ProgramData\MySQL\MySQL Server 8.0
             E:\Documents\MyProjects\technotes\mysql-init.txt

## Create user with mysql_native_password

    ```
        CREATE USER 'newuser'@'localhost' IDENTIFIED WITH mysql_native_password BY 'password' `

        create user 'wom'@'localhost' identified by 'password';

        flush privileges;

        grant all on myweb.* to 'wom'@'localhost';
    ```
## Export database

    ` mysqldump -u root -p myweb > /home/moon/myData/mywebci/conf/dump20190420.sql `
