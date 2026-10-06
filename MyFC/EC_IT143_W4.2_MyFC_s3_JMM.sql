
/*
    File: EC_IT143_W4.2_MyFC_s3_jmm.sql
    Course: IT 143
    Project: My Communities Analysis
    Step: 3 - Create an ad hoc SQL query

    Question:
    How many players are on each team?
*/

USE MyFC;
GO

SELECT
    t.t_id,
    t.t_code,
    COUNT(p.pl_id) AS TotalPlayers
FROM dbo.tblTeamDim AS t
LEFT JOIN dbo.tblPlayerDim AS p
    ON t.t_id = p.t_id
GROUP BY
    t.t_id,
    t.t_code
ORDER BY
    t.t_id;
GO
