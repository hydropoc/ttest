# HP
![Logo](img/hydropoc.png)

Vorraussetzung: R Installieren: https://code.visualstudio.com/docs/languages/r
                rjson Packet installieren
                RMySQL Packet installieren

Rscript ttest.R [start] [end]

start: anfang ID
end: ende ID

z.B.:

Rscript ttest.R 1 1000

Es werden ein t-tests für jeden Sensor mit den Daten aus den Einträgen der ID 1 bis ID 1000 erstellt.

Ausgabe: Ein Array mit den t-tests im JSON Format. Jeweils ein Array-Index je Sensor.

Beispielausgabe:

Loading required package: DBI
[1] "{\"statistic\":{\"t\":0.936113410371988},\"parameter\":{\"df\":997.98335382368},\"p.value\":0.349441262360706,\"conf.int\":[-0.0372820759463322,0.10529847594633],\"estimate\":{\"mean of x\":13.0097578,\"mean of y\":12.9757496},\"null.value\":{\"difference in means\":0},\"stderr\":0.0363291451903085,\"alternative\":\"two.sided\",\"method\":\"Welch Two Sample t-test\",\"data.name\":\"temperature_water_head and temperature_water_tail\"}"
[2] "{\"statistic\":{\"t\":-0.978602305343815},\"parameter\":{\"df\":997.923337978418},\"p.value\":0.328013693151013,\"conf.int\":[-0.164794785323028,0.0551235853230268],\"estimate\":{\"mean of x\":23.4843156,\"mean of y\":23.5391512},\"null.value\":{\"difference in means\":0},\"stderr\":0.0560346115072098,\"alternative\":\"two.sided\",\"method\":\"Welch Two Sample t-test\",\"data.name\":\"temperature_air_head and temperature_air_tail\"}"
[3] "{\"statistic\":{\"t\":0.0881034191050717},\"parameter\":{\"df\":997.732229683006},\"p.value\":0.929812158665858,\"conf.int\":[-0.135697445535356,0.148455045535356],\"estimate\":{\"mean of x\":38.052883,\"mean of y\":38.0465042},\"null.value\":{\"difference in means\":0},\"stderr\":0.0724012764180345,\"alternative\":\"two.sided\",\"method\":\"Welch Two Sample t-test\",\"data.name\":\"humidity_head and humidity_tail\"}"
[4] "{\"statistic\":{\"t\":-1.0301997142693},\"parameter\":{\"df\":997.776994432436},\"p.value\":0.303165918597405,\"conf.int\":[-5.53077609535271,1.72277609535272],\"estimate\":{\"mean of x\":549.892,\"mean of y\":551.796},\"null.value\":{\"difference in means\":0},\"stderr\":1.84818533108454,\"alternative\":\"two.sided\",\"method\":\"Welch Two Sample t-test\",\"data.name\":\"co2_level_head and co2_level_tail\"}"
[5] "{\"statistic\":{\"t\":1.90409038799458},\"parameter\":{\"df\":997.943295418284},\"p.value\":0.0571857970045627,\"conf.int\":[-0.00299820439712345,0.198998204397123],\"estimate\":{\"mean of x\":6.09,\"mean of y\":5.992},\"null.value\":{\"difference in means\":0},\"stderr\":0.0514681449042003,\"alternative\":\"two.sided\",\"method\":\"Welch Two Sample t-test\",\"data.name\":\"ph_value_head and ph_value_tail\"}"
[6] "{\"statistic\":{\"t\":-1.2013525739975},\"parameter\":{\"df\":997.99979186429},\"p.value\":0.229899483267487,\"conf.int\":[-0.100070925546007,0.0240709255460076],\"estimate\":{\"mean of x\":2.478,\"mean of y\":2.516},\"null.value\":{\"difference in means\":0},\"stderr\":0.031631013927539,\"alternative\":\"two.sided\",\"method\":\"Welch Two Sample t-test\",\"data.name\":\"ec_value_head and ec_value_tail\"}"

[7] "{\"statistic\":{\"t\":\"NaN\"},\"parameter\":{\"df\":\"NaN\"},\"p.value\":\"NaN\",\"conf.int\":[\"NaN\",\"NaN\"],\"estimate\":{\"mean of x\":0,\"mean of y\":0},\"null.value\":{\"difference in means\":0},\"stderr\":0,\"alternative\":\"two.sided\",\"method\":\"Welch Two Sample t-test\",\"data.name\":\"swimmer_1_head and swimmer_1_tail\"}"

[8] "{\"statistic\":{\"t\":\"NaN\"},\"parameter\":{\"df\":\"NaN\"},\"p.value\":\"NaN\",\"conf.int\":[\"NaN\",\"NaN\"],\"estimate\":{\"mean of x\":0,\"mean of y\":0},\"null.value\":{\"difference in means\":0},\"stderr\":0,\"alternative\":\"two.sided\",\"method\":\"Welch Two Sample t-test\",\"data.name\":\"swimmer_2_head and swimmer_2_tail\"}"

[9] "{\"statistic\":{\"t\":0.0818279151417404},\"parameter\":{\"df\":996.563892955119},\"p.value\":0.934799988505144,\"conf.int\":[-3.44720874551354,3.7472087455135],\"estimate\":{\"mean of x\":949.446,\"mean of y\":949.296},\"null.value\":{\"difference in means\":0},\"stderr\":1.83311526072919,\"alternative\":\"two.sided\",\"method\":\"Welch Two Sample t-test\",\"data.name\":\"swimmer_3_head and swimmer_3_tail\"}"