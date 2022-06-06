records=$(mysql -Druser -uruser -pruser -se "SELECT temperature_water FROM sensordata")
Rscript ttest.R $records