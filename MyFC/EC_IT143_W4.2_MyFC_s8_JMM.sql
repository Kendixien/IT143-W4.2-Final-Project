
/*
    File: EC_IT143_W4.2_MyFC_s8_jmm.sql
    Course: IT 143
    Project: My Communities Analysis
    Step: 8 - Execute the stored procedure
*/

USE MyFC;
GO

EXEC dbo.usp_Load_MyFC_Players_Per_Team;
GO

SELECT *
FROM dbo.t_MyFC_Players_Per_Team
ORDER BY t_id;
GO
