
/*
    File: EC_IT143_W4.2_MyFC_s5.2_jmm.sql
    Course: IT 143
    Project: My Communities Analysis
    Step: 5.2 - Refine the table architecture

    Purpose:
    Add a primary key and enforce appropriate constraints.
*/

USE MyFC;
GO

-- Add a primary key to identify each team uniquely.
ALTER TABLE dbo.t_MyFC_Players_Per_Team
ADD CONSTRAINT PK_t_MyFC_Players_Per_Team
PRIMARY KEY (t_id);
GO

-- Verify the table structure and data.
EXEC sp_help 'dbo.t_MyFC_Players_Per_Team';
GO

SELECT *
FROM dbo.t_MyFC_Players_Per_Team
ORDER BY t_id;
GO
