
/*
    File: EC_IT143_W4.2_Simpsons_s5.2_jmm.sql
    Course: IT 143
    Project: My Communities Analysis
    Step: 5.2 - Refine the table architecture

    Purpose:
    Refine the table structure by adding a primary key
    and making TotalRecords a required column.
*/

USE Simpsons;
GO

-- Verify the table exists and contains the expected data.
SELECT *
FROM dbo.t_Simpsons_Records_Per_Department;
GO

-- Make TotalRecords a required column.
ALTER TABLE dbo.t_Simpsons_Records_Per_Department
ALTER COLUMN TotalRecords INT NOT NULL;
GO

-- Verify the primary key.
SELECT
    name AS ConstraintName,
    type_desc AS ConstraintType
FROM sys.objects
WHERE parent_object_id =
    OBJECT_ID('dbo.t_Simpsons_Records_Per_Department')
    AND type = 'PK';
GO

-- Verify the final table structure.
EXEC sp_help 'dbo.t_Simpsons_Records_Per_Department';
GO

-- Verify the final data.
SELECT
    DepartmentID,
    Department,
    TotalRecords
FROM dbo.t_Simpsons_Records_Per_Department
ORDER BY DepartmentID;
GO
