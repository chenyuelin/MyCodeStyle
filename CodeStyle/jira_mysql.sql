create database test3 DEFAULT CHARACTER SET gb18030 COLLATE gb18030_chinese_ci;
CREATE DATABASE jiradb CHARACTER SET utf8 COLLATE utf8_bin;

GRANT ALL PRIVILEGES ON jiradb.* TO 'jira'@'localhost' IDENTIFIED by 'jira';

SET PASSWORD FOR 'developer'@'%' = PASSWORD("developer"); 

SHOW GRANTS FOR 'jira'@'localhost';

SHOW GRANTS;

flush privileges;
