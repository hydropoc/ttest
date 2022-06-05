DELIMITER $$
CREATE PROCEDURE generate_data()
BEGIN
  DECLARE i INT DEFAULT 0;
  WHILE i < 1000 DO
    INSERT INTO sensordata (temperature_water, temperature_air, humidity, co2_level, ph_value, ec_value, swimmer_1, swimmer_2, swimmer_3, timestamp) 
    VALUES (
        RAND()*(14-12)+12, 
        RAND()*(25-22)+22, 
        RAND()*(40-36)+36,
        FLOOR(RAND()*(600-500)+500),
        FLOOR(RAND()*(8-5)+5),
        FLOOR(RAND()*(4-2)+2),
        0,
        0,
        FLOOR(RAND()*(1000-900)+900),
        1
    );
    SET i = i + 1;
  END WHILE;
END$$
DELIMITER ;

CALL generate_data();