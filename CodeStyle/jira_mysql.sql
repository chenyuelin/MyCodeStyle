CREATE DATABASE jiradb CHARACTER SET utf8 COLLATE utf8_bin;

GRANT ALL PRIVILEGES ON jiradb.* TO 'jira'@'localhost' IDENTIFIED by 'jira';

SHOW GRANTS FOR 'jira'@'localhost';

SHOW GRANTS;

flush privileges;
