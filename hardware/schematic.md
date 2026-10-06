# Elektrischer Schaltplan — V1

Dieser Schaltplan dokumentiert den tatsächlich aufgebauten und getesteten Signalweg des GA-Headset-USB-Adapters V1. Die angegebenen Bauteilwerte entsprechen der funktionierenden V1-Hardware. Der Schaltplan stellt die elektrische Funktion dar und nicht zwingend die physische Anordnung der Bauteile auf der Lochrasterplatine.

```text
USB-A
├── +5 V ────────────────┬──────── U1 USB +5 V
│                        └──────── U2 IN+
│
├── D− ─────────────────────────── U1 USB D−
├── D+ ─────────────────────────── U1 USB D+
│
└── GND ────────────────┬──────── U1 USB GND
                        └──────── U2 IN−

U2 OUT− ────────────────────────── gemeinsame Masse
          (bei nicht isoliertem Step-Up mit IN− verbunden)


MIKROFONVERSORGUNG UND -SIGNAL

U2 OUT+ (12 V) ─ R1 22 Ω ────┬── R2 220 Ω ────● MIC_BIAS_AUDIO
                              │                  │
                         ┌────┴────┐             ├── J1 Ring
                         │         │             │
                     C1 470 µF  C2 100 nF        └── C3 1 µF ─ R3 10 kΩ ─ U1 MIC signal
                     (+ oben)      │
                         │         │
GND ─────────────────────┴─────────┴──────────── J1 Sleeve / U1 MIC ground

J1 Tip: unbeschaltet
        (kein elektrisches PTT in diesem Adapter)


KOPFHÖRERAUSGANG

U1 Headphone L ─────────────────── J2 Tip
U1 Headphone R ─────────────────── J2 Ring
U1 Headphone GND ───────────────── J2 Sleeve ─ GND
