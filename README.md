# GA Headset USB Adapter — Dual-GA Aviation Headset to USB for Flight Simulators

DIY-Adapter zum Anschluss eines Dual-GA-Headsets mit zwei Klinkensteckern, beispielsweise eines **Lightspeed Zulu 4**, an einen PC oder Flugsimulator über eine USB-Soundkarte.

> **Nur für PC-/Simulator-Nutzung. Kein zertifiziertes Luftfahrtgerät. Nicht im Flugzeug verwenden und nicht an Flugzeug-Audio-, Funk-, Intercom- oder Bordstromsysteme anschließen.**  
> Siehe [DISCLAIMER](DISCLAIMER.md).

![GA Headset USB Adapter V1 für Lightspeed Zulu 4 und Flugsimulator](docs/images/finished-device.jpg)

<a href="https://buymeacoffee.com/soso1999">
  <img src="https://cdn.buymeacoffee.com/buttons/v2/default-yellow.png"
       alt="Buy Me a Coffee"
       height="50">
</a>

## Stand dieser Veröffentlichung

Der V1-Prototyp wurde gedruckt, aufgebaut und erfolgreich am PC getestet. Mikrofonaufnahme und Wiedergabequalität sind sehr gut.

Der Aufbau wurde erfolgreich mit einem **Lightspeed Zulu 4 Dual-GA** sowie einem **Bose QC35 II mit AVEE-Mikrofonadapter** getestet.

Dies ist die Dokumentation eines funktionierenden Einzelprototyps und keine messtechnische, sicherheitstechnische oder allgemeine Kompatibilitätsfreigabe.

**Dokumentationsstand: v1.0.0**

## Stückliste (BOM)

| Anzahl | Bauteil | Wert / Typ | Hinweise |
|---:|---|---|---|
| 1 | USB-Soundkarte | DollaTek Free Drive USB-Soundkarte | Stellt Mikrofoneingang und Stereo-Kopfhörerausgang bereit |
| 1 | DC-DC-Step-Up-Wandler | GTIWUNG 5 V → 12 V Boost Converter | Wird aus USB 5 V versorgt und erzeugt die Mikrofon-Bias-Spannung |
| 1 | Mikrofonbuchse | PJ-068 Aviation-Mikrofonbuchse | Für den GA-Mikrofonstecker |
| 1 | Kopfhörerbuchse | Neutrik NMJ3HF-S | 6,35 mm / 1/4" Stereo-Klinkenbuchse |
| 1 | Lochrasterplatine | ca. 60 × 40 mm | Abmessungen können je nach Aufbau variieren |
| 1 | Widerstand R1 | 22 Ω | Bestandteil des Versorgungsfilters |
| 1 | Widerstand R2 | 220 Ω | Bias-Widerstand für das Mikrofon |
| 1 | Widerstand R3 | 10 kΩ | Serienwiderstand zum Mikrofoneingang der USB-Soundkarte |
| 1 | Elko C1 | 470 µF / mindestens 25 V | Glättung der Versorgungsspannung; Polarität beachten |
| 1 | Keramikkondensator C2 | 100 nF / mindestens 25 V | HF-Entstörung der Versorgung |
| 1 | Folienkondensator C3 | 1 µF WIMA | Gleichspannungsentkopplung / Audio-Koppelkondensator |
| – | Schaltdraht / Litze | nach Aufbau | Interne Verdrahtung |
| – | Schrumpfschlauch / Isolierung | nach Aufbau | Zur elektrischen Isolation |
| 1 | USB-Anschlusskabel | USB-A-Stecker auf offenes Kabelende | Mindestens 4-adriges USB-2.0-Kabel für +5 V, GND, D+ und D− |
| 1 | 3D-gedrucktes Gehäuse | Eigenkonstruktion | Für 60 × 40 mm Platine und beide Aviation-Buchsen |
| 4 | M3-Schrauben | – | Für den Gehäusedeckel |
| 4 | M3-Gewindeeinsätze | Heat-Set Inserts | Werden mit dem Lötkolben in das Gehäuse eingeschmolzen |

Die ausführliche Stückliste befindet sich unter [hardware/BOM.md](hardware/BOM.md) bzw. [hardware/BOM.csv](hardware/BOM.csv).

Die 12-V-Mikrofon-Bias-Spannung des USB-Adapters versorgt ausschließlich das Electret-Mikrofon. Sie speist nicht die ANR- oder Bluetooth-Elektronik des Headsets. Beim Lightspeed Zulu 4 Dual-GA erfolgt deren Versorgung weiterhin über die beiden AA-Batterien.

LEMO- und Helikopter-Stecker werden von dieser Version nicht unterstützt.

### Mikrofon-Signalweg

USB 5 V → Step-Up auf 12 V → 22-Ω-Filterwiderstand →  
470-µF-Elko + 100-nF-Kondensator zur Glättung →  
220-Ω-Mikrofon-Bias-Widerstand →  
Ring der PJ-068-Mikrofonbuchse

Mikrofon-Ring → 1-µF-Koppelkondensator → 10-kΩ-Widerstand →  
MIC-Eingang der USB-Soundkarte

PJ-068 Sleeve → gemeinsame Masse (GND)

PJ-068 Tip → nicht belegt

### Kopfhörerausgang

Der Stereo-Ausgang der USB-Soundkarte wird direkt an die 6,35-mm-Aviation-Kopfhörerbuchse geführt.

- Tip = linker Kanal
- Ring = rechter Kanal
- Sleeve = Masse (GND)

Eine zusätzliche Hardware-Mono-Mischung wird in Version 1 nicht verwendet.

Für eine korrekte Links-/Rechts-Kanaltrennung sollte das Headset auf Stereo gestellt werden. Beim Lightspeed Zulu 4 kann die Wiedergabe auch in der Stellung Mono normal funktionieren; dabei kann jedoch die echte Stereo-Kanaltrennung verloren gehen.

Alle Masseverbindungen der Schaltung verwenden einen gemeinsamen GND.

## Dokumentation und Dateien

| Inhalt | Datei |
|---|---|
| Stückliste | [BOM](hardware/BOM.md), [CSV](hardware/BOM.csv) |
| Elektrischer Schaltplan | [Schaltplan](hardware/schematic.md) |
| Anschluss für Anschluss | [Verdrahtung](docs/wiring.md) |
| Aufbau und Inbetriebnahme | [Bauanleitung](docs/build.md) |
| Störungen und bekannte Grenzen | [Troubleshooting](docs/troubleshooting.md) |
| Gehäuse und 3D-Druck | [CAD](cad/README.md) |
| Quellen und Projektstand | [Provenienz](docs/provenance.md) |
| Release Notes | [v1.0.0](releases/v1.0.0.md) |

## Prinzip

```text
                              ┌──────── Kopfhörer L ───── J2 Tip
PC ─ USB ─ USB-Soundkarte ────┼──────── Kopfhörer R ───── J2 Ring
       │                      └──────── Kopfhörer GND ─── J2 Sleeve
       │
       │                     MIC-IN
       │                        ↑
       │                      10 kΩ
       │                        ↑
       │                       C3
       │                        ↑
       │                 GA-Mikrofon-Ring
       │                        ↑
       │                      220 Ω
       │                        ↑
       └─ +5 V ─ Step-Up 12 V ─ Filter

Alle vorgesehenen Masseanschlüsse teilen einen gemeinsamen GND.
