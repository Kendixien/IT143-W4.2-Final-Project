
/*
    File: EC_IT143_W4.2_Simpsons_s5.1_jmm.sql
    Course: IT 143
    Project: My Communities Analysis
    Step: 5.1 - Create the destination table
*/

USE Simpsons;
GO

IF OBJECT_ID('dbo.t_Simpsons_Records_Per_Department', 'U') IS NOT NULL
    DROP TABLE dbo.t_Simpsons_Records_Per_Department;
GO

SELECT
    Department,
    TotalRecords
INTO dbo.t_Simpsons_Records_Per_Department
FROM dbo.v_Simpsons_Records_Per_Department;
GO

SELECT *
FROM dbo.t_Simpsons_Records_Per_Department
ORDER BY Department;
GO
