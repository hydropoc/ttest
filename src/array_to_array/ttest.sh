records=$(mysql -Druser -uruser -pruser -se "SELECT temperature_water FROM sensordata WHERE id >= 1 AND id <= 1000")

Rscript ttest.R $records