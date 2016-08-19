@ECHO OFF

ECHO Loading dspdb tables into the database
cd c:\darkstar\sql
FOR %%X IN (*.sql) DO ECHO Importing %%X & "C:\Program Files\MySQL\MySQL Server 5.7\bin\mysql" dspdb -h localhost -u root -ppurple< %%X

ECHO Finished!