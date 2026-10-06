
USE EC_IT143_JMM;
GO

CREATE OR ALTER PROCEDURE dbo.usp_Load_HelloWorld_AverageSalary
AS
BEGIN
    SET NOCOUNT ON;

    TRUNCATE TABLE dbo.t_HelloWorld_AverageSalary;

    INSERT INTO dbo.t_HelloWorld_AverageSalary (AverageSalary)
    SELECT AverageSalary
    FROM dbo.v_HelloWorld_AverageSalary;
END;
GO
