--create database Company_1
--use Company_1

--create table Employees(
--Id int primary key identity(1,1),
--[Name] nvarchar(50) not null,
--[Surname] nvarchar(50) default 'XXX',
--[Age] int,
--[Salary] decimal,
--[Position] nvarchar(50),
--[IsDeleted] bit default '0',
--[CityId] int foreign key references Cities(Id)
--)
--insert into Employees([Name],[Surname],[Age],[Salary],[Position],[IsDeleted])
--values('Seid','Nuraliyev',33,800,'Boss','0'),
--('Simare','Meherremli',20,4000,'Mentor','0'),
--('Leman','Yaqubova',19,2500,'Reception','0'),
--('Tunar','Namazov',22,1950,'Menecer','0'),
--('Sadiq','Nahmetov',23,3215,'Assistant','0'),
--('Ramil','Nuraliyev',20,800,'Reception','0'),
--('Emil','Abdullayev',20,3400,'Deputy','0'),
--('Orxan','Akberov',26,2750,'Menecer','0'),
--('Togrul','Salmanzade',33,800,'Deputy','0')

--select * from Employees



--create table Cities(
--	Id int primary key identity(1,1),
--	[Name] nvarchar(50) not null,
--	CountryId int foreign key references Countries(Id)
--)
--insert into Cities([Name])
--values
--('Baki'),
--('Ankara'),
--('Lima'),
--('Tehran'),
--('Bilesuvar'),
--('Tiblisi')	

--select * from Cities




--create table Countries(
--	Id int primary key identity(1,1),
--	[Name] nvarchar(50) not null
--)
--insert into Countries([Name])
--values
--('Azerbaycan'),
--('Turkiye'),
--('Canada'),
--('Gurcustan'),
--('Iran'),
--('Amerika')

--select * from Countries


--select * from Employees

--select FirstName,Cities.CityName,Countries.CountryName from Employees
--inner join Cities
--on Cities.Id = Employees.CityId
--inner join Countries 
--on Countries.Id = Cities.CountryId

--select FirstName,Countries.CountryName from Employees
--inner join Cities
--on Cities.Id = Employees.CityId
--inner join Countries 
--on Countries.Id = Cities.CountryId
--where Salary > 2000

--select Cities.CityName,Countries.CountryName from Employees
--inner join Cities
--on Cities.Id = Employees.CityId
--inner join Countries 
--on Countries.Id = Cities.CountryId

--select FirstName,Surname,Age,Salary,Position,Cities.CityName,Countries.CountryName from Employees
--inner join Cities
--on Cities.Id = Employees.CityId
--inner join Countries 
--on Countries.Id = Cities.CountryId
--where Position = 'Reception' 

--select FirstName,Surname,Cities.CityName,Countries.CountryName from Employees 
--inner join Cities
--on Cities.Id = Employees.CityId
--inner join Countries 
--on Countries.Id = Cities.CountryId
--where isDeleted = 'True'