# Elektrischer Schaltplan — V1, rekonstruiert

Dieser Schaltplan beschreibt den zuletzt festgelegten V1-Signalweg. Es ist kein aus dem fertigen Aufbau extrahierter Schaltplan. Offene Bauteilwerte stehen in der BOM.

```text
USB-A
├── +5 V
├── D−
├── D+
└── GND

USB +5 V ───────────── U2 IN+
GND ───────────────── U2 IN− / OUT− (nicht isolierter Step-Up)

U2 OUT+ (12 V) ─ R1 22 Ω ────┬── R2 220 Ω ────● MIC_BIAS_AUDIO
                             │                 │
                        ┌────┴────┐            ├── J1 Ring
                        │         │            │
                    C1 470 µF  C2 100 nF       └── C3 1 µF ─ R3 10 kΩ ─ U1 MIC signal
                    (+ oben)      │              
                        │         │
GND ────────────────────┴─────────┴──────── J1 Sleeve / U1 MIC ground
J1 Tip: unbeschaltet (kein PTT in diesem Adapter)

U1 Headphone L ─────────────── J2 Tip
U1 Headphone R ─────────────── J2 Ring
U1 Headphone GND ───────────── J2 Sleeve ─ GND

Keine Mono-Zusammenführung.
R4/R5 werden in V1 nicht verwendet.
Headset für den PC-Betrieb auf Stereo stellen.

C1 und C2 liegen parallel zwischen gefilterter Versorgung und GND. C3 liegt in Serie im Signalweg; er ist kein Versorgungsfilter. Der Mikrofon-Ring führt gleichzeitig Gleichspannung und das Audiosignal. R3 bildet mit der Soundkarten-Eingangsimpedanz eine Pegelabsenkung; der resultierende Pegel hängt von der konkreten Karte ab.

Der Kopfhörerausgang wird in Version 1 stereo betrieben.

Linker und rechter Audiokanal bleiben getrennt:
L → J2 Tip
R → J2 Ring
GND → J2 Sleeve

Eine passive Mono-Zusammenführung wird nicht verwendet.

Die 12-V-Versorgung dient ausschließlich dem Mikrofonzweig.
Der Kopfhörerausgang erhält keine 12-V-Speisung.

Alle hier genannten GND-Anschlüsse sind elektrisch verbunden. Das setzt eine passende Soundkarte mit gemeinsamer Analog-/USB-Masse voraus. Bei unbekannten bzw. differenziellen Ausgängen nicht blind verbinden.

Die Zulu-4-Herstellerspezifikation nennt 8–16 V Mikrofon-Betriebsspannung und 220–2200 Ω Abschlussimpedanz. Die 12 V beziehen sich auf U2 OUT+, die Spannung am belasteten Mikrofon-Ring ist wegen R1/R2 niedriger. Sie muss am konkreten Aufbau gemessen werden. [Quelle](https://www.lightspeedaviation.com/product/zulu-4-anr-headset/)
