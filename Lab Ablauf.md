
---

### **1. Einführung ins Monitoring**
- **Warum Monitoring?** 
  - Ressourcenüberwachung (CPU, RAM)
  - Fehlererkennung
  - Optimierung der Leistung
- **Tools**: Prometheus (Datensammlung), Docker Stats Exporter (Container-Metriken), Grafana (Visualisierung)

### **2. Prometheus einrichten**
- **Prometheus als Monitoring-Lösung**:
  - Metriken werden durch Scrape Targets gesammelt.
  - **Konfigurationsbeispiel**:
    ```yaml
    scrape_configs:
      - job_name: 'docker-stats'
        static_configs:
          - targets: ['localhost:3069']
    ```
  - **Scrape Intervall** festlegen: Datenfrequenz und Systembelastung

### **3. Docker Stats Exporter**
- **Was macht Docker Stats Exporter?**
  - Sammelt Container-spezifische Metriken: CPU, RAM, Netzwerk
  - Läuft über Docker-API (Docker.sock mount)
- **Abfragen in Prometheus**:
  - **CPU-Nutzung**:
    ```prometheus
    rate(docker_container_cpu_seconds_total[1m])
    ```
  - **Speicherauslastung**:
    ```prometheus
    docker_container_memory_usage_bytes
    ```
  
### **4. Grafana zur Visualisierung**
- **Datenquelle hinzufügen**: Prometheus als Datenquelle konfigurieren.
- **Dashboard erstellen**:
  - Erstelle Panels für CPU, Speicher, Netzwerk.
  - Visualisiere mit Liniendiagrammen.
- **Beispiel-Query für Grafana**:
  - CPU-Nutzung in Prozent:
    ```prometheus
    100 * (1 - rate(node_cpu_seconds_total{mode="idle"}[1m]) / sum(rate(node_cpu_seconds_total[1m])))
    ```

### **5. Fazit und Q&A**
- **Nutzen des Monitorings**: Übersichtliche Echtzeit-Daten, bessere Ressourcenauslastung.
- **Offene Fragen**: Welche spezifischen Metriken sind für euch am wichtigsten?

---
