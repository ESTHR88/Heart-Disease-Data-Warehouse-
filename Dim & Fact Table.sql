
-- 1️ Dimension Tables
-- =========================================

-- Dimension: Patient
CREATE TABLE DimPatient (
    PatientID INT IDENTITY(1,1) PRIMARY KEY,
    Age INT,
    Sex VARCHAR(10)
);

-- Dimension: Test
CREATE TABLE DimTest (
    TestID INT IDENTITY(1,1) PRIMARY KEY,
    CP VARCHAR(50),
    RestECG VARCHAR(50),
    ExAng VARCHAR(5),
    Slope VARCHAR(20),
    CA TINYINT,
    Thal VARCHAR(50)
);

-- 2️ Populate Dimension Tables
-- =========================================

-- Populate DimPatient
INSERT INTO DimPatient (Age, Sex)
SELECT DISTINCT Age, Sex
FROM heart_disease_uci;


-- Populate DimTest
INSERT INTO DimTest (CP, RestECG, ExAng, Slope, CA, Thal)
SELECT DISTINCT CP, RestECG, ExAng, Slope, CA, Thal
FROM heart_disease_uci;

select* from DimPatient

select* from DimTest

-- 3️ Create Fact Table
-- =========================================

CREATE TABLE FactHeartDisease (
    FactID INT IDENTITY(1,1) PRIMARY KEY,
    PatientID INT FOREIGN KEY REFERENCES DimPatient(PatientID),
    TestID INT FOREIGN KEY REFERENCES DimTest(TestID),
    Trestbps INT,
    Chol INT,
    Thalach INT,
    Oldpeak FLOAT,
    Num TINYINT
);