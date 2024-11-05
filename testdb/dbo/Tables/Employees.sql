CREATE TABLE [dbo].[Employees] (
    [EmployeeID]  INT             IDENTITY (1, 1) NOT NULL,
    [FirstName]   NVARCHAR (50)   NOT NULL,
    [LastName]    NVARCHAR (50)   NOT NULL,
    [DateOfBirth] DATE            NULL,
    [HireDate]    DATE            DEFAULT (getdate()) NULL,
    [JobTitle]    NVARCHAR (100)  NULL,
    [Salary]      DECIMAL (18, 2) NULL,
    [IsActive]    BIT             DEFAULT ((1)) NULL,
    PRIMARY KEY CLUSTERED ([EmployeeID] ASC),
    CHECK ([Salary]>=(0))
);

