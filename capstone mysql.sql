CREATE TABLE WeatherEnergyData (
    RecordID INT PRIMARY KEY AUTO_INCREMENT,
    ForecastDate DATE,
    City VARCHAR(50),
    TemperatureHigh DECIMAL(5,2),
    TemperatureLow DECIMAL(5,2),
    HumidityPercent DECIMAL(5,2),
    WindSpeedKmH DECIMAL(5,2),
    RainfallMM DECIMAL(5,2),
    AtmosphericPressure DECIMAL(6,2),
    EnergyConsumption DECIMAL(7,2)
);
INSERT INTO WeatherEnergyData (ForecastDate, City, TemperatureHigh, TemperatureLow, HumidityPercent, WindSpeedKmH, RainfallMM, AtmosphericPressure, EnergyConsumption) VALUES
('2025-10-25', 'Bangalore', 30.5, 21.2, 68.5, 12.4, 2.3, 1012.5, 118.7),
('2025-10-26', 'Bangalore', 31.0, 20.9, 70.1, 15.0, 1.2, 1013.0, 120.0),
('2025-10-27', 'Bangalore', 29.5, 19.8, 72.0, 10.5, 5.6, 1011.2, 110.4),
('2025-10-28', 'Bangalore', 28.7, 18.9, 73.5, 9.9, 7.2, 1010.8, 105.6),
('2025-10-29', 'Bangalore', 29.2, 20.0, 74.1, 13.2, 3.8, 1012.0, 107.8),
('2025-10-30', 'Bangalore', 30.8, 21.3, 67.8, 14.0, 2.0, 1012.7, 122.9),
('2025-10-31', 'Bangalore', 31.4, 22.1, 66.0, 11.8, 1.0, 1014.2, 125.1),
('2025-11-01', 'Bangalore', 28.9, 19.2, 76.4, 8.7, 8.9, 1010.1, 102.5),
('2025-11-02', 'Bangalore', 30.2, 20.5, 70.7, 12.9, 3.0, 1011.8, 115.3),
('2025-11-03', 'Bangalore', 29.7, 21.0, 73.0, 15.4, 4.5, 1012.2, 109.9);
SELECT 
    MONTH(ForecastDate) AS Month,
    AVG(EnergyConsumption) AS AvgEnergy
FROM WeatherEnergyData
GROUP BY MONTH(ForecastDate);
SELECT 
    CASE 
        WHEN DAYOFWEEK(ForecastDate) IN (1, 7) THEN 'Weekend'
        ELSE 'Weekday'
    END AS DayType,
    AVG(EnergyConsumption) AS AvgEnergy
FROM WeatherEnergyData
GROUP BY DayType;
SELECT 
    ForecastDate,
    TemperatureHigh,
    EnergyConsumption
FROM WeatherEnergyData
ORDER BY ForecastDate;
SELECT * FROM WeatherEnergyData; weather energy data employees