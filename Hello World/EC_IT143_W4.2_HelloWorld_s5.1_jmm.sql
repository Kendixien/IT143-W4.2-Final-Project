
USE EC_IT143_JMM;
GO

IF OBJECT_ID('dbo.t_HelloWorld_AverageSalary', 'U') IS NOT NULL
    DROP TABLE dbo.t_HelloWorld_AverageSalary;
GO

SELECT AverageSalary
INTO dbo.t_HelloWorld_AverageSalary
FROM dbo.v_HelloWorld_AverageSalary;
GO

SELECT *
FROM dbo.t_HelloWorld_AverageSalary;
GO
