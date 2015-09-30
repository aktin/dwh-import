Java demo server Anwendung
--------------------------

Die Demo Server Anwendung kann verwendet werden um
die AKTIN CDA-Schnittstellen zu testen.

Das Softwarepaket kann als ZIP-Archiv heruntergeladen
werden unter http://aktin.org/software/xxx .

Vorausetzungen
--------------

Die Demosoftware erfordert ein Java 8 Runtime Environment.


Server starten
--------------
Der Demo-Server kann folgendermaßen gestartet werden:

1. Mit der Windows-Konsole in den Ordner wechseln,
   in dem die Zipdatei entpackt wurde.
   
2. In der Konsole den Befehl `java-server.bat` ausführen.

3. Der Server zeigt in der Standardausgabe zwei URLs an,
   die verwendet werden können um die FHIR und XDS.b-
   Schnittstellen zu testen.
   

Daten an die FHIR-Schnittstelle schicken
----------------------------------------
Um CDA-Dateien an die FHIR-Schnittstelle zu schicken,
gibt es mit dem Softwarepaket zwei Möglichkeiten.

1. Mit der Konsole die Java-Anwendung `java-client-fhir.bat`
   starten. Als Argumente werden die FHIR-URL erwartet (aus Serverkonsole
   kopieren) sowie ein Dateiname eines CDA-Dokuments.

2. Mit dem Programm `curl`. Das Programm ist in den meisten 
   Linux-Distributionen verfügbar, muss unter Windows jedoch 
   separat installiert werden. Anschließen können die Skripte
   `curl-statusonly.bat` und `curl-response.bat` verwendet 
   werden.
   
Verwendung in MacOS X und Linux
--------------------------------
Sofern ein Java 8 Runtime Environment (JRE) installiert ist,
kann die Software problemlos in MacOS X und Linux verwendet
werden.

Aktuell sind die bat-Skripte für Windows vorbereitet. Die
entsprechenden Befehle können aber in den bat-Skripten
nachgelesen werden.