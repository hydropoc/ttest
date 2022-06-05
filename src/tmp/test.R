library(RMySQL)

conn <- dbConnect(
        MySQL(),
        user = "ruser",
        password = "ruser",
        dbname = "ruser",
        host = "127.0.0.1"
)

sql <- paste("SELECT temperature_water from sensordata WHERE id >= 1 AND id <= 1000;")
rs <- dbSendQuery(conn, sql)
            ###### __n: rows; n=-1 => all rows__######
temperature_water <- fetch(rs, n = -1)

temperature_water_head <- head(temperature_water, n = (dbGetRowCount(rs)) / 2) # c(5, 6, 7)
temperature_water_tail <- tail(temperature_water, n = (dbGetRowCount(rs)) / 2) # c(2, 3, 4)
temperature_water_t_test <- t.test(temperature_water_head, temperature_water_tail)
dbClearResult(dbListResults(conn)[[1]])

dbDisconnect(conn)