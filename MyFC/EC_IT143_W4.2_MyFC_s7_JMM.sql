
/*
    File: EC_IT143_W4.2_MyFC_s7_jmm.sql
    Course: IT 143
    Project: My Communities Analysis
    Step: 7 - Create a stored procedure

    Purpose:
    Refresh the table containing the number of players per team.
*/

USE MyFC;
GO

CREATE OR ALTER PROCEDURE dbo.usp_Load_MyFC_Players_Per_Team
AS
BEGIN
    SET NOCOUNT ON;

    TRUNCATE TABLE dbo.t_MyFC_Players_Per_Team;

    INSERT INTO dbo.t_MyFC_Players_Per_Team
        (t_id, t_code, TotalPlayers)
    SELECT
        t_id,
        t_code,
        TotalPlayers
    FROM dbo.v_MyFC_Players_Per_Team;
END;
GO
