### Commands
    mysql>CREATE USER 'hieunt'@'%' IDENTIFIED WITH mysql_native_password BY 'Abc123!@#';
    mysql>GRANT ALL ON *.* TO 'hieunt'@'%';
    mysql>REVOKE ALL ON *.* FROM 'hieunt'@'%';
    ---
    mysql>CREATE USER 'test'@'%' IDENTIFIED WITH mysql_native_password BY 'Abc123!@#';
    mysql>GRANT SELECT ON *.* TO 'test'@'%';