# Bekannte Grenzen und Störungen

- **Piepen bzw. Störgeräusch in der Mikrofonaufnahme:** Beim V1-Prototyp trat in unmittelbarer Nähe des Computers ein leises periodisches Störgeräusch auf. Ein größerer Abstand zwischen Adapter und Computer beseitigte die Störung vollständig. Dies spricht für elektromagnetische Einkopplung aus der Umgebung. Die konkrete Störquelle wurde nicht messtechnisch bestimmt. Mögliche Quellen sind insbesondere Computer, Netzteil, GPU-/Mainboard-Spannungswandler, Monitor oder andere Schaltnetzteile. Kurze Mikrofonleitungen, gemeinsam geführte bzw. verdrillte Signal-/GND-Leitungen und ausreichender Abstand zu starken Störquellen können helfen.

- **Step-Up-Wandler:** Ein Schaltwandler kann grundsätzlich Störungen erzeugen, insbesondere bei geringer Last oder im Burst-Betrieb. Im V1-Prototyp wurde testweise ein 1-kΩ-Lastwiderstand parallel zum 12-V-Ausgang angeschlossen; dies führte zu keiner Verbesserung des beobachteten Störgeräuschs. Der 1-kΩ-Widerstand gehört daher nicht zur V1-Stückliste.

- **Kein oder zu leises Mikrofon:** Pinbelegung der PJ-068-Buchse, gemeinsamen Ground, Mikrofon-Bias-Spannung und Verbindung zum MIC-Eingang der USB-Soundkarte prüfen. Der Adapter ist für einen Mikrofoneingang ausgelegt; ein Line-Eingang benötigt einen deutlich höheren Signalpegel und ist dafür nicht vorgesehen.

- **Nur ein Ohr bzw. fehlender Stereokanal:** Verdrahtung der 6,35-mm-Kopfhörerbuchse kontrollieren:
  - Tip = linker Kanal
  - Ring = rechter Kanal
  - Sleeve = GND

  Für echte Links-/Rechts-Kanaltrennung sollte das Headset auf Stereo gestellt werden. Beim Lightspeed Zulu 4 kann die Wiedergabe auch in der Stellung Mono funktionieren; dabei kann jedoch die Stereo-Kanaltrennung verloren gehen.

- **Zu wenig Kopfhörerpegel:** V1 verwendet den Stereo-Kopfhörerausgang der USB-Soundkarte direkt und besitzt keinen zusätzlichen Kopfhörerverstärker. Der erreichbare Pegel hängt daher von der verwendeten USB-Soundkarte und der Impedanz bzw. Empfindlichkeit des angeschlossenen Headsets ab.

- **Eigene Stimme verzögert:** V1 besitzt kein analoges Direct Monitoring bzw. Sidetone. Bei Software-Monitoring über Windows oder Audio-Software durchläuft das Mikrofonsignal zusätzliche A/D-, Software- und D/A-Stufen, wodurch eine hörbare Verzögerung entstehen kann. Ein analoges, praktisch latenzfreies Sidetone ist für eine spätere Version vorgesehen.

- **Gehäuse und elektromagnetische Abschirmung:** PLA und PETG bieten praktisch keine zuverlässige elektromagnetische Abschirmung. Beim getesteten V1-Prototyp war eine zusätzliche Abschirmung jedoch nicht erforderlich, nachdem der Adapter mit ausreichendem Abstand zum Computer betrieben wurde. Eine nachträgliche Auskleidung mit leitfähiger Folie ist grundsätzlich möglich, muss jedoch elektrisch sicher isoliert werden, damit keine Leiterbahnen oder Lötstellen kurzgeschlossen werden.

## Einschränkungen der Erprobung

Der V1-Prototyp wurde im praktischen PC-/Simulatorbetrieb erfolgreich mit einem Lightspeed Zulu 4 Dual-GA getestet.

Es wurden jedoch keine standardisierten Messungen zu Rauschpegel, Frequenzgang, Klirrfaktor, elektromagnetischer Verträglichkeit oder Langzeitbetrieb durchgeführt.

Aus dem erfolgreichen Betrieb des getesteten Aufbaus kann daher keine allgemeine Kompatibilität oder Freigabe für andere GA-Headsets, USB-Soundkarten oder Hardwarekonfigurationen abgeleitet werden.
