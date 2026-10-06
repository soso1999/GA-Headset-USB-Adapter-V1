# Gehäuse

Die beiden STL-Dateien wurden unverändert aus der referenzierten Unterhaltung übernommen. Der Erbauer meldete, dass der Druck zur Platine passte und der Aufbau erfolgreich war.

| Teil | Datei |
|---|---|
| Unterteil | [ga_headset_interface_base.stl](stl/ga_headset_interface_base.stl) |
| Deckel | [ga_headset_interface_lid.stl](stl/ga_headset_interface_lid.stl) |
| OpenSCAD-Importdatei | [ga_headset_interface_case.scad](ga_headset_interface_case.scad) |

**Wichtig:** Die ursprüngliche parametrische OpenSCAD-Datei war in der Unterhaltung verlinkt, aber nicht als zugängliche Datei verfügbar. Die hier beigelegte Datei lädt die Original-STLs; sie ist keine Wiederherstellung der parametrischen Konstruktion. Die ursprüngliche Datei muss ergänzt werden, bevor das Repository vollständige editierbare CAD-Quellen enthält.

Im ursprünglichen Entwurf angegeben: Außenmaß 92 × 76 × 40 mm; Wände 2,6 mm; Platine 60 × 40 mm; Bohrungen ca. 9,7 mm für Mikrofon und 11,5 mm für Kopfhörerbuchse; USB-Schlitz 8 mm; M3-Inserts mit ca. 4,2-mm-Aufnahme und 5-mm-Länge. Diese Zahlen stammen aus der Entwurfsbeschreibung, nicht aus einer Vermessung des fertigen Drucks.

Druck-Ausgangspunkt, keine überlieferten Originaleinstellungen: PLA oder PETG, 0,2-mm-Schichten, mindestens drei Außenwände. Im Slicer Unterteil mit Boden und Deckel mit flacher Oberseite auf das Druckbett legen. Überhänge an Buchsenöffnungen und inneren Auflagen prüfen und Unterstützung bei Bedarf aktivieren. Loch- und Insertpassung vor dem vollständigen Druck prüfen. STL-Einheiten sind als Millimeter zu interpretieren.

Heat-Set-Inserts vorsichtig einschmelzen. Schraubenlänge nach tatsächlicher Deckeldicke, Insert-Tiefe und nutzbarem Gewinde auswählen. Platine elektrisch isoliert befestigen und das USB-Kabel zusätzlich entlasten.
