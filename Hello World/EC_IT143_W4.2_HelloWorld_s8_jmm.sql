
USE EC_IT143_JMM;
GO

EXEC dbo.usp_Load_HelloWorld_AverageSalary;
GO

SELECT *
FROM dbo.t_HelloWorld_AverageSalary;
GO
