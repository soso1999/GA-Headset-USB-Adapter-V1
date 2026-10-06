# Verdrahtung

Vor dem Löten stromlos prüfen, welcher Lötanschluss tatsächlich Tip, Ring bzw. Sleeve entspricht. Buchsen können zusätzliche Schaltkontakte besitzen; deren Lage ist nicht universell. Einen passenden Stecker einstecken und jeden Kontakt mit dem Multimeter bis zum jeweiligen Lötanschluss durchmessen.

| Von | Nach |
|---|---|
| USB +5 V | Step-Up IN+ |
| USB GND | gemeinsame Masse |
| Step-Up IN− | gemeinsame Masse |
| Step-Up OUT− | gemeinsame Masse |
| Step-Up OUT+ | R1 = 22 Ω |
| anderes Ende R1 | gefilterter 12-V-Versorgungspunkt |
| gefilterter 12-V-Versorgungspunkt | C1 Plus |
| C1 Minus | gemeinsame Masse |
| gefilterter 12-V-Versorgungspunkt | ein Anschluss von C2 = 100 nF |
| anderer Anschluss von C2 | gemeinsame Masse |
| gefilterter 12-V-Versorgungspunkt | R2 = 220 Ω |
| anderes Ende R2 | J1 Ring |
| J1 Ring | Eingang C3 = 1 µF |
| Ausgang C3 | R3 = 10 kΩ |
| anderes Ende R3 | identifizierter MIC-Signalanschluss der USB-Soundkarte |
| J1 Sleeve | gemeinsame Masse |
| Soundkarte MIC-GND | gemeinsame Masse |
| Soundkarte Kopfhörer L | J2 Tip |
| Soundkarte Kopfhörer R | J2 Ring |
| Soundkarte Kopfhörer-GND | J2 Sleeve / gemeinsame Masse |

## Buchsenbelegung

### J1 – GA-Mikrofonbuchse PJ-068

- Ring = Mikrofon-Bias + Mikrofonsignal
- Sleeve = GND
- Tip = unbeschaltet

### J2 – 6,35-mm-Kopfhörerbuchse

- Tip = linker Audiokanal
- Ring = rechter Audiokanal
- Sleeve = GND

Der Kopfhörerausgang wird in V1 direkt stereo verdrahtet. Eine passive Mono-Zusammenführung oder zusätzliche Mischwiderstände R4/R5 werden nicht verwendet.

Bei einem Headset mit abweichender Anschlussbelegung müssen vor dem Anschluss die Herstellerunterlagen geprüft werden.

Die Belegung des MIC-Eingangs verschiedener USB-Soundkarten ist nicht einheitlich. Deshalb legt diese Anleitung absichtlich keinen allgemein gültigen Tip-/Ring-Kontakt für einen 3,5-mm-Mikrofoneingang fest. Die tatsächliche Belegung der verwendeten Soundkarte muss vor dem Anschluss identifiziert werden.

## Hinweise zur Leitungsführung

Mikrofonsignal und zugehörige Masse möglichst dicht nebeneinander bzw. verdrillt führen.

Den Step-Up-Wandler und seine stromführenden Leitungen möglichst weit von der empfindlichen Mikrofon-Signalleitung entfernt anordnen.

Masseverbindungen kurz und zuverlässig ausführen.

Das USB-Kabel mechanisch zugentlasten. Der Kabelschlitz im Gehäuse allein stellt keine ausreichende Zugentlastung dar.
