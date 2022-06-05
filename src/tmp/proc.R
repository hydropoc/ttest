library(RMySQL)
get_t_test <- function(start, end) {
    conn <- dbConnect(
        MySQL(),
        user = "ruser",
        password = "ruser",
        dbname = "ruser",
        host = "127.0.0.1"
    )

    tryCatch(
        print("try"),

        expr = {
            # temperature_water float NOT NULL,
            sql <- paste("SELECT temperature_water from sensordata WHERE id >= '", start, "' AND id <= '", end, "';")
            rs <- dbSendQuery(conn, sql)
            ###### __n: rows; n=-1 => all rows__######
            temperature_water <- fetch(rs, n = -1)
            temperature_water_head <- head(temperature_water, n = (dbGetRowCount(rs)) / 2) # c(5, 6, 7)
            temperature_water_tail <- tail(temperature_water, n = (dbGetRowCount(rs)) / 2) # c(2, 3, 4)
            temperature_water_t_test <- t.test(temperature_water_head, temperature_water_tail)
            dbClearResult(dbListResults(conn)[[1]])
            sql <- paste("insert into ttest (ttest) values ('", temperature_water_t_test, "');")
            rs <- dbSendQuery(conn, sql)
            print("HALLO")
            dbClearResult(dbListResults(conn)[[1]])
            rs <- dbSendQuery(con, "SELECT LAST_INSERT_ID();")
            id <- fetch(rs)
            print(id)
            sql <- paste("insert into sensordata_ttest (ttest_id, sensor_name, start_id, end_id) values ('",
                id, "', 'temperature_water', ", start, "', '", end, "');")
            print("FERTIG")

            #     temperature_air float NOT NULL,
            sql <- paste("select temperature_air from sensordata WHERE id >= '", start, "' AND id <= '", end, "';")
            rs <- dbSendQuery(conn, sql)
            temperature_air <- fetch(rs, n = -1)
            temperature_air_head <- head(temperature_air, n = (dbGetRowCount(rs)) / 2) # c(5, 6, 7)
            temperature_air_tail <- tail(temperature_air, n = (dbGetRowCount(rs)) / 2) # c(2, 3, 4)
            temperature_air_t_test <- t.test(temperature_air_head, temperature_air_tail)
            dbClearResult(dbListResults(conn)[[1]])
            sql <- paste("insert into ttest (ttest) values ('", temperature_air_t_test, "');")
            rs <- dbSendQuery(conn, sql)
            id <- dbGetQuery(con, "SELECT LAST_INSERT_ID();")
            dbClearResult(dbListResults(conn)[[1]])
            sql <- paste("insert into sensordata_ttest (ttest_id, sensor_name, start_id, end_id) values ('",
                id, "', 'temperature_air', ", start, "', '", end, "');")

            #     humidity float NOT NULL,
            sql <- paste("select humidity from sensordata WHERE id >= '", start, "' AND id <= '", end, "';")
            rs <- dbSendQuery(conn, sql)
            humidity <- fetch(rs, n = -1)
            humidity_head <- head(humidity, n = (dbGetRowCount(rs)) / 2) # c(5, 6, 7)
            humidity_tail <- tail(humidity, n = (dbGetRowCount(rs)) / 2) # c(2, 3, 4)
            humidity_t_test <- t.test(humidity_head, humidity_tail)
            dbClearResult(dbListResults(conn)[[1]])
            sql <- paste("insert into ttest (ttest) values ('", humidity_t_test, "');")
            rs <- dbSendQuery(conn, sql)
            id <- dbGetQuery(con, "SELECT LAST_INSERT_ID();")
            dbClearResult(dbListResults(conn)[[1]])
            sql <- paste("insert into sensordata_ttest (ttest_id, sensor_name, start_id, end_id) values ('",
                id, "', 'humidity', ", start, "', '", end, "');")

            #     co2_level float NOT NULL,
            sql <- paste("select co2_level from sensordata WHERE id >= '", start, "' AND id <= '", end, "';")
            rs <- dbSendQuery(conn, sql)
            co2_level <- fetch(rs, n = -1)
            co2_level_head <- head(co2_level, n = (dbGetRowCount(rs)) / 2) # c(5, 6, 7)
            co2_level_tail <- tail(co2_level, n = (dbGetRowCount(rs)) / 2) # c(2, 3, 4)
            co2_level_t_test <- t.test(co2_level_head, co2_level_tail)
            dbClearResult(dbListResults(conn)[[1]])
            sql <- paste("insert into ttest (ttest) values ('", co2_level_t_test, "');")
            rs <- dbSendQuery(conn, sql)
            id <- dbGetQuery(con, "SELECT LAST_INSERT_ID();")
            dbClearResult(dbListResults(conn)[[1]])
            sql <- paste("insert into sensordata_ttest (ttest_id, sensor_name, start_id, end_id) values ('",
                id, "', 'co2_level', ", start, "', '", end, "');")

            #     ph_value float NOT NULL,
            sql <- paste("select ph_value from sensordata WHERE id >= '", start, "' AND id <= '", end, "';")
            rs <- dbSendQuery(conn, sql)
            ph_value <- fetch(rs, n = -1)
            ph_value_head <- head(ph_value, n = (dbGetRowCount(rs)) / 2) # c(5, 6, 7)
            ph_value_tail <- tail(ph_value, n = (dbGetRowCount(rs)) / 2) # c(2, 3, 4)
            ph_value_t_test <- t.test(ph_value_head, ph_value_tail)
            dbClearResult(dbListResults(conn)[[1]])
            sql <- paste("insert into ttest (ttest) values ('", ph_value_t_test, "');")
            rs <- dbSendQuery(conn, sql)
            id <- dbGetQuery(con, "SELECT LAST_INSERT_ID();")
            dbClearResult(dbListResults(conn)[[1]])
            sql <- paste("insert into sensordata_ttest (ttest_id, sensor_name, start_id, end_id) values ('",
                id, "', 'ph_value', ", start, "', '", end, "');")

            #     ec_value float NOT NULL,
            sql <- paste("select ec_value from sensordata WHERE id >= '", start, "' AND id <= '", end, "';")
            rs <- dbSendQuery(conn, sql)
            ec_value <- fetch(rs, n = -1)
            ec_value_head <- head(ec_value, n = (dbGetRowCount(rs)) / 2) # c(5, 6, 7)
            ec_value_tail <- tail(ec_value, n = (dbGetRowCount(rs)) / 2) # c(2, 3, 4)
            ec_value_t_test <- t.test(ec_value_head, ec_value_tail)
            dbClearResult(dbListResults(conn)[[1]])
            sql <- paste("insert into ttest (ttest) values ('", ec_value_t_test, "');")
            rs <- dbSendQuery(conn, sql)
            id <- dbGetQuery(con, "SELECT LAST_INSERT_ID();")
            dbClearResult(dbListResults(conn)[[1]])
            sql <- paste("insert into sensordata_ttest (ttest_id, sensor_name, start_id, end_id) values ('",
                id, "', 'ec_value', ", start, "', '", end, "');")

            #     swimmer_1 int NOT NULL,
            sql <- paste("select swimmer_1 from sensordata WHERE id >= '", start, "' AND id <= '", end, "';")
            rs <- dbSendQuery(conn, sql)
            swimmer_1 <- fetch(rs, n = -1)
            swimmer_1_head <- head(swimmer_1, n = (dbGetRowCount(rs)) / 2) # c(5, 6, 7)
            swimmer_1_tail <- tail(swimmer_1, n = (dbGetRowCount(rs)) / 2) # c(2, 3, 4)
            swimmer_1_t_test <- t.test(swimmer_1_head, swimmer_1_tail)
            dbClearResult(dbListResults(conn)[[1]])
            sql <- paste("insert into ttest (ttest) values ('", swimmer_1_t_test, "');")
            rs <- dbSendQuery(conn, sql)
            id <- dbGetQuery(con, "SELECT LAST_INSERT_ID();")
            dbClearResult(dbListResults(conn)[[1]])
            sql <- paste("insert into sensordata_ttest (ttest_id, sensor_name, start_id, end_id) values ('",
                id, "', 'swimmer_1', ", start, "', '", end, "');")

            #     swimmer_2 int NOT NULL,
            sql <- paste("select swimmer_2 from sensordata WHERE id >= '", start, "' AND id <= '", end, "';")
            rs <- dbSendQuery(conn, sql)
            swimmer_2 <- fetch(rs, n = -1)
            swimmer_2_head <- head(swimmer_2, n = (dbGetRowCount(rs)) / 2) # c(5, 6, 7)
            swimmer_2_tail <- tail(swimmer_2, n = (dbGetRowCount(rs)) / 2) # c(2, 3, 4)
            swimmer_2_t_test <- t.test(swimmer_2_head, swimmer_2_tail)
            dbClearResult(dbListResults(conn)[[1]])
            sql <- paste("insert into ttest (ttest) values ('", swimmer_2_t_test, "');")
            rs <- dbSendQuery(conn, sql)
            id <- dbGetQuery(con, "SELECT LAST_INSERT_ID();")
            dbClearResult(dbListResults(conn)[[1]])
            sql <- paste("insert into sensordata_ttest (ttest_id, sensor_name, start_id, end_id) values ('",
                id, "', 'swimmer_2', ", start, "', '", end, "');")

            #     swimmer_3 int NOT NULL,
            sql <- paste("select swimmer_3 from sensordata WHERE id >= '", start, "' AND id <= '", end, "';")
            rs <- dbSendQuery(conn, sql)
            swimmer_3 <- fetch(rs, n = -1)
            swimmer_3_head <- head(swimmer_3, n = (dbGetRowCount(rs)) / 2) # c(5, 6, 7)
            swimmer_3_tail <- tail(swimmer_3, n = (dbGetRowCount(rs)) / 2) # c(2, 3, 4)
            swimmer_3_t_test <- t.test(swimmer_3_head, swimmer_3_tail)
            dbClearResult(dbListResults(conn)[[1]])
            sql <- paste("insert into ttest (ttest) values ('", swimmer_3_t_test, "');")
            rs <- dbSendQuery(conn, sql)
            id <- dbGetQuery(con, "SELECT LAST_INSERT_ID();")
            dbClearResult(dbListResults(conn)[[1]])
            sql <- paste("insert into sensordata_ttest (ttest_id, sensor_name, start_id, end_id) values ('",
                id, "', 'swimmer_3', ", start, "', '", end, "');")
        },
        error = function(e) {
            print(parse("error: ", e))
        },
        warning = function(w) {
            # print(parse("warning: ", w))
            print("warning")
        },
        finally = {
            print("finally")
        }
    )
    dbDisconnect(conn)
    # return(temperature_water_t_test)
}
