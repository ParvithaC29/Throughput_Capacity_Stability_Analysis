CREATE DATABASE factory_analysis;
USE factory_analysis;
CREATE TABLE production_data (
    Timestamp DATETIME,
    MachineID INT,
    Plant VARCHAR(50),
    Temperature FLOAT,
    Vibration FLOAT,
    Pressure FLOAT,
    EnergyConsumption FLOAT,
    ProductionUnits INT,
    DefectCount INT,
    MaintenanceFlag INT
);
USE factory_analysis;
SHOW TABLES;
SELECT * FROM production_data LIMIT 10;
SELECT 
    Plant,
    DATE(Timestamp) AS production_date,
    HOUR(Timestamp) AS production_hour,
    SUM(ProductionUnits) AS total_units
FROM production_data
GROUP BY Plant, production_date, production_hour
ORDER BY Plant, production_date, production_hour;
SELECT 
    Plant,
    DATE(Timestamp) AS production_date,
    SUM(ProductionUnits) AS total_units
FROM production_data
GROUP BY Plant, production_date
ORDER BY Plant, production_date;
SELECT 
    MachineID,
    AVG(ProductionUnits) AS avg_production,
    SUM(MaintenanceFlag) AS maintenance_count
FROM production_data
GROUP BY MachineID
ORDER BY avg_production ASC
LIMIT 10;