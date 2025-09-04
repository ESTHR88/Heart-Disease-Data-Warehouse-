-- Create the main Data Warehouse DB
CREATE DATABASE HeartDiseaseDW;
GO

-- Switch to it
USE HeartDiseaseDW;
GO


CREATE TABLE  heart_disease_uci (
    
    id INT NULL,                          -- keep if CSV has id; else stays NULL
    age INT NULL,
    sex VARCHAR(10) NULL,                  -- 'Male' / 'Female'
    dataset VARCHAR(50) NULL,             -- e.g., Cleveland/Hungarian etc.
    cp VARCHAR(50) NULL,                  -- 'Typical angina', etc.
    trestbps INT NULL,
    chol INT NULL,
    fbs VARCHAR(5) NULL,                  -- 'True' / 'False'
    restecg VARCHAR(50) NULL,             -- text labels
    thalach INT NULL,
    exang VARCHAR(5) NULL,                -- 'True' / 'False'
    oldpeak VARCHAR (10) NULL,            -- e.g., 1.0, 2.3
    slope VARCHAR(20) NULL,               -- text labels
    ca TINYINT NULL,                      -- 0–3 (if import fails, switch to VARCHAR(10))
    thal VARCHAR(50) NULL,                -- text labels
    num TINYINT NULL                      -- 0–4
);






select* from heart_disease_uci