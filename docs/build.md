# Aufbau und Inbetriebnahme

1. USB-Anschlusskabel vorbereiten. Verwendet wird ein USB-A-Kabel mit mindestens vier Adern für +5 V, GND, D+ und D−. Die Adern vor dem Anschluss durchmessen und nicht allein anhand ihrer Farbe zuordnen.

2. USB-Soundkarte einzeln am PC testen. MIC-Signal, MIC-Masse sowie Kopfhörer links, rechts und GND identifizieren.

3. Step-Up-Wandler zunächst ohne angeschlossenes Headset betreiben. Eingang mit USB-5-V versorgen und die Ausgangsspannung zwischen OUT+ und OUT− mit einem Multimeter auf etwa 12 V einstellen.

4. Versorgungsfilter aufbauen:

   - 12-V-Ausgang des Step-Up-Wandlers → R1 = 22 Ω
   - hinter R1 entsteht der gefilterte 12-V-Versorgungspunkt
   - C1 = 470 µF zwischen diesem Versorgungspunkt und GND
   - C2 = 100 nF parallel zu C1 zwischen Versorgungspunkt und GND

   Beim Elektrolytkondensator C1 muss der Pluspol zur gefilterten Versorgung und der Minuspol zu GND zeigen. C2 ist unpolarisiert.

5. Mikrofonzweig aufbauen:

   - gefilterte 12 V über R2 = 220 Ω zum Ring der PJ-068-Mikrofonbuchse
   - Sleeve der PJ-068-Buchse an gemeinsamen GND
   - Tip der PJ-068-Buchse bleibt in diesem Adapter unbenutzt

6. Das Mikrofonsignal am Ring der PJ-068-Buchse abgreifen und über C3 = 1 µF sowie R3 = 10 kΩ zum MIC-Eingang der USB-Soundkarte führen.

   C3 dient zur Gleichspannungsentkopplung. Dadurch gelangt die externe 12-V-Mikrofon-Bias-Spannung nicht als Gleichspannung zum MIC-Eingang der USB-Soundkarte.

7. Kopfhörerausgang stereo verdrahten:

   - linker Ausgang der USB-Soundkarte → Tip der 6,35-mm-Kopfhörerbuchse
   - rechter Ausgang der USB-Soundkarte → Ring der 6,35-mm-Kopfhörerbuchse
   - GND der USB-Soundkarte → Sleeve der Kopfhörerbuchse

   In V1 wird keine zusätzliche Hardware-Mono-Mischung verwendet.

8. Alle Masseverbindungen gemeinsam verbinden:

   - USB-GND
   - Step-Up OUT−
   - Mikrofon-Sleeve
   - MIC-GND der USB-Soundkarte
   - Kopfhörer-Sleeve

9. Vor dem ersten Einschalten bei stromloser Schaltung auf Kurzschlüsse prüfen. Insbesondere darf keine niederohmige Verbindung zwischen +12 V und GND, MIC-IN oder den Kopfhörerausgängen bestehen.

10. Versorgung zunächst ohne angeschlossenes Headset einschalten und nochmals kontrollieren:

    - Step-Up-Ausgang etwa 12 V
    - gefilterte Versorgung vorhanden
    - die externe 12-V-Bias-Spannung darf hinter C3 nicht am MIC-Eingang der USB-Soundkarte anliegen

    Eine geringe, von der USB-Soundkarte selbst erzeugte Mikrofon-Bias-Spannung am MIC-Eingang kann konstruktionsbedingt vorhanden sein und ist nicht mit der externen 12-V-Versorgung zu verwechseln.

11. Vor dem Einstecken des Headsets die USB-Versorgung des Adapters trennen. Headset anschließen und die Kopfhörerlautstärke zunächst niedrig einstellen.

    Der Adapter stellt einen echten Stereo-Ausgang bereit. Für korrekte Links-/Rechts-Kanaltrennung sollte das Headset auf Stereo gestellt werden. Das Lightspeed Zulu 4 kann auch in der Stellung Mono normal funktionieren; dabei kann jedoch die echte Stereo-Kanaltrennung verloren gehen.

12. USB-Versorgung wieder anschließen und Funktion testen:

    - Mikrofonaufnahme prüfen
    - Mikrofonpegel in Windows so einstellen, dass Sprache ausreichend laut und ohne Clipping aufgenommen wird
    - bei auf Stereo gestelltem Headset linken und rechten PC-Kanal getrennt testen:
      - linker Kanal → linke Ohrmuschel
      - rechter Kanal → rechte Ohrmuschel

13. Beim getesteten Lightspeed Zulu 4 Dual-GA wird die ANR-/Headset-Elektronik weiterhin über die beiden AA-Batterien des Headsets versorgt. Die 12-V-Versorgung dieses Adapters dient ausschließlich dem Mikrofonzweig und versorgt nicht die ANR- oder Bluetooth-Elektronik.

14. Vor dem endgültigen Einbau auf mögliche elektromagnetische Störungen achten. Beim V1-Prototyp traten in unmittelbarer Nähe des Computers Störgeräusche im Mikrofonsignal auf. Durch einen größeren Abstand zwischen Adapter und Computer verschwanden diese vollständig.

15. Nach erfolgreichem Test die Platine elektrisch isoliert im Gehäuse befestigen, das USB-Kabel mechanisch zugentlasten und den Gehäusedeckel montieren.

## Direct Monitoring / Sidetone

V1 enthält kein analoges Direct Monitoring bzw. Sidetone.

Software-Monitoring über Windows oder entsprechende Audio-Software ist möglich, kann jedoch aufgrund der zusätzlichen digitalen Signalverarbeitung eine deutlich hörbare Verzögerung verursachen.
