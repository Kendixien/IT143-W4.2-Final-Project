/*
    Name: Jean-Marc MUKENDI
    Course: IT 143
    Assignment: 5.2 Final Project - My Communities Analysis: Create Answers
    Database: Simpsons
    File: EC_IT143_W5.2_Simpsons_JMM.sql

    Purpose:
    Answer questions about consumer financial transactions and spending patterns.

    IMPORTANT:
    This is a PRELIMINARY DRAFT. Before final submission, replace one question
    with a question actually contributed by another student for the Simpsons
    dataset, and record that student's name. Also run and verify each query in SSMS.
*/

USE Simpsons;
GO

/*==============================================================
Question 1 (My own question from Assignment 4.4)
Author: Jean-Marc MUKENDI
Question:
Which card members have the highest total transaction amounts, and how
many transactions did each member make? This helps review spending activity.

Answer:
Group transaction records by card member and calculate totals and counts.
==============================================================*/
SELECT
    Member_Name,
    SUM(COALESCE(Debit, 0) - COALESCE(Credit, 0)) AS NetTransactionAmount,
    COUNT(*) AS TransactionCount
FROM dbo.FBS_Viza_Costmo
GROUP BY Member_Name
ORDER BY NetTransactionAmount DESC;
GO

/*==============================================================
Question 2 (My own question from Assignment 4.4)
Author: Jean-Marc MUKENDI
Question:
Which transactions have the largest amounts, and which members and
descriptions are associated with them? This helps review high-value activity.

Answer:
Sort transactions by the absolute difference between debit and credit.
==============================================================*/
SELECT TOP (20)
    [Date],
    Member_Name,
    [Description],
    Debit,
    Credit,
    ABS(COALESCE(Debit, 0) - COALESCE(Credit, 0)) AS TransactionAmount
FROM dbo.FBS_Viza_Costmo
ORDER BY TransactionAmount DESC;
GO

/*==============================================================
Question 3 (My own question from Assignment 4.4)
Author: Jean-Marc MUKENDI
Question:
Which transaction categories account for the greatest total spending?
This helps management understand the categories with the largest amounts.

Answer:
Use the Category and Amount fields from Planet_Express.
==============================================================*/
SELECT
    Category,
    SUM(Amount) AS TotalAmount,
    COUNT(*) AS TransactionCount
FROM dbo.Planet_Express
GROUP BY Category
ORDER BY TotalAmount DESC;
GO

/*==============================================================
Question 4 (Reserved for a classmate question)
Author: TO BE COMPLETED after Canvas unlocks classmates' posts
Question:
TODO: Insert one real question from a classmate about Simpsons here.

Answer:
TODO: Write and test the SQL query that answers the classmate's question.
Do not submit this draft as the final version until completed.
==============================================================*/
-- TODO: Replace this section with the actual classmate question and answer.
