# Aufbau und Inbetriebnahme

1. Zuerst die offenen Werte in [verification.md](verification.md) anhand des vorhandenen Geräts klären. Original-STLs verwenden; Einsatz- und Kabelmaße kontrollieren.
2. USB-Soundkarte einzeln am PC testen. MIC-Signal, MIC-Masse, Kopfhörer-L/R/GND und mögliche eigene Mikrofon-Bias-Spannung identifizieren. Keine Versorgung von USB-Datenleitungen abgreifen. Bei USB-C keinen beliebigen USB-C-Stecker ohne erforderliche Beschaltung als Stromquelle verwenden.
3. Step-Up ohne Headset einstellen und OUT+ gegen OUT− messen: Ziel 12 V. Ein- und Ausschaltverhalten sowie Stabilität unter Last prüfen.
4. Filter und Mikrofonzweig nach Schaltplan aufbauen. Beim Elko C1 muss Plus zur gefilterten Versorgung und Minus zu GND zeigen. Folien-C3 ist unpolarisiert; einen unbekannten Elektrolytkondensator nicht ungeprüft einsetzen.
5. Mono-Mischer aufbauen. L/R ausschließlich über je einen Widerstand zusammenführen. Alle unbenutzten Kontakte und blanken Leitungen isolieren.
6. Stromlos Kurzschlüsse, Pinbelegung und Masse-Durchgang prüfen. Keine niederohmige Verbindung von +12 V zum MIC-IN oder Kopfhörerausgang.
7. Mit eingeschalteter Versorgung, aber ohne Headset, Filterspannung und Mikrofon-Ring messen. Bei unbeschaltetem Ausgang nach C3 kann dieser schweben: zur DC-Prüfung einen geeigneten Widerstand nach GND verwenden. Im stationären Zustand darf dort keine externe 12-V-Gleichspannung anliegen. Das prüft nicht die Einschalttransienten und ersetzt keine Signalmessung.
8. Die eigene Bias-Spannung der angeschlossenen Soundkarte kann hinter C3 messbar bleiben. Gegen ihre vorher gemessene Grundspannung vergleichen. Bei auffälliger Spannung, Hitze oder instabiler Versorgung sofort trennen.
9. Headset nur bei abgeschalteter Versorgung einstecken; beim Einstecken können Klinkenkontakte kurzzeitig benachbarte Kontakte verbinden. Headset auf Mono, Lautstärke zunächst niedrig.
10. Versorgung einschalten und Spannung am belasteten Mikrofon-Ring messen. Für Zulu 4 muss sie im Herstellerbereich liegen. PC-Wiedergabe links/rechts getrennt testen: beide Kanäle sollen in beiden Ohrmuscheln hörbar sein. Mikrofonaufnahme abhören und Eingangspegel ohne Clipping einstellen.
11. ANR separat über die Headset-Batterien einschalten. PC-/GPU-Last und verschiedene Abstände testen. Bei stabilem Betrieb Platine isoliert befestigen, Kabel entlasten und Deckel schließen.

V1 enthält kein analoges Direct Monitoring. Software-Monitoring kann hörbare Verzögerung verursachen. Es wird nur bei Bedarf am PC eingeschaltet.

Diese Prüfung wurde für die Dokumentation formuliert; sie ist kein bereits durchgeführtes Messprotokoll des Originalgeräts.
