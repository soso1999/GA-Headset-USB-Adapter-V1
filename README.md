# GA Headset USB Adapter — V1

DIY-Adapter für ein GA-Headset mit zwei Klinkensteckern, beispielsweise ein **Lightspeed Zulu 4**, an einer USB-Soundkarte am PC oder Flugsimulator.

> **Nur PC-/Simulator-Nutzung. Kein zertifiziertes Aviation-Gerät. Nicht im Flugzeug verwenden und nicht an Flugzeug-Audio-, Funk- oder Intercom-Systeme anschließen.** Siehe [DISCLAIMER](DISCLAIMER.md).

![Fertiger V1-Adapter](docs/images/finished-device.jpg)

## Stand dieser Veröffentlichung

Der Erbauer hat den V1-Prototyp gedruckt, montiert und erfolgreich am PC getestet. Er meldet eine sehr gute Mikrofonaufnahme und Wiedergabequalität. Das ist ein Erfahrungsbericht zu einem Aufbau, keine messtechnische Freigabe oder allgemeine Kompatibilitätsgarantie.

**Dokumentationsstand für v1.0.0: 

## Stückliste (BOM)

| Anzahl | Bauteil | Wert / Typ | Hinweise |
|---:|---|---|---|
| 1 | USB-Soundkarte | CM108-basierter USB-Audioadapter | Stellt Mikrofoneingang und Stereo-Kopfhörerausgang bereit |
| 1 | DC-DC-Step-up-Wandler | GTIWUNG 5 V → 12 V Boost Converter | Wird aus USB 5 V versorgt und erzeugt die Mikrofon-Bias-Spannung |
| 1 | Mikrofonbuchse | PJ-068 Aviation-Mikrofonbuchse | Für den GA-Mikrofonstecker |
| 1 | Kopfhörerbuchse | Neutrik NMJ3HF-S | 6,35 mm / 1/4" Stereo-Klinkenbuchse |
| 1 | Lochrasterplatine | ca. 60 × 40 mm | Für den Aufbau der Schaltung |
| 1 | Widerstand R1 | 22 Ω, 0,6 W, 1 % | Widerstand im Versorgungsfilter |
| 1 | Widerstand R2 | 220 Ω, 0,6 W, 1 % | Bias-Widerstand für das Mikrofon |
| 1 | Widerstand R3 | 10 kΩ, 0,6 W, 1 % | Serienwiderstand zum Mikrofoneingang der USB-Soundkarte |
| 1 | Elko C1 | 470 µF / 25 V | Glättung der Versorgungsspannung, Polarität beachten |
| 1 | Keramikkondensator C2 | 100 nF / 50 V, X7R | Hochfrequenz-Entstörung der Versorgung |
| 1 | Folienkondensator C3 | 1 µF / 63 V, WIMA MKS4 | Gleichspannungsentkopplung / Audio-Koppelkondensator |
| – | Schaltdraht / Litze | ca. 0,14 mm² | Interne Verdrahtung |
| – | Schrumpfschlauch | ca. 2,4 mm | Optional zur Isolierung |
| 1 | 3D-gedrucktes Gehäuse | Eigenkonstruktion | Für 60 × 40 mm Platine und beide Aviation-Buchsen |
| 4 | M3-Schrauben | – | Für den Gehäusedeckel |
| 4 | M3-Gewindeeinsätze | Heat-Set Inserts | Werden mit dem Lötkolben in das Gehäuse eingeschmolzen |

Die USB-Mikrofonversorgung speist **nicht** die ANR-Elektronik des Headsets. Diese nutzt beim Dual-GA-Modell weiterhin die eigene Batterieversorgung. LEMO- und Helikopter-Stecker werden von dieser Version nicht unterstützt.

### Mikrofon-Signalweg

USB 5 V → 5-auf-12-V-Step-up-Wandler → 22-Ω-Filterwiderstand →
470-µF-Elko + 100-nF-Kondensator zur Glättung →
220-Ω-Mikrofon-Bias-Widerstand →
Ring der PJ-068-Mikrofonbuchse

Mikrofon-Ring → 1-µF-Koppelkondensator → 10-kΩ-Widerstand →
MIC-Eingang der USB-Soundkarte

PJ-068 Sleeve → gemeinsamer Ground

PJ-068 Tip → nicht belegt

### Kopfhörerausgang

Der Stereo-Ausgang der CM108-USB-Soundkarte wird auf Mono zusammengeführt
und an die 6,35-mm-Aviation-Kopfhörerbuchse ausgegeben.

Alle Masseverbindungen verwenden einen gemeinsamen Ground.


## Dokumentation und Dateien

| Inhalt | Datei |
|---|---|
| Stückliste mit Herkunft und offenen Werten | [BOM](hardware/BOM.md), [CSV](hardware/BOM.csv) |
| Elektrischer Schaltplan | [Schaltplan](hardware/schematic.md) |
| Anschluss für Anschluss | [Verdrahtung](docs/wiring.md) |
| Aufbau, Messungen und Inbetriebnahme | [Bauanleitung](docs/build.md) |
| Störungen und bekannte Grenzen | [Troubleshooting](docs/troubleshooting.md) |
| Gehäuse und Druck | [CAD](cad/README.md) |
| Quellen und belegter Projektstand | [Provenienz](docs/provenance.md) |
| Noch zu bestätigende Details | [Prüfliste](docs/verification.md) |
| Release Notes | [v1.0.0](releases/v1.0.0.md) |

## Prinzip

```text
PC ─ USB ─ Soundkarte ─ L/R ─ Widerstandsmischer ─ GA-Kopfhörer (Mono)
          │
          └ MIC-IN ← 10 kΩ ← C3 ← GA-Mikrofon-Ring
                                  ↑
USB 5 V ─ Step-Up 12 V ─ Filter ─ 220 Ω
Alle vorgesehenen Masseanschlüsse teilen GND.
```

## Unterstützung

Wenn dir das Projekt beim Einsatz deines Aviation-Headsets im Simulator hilft, kannst du die weitere Entwicklung freiwillig mit einem Kaffee unterstützen. Die Dateien bleiben frei verfügbar.

<a href="https://buymeacoffee.com/soso1999">
  <img src="https://cdn.buymeacoffee.com/buttons/v2/default-yellow.png"
       alt="Buy Me a Coffee"
       height="50">
</a>

## Lizenz

Hardware-Dokumentation und CAD: **CERN-OHL-P-2.0**, vollständiger Text in [LICENSE](LICENSE). Allgemeine Texte und das Gerätefoto: **CC BY 4.0**, siehe [Lizenzzuordnung](LICENSES/README.md). Attribution: Josef Jankarashvili / GA Headset USB Adapter contributors. Lightspeed und Zulu sind Marken ihrer jeweiligen Inhaber; dieses Projekt ist unabhängig und nicht vom Hersteller unterstützt.

Die elektrischen Herstellerdaten wurden anhand der [offiziellen Zulu-4-Spezifikation](https://www.lightspeedaviation.com/product/zulu-4-anr-headset/) geprüft. Weitere Quellen stehen in der Provenienz-Dokumentation.
