# Throughput & Capacity Stability Analysis

## Overview

This project focuses on analyzing industrial production data to evaluate throughput, machine stability, and operational efficiency. The work spans across Excel, SQL, Python, and Power BI, covering the complete data analytics pipeline from data processing to predictive modeling and visualization.

---

## Tasks Covered

### Q1 – Throughput Analysis (Excel)

* Hourly production analysis by Plant and MachineID
* Identification of peak and low-output hours
* Computation of utilization proxy

### Q2 – Stability Analysis (Excel)

* Coefficient of Variation (CV) calculation per machine
* Identification of unstable machines
* Correlation with maintenance frequency

---

### Q3 – Production Aggregation (SQL)

* Hourly and daily production aggregation per plant
* Identification of bottom 10 machines with lowest average production
* Inclusion of maintenance count

### Q4 – Capacity Stability Table (SQL)

* Created `capacity_stability_2025` table
* Computed:

  * Average Output
  * Standard Deviation
  * Coefficient of Variation (CV)
  * Maintenance Count
  * Total Defects

---

### Q5 – Time-Series Forecasting (Python)

* Forecasted daily production for next 14 days
* Implemented:

  * Baseline (naive) model
  * Linear Regression model
* Evaluated using **MAPE (Mean Absolute Percentage Error)**

---

### Q6 – Classification Model (Python)

* Predicted **LowOutputEvent** using:

  * Sensor data (Temperature, Vibration, Pressure)
  * Energy Consumption
* Used classification model
* Evaluated using **F1 Score**
* Deployed locally using **Streamlit**

---

### Q7 – Capacity Dashboard (Power BI)

* Daily production trends
* Plant-wise comparison
* Low-output machines analysis
* Hour vs Day heatmap visualization

---

### Q8 – Stability Dashboard (Power BI)

* Machine-wise CV analysis
* Maintenance vs output relationship
* Drillthrough analysis for machine-level insights

---

## Tools & Technologies

* **Excel** – Data analysis & preprocessing
* **SQL** – Data aggregation & transformation
* **Python** – Machine learning & forecasting
* **Power BI** – Data visualization & dashboards
* **Streamlit** – Model deployment

---

## Key Insights

* Machines with higher variability (CV) show unstable performance
* Low-performing machines often have higher maintenance frequency
* Sensor and energy data can effectively predict low-output events
* Forecasting helps in production planning and capacity optimization

---

## Project Structure

* Q1–Q2: Excel Analysis
* Q3–Q4: SQL Scripts
* Q5–Q6: Python Models
* Q7–Q8: Power BI Dashboards

---

## Author

**Parvitha**

---
