# Docker Container Monitoring Lab

## Tools und Technologien:

### Grafana
- Darstellung von Metriken in schönen Dashboards.
- Anpassbare Visualisierung für Echtzeitdaten.

### Prometheus
- Sammlung und Speicherung von Metriken zur Echtzeitüberwachung.
- Integration mit verschiedenen Exportern zur Erfassung von Container- und Systemdaten.

### cAdvisor (nicht auf arm64)
- Erfasst Container-spezifische Metriken wie CPU, Speicher, und Netzwerk.
- Läuft nicht nativ auf ARM64-Architektur (z.B. M1/M2 Macs).

### Docker Stats Exporter (läuft mit Emulation)
- Alternative zu cAdvisor zur Erfassung von Container-Metriken.
- Nicht nativ für ARM64, läuft aber mit Emulation auf ARM-basierten Systemen.

### Docker Metrics
- Umfangreiche Metriken über den Docker-Daemon und die Container.
- Kann unübersichtlich sein, wenn sie nicht visualisiert werden.

### Node Exporter
- Erfasst Hardware- und Betriebssystemmetriken wie CPU, Speicher und Festplattennutzung.
- Ergänzt die Überwachung der Host-Hardware zusammen mit Docker-Metriken.