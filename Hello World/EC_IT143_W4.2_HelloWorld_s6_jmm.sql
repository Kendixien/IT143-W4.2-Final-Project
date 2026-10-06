
USE EC_IT143_JMM;
GO

TRUNCATE TABLE dbo.t_HelloWorld_AverageSalary;
GO

INSERT INTO dbo.t_HelloWorld_AverageSalary (AverageSalary)
SELECT AverageSalary
FROM dbo.v_HelloWorld_AverageSalary;
GO

SELECT *
FROM dbo.t_HelloWorld_AverageSalary;
GO
