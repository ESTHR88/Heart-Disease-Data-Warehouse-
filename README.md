🏥 Healthcare Data Warehouse – Heart Disease Dataset
This repository contains **Data Warehouse project** using the **kaggle synthetic heart disease dataset**.  

## 📌 Project Goals
- Build a **data warehouse schema** with fact and dimension tables  
- Perform **ETL (Extract, Transform, Load)** on raw healthcare data  
- Create an **ERD (Entity Relationship Diagram)**  
- Run **SQL analytics queries** for insights  
-------

⚠️ **Note:** This project uses **synthetic healthcare data** (not real patient data).

**Dataset**
Source: Kaggle
Columns: age, sex, cp, trestbps, chol, fbs, restecg, thalach, exang, oldpeak, slope, ca, thal, num.

**Project Steps Completed**
| Step                         | Description                                                                                   |
| ---------------------------- | --------------------------------------------------------------------------------------------- |
| **Database & Staging Table** | Created `HeartDiseaseDW` database and staging table `heart_disease_uci`. Loaded raw CSV data. |
| **Dimension Tables (DDL)**   | Created `DimPatient` and `DimTest` with primary keys.                                         |
| **Fact Table (DDL)**         | Created `FactHeartDisease` with foreign keys linking to dimensions and numeric measures.      |
| **Data Population**          | Populated dimension tables from staging and fact table via joins.                             |
| **ERD / Star Schema**        | Designed ERD showing `FactHeartDisease` in the center and dimensions around it.               |
