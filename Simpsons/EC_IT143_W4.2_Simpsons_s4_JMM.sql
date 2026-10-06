
/*
    File: EC_IT143_W4.2_Simpsons_s4_jmm.sql
    Course: IT 143
    Project: My Communities Analysis
    Step: 4 - Create a view
*/

USE Simpsons;
GO

CREATE OR ALTER VIEW dbo.v_Simpsons_Records_Per_Department
AS
SELECT
    Department,
    COUNT(*) AS TotalRecords
FROM dbo.Family_Data
GROUP BY Department;
GO

SELECT *
FROM dbo.v_Simpsons_Records_Per_Department
ORDER BY Department;
GO
