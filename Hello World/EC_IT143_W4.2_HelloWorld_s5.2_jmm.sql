
USE EC_IT143_JMM;
GO

ALTER TABLE dbo.t_HelloWorld_AverageSalary
ADD AverageSalaryID INT IDENTITY(1,1) NOT NULL;
GO

ALTER TABLE dbo.t_HelloWorld_AverageSalary
ADD CONSTRAINT PK_t_HelloWorld_AverageSalary
PRIMARY KEY (AverageSalaryID);
GO

SELECT *
FROM dbo.t_HelloWorld_AverageSalary;
GO
