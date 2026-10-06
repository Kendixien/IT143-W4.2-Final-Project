
/*
    File: EC_IT143_W4.2_MyFC_s4_jmm.sql
    Course: IT 143
    Project: My Communities Analysis
    Step: 4 - Turn the ad hoc query into a view

    Purpose:
    Create a reusable view showing the number of players
    assigned to each team.
*/

USE MyFC;
GO

CREATE OR ALTER VIEW dbo.v_MyFC_Players_Per_Team
AS
SELECT
    t.t_id,
    t.t_code,
    COUNT(p.pl_id) AS TotalPlayers
FROM dbo.tblTeamDim AS t
LEFT JOIN dbo.tblPlayerDim AS p
    ON t.t_id = p.t_id
GROUP BY
    t.t_id,
    t.t_code;
GO

SELECT *
FROM dbo.v_MyFC_Players_Per_Team
ORDER BY t_id;
GO
