--Queries for Creating Tables--
------------------------------------------------------------
--1) Create Database and Schema

If object_ID('WhiteHallProject') IS NOT NULL
drop database WhiteHallProject

Create Database WhiteHallProject

use WhiteHallProject 
GO

create Schema WhiteHall
--------------------------------------------------------------
--2) Create Tables
--------------------------------------------------------------
CREATE TABLE WhiteHall.DimSalesPerson
(
	BusinessEntity_sk int IDENTITY (1,1) NOT NULL,
	BusinessEntityID nvarchar (255) NULL,
	LoginID nvarchar (255) NULL,
	JobTitle nvarchar (255) NULL,
	FirstName nvarchar (255) NULL,
	MiddleName nvarchar (255) NULL,
	LastName nvarchar (255) NULL,
	EmployeeFullName AS (FirstName +' '+ LastName) PERSISTED,
	BirthDate date NULL,
	Email nvarchar (255) NULL,
	[Shift] nvarchar (255) NULL,
	NationalIDNumber nvarchar (255) NULL,
	MaritalStaus nvarchar (255) NULL,
	Gender nvarchar (255) NULL,
	VacationHours int NULL,
	SickLeaveHours int NULL,
	HireDate date NULL,
	YearlySalesQuota float NULL,
	Bonus float NULL,
	StartDate datetime NULL,
	EndDate datetime NULL,
	StausFlag nvarchar (255) NULL,
 CONSTRAINT WhiteHall_SalesPerson PRIMARY KEY CLUSTERED (BusinessEntity_sk)
)


CREATE TABLE [WhiteHall].[DimTerritory]
(
	Territory_sk int IDENTITY (1,1) NOT NULL,
	TerritoryID nvarchar (255) NULL,
	TerritoryName nvarchar (255) NULL,
	CountryRegionCode nvarchar (255) NULL,
	[Group] nvarchar (255) NULL,
	StartDate datetime NULL,
	EndDate datetime NULL,
	StatusFlag nvarchar (255) NULL,
 CONSTRAINT WhiteHall_Territory_sk PRIMARY KEY CLUSTERED (Territory_sk)
)


CREATE TABLE WhiteHall.DimProduct
(
	Product_sk int IDENTITY (1,1) NOT NULL,
	ProductID int NULL,
	ProductName nvarchar (255) NULL,
	UnitPrice float NULL,
	UnitPriceDiscount float NULL,
	StartDate datetime NULL,
	EndDate datetime NULL,
	StatusFlag nvarchar (255) NULL,
 CONSTRAINT [WhiteHall_Product_sk] PRIMARY KEY CLUSTERED (Product_sk)
 )


CREATE TABLE WhiteHall.DimCustomer
(
	Customer_sk int IDENTITY (1,1) NOT NULL,
	CustomerID int NULL,
	CustomerName nvarchar (255) NULL,
	AccountNumber int NULL,
	StartDate datetime NULL,
	EndDate datetime NULL,
	StatusFlag nvarchar (255) NULL,
 CONSTRAINT WhiteHall_Customer_sk PRIMARY KEY CLUSTERED (Customer_sk)
 )


CREATE TABLE WhiteHall.DimAddress
(
	Address_sk int IDENTITY (1,1) NOT NULL,
	AddressID int NULL,
	ShipToAddress nvarchar (255) NULL,
	BillToAddress nvarchar (255) NULL,
	StartDate datetime NULL,
	EndDate datetime NULL,
	StatusFlag nvarchar (255) NULL,
 CONSTRAINT WhiteHall_CustomerAddress_sk PRIMARY KEY CLUSTERED (Address_sk)
 )
 

CREATE TABLE WhiteHall.DimSpecialOrder
(
	SpecialOrder_sk int IDENTITY (1,1) NOT NULL,
	SpecialOrderID nvarchar (255) NULL,
	SpecialOrderName nvarchar (255) NULL,
	StartDate datetime NULL,
	EndDate datetime NULL,
	StatusFlag nvarchar (255) NULL,
 CONSTRAINT WhiteHall_SpecialOrder_sk PRIMARY KEY CLUSTERED (SpecialOrder_sk)
 )


CREATE TABLE WhiteHall.DimShipment
(
	ShipMethod_sk int IDENTITY (1,1) NOT NULL,
	ShipMethodID [int] NULL,
	Freight nvarchar (255) NULL,
	StartDate datetime NULL,
	EndDate datetime NULL,
	Statusflag nvarchar (255) NULL,
 CONSTRAINT WhiteHall_ShipMethod_sk PRIMARY KEY CLUSTERED (ShipMethod_sk)
 )


CREATE TABLE WhiteHall.DimDate
(
	DateKey int NOT NULL,
	ActualDate datetime NULL,
	DayNumberofWeek int NULL,
	EnglishDayNameofWeek nvarchar (255) NULL,
	FrenchDayNameofWeek nvarchar (255) NULL,
	DayNumberofMonth int NULL,
	DayNumberofYear int NULL,
	WeekNumberofYear int NULL,
	EnglishMonthName nvarchar (255) NULL,
	FrenchMonthName nvarchar (255) NULL,
	MonthNumberofYear int NULL,
	ClendarQuarter int NULL,
	CalendarYear int NULL,
	FiscalQuartar int NULL,
	FiscalYear int NULL,
 CONSTRAINT WhiteHall_DateKey PRIMARY KEY CLUSTERED (DateKey)
 )


Create table WhiteHall.FactSalesOrder
(
Fact_SalesOrder_sk int identity (1,1), 
SalesOrderID int,
BusinessEntity_sk int,  
Territory_sk int,   
Product_sk int, 
Customer_sk int, 
CustomerAddress_sk int,
SpecialOrder_sk int,
ShipMethod_sk int, 
LineTotal float,
TaxAmount float, 
OrderQty int, 
CarrierTrackingNumber int, 
CreditCardID int, 
CreditCardApprovalCode int, 
SalesOrderNumber int, 
PurchaseOrderNumber int,
OrderDate_sk int, 
DueDate_sk int, 
ShipDate_sk int, 
LoadDate datetime,
Constraint WhiteHall_FactSalesOrder_sk primary key (Fact_SalesOrder_sk),
Constraint WhiteHall_DimSalesPerson_FactSalesOrder_fk foreign key (BusinessEntity_sk) references WhiteHall.DimSalesPerson(BusinessEntity_sk),
Constraint WhiteHall_DimTerritory_FactSalesOrder_fk foreign key (Territory_sk) references WhiteHall.DimTerritory(Territory_sk),
Constraint WhiteHall_DimProduct_FactSalesOrder_fk foreign key (Product_sk) references WhiteHall.DimProduct(Product_sk),
Constraint WhiteHall_DimDimCustomerAddress_FactSalesOrder_fk foreign key (CustomerAddress_sk) references WhiteHall.DimAddress(Address_sk),
Constraint WhiteHall_DimCustomer_FactSalesOrder_fk foreign key (Customer_sk) references WhiteHall.DimCustomer(Customer_sk),
Constraint WhiteHall_DimSpecialOrder_FactSalesOrder_fk foreign key (SpecialOrder_sk) references WhiteHall.DimSpecialOrder(SpecialOrder_sk),
Constraint WhiteHall_DimShipment_FactSalesOrder_fk foreign key (ShipMethod_sk) references WhiteHall.DimShipment(ShipMethod_sk),
Constraint WhiteHall_DimOrderDate_FactSalesOrder_fk foreign key (OrderDate_sk) references WhiteHall.DimDate(DateKey),
Constraint WhiteHall_DimShipDate_FactSalesOrder_fk foreign key (ShipDate_sk) references WhiteHall.DimDate(DateKey),
Constraint WhiteHall_DimDueDate_FactSalesOrder_fk foreign key (DueDate_sk) references WhiteHall.DimDate(DateKey)
)
