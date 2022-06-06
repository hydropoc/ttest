records1=$(mysql -Druser -uruser -pruser -se "SELECT temperature_water FROM sensordata WHERE id BETWEEN 1 AND 500")

records2=$(mysql -Druser -uruser -pruser -se "SELECT temperature_water FROM sensordata WHERE id BETWEEN 501 AND 1000")

Rscript ttest2.R $records1 $records2