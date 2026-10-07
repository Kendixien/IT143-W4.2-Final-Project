/*
    Name: Jean-Marc MUKENDI
    Course: IT 143
    Assignment: 5.2 Final Project - My Communities Analysis: Create Answers
    Database: MyFC
    File: EC_IT143_W5.2_MyFC_JMM.sql

    Purpose:
    Answer questions about player positions, team rosters, and player salaries.

    IMPORTANT:
    This is a PRELIMINARY DRAFT. Before final submission, replace one question
    with a question actually contributed by another student for the MyFC dataset,
    and record that student's name. Also run and verify each query in SSMS.
*/

USE MyFC;
GO

/*==============================================================
Question 1 (My own question from Assignment 4.4)
Author: Jean-Marc MUKENDI
Question:
Which players have the highest salaries within each playing position?
This helps the head coach review salary distribution by position.

Answer:
Join player details to positions and salary facts, then rank salary
records within each position.
==============================================================*/
WITH PlayerSalary AS
(
    SELECT
        p.pl_id,
        p.pl_name,
        pos.p_name AS PositionName,
        f.mtd_salary,
        ROW_NUMBER() OVER
        (
            PARTITION BY pos.p_name
            ORDER BY f.mtd_salary DESC
        ) AS SalaryRank
    FROM dbo.tblPlayerDim AS p
    INNER JOIN dbo.tblPositionDim AS pos
        ON p.p_id = pos.p_id
    INNER JOIN dbo.tblPlayerFact AS f
        ON p.pl_id = f.pl_id
)
SELECT
    pl_id,
    pl_name,
    PositionName,
    mtd_salary
FROM PlayerSalary
WHERE SalaryRank = 1
ORDER BY PositionName;
GO

/*==============================================================
Question 2 (My own question from Assignment 4.4)
Author: Jean-Marc MUKENDI
Question:
How is the squad distributed across playing positions, and which
positions have the most players? This helps coaches identify gaps.

Answer:
Count players grouped by position.
==============================================================*/
SELECT
    pos.p_name AS PositionName,
    COUNT(*) AS PlayerCount
FROM dbo.tblPlayerDim AS p
INNER JOIN dbo.tblPositionDim AS pos
    ON p.p_id = pos.p_id
GROUP BY pos.p_name
ORDER BY PlayerCount DESC, PositionName;
GO

/*==============================================================
Question 3 (My own question from Assignment 4.4)
Author: Jean-Marc MUKENDI
Question:
What is the total monthly salary by team? This helps team management
understand the distribution of player salary costs across teams.

Answer:
Join player details to salary facts and team details, then sum salary.
==============================================================*/
SELECT
    t.t_code AS TeamCode,
    SUM(f.mtd_salary) AS TotalMonthlySalary
FROM dbo.tblPlayerDim AS p
INNER JOIN dbo.tblPlayerFact AS f
    ON p.pl_id = f.pl_id
INNER JOIN dbo.tblTeamDim AS t
    ON p.t_id = t.t_id
GROUP BY t.t_code
ORDER BY TotalMonthlySalary DESC;
GO

/*==============================================================
Question 4 (Reserved for a classmate question)
Author: TO BE COMPLETED after Canvas unlocks classmates' posts
Question:
TODO: Insert one real question from a classmate about MyFC here.

Answer:
TODO: Write and test the SQL query that answers the classmate's question.
Do not submit this draft as the final version until completed.
==============================================================*/
-- TODO: Replace this section with the actual classmate question and answer.
