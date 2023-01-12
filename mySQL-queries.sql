/*first create database*/
CREATE DATABASE cargoManagementSystem;

/*then you can add tables*/
USE cargoManagementSystem;

CREATE TABLE employee(
	Id int IDENTITY(1,1) NOT NULL,
	LastName nvarchar(64) NOT NULL,
	FirstName nvarchar(64) NOT NULL,
	UserName nvarchar(64) NOT NULL,
	UserPassword nvarchar(64) NOT NULL,
	UserRole nvarchar(64) NOT NULL,
    PRIMARY KEY (Id)
);
CREATE TABLE Shipment(
	Id int IDENTITY(1,1) NOT NULL,
	TypeOfShipment nvarchar(64) NOT NULL,
	PackageWeight real NOT NULL,
	PackageDx real NOT NULL,
	PackageDy real NOT NULL,
	PackageDz real NOT NULL,
	Price real NOT NULL,
	SenderFirstName nvarchar(64) NOT NULL,
	SenderLastName nvarchar(64) NOT NULL,
	SenderCity nvarchar(64) NOT NULL,
	RecieverFirstName nvarchar(64) NOT NULL,
	RecieverLastName nvarchar(64) NOT NULL,
	RecieverCity nvarchar(64) NOT NULL,
	CurrentStatus nvarchar(64) NOT NULL,
	Sdate datetime NULL,
	Rdate datetime NULL,
    PRIMARY KEY (Id)
);
INSERT INTO employee (LastName,FirstName,UserName,UserPassword,UserRole)
     VALUES ('admin','admin','admin1','123456','admin');
