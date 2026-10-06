# Gehäuse

| Teil | Datei |
|---|---|
| Unterteil | [ga_headset_interface_base.stl](stl/ga_headset_interface_base.stl) |
| Deckel | [ga_headset_interface_lid.stl](stl/ga_headset_interface_lid.stl) |
| Parametrische OpenSCAD-Quelldatei | [ga_headset_interface_case.scad](ga_headset_interface_case.scad) |

## Abmessungen

- Außenmaß des Gehäuses: 92 × 76 × 40 mm
- Wandstärke: 2,6 mm
- vorgesehene Platine: 60 × 40 mm
- Bohrung für GA-Mikrofonbuchse: ca. 9,7 mm
- Bohrung für 6,35-mm-Kopfhörerbuchse: ca. 11,5 mm
- USB-Kabelschlitz: 8 mm
- Aufnahmen für M3-Heat-Set-Inserts: ca. 4,2 mm
- vorgesehene Insert-Länge: ca. 5 mm

Die veröffentlichten STL-Dateien wurden für den V1-Prototyp gedruckt und erfolgreich mit der 60 × 40-mm-Platine sowie den verwendeten Buchsen montiert.

## Druckempfehlung

Als Material eignen sich PLA oder PETG.

Empfohlene Ausgangswerte:

- Schichthöhe: 0,2 mm
- mindestens drei Außenwände
- STL-Einheiten: Millimeter

Das Unterteil sollte mit dem Gehäuseboden auf dem Druckbett liegen. Der Deckel wird mit seiner flachen Außenseite auf dem Druckbett gedruckt.

Überhänge an den Buchsenöffnungen und inneren Auflagen sollten im Slicer kontrolliert werden. Falls erforderlich, können dort Stützstrukturen aktiviert werden.

Aufgrund von Drucker-, Material- und Slicer-Toleranzen empfiehlt es sich, insbesondere die Passung der Buchsen und Heat-Set-Inserts vor der endgültigen Montage zu kontrollieren.

## Montage

Die M3-Heat-Set-Inserts vorsichtig mit einem Lötkolben einschmelzen und rechtwinklig ausrichten.

Die Schraubenlänge entsprechend Deckeldicke, Insert-Tiefe und tatsächlich verfügbarem Gewinde wählen.

Die Platine elektrisch isoliert im Gehäuse befestigen. Das USB-Kabel sollte zusätzlich mechanisch zugentlastet werden.
