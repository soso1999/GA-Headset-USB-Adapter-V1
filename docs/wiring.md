# Verdrahtung

Vor dem Löten stromlos prüfen, welcher Lötanschluss wirklich Tip, Ring bzw. Sleeve ist. Eine Buchse kann zusätzliche Schaltkontakte haben; deren Lage ist nicht universell. Einen passenden Stecker einstecken und jeden Kontakt bis zum Lötanschluss durchmessen.

| Von | Nach |
|---|---|
| USB +5 V | Step-Up IN+ |
| USB GND | gemeinsame Masse |
| Step-Up IN− und OUT− | gemeinsame Masse, sofern Modul nicht isoliert |
| Step-Up OUT+ | R1 22 Ω |
| anderes Ende R1 | C1 Plus, C2, Eingang R2 |
| C1 Minus und anderes Ende C2 | gemeinsame Masse |
| anderes Ende R2 220 Ω | J1 Ring und Eingang C3 |
| Ausgang C3 | R3 10 kΩ |
| anderes Ende R3 | identifizierter MIC-Signalanschluss der USB-Soundkarte |
| J1 Sleeve / Soundkarte MIC-GND | gemeinsame Masse |
| Soundkarte Kopfhörer L | R4 |
| Soundkarte Kopfhörer R | R5 |
| freie Enden R4 und R5 | gemeinsam auf J2 Tip |
| J2 Sleeve / Soundkarte Kopfhörer-GND | gemeinsame Masse |

J1 Tip und J2 Ring bleiben unbeschaltet. Bei einem Headset mit abweichender Belegung zuerst Herstellerunterlagen prüfen. MIC-IN auf USB-Soundkarten ist nicht einheitlich belegt: diese Anleitung legt dafür absichtlich keinen universellen 3,5-mm-Tip/Ring-Kontakt fest.

Mic-Signal und dazugehörige Masse dicht zusammen bzw. verdrillt führen. Step-Up und seine stromführenden Schleifen von der empfindlichen Mikrofonleitung fernhalten. Masseverbindungen kurz und zuverlässig ausführen. Kabeldurchführung mit mechanischer Zugentlastung versehen; der Schlitz allein ist keine Zugentlastung.
