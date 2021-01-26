CREATE DATABASE TestDB;
GO
USE TestDB;
CREATE TABLE Colors (
    Id int NOT NULL IDENTITY(1, 1),
    Name varchar(50) NOT NULL,
    HexCode varchar(50) NOT NULL,
	CONSTRAINT color_pk PRIMARY KEY (Id)
);
INSERT INTO Colors (Name, HexCode) 
VALUES	('Black', '000000'),
		('Red', 'FF0000'),
		('Maroon', '800000'),
		('Teal', '008080'), 
		('Purple', '800080'), 
		('Blue', '0000FF'), 
		('Gray', '808080');