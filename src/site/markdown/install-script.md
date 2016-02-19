Automatische Konfiguration mit dem AKTIN-Installationsskript
===============================================

Unser Installationsskript wurde getestet mit Debian 8 und CentOS 7.
Wenn sie ein anderes System verwenden, müssen Sie die Skripte evtl. 
anpassen oder die enthaltenen Schritte manuell durchführen.

Um das Skript zu starten brauchen Sie einen Konsolenzugang zum Server.
Wechseln Sie zunächst zum Benutzer `root` (z.B. via `su -`). Anschließend
können Sie unser Paket unter folgendem Link herunterladen:

- https://cloudstorage.uni-oldenburg.de/index.php/s/Vj6eXgKNEGrsT5L

z.B. mit `# wget https://cloudstorage.uni-oldenburg.de/index.php/s/Vj6eXgKNEGrsT5L/download -O aktin.tar.gz`
Sollte auf dem Server noch keine Rootzertificate installiert sein (``), können Sie dem Befehl `--no-check-certificate` anhängen.

Wenn das Paket heruntergeladen ist, kann es entpackt werden mit `tar -xvfz aktin.tar.gz`, die Dateien werden dann automatisch nach `aktin-dwh-snapshot` gespeichert.

Die Installation benötigt Zugriff auf das Internet, speziell die jeweiligen Repositories und die Seide der Universität Oldenburg, um die benötigten Pakete herunterzuladen.

Unter Debian 8, starten Sie nun das Skript `aktin-dwh-snapshot/install_debian.sh`. Die Installation kann bis zu 20 Minuten dauern. 

Für CentOS 7, starten Sie das Skript `aktin-dwh-snapshot/install_centos.sh`. SELinux wird in dem Prozess deaktiviert. Sollte dies nicht erwünscht sein, müssen Sie vor der Ausführung SELinux dementsprechend anpassen und die Zeilen 43 und 44 in `aktin-dwh-snapshot/install_centos.sh` auskommentieren (mittels `#`). Nach der Installation müssen Sie den Server einmal neustarten, damit die Einstellungen für SELinux in Kraft treten. Nach dem Neustart müssen dann die Befehle `apachectl start` und `/opt/wildfly-9.0.2.Final/bin/standalone.sh -Djboss.http.port=9090 > /opt/aktin/logs/wildfly.log &` ausgeführt werden, damit Apache und Wildfly gestartet werden.

Test der Importschnittstelle
----------------------------
Noch zu schreiben..