@ECHO off

:: batch file for
:: James, John, Arjun ASP.NET 4 Web Programming with C# 2015
:: company: Mike Murach & Associates, Inc.
:: date:    March 16, 2011
:: 
:: Uses SQLCMD utility to run a SQL script that creates
:: the CarProjectDB database.

ECHO Attempting to create the CarProjectDB database . . . 
sqlcmd -S localhost\SQLExpress -E /i CarProjectDB.sql
ECHO.
ECHO If no error message is shown, then the database was created successfully.
ECHO.
PAUSE