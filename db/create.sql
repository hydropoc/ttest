CREATE TABLE sensordata (
    id INT NOT NULL AUTO_INCREMENT, 
    temperature_water float NOT NULL, 
    temperature_air float NOT NULL, 
    humidity float NOT NULL, 
    co2_level float NOT NULL, 
    ph_value float NOT NULL, 
    ec_value float NOT NULL, 
    swimmer_1 int NOT NULL, 
    swimmer_2 int NOT NULL, 
    swimmer_3 int NOT NULL,
    timestamp bigint NOT NULL,
    PRIMARY KEY (id)
    );