@echo off
:: Define a data e hora atual no formato YYYYMMDD_HHMM
set DATETIME=%DATE:~6,4%%DATE:~3,2%%DATE:~0,2%_%TIME:~0,2%%TIME:~3,2%
set DATETIME=%DATETIME: =0%

:: Caminho onde o backup será salvo (altere se necessário)
set BACKUP_PATH=C:\Users\pedro\OneDrive\ADS\4termo\bancoDeDados2\projeto-DBA

:: Nome do arquivo de backup
set FILE_NAME=educacional_backup_%DATETIME%.sql

:: Comando mysqldump para realizar o backup
"C:\Program Files\MySQL\MySQL Server 8.0\bin\mysqldump.exe" -u backup-user -pSenha@123 --databases educacional > %BACKUP_PATH%\%FILE_NAME%

:: Mensagem de sucesso
echo Backup realizado com sucesso em %BACKUP_PATH%\%FILE_NAME%
pause
