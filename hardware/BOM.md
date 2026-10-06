# Stückliste – GA Headset USB Adapter V1

Diese Stückliste beschreibt die in Version 1 verwendeten Bauteile des GA-Headset-USB-Adapters.

| Referenz | Menge | Bauteil | Wert / Typ | Status / Hinweis |
|---|---:|---|---|---|
| U1 | 1 | USB-Soundkarte | MIC-IN + Stereo-Kopfhörerausgang | DollaTek Free Drive USB-Soundkarte; Pinbelegung und Eingangsbias prüfen |
| U2 | 1 | Step-Up | 5 V auf 12 V | GTIWUNG Mini Boost Modul 3,7 V bis 12 V; Ausgang vor Anschluss auf 12 V einstellen |
| R1 | 1 | Widerstand | 22 Ω | V1-Wert bestätigt; Bestandteil des Versorgungsfilters |
| R2 | 1 | Bias-Widerstand | 220 Ω | V1-Wert bestätigt; Mikrofon-Bias |
| R3 | 1 | Signal-Serienwiderstand | 10 kΩ | V1-Wert bestätigt; zum Mikrofoneingang der USB-Soundkarte |
| C1 | 1 | Filter-Elko | 470 µF / mindestens 25 V | Versorgungsfilter; Polarität beachten |
| C2 | 1 | Filter-Keramikkondensator | 100 nF / mindestens 25 V | HF-Entstörung der Versorgung |
| C3 | 1 | Koppelkondensator | 1 µF WIMA-Folienkondensator | Gleichspannungsentkopplung des Mikrofonsignals |
| J1 | 1 | GA-Mikrofonbuchse | PJ-068 | Ring = Mikrofon-Bias + Signal; Sleeve = GND; Tip unbenutzt |
| J2 | 1 | Kopfhörerbuchse | Neutrik NMJ3HF-S / 6,35 mm | Tip = linker Audiokanal; Ring = rechter Audiokanal; Sleeve = GND |
| PCB | 1 | Lochrasterplatine | 60 × 40 mm | Die Größe kann warierieren |
| CASE | 1 | Gehäuse + Deckel | Original-STLs | 3D-gedrucktes Gehäuse |
| M3 | 4 | Heat-Set-Inserts + Schrauben | M3 | Entwurf ca. 4,2-mm-Bohrung / ca. 5-mm-Insert |
| MISC | 1 | Kabel, Isolierung, Zugentlastung | nach Aufbau | USB-Leiter nicht allein nach Kabelfarbe zuordnen |
| CBL1 | 1 | USB-Anschlusskabel | USB-A-Stecker auf offenes Kabelende | Für Datenverbindung und 5-V-Versorgung; mindestens 4-adriges USB-2.0-Kabel; Adern vor Anschluss durchmessen und nicht allein nach Farbe zuordnen |
## Mikrofon-Signalweg

USB 5 V → Step-Up auf 12 V → 22-Ω-Filterwiderstand → 470-µF-Elko + 100-nF-Kondensator → 220-Ω-Bias-Widerstand → Ring der PJ-068-Mikrofonbuchse.

Das Mikrofonsignal wird am Ring abgegriffen und über den 1-µF-Koppelkondensator sowie den 10-kΩ-Serienwiderstand zum Mikrofoneingang der USB-Soundkarte geführt.

- PJ-068 Ring: Mikrofon-Bias + Audiosignal
- PJ-068 Sleeve: Ground
- PJ-068 Tip: nicht verwendet

## Kopfhörerausgang

Der Kopfhörerausgang wird **stereo** betrieben.

- Tip: linker Audiokanal
- Ring: rechter Audiokanal
- Sleeve: Ground

Eine zusätzliche Hardware-Mono-Mischung mit Widerständen wird in Version 1 nicht verwendet.

## Hinweise

Vor dem Anschluss des Headsets muss der Step-Up-Wandler auf etwa 12 V Ausgangsspannung eingestellt und mit einem Multimeter kontrolliert werden.

Alle Masseverbindungen der Schaltung verwenden einen gemeinsamen Ground.

Der Adapter ist ausschließlich für PC- und Simulatorbetrieb vorgesehen und nicht als zertifiziertes Luftfahrtgerät ausgelegt.
