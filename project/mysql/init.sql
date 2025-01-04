CREATE DATABASE IF NOT EXISTS shopping;

USE shopping;

CREATE USER IF NOT EXISTS 'user'@'%' IDENTIFIED BY 'passwd';
GRANT ALL PRIVILEGES ON shopping.* TO 'user'@'%';
FLUSH PRIVILEGES;

