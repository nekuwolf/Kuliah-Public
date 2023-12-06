create database SBD_220040001
on primary (
	NAME='SBD_220040001',
	FILENAME='C:\Users\user\Documents\SQLDB\SBD_220040001.mdf',
	SIZE=10MB,
	MAXSIZE=unlimited,
	FILEGROWTH=5MB
)
log on (
	NAME='SBD_220040001_log',
	FILENAME='C:\Users\user\Documents\SQLDB\SBD_220040001_log.ldf',
	SIZE=5MB,
	MAXSIZE=unlimited,
	FILEGROWTH=2MB
)