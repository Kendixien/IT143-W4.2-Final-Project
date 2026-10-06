
USE EC_IT143_JMM;
GO

CREATE OR ALTER VIEW dbo.v_HelloWorld_AverageSalary
AS
SELECT AVG(salary) AS AverageSalary
FROM dbo.Employee;
GO

SELECT *
FROM dbo.v_HelloWorld_AverageSalary;
GO
