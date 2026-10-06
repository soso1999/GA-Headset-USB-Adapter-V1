# Aufbau und Inbetriebnahme

1. USB-Anschlusskabel vorbereiten. Verwendet wird ein USB-A-Kabel mit mindestens vier Adern für +5 V, GND, D+ und D−. Die Adern vor dem Anschluss durchmessen und nicht allein anhand ihrer Farbe zuordnen.

2. USB-Soundkarte einzeln am PC testen. MIC-Signal, MIC-Masse sowie Kopfhörer links, rechts und GND identifizieren.

3. Step-Up-Wandler zunächst ohne angeschlossenes Headset betreiben. Eingang mit USB-5-V versorgen und die Ausgangsspannung zwischen OUT+ und OUT− mit einem Multimeter auf etwa 12 V einstellen.

4. Versorgungsfilter aufbauen:
   - 12-V-Ausgang des Step-Up-Wandlers
   - R1 = 22 Ω
   - C1 = 470 µF gegen GND
   - C2 = 100 nF gegen GND

   Beim Elektrolytkondensator C1 muss der Pluspol an der gefilterten Versorgung und der Minuspol an GND liegen. C2 ist unpolarisiert.

5. Mikrofonzweig aufbauen:
   - gefilterte 12 V über R2 = 220 Ω zum Ring der PJ-068-Mikrofonbuchse
   - Sleeve der PJ-068-Buchse an gemeinsamen GND
   - Tip der PJ-068-Buchse bleibt unbenutzt

6. Das Mikrofonsignal am Ring der PJ-068-Buchse abgreifen und über C3 = 1 µF sowie R3 = 10 kΩ zum MIC-Eingang der USB-Soundkarte führen. C3 dient zur Gleichspannungsentkopplung und verhindert, dass die 12-V-Bias-Spannung zum Mikrofoneingang der Soundkarte gelangt.

7. Kopfhörerausgang stereo verdrahten:
   - linker Ausgang der USB-Soundkarte → Tip der 6,35-mm-Kopfhörerbuchse
   - rechter Ausgang der USB-Soundkarte → Ring der 6,35-mm-Kopfhörerbuchse
   - GND der USB-Soundkarte → Sleeve der Kopfhörerbuchse

   Es wird in V1 keine zusätzliche Mono-Mischung verwendet.

8. Alle Masseverbindungen gemeinsam verbinden:
   - USB-GND
   - Step-Up OUT−
   - Mikrofon-Sleeve
   - MIC-GND der Soundkarte
   - Kopfhörer-Sleeve

9. Vor dem ersten Einschalten bei stromloser Schaltung auf Kurzschlüsse prüfen. Insbesondere darf keine niederohmige Verbindung zwischen +12 V und GND, MIC-IN oder Kopfhörerausgang bestehen.

10. Versorgung zunächst ohne angeschlossenes Headset einschalten und nochmals kontrollieren:
    - Step-Up-Ausgang etwa 12 V
    - gefilterte Versorgung vorhanden
    - keine 12-V-Gleichspannung am MIC-Eingang der USB-Soundkarte

11. Headset bei abgeschalteter Versorgung anschließen. Das Headset für den PC-Betrieb auf Stereo einstellen und die Lautstärke zunächst niedrig wählen.

12. Versorgung einschalten und Funktion testen:
    - linker PC-Kanal muss links wiedergegeben werden
    - rechter PC-Kanal muss rechts wiedergegeben werden
    - Mikrofonaufnahme testen
    - Mikrofonpegel in Windows so einstellen, dass Sprache ausreichend laut und ohne Clipping aufgenommen wird

13. ANR des Headsets separat über dessen eigene Stromversorgung bzw. Batterien einschalten und Funktion prüfen.

14. Vor dem endgültigen Einbau auf mögliche elektromagnetische Störungen achten. Beim Prototyp konnten Störgeräusche durch ausreichenden Abstand zwischen Adapter und Computer vollständig beseitigt werden.

15. Nach erfolgreichem Test Platine isoliert im Gehäuse befestigen, USB-Kabel mechanisch entlasten und Gehäusedeckel montieren.

V1 enthält kein analoges Direct Monitoring bzw. Sidetone. Software-Monitoring über Windows oder entsprechende Audio-Software ist möglich, kann jedoch eine deutlich hörbare Verzögerung verursachen.
