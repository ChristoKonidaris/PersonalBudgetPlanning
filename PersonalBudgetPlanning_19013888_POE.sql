CREATE DATABASE PersonalBudgetPlanning_19013888_POE;
use PersonalBudgetPlanning_19013888_POE;

CREATE Table GeneralUser
(
	UserID int Identity(1,1) not null Primary Key,
	UserName varchar (30) not null,
	Password varchar (30) not null,
	Income money not null,
	TotalExpenses money not null
);

Drop TABLE GeneralUser;

CREATE PROC UserAdd
@UserName varchar (30),
@Password varchar (30),
@Income money,
@TotalExpenses money
AS
 INSERT INTO GeneralUser (UserName, Password, Income, TotalExpenses)
 VALUES (@UserName,@Password, 0, 0);

 select * from GeneralUser;

CREATE PROCEDURE UpdateUser
@UserName varchar (30),
@Income money,
@TotalExpenses money
AS
Update GeneralUser SET Income = @Income, TotalExpenses = @TotalExpenses WHERE UserName = @UserName;

CREATE PROC FetchUser
@UserName varchar (30),
@Password varchar (30)
AS
SELECT * from GeneralUser Where UserName = @UserName and Password = @Password;