Update des lokalen DWH von 0.5 auf 0.6
======================================

Diese Informationen richten sich an die Server-Administratoren, die für die Einrichtung bzw. Wartung der Linux-Server in den Kliniken zuständig sind, auf denen das AKTIN-Datawarehouse läuft.

Skriptbasiertes Update für Debian
---------------------------------
Für laufende DWH auf Debian Servern stellen wir eine Update-Skript bereit, zu finden unter [Debian Update Paket](https://cloudstorage.uni-oldenburg.de/index.php/s/NJTO2c65JrPWJV8/download). Das Paket auf dem Server entpacken und mit Admin-Rechten das Skript `aktin_dwh_update_0.6.sh` ausführen. 

```
wget https://cloudstorage.uni-oldenburg.de/index.php/s/NJTO2c65JrPWJV8/download -O dwh-update.zip
unzip dwh-update.zip
cd dwh-update
sudo ./aktin_dwh_update_0.6.sh
```
Eventuell muss man bei der Skriptdatei die Userrechte anpassen, z.B. mit `chmod +x aktin_dwh_update_0.6.sh`.

Manuelles Update für Debian, CentOS oder andere Betriebssysteme
---------------------------------------------------------------
### Löschen der alten Software
Die alte Version muss aus dem Wildfly Service entfernt werden. Dies kann man z.B. mit den folgenden Befehlen erreichen, wobei `$WILDFLY_HOME` auf den Ordner verlinkt, wo beim ersten Installation Wildfly eingerichtet wurde, z.B. `WILDFLY_HOME=/opt/wildfly-9.0.2.Final`

```
if [ -f "$WILDFLY_HOME/standalone/deployments/dwh-j2ee-0.5-SNAPSHOT.ear" ] && [ ! -f "$WILDFLY_HOME/standalone/deployments/dwh-j2ee-0.5-SNAPSHOT.ear.undeployed" ]; then 
	sudo $WILDFLY_HOME/bin/jboss-cli.sh -c --command="undeploy --name=dwh-j2ee-0.5-SNAPSHOT.ear"
    echo "Undeployment durchgeführt."
else 
    echo "Undeployment und SQL Skript übersprungen, da keine alte Version gefunden oder bereits undeployed"
fi
```
Nach dem Undeploy können Sie die Dateien `$WILDFLY_HOME/standalone/deployments/dwh-j2ee-0.5-SNAPSHOT.ear` und `$WILDFLY_HOME/standalone/deployments/dwh-j2ee-0.5-SNAPSHOT.ear.undeployed` löschen. Das Löschen hat keine Auswirkung.
### Einbinden der neuen Software
Zuerst muss die neue Softwaredatei auf den Server geladen werden. Die benötigte EAR-Datei finden Sie unter [Neue EAR Release](https://cloudstorage.uni-oldenburg.de/index.php/s/OmnbLd7iB4VXLEM/download). 

```
wget https://cloudstorage.uni-oldenburg.de/index.php/s/OmnbLd7iB4VXLEM/download -O dwh-j2ee-0.6-SNAPSHOT.ear
```
Danach kann man die neue EAR-Datei in das Deploymentverzeichnis unter `$WILDFLY_HOME/standalone/deployments` laden. `$install_root` ist hier der Pfad zu der heruntergeladenen Datei, z.B. die aktuelle Verzeichnis: `install_root=.`

```
if [ ! -f "$WILDFLY_HOME/standalone/deployments/dwh-j2ee-0.6-SNAPSHOT.ear" ]; then 
	sudo cp $install_root/dwh-j2ee-0.6-SNAPSHOT.ear $WILDFLY_HOME/standalone/deployments/dwh-j2ee-0.6-SNAPSHOT.ear   
    echo "Kopieren der Datei $install_root/dwh-j2ee-0.6-SNAPSHOT.ear nach $WILDFLY_HOME/standalone/deployments/ erfolgreich."
else 
    echo "Die Datei wurde nicht kopiert."
fi
```
Es ist bereits die EAR Datei im Deploymentverzeichnis vorhanden. Wenn Sie die Datei neuladen möchten, führen Sie bitte ein Undeploy durch 

```
$WILDFLY_HOME/bin/jboss-cli.sh -c --command="undeploy --name=dwh-j2ee-0.6-SNAPSHOT.ear
```
und löschen anschließend die Dateien `$WILDFLY_HOME/standalone/deployments/dwh-j2ee-0.6-SNAPSHOT.ear` sowie `$WILDFLY_HOME/standalone/deployments/dwh-j2ee-0.6-SNAPSHOT.ear.undeployed`, wobei unbedingt beide Dateien gelöscht werden müssen.

```
sudo rm $WILDFLY_HOME/standalone/deployments/dwh-j2ee-0.6-SNAPSHOT.ear $WILDFLY_HOME/standalone/deployments/dwh-j2ee-0.6-SNAPSHOT.ear.undeployed
```
Nach dem Löschen können Sie die erneut die `dwh-j2ee-0.6-SNAPSHOT.ear` Datei hineinkopieren.

### Datenbank-Reset
Für das Zurücksetzen der Postgres-Datenbank kann man über die PSQL Konsole nagivieren. Dazu loggt man sich auf den User mit den benötigten Rechten um, z.B. `postgres`, und startet dann die `psql` Konsole

```
su postgres
psql
```
In der `psql` kann man dann folgende Befehle zum Leeren der vier Tabellen ausführen (Achtung, es kommt keine weitere Abfrage!):

```
\connect i2b2
TRUNCATE i2b2crcdata.observation_fact, i2b2crcdata.patient_dimension, i2b2crcdata.patient_mapping, i2b2crcdata.encounter_mapping;
```
Damit ist das DWH bereit, neue Daten zu empfangen.


## SMTP Einrichtung (Optional)

Als Vorbereitung für spätere Funktionen kann man bereits die SMTP EMail Funktion einrichten. Dazu benötigt man eine (in Intranetz verfügbare) Email.

### Voraussetzung für die Einrichtung des E-Mail Dienstes

Das AKTIN-DWH verwendet keinen eigenen Mail-Server. Voraussetzung ist also ein Mail-Server, der (ggf. im Intranet) vom AKTIN-Server erreichbar ist und eine E-Mail-Adresse, die der Server verwenden kann um per SMTP Informations-Mails zu versenden. Sinnvoll wäre dazu eine dedizierte AKTIN-Service-Adresse einzurichten.

Um SMTP einzurichten, sollte man die folgenden Befehlen in der Konsole eingeben, wobei `$WILDFLY_HOME` wieder auf den Wildfly Ordner verlinkt und in den Variablen `smtphost`, `smtpport`, `smtpuser`, `smtppass` sollten die Einstellungen eingetragen werden. Folgende Befehle sollten als `root` ausgeführt werden.

```
smtphost=smtp.aktin.com
smtpport=465
smtpuser=test.user@aktin.com
smtppass=secure3Password
usessl=true

sessionname="AktinMailSession"
jndiname="java:jboss/mail/AktinMailSession"
smtpbind="aktin-smtp-binding"

$WILDFLY_HOME/bin/jboss-cli.sh -c "/socket-binding-group=standard-sockets/remote-destination-outbound-socket-binding=$smtpbind:add(host=$smtphost, port=$smtpport)"
$WILDFLY_HOME/bin/jboss-cli.sh -c "/subsystem=mail/mail-session=$sessionname:add(jndi-name=$jndiname)"
$WILDFLY_HOME/bin/jboss-cli.sh -c "/subsystem=mail/mail-session=$sessionname/server=smtp:add(outbound-socket-binding-ref=$smtpbind, username=$smtpuser, password=$smtppass, ssl=$usessl)"
$WILDFLY_HOME/bin/jboss-cli.sh -c ":reload"
```
Mit der letzten Zeile werden alle Wildfly Dienster herunter gefahren und neugestartet. Nach einiger Zeit sind die Funktionen wieder wie gewohnt aufrufbar sein. 
