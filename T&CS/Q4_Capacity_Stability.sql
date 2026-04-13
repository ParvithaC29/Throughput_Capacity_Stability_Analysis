USE factory_analysis;

DROP TABLE IF EXISTS capacity_stability_2025;

CREATE TABLE capacity_stability_2025 (
    MachineID INT,
    Plant VARCHAR(50),
    AvgOutput FLOAT,
    StdOutput FLOAT,
    CV_Output FLOAT,
    MaintenanceCount INT,
    DefectCountTotal INT
);

DESCRIBE capacity_stability_2025;

SHOW TABLES;
INSERT INTO capacity_stability_2025
(MachineID, Plant, AvgOutput, StdOutput, CV_Output, MaintenanceCount, DefectCountTotal)

SELECT 
    MachineID,
    Plant,
    AVG(ProductionUnits) AS AvgOutput,
    STDDEV(ProductionUnits) AS StdOutput,
    STDDEV(ProductionUnits) / AVG(ProductionUnits) AS CV_Output,
    SUM(MaintenanceFlag) AS MaintenanceCount,
    SUM(DefectCount) AS DefectCountTotal
FROM production_data
GROUP BY MachineID, Plant;

SELECT * FROM capacity_stability_2025 LIMIT 10;
