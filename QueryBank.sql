CREATE TABLE Titles
(
	TitleID int IDENTITY(1,1),
	TitleName nvarchar(15)
);

CREATE TABLE Customers
(
	CustomerID int IDENTITY(1,1),
	FirstName nvarchar(20),
	LastName nvarchar(20),
	OIB char(11),
	PhoneNumber varchar(20),
	Address nvarchar(20),
	City nvarchar(20),
	Country nvarchar(15),
	PostalCode nvarchar(10)
);

CREATE TABLE Transactions
(
	TransactionID int IDENTITY(1,1),
	TransactionDate datetime,
	Status int,
);

CREATE TABLE Employees
(
	EmployeeID int IDENTITY(1,1),
	FirstName nvarchar(20),
	LastName nvarchar(20),
	Title nvarchar(15),
	Email nvarchar(20)
);

ALTER TABLE Customers
ADD UNIQUE(OIB);

ALTER TABLE Titles 
ALTER COLUMN TitleName nvarchar(25);

INSERT INTO Titles(TitleName)
VALUES ('Director'), ('Vice president'), ('Investment associate'), ('Investment analyst');

SELECT * FROM Titles;

INSERT INTO Customers (FirstName, LastName, OIB, PhoneNumber, Address, City, Country, PostalCode)
VALUES ('Stipe', 'Stipic', '12345678900', '389100', 'Mozzarella 5', 'Ancona', 'Italy', '10000'),
('Mate', N'Matić', '12345678901', '389101', 'Schnitzelstrasse 55', 'Frankfurt', 'Germany', '60306'),
('Ivo', N'Ivić', '12345678902', '389102', 'Rue Baguette 18', 'Paris', 'France', '75000'),
('Ana', N'Anić', '12345678903', '389103', 'Calle Tortilla 36', 'Cancun', 'Mexico', '77500'),
('Pjero', N'Perić', '12345678904', '389104', 'Via Gnocchi 26', 'Trieste', 'Italy', '34100'),
('Boris', N'Borić', '12345678905', '389105', N'Put Ćevapčića 13', 'Solin', 'Croatia', '21 210');

UPDATE Customers
SET LastName = N'Stipić', Address = 'Viale Mozzarella 5'
WHERE FirstName = 'Stipe'

UPDATE Customers
SET PostalCode = '21210'
WHERE City = 'Solin'

UPDATE Customers
SET PostalCode = '60121'
WHERE City = 'Ancona'

SELECT * FROM Customers;

INSERT INTO Transactions(TransactionDate, Status)
VALUES ('2018-10-23', '1'),
('2018-10-29', '1'),
('2018-11-18', '1'),
('2018-12-20', '1');

SELECT * FROM Transactions;

ALTER TABLE Transactions
ADD Description nvarchar(255);

ALTER TABLE Employees
ALTER COLUMN Email nvarchar(255);

ALTER TABLE Employees
ALTER COLUMN Title nvarchar(25);

INSERT INTO Employees(FirstName, LastName, Title, Email)
VALUES ('Ante', N'Antić', 'Director', 'ante.antic@email.com'),
('Marija', N'Marić', 'Investment analyst', 'marija.marić@email.com'), 
('Matko', N'Matkić', 'Vice president', 'matko.matic@email.com');

SELECT * FROM Employees;