
/*
    File: EC_IT143_W4.2_MyFC_s6_jmm.sql
    Course: IT 143
    Project: My Communities Analysis
    Step: 6 - Load the table

    Purpose:
    Refresh the destination table from the source view.
*/

USE MyFC;
GO

TRUNCATE TABLE dbo.t_MyFC_Players_Per_Team;
GO

INSERT INTO dbo.t_MyFC_Players_Per_Team
    (t_id, t_code, TotalPlayers)
SELECT
    t_id,
    t_code,
    TotalPlayers
FROM dbo.v_MyFC_Players_Per_Team;
GO

SELECT *
FROM dbo.t_MyFC_Players_Per_Team
ORDER BY t_id;
GO
