# Run /project
* `docker-compose up --build`
* `docker exec -it mysql_server mysql -u user -p
`
    * `passwd`

# mySQL command
* `SHOW DATABASES;`
    * 看所有 DATABASE
* `USE {database name};`
    * 選擇 database 才能開始操作(select, insert...)
* `SHOW TABLES;`
    * 看所有 tables
* 其他操作都差不多(SELECT, INSERT ...)
* `DESCRIBE [db_name.]table_name;`
    * 查看 schema
    * ex, `DESCRIBE shopping.Parcels;`
* `exit`

