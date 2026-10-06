# Bekannte Grenzen und Störungen

- **Piepen in der Aufnahme:** Der Erbauer berichtete, dass mehr Abstand zum Computer das Piepen vollständig beseitigte. Das spricht für Einkopplung aus der Umgebung; die konkrete Quelle wurde nicht messtechnisch bewiesen. PC, Netzteile, Monitore und Step-Up können beitragen. Kurze Mic-Leitungen, Signal/GND-Paare und Abstand zum Wandler helfen.
- **Ein anderer Step-Up ist nicht automatisch leiser:** Wandler können bei geringer Last takten oder im Burst-Modus arbeiten. Eine 1-kΩ-Testlast wurde im Projekt ohne Verbesserung erprobt. Sie ist kein Standardbauteil der BOM.
- **Kein oder zu leises Mikrofon:** Kontaktbelegung, gemeinsame Masse und belastete Bias-Spannung prüfen. MIC-IN verwenden; ein Line-Eingang kann einen anderen Pegel benötigen. 10 kΩ und die Soundkartenimpedanz beeinflussen die Abschwächung.
- **Nur ein Ohr:** Headset-Mono-Schalter und Tip/Sleeve der großen Buchse kontrollieren. Ring ist in V1 frei.
- **Zu wenig Kopfhörerpegel:** Die passive Summierung kostet Pegel. V1 hat keinen zusätzlichen Treiber; andere Headsetimpedanzen oder Soundkarten können unzureichend sein.
- **Eigene Stimme verzögert:** Das ist bei Software-Monitoring möglich. Analoger Sidetone gehört zu einem späteren V2-Entwurf.
- **Gehäuse:** PLA/PETG bietet keine zuverlässige elektromagnetische Abschirmung. Eine optionale Metallfolie darf keine Lötstellen kurzschließen und muss mechanisch sicher isoliert sein. Sie war für den berichteten erfolgreichen Betrieb nicht erforderlich.

Es liegen keine objektiven Rausch-, Frequenzgang-, EMV- oder Dauerlaufmessungen vor. Eine allgemeine Freigabe für andere GA-Headsets ist daraus nicht ableitbar.
