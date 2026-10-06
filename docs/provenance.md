# Herkunft und Beleglage

Projektquelle: Unterhaltung „Kopfhörer Schaltplan Besprechen“, Gesprächs-ID `6abbb8f7-6790-83eb-9290-a9c36cd595e7`. Die Veröffentlichung wurde am 6. Oktober 2026 aus der zugänglichen Unterhaltung und ihren Dateien zusammengestellt.

Originaldateien: `ga_headset_interface_base.stl`, `ga_headset_interface_lid.stl` und Gerätefoto `IMG_3137.jpg` (im Repository als `finished-device.jpg`). Die STL-Dateien wurden unverändert kopiert. Das Foto wurde ebenfalls unverändert übernommen. Die Prüfsummen stehen in `../SHA256SUMS.txt`.

Belegt: 60 × 40-mm-Platine; erfolgreiche mechanische Passung; erfolgreiche Audiofunktion vom Erbauer berichtet; 22 Ω / 220 Ω / 10 kΩ; 470 µF und 100 nF; Mic-Ring als kombinierter Bias-/Signalpunkt; Sleeve als Masse; passiver Mono-Mischer und Headset auf Mono. Die ursprüngliche Diskussion nennt 100–220 Ω für jeden Mono-Mischwiderstand, keinen endgültig bestätigten Wert.

Nicht belegt: C3-Wert, konkrete Soundkarte und Step-Up, endgültige Detail-BOM, Material/Druckparameter, tatsächliche Insertabmessungen und Messprotokolle. Die V2-Einkaufsliste mit OPA2134, Sidetone-Poti und 1,5-µF-Kondensatoren wurde ausdrücklich nicht in V1 übernommen.

## Externe Primärquellen

- [Lightspeed Zulu 4: technische Herstellerdaten](https://www.lightspeedaviation.com/product/zulu-4-anr-headset/): Elektret-Mikrofon, 8–16 V DC, 220–2200 Ω Abschlussimpedanz; Headsetvarianten und Mono-/Stereoimpedanz. Geprüft am 6. Oktober 2026.
- [Zulu-4-Support und Handbuch](https://www.lightspeedaviation.com/support/zulu-4-support/).
- [CERN Open Hardware Licence](https://cern-ohl.web.cern.ch/home).
- [SPDX CERN-OHL-P-2.0](https://spdx.org/licenses/CERN-OHL-P-2.0.html) und [SPDX CC-BY-4.0](https://spdx.org/licenses/CC-BY-4.0.html): vollständige Lizenztexte im Repository.

Der Schaltplan und die Aufbauanleitung sind anhand dieser Angaben neu geschriebene Dokumentation; kein vorhandenes PCB-Design oder Netlist-Export wurde vorgetäuscht.
