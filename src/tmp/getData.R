library(RMySQL)
conn <- dbConnect(
    MySQL(),
    user = "ruser",
    password = "ruser",
    dbname = "ruser",
    host = "127.0.0.1"
)
# dbSendQuery(conn, "create table sensordata (sensor_eco2 float);")
# print(dbListTables(conn))

# dbSendQuery(conn, "insert into sensordata (sensor_eco2) values (3.4);")
# dbSendQuery(conn, "insert into sensordata (sensor_eco2) values (4.3);")
# dbSendQuery(conn, "insert into sensordata (sensor_eco2) values (2.5);")
# dbSendQuery(conn, "insert into sensordata (sensor_eco2) values (1.8);")
# dbSendQuery(conn, "insert into sensordata (sensor_eco2) values (8.6);")
# dbSendQuery(conn, "insert into sensordata (sensor_eco2) values (6.1);")
# dbSendQuery(conn, "insert into sensordata (sensor_eco2) values (1.4);")
# dbSendQuery(conn, "insert into sensordata (sensor_eco2) values (2.6);")

# print(dbListFields(conn, "sensordata"))

# dbSendQuery(conn, "drop table if exists some_table, some_other_table")

# dbWriteTable(conn, name="table_name", value=data.frame.name)

rs <- dbSendQuery(conn, "select * from sensordata")
data <- fetch(rs, n = -1)
print(data)

###### __n: rows; n=-1 => all rows__######
dbClearResult(dbListResults(conn)[[1]])
dbDisconnect(conn)
