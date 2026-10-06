
/*
    File: EC_IT143_W4.2_Simpsons_s3_jmm.sql
    Course: IT 143
    Project: My Communities Analysis
    Step: 3 - Create an ad hoc query

    Question:
    How many records are in each department?
*/

USE Simpsons;
GO

SELECT
    Department,
    COUNT(*) AS TotalRecords
FROM dbo.Family_Data
GROUP BY Department
ORDER BY Department;
GO
