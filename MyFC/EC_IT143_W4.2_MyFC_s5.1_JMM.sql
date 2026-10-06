
/*
    File: EC_IT143_W4.2_MyFC_s5.1_jmm.sql
    Course: IT 143
    Project: My Communities Analysis
    Step: 5.1 - Turn the view into a table

    Purpose:
    Create a destination table using the player-count view.
*/

USE MyFC;
GO

IF OBJECT_ID('dbo.t_MyFC_Players_Per_Team', 'U') IS NOT NULL
    DROP TABLE dbo.t_MyFC_Players_Per_Team;
GO

SELECT
    t_id,
    t_code,
    TotalPlayers
INTO dbo.t_MyFC_Players_Per_Team
FROM dbo.v_MyFC_Players_Per_Team;
GO

SELECT *
FROM dbo.t_MyFC_Players_Per_Team
ORDER BY t_id;
GO
