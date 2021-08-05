---
title: monfetch
subtitle: Server-Monitoring im r/unixporn-Style
author: emily
date: August 2021
theme: metropolis
---

# Probleme

* Server-Monitoring meist sehr komplex & aufwändig\pause
* Erfordert viele Ressourcen:
  * Datenbankcluster
  * Data Sources
  * Datenaufbereiter
  * etc.\pause
* Meist Cloud-gebunden\pause
* Datensammler meist sehr schwergewichtig\pause
* Für Enterprise gut, für jedoch Homelab massiver Overkill

# Was unterscheidet monfetch davon?

* Sehr simple Architektur
  * Eigener Server/Client: Wochenendsprojekt\pause
* Keine Datenbank benötigt\pause
* Keine Cloud-Anbindung\pause
* Datensammler (Agent) sehr leichtgewichtig\pause
* Bonus: Server auch sehr leichtgewichtig

# Weitere Vorteile

* Generierte Seite sehr klein
  * HTML: 25 Zeilen
  * CSS: 89 Zeilen (nicht minified)
  * kein Javascript\pause
* Sehr übersichtlich
  * Daten im fetch-Stil, daher sehr leicht lesbar für *NIX-Nutzende\pause
* Freie Software: AGPL-3.0-or-later

# Überblick Architektur

* Server in Python3 (Flask), Agent in Shell\pause
* Agent sendet Daten mit cURL per POST\pause
* Daten größtenteils aus procfs/sysfs\pause
* Authentifizierung per Shared Secret in Request Path

# Erweiterungen Architektur

* WSGI-Server: uWSGI
  * Handlet Anfragen
  * Leichtgewichtig\pause
* systemd
  * Supervision
  * Nicht sonderlich leichtgewichtig, aber einfach ersetzbar\pause
* git
  * Versionsverwaltung
  * Macht Aktualisierung einfach
  * Recht leichtgewichtig

# Aufbau Demonstration

* Echtes, laufendes Beispiel\pause
* Installation Server mit uWSGI\pause
* Installation Client\pause
* Aufsetzen von systemd-Services

# Ende

Gibt es noch Fragen?
