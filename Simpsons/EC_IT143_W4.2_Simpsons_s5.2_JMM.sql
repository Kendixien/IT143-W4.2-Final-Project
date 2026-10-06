
/*
    File: EC_IT143_W4.2_Simpsons_s5.2_jmm.sql
    Course: IT 143
    Project: My Communities Analysis
    Step: 5.2 - Refine the table architecture
*/

USE Simpsons;
GO

-- Add a primary key to identify each department.
ALTER TABLE dbo.t_Simpsons_Records_Per_Department
ADD DepartmentID INT IDENTITY(1,1) NOT NULL;
GO

ALTER TABLE dbo.t_Simpsons_Records_Per_Department
ADD CONSTRAINT PK_t_Simpsons_Records_Per_Department
PRIMARY KEY (DepartmentID);
GO

-- Verify the table structure and data.
EXEC sp_help 'dbo.t_Simpsons_Records_Per_Department';
GO

SELECT *
FROM dbo.t_Simpsons_Records_Per_Department
ORDER BY DepartmentID;
GO
