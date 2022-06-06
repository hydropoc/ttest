# T-Test
****
## Inhalt
- [T-Test](#t-test)
  - [Inhalt](#inhalt)
  - [Info](#info)
    - [Script](#script)
    - [Daten](#daten)
    - [Funktion](#funktion)
  - [Vorraussetzungen](#vorraussetzungen)
  - [Methode 1: Daten als Argument](#methode-1-daten-als-argument)
    - [Eine Datenmenge als Argument](#eine-datenmenge-als-argument)
    - [Zwei Datenmengen als Argumente](#zwei-datenmengen-als-argumente)
    - [Array](#array)
    - [JSON](#json)
    - [String](#string)
  - [Methode 2: Reichweite als Argumente](#methode-2-reichweite-als-argumente)
    - [Erläuterung](#erläuterung)
    - [Beispielausgabe:](#beispielausgabe)
  - [Autoren](#autoren)
****
## Info
### Script
Getestet auf Ubuntu 20.04 mit R version 4.2.0
### Daten
Der T-Test erwartet zwei Datenmengen. Das Ergebnis ist ein mathematischer Vergleich dieser Mengen.
### Funktion
  [R Docu T-Test](https://www.rdocumentation.org/packages/stats/versions/3.6.2/topics/t.test)
  Die Funktion wird mit den beiden Datenmengen als Argumente aufgerufen.
  ```
  t.test(sensordata1, sensordata2)
  ```  
****
## Vorraussetzungen
- R Installieren: [R VsCode Docs](https://code.visualstudio.com/docs/languages/r), [r-project.org](https://cloud.r-project.org/)
- Optional:
  - rjson Packet (Methode 1: JSON)
  - RMySQL Packet (Methode 2)
****
## Methode 1: Daten als Argument
### Eine Datenmenge als Argument
- Daten eines Sensors laden z.b: 1000 Einträge
- Rscript ausfüren:
  - ttest.R: Das Script übergibt dem T-Test jeweils die hälfte der Eingangsdaten als Argumente
```
$ myvar=$(mysql -D$MYDB -u$MYUSER -p$MYPASS -se "SELECT sensor FROM sensordata")
$ Rscript ttest.R $myvar
```
### Zwei Datenmengen als Argumente
- Zwei Datenmengen eines Sensors laden
- Rscript ausfüren:
  - ttest2.R: Das Script übergibt dem T-Test die beiden Eingangsdaten als Argumente
```
$ myvar1=$(mysql -D$MYDB -u$MYUSER -p$MYPASS -se "SELECT sensor FROM sensordata WHERE id BETWEEN 1 AND 500")
$ myvar2=$(mysql -D$MYDB -u$MYUSER -p$MYPASS -se "SELECT sensor FROM sensordata WHERE id BETWEEN 501 AND 1000")
$ Rscript ttest2.R $myvar1 $myvar2
```

### Array 
```
/src/array_to_array/
```
- Input: Datenmenge als Array
- Output: T-Test Ergebnis als Array
### JSON
```
/src/array_to_json/
```
- Input: Datenmenge als Array
- Output: T-Test Ergebnis als JSON
### String
```
/src/array_to_string/
```
- Input: Datenmenge als Array
- Output: T-Test Ergebnis als String
****
## Methode 2: Reichweite als Argumente
**Achtung: Datenbank MySql**
- Rscript ausfüren
```
/src/self_loading/

$ Rscript ttest.R $startID $endID
```
### Erläuterung
Es wird ein T-Test für jeden Sensor mit den Daten der Einträge aus der Menge (startID bis endID) erstellt.
  Das Script übergibt dem T-Test jeweils **die hälfte der Eingangsdaten** als Argument.
- Input: Erste und letzte ID der Datenmenge
- Output: Ein Array mit den T-Test Ergebnissen im JSON Format



### Beispielausgabe:
```
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
```
****
## Autoren
* **Deon Gulbinat** - [Profile]()
* **Kevin Müller** - [Profile]()
* **Jan Breninek** - [Profile]()
* **Emanuel Kass** - [Profile]()
* **René Schäfer** - [Profile]()
* **Milan Kovacevic** - [GitHub](https://github.com/miko41)