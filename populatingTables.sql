use [WhiteHallProject]
Go

If object_id('[WhiteHall].[DimSalesPerson] ') is not null
Truncate table [WhiteHall].[DimSalesPerson] 

----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

Insert into [WhiteHall].[DimSalesPerson] 
(
[BusinessEntityID],[LoginID], [JobTitle],[FirstName],[MiddleName],
[LastName],[BirthDate],[Email],[Shift],[NationalIDNumber],
[MaritalStaus],[Gender],[VacationHours],[SickLeaveHours],[HireDate],
[YearlySalesQuota],[Bonus],[StartDate], [StatusFlag]
)
values 
(
1, 1506, 'SalesRep1', 'Tramel', 'Barr', 'Ajay', '2000-February-24', 'tbajay@mega.ca',
'Day', 'CA-0102005', 'Married', 'Male', 288, 72, '2018-April-22', 5000, 25, '2018-April-22', 'Yes'
),
(
2, 1509, 'SalesRep2', 'McGuel', 'Alan', 'Berger', '2002-February-18', 'maberger@mega.ca',
'Day', 'CA-0104001', 'Married', 'Male', 88, 70, '2018-January-22', 7000, 30, '2018-January-22', 'Yes'
),
(
3, 1409, 'SalesAssistant1', 'Albert', 'Deborde', 'Steiner', '1992-June-15', 'adsteiner@mega.ca',
'Day', 'CA-0104401', 'Married', 'Male', 200, 50, '2018-December-06', 2000, 45, '2018-December-06', 'Yes'
),
(
4, 1205, 'SalesSupervisor1', 'Amy', 'Alice', 'Alexander', '1999-February-12', 'aaalexander@mega.ca',
'Afternoon', 'CA-0105201', 'Single', 'Female', 360, 36, '2018-September-06', 4000, 10, '2018-September-06', 'Yes'
),
(
5, 1109, 'SalesRep1', 'Consentino', 'Dixon', 'Hill', '1999-March-17', 'cdhill@mega.ca',
'Afternoon', 'CA-0105453', 'Single', 'Male', 350, 10, '2019-October-02', 6000, 20, '2019-October-02', 'Yes'
),
(
6, 1200, 'SalesRep2', 'Beebe', 'Townsend', 'Evans', '1994-April-17', 'btevans@mega.ca',
'Day', 'CA-0101458', 'Divorced', 'Female', 360, 36, '2019-April-06', 5000, 40, '2019-April-06', 'Yes'
),
(
7, 1210, 'SalesRep2', 'Cencini', 'Chor', 'Hass', '1994-January-11', 'cchass@mega.ca',
'Day', 'CA-0101328', 'Divorced', 'Female', 480, 96, '2019-September-06', 5000, 40, '2019-September-06', 'Yes'
),
(
8, 1330, 'SalesSupervisor2', 'Dixon', 'German', 'Kirilov', '1998-August-20', 'dgkirilov@mega.ca',
'Afternoon', 'CA-0101350', 'Single', 'Male', 400, 90, '2017-January-06', 5000, 40, '2017-January-06', 'Yes'
),
(
9, 1530, 'SalesRep1', 'Eev', 'Due', 'Duncan', '1998-August-20', 'edduncan@mega.ca',
'Afternoon', 'CA-0102150', 'Married', 'Female', 400, 60, '2019-January-18', 5000, 40, '2019-January-18', 'Yes'
),
(
10, 1110, 'SalesRep1', 'Sutton', 'Barlow', 'Goldstein', '1998-August-20', 'sbgoldstein@mega.ca',
'Day', 'CA-0105650', 'Married', 'Male', 320, 40, '2019-March-10', 5000, 40, '2019-March-10', 'Yes'
)

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

If object_id('[WhiteHall].[DimProduct]') is not null
Truncate table [WhiteHall].[DimProduct]

Insert into [WhiteHall].[DimProduct]([ProductID],[ProductName],[UnitPrice],[UnitPriceDiscount],[StartDate], [StatusFlag])
values
(
0101, 'FW-20-Blue', 2.00, 0.00, '1998-August-02', 'Yes'
),
(
0102, 'FW-22-Blue', 2.00, 0.00, '1998-August-02', 'Yes'
),
(
0103, 'FW-25-Green', 2.50, 0.00, '1998-September-10', 'Yes'
),
(
0201, 'FW-20-Indigo', 4.00, 0.05, '1999-October-12', 'Yes'
),
(
0202, 'FW-22-Oange', 4.00, 0.05, '1999-October-15', 'Yes'
),
(
0203, 'FW-22-Pink', 4.00, 0.05, '1999-October-12', 'Yes'
),
(
0301, 'FW-20-White', 5.00, 0.00, '1999-December-12', 'Yes'
),
(
0303, 'FW-20-Black', 4.50, 0.00, '1999-December-13', 'Yes'
),
(
0401, 'FW-22-Silver', 5.00, 0.05, '2000-October-12', 'Yes'
),
(
0401, 'FW-24-Gold', 5.00, 0.05, '2000-October-12', 'Yes'
)

-----------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------

If object_id('[WhiteHall].[DimDate]') is not null
Truncate table [WhiteHall].[DimDate]

Insert into [WhiteHall].[DimDate] 
([DateKey], [ActualDate], [DayNumberofWeek], [EnglishDayNameofWeek], [FrenchDayNameofWeek], [DayNumberofMonth], 
[DayNumberofYear], [WeekNumberofYear], [EnglishMonthName], [FrenchMonthName], [MonthNumberofYear], 
[ClendarQuarter], [CalendarYear], [FiscalQuartar], [FiscalYear]
 )
 Values
(
20180102, '2018-January-02', 3, 'Tuesday','Mardi', 2, 2, 1, 'January', 'Janvier', 1, 1, 2018, 1, 2018
),
(
20180412, '2018-April-12', 5, 'Thursday', 'Jeudi',12, 102, 15, 'April', 'Avril', 4, 1, 2018, 1, 2018
),
(
20180924, '2018-September-24', 2, 'Monday', 'Lundi', 24, 267, 39, 'September', 'Septiembre', 9, 3, 2018, 3, 2018 
),
(
20181221, '2018-December-21', 6, 'Thursday', 'Jeudi', 21,  355, 51, 'December', 'Decembre', 12, 4, 2018, 4, 2018
),
(
20190106, '2019-January-06', 1, 'Sunday', 'Dimanche', 6, 6, 1, 'January', 'Janvier', 1, 1, 2019,1, 2019
),
(
20190514, '2019-May-14', 3, 'Wednesday', 'Mercredi', 14,  134, 20, 'May', 'Mai', 5, 2, 2019, 2, 2019
),
(
20191029, '2019-October-29', 3, 'Tuesday', 'Mardi', 29, 302,44, 'October', 'Octobre', 10, 4, 2019, 4, 2019
),
(
20191227, '2019-December-27', 6, 'Friday', 'Vendredi', 27, 361, 52, 'December', 'Decembre', 12, 4, 2019, 4, 2019
),
(
20200115, '2020-January-15', 4, 'Wednesday', 'Mercredi', 15, 15, 3, 'January', 'Janvier', 1, 1, 2020, 1, 2019
),
(
20200307, '2020-March-07', 7, 'Saturday', 'Samedi', 7, 67, 10, 'March', 'Mars', 3, 1, 2020, 1, 2019
),
(
20200401, '2020-April-01', 4, 'Wednesday', 'Mercredi', 1, 92, 14, 'April', 'Avril', 4, 2, 2020, 2, 2019
),
(
20200402, '2020-April-02', 4, 'Thursday', 'Jeudi', 2, 93, 14, 'April', 'Avril', 4, 2, 2020, 2, 2019
)

-----------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------

If object_id('[WhiteHall].[DimCustomer]') is not null
Truncate table [WhiteHall].[DimCustomer]

Insert into [WhiteHall].[DimCustomer] ([CustomerID], [CustomerName], [AccountNumber], [StartDate], [StatusFlag])
values
(
1001, 'Ken Mann', 201802004, '2018-02-04', 'Yes'
),
(
2002, 'Bill Lion', 201804010, '2018-04-10', 'Yes'
),
(
3003, 'Leo King', 20180820, '2018-08-20', 'Yes'
),
(
4004, 'March Lincoln', 20181120, '2018-11-20', 'Yes'
),
(
5005, 'Sarah Timberland', 20190220, '2019-02-20', 'Yes'
),
(
6006, 'Setter Gate', 20190510, '2019-05-10', 'Yes'
),
(
9007, 'Simon Treesd', 201900714, '2019-07-14', 'Yes'
),
(
8008, 'Eva Treesd', 201900715, '2019-07-15', 'Yes'
),
(
9009, 'Jim Laughing', 20190920, '2019-09-20', 'Yes'
),
(
11010, 'Rita Herring', 20191222, '2019-12-22', 'Yes'
)

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

If object_id('[WhiteHall].[DimAddress]') is not null
Truncate table [WhiteHall].[DimAddress]

Insert into [WhiteHall].[DimAddress] ([AddressID], [ShipToAddress], [BillToAddress], [StartDate], [StatusFlag])
Values
(1901, '9963 Tresser Blvd, Calgary, Alberta',  '25269 Wood Dale Rd, Calgary, Alberta','2019-12-22', 'Yes'),
(1902, '10 Wrentham Village, Hamilton, Ontario', '65 Epping Rd, Hamilton, Ontario',  '2019-09-20', 'Yes'),
(1903, '2345 North Freeway, Hamilton, Ontario', '2345 North Freeway, Hamilton, Ontario', '2019-07-15', 'Yes'),
(1904, '2525 Hollywood Blvd, ‎Whitehorse, Yukon', '2527 Hollywood Blvd, Whitehorse, Yukon' , '2019-07-14', 'Yes'),
(1905, '7505 Laguna Blvd, Brandon, Manitoba', '7505 Laguna Blvd, Brandon, Manitoba' , '2019-09-24', 'Yes'),
(1906, '7700 Green Road, Red Deer, Alberta', '7700 Green Road, Red Deer, Alberta' , '2019-12-02', 'Yes'),
(1907, '88, avenue de l´ Union Centrale, Montreal, Quebec', '88, avenue de l´ Union Centrale, Montreal, Quebec' , '2019-07-14', 'Yes'),
(1908, '123 Camelia Avenue, Winnipeg, Manitoba', '6777 Kingsway, Virden, Manitoba' , '2020-01-14', 'Yes'),
(1909, '399 Clearing Green, Regina, saskatchewan', '400 Clearing Green, Regina, saskatchewan' , '2020-01-22', 'Yes'),
(2901, '600 Slater Street, Victoria, British Columbia', '500 Slay Street, Vancouver, British Columbia' , '2019-02-14', 'Yes')

-----------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------

If object_id('[WhiteHall].[DimShipment]') is not null
Truncate table [WhiteHall].[DimShipment]

Insert into [WhiteHall].[DimShipment] ([ShipMethodID], [Freight], [StartDate], [Statusflag])
values
(00101, 'Ship', '2019-07-15', 'Yes'),
(00102, 'Air', '2019-07-15', 'Yes'),
(00103, 'Road', '2019-07-15', 'Yes')

-----------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------

If object_id('[WhiteHall].[DimSpecialOrder]') is not null
Truncate table [WhiteHall].[DimSpecialOrder]

Insert into [WhiteHall].[DimSpecialOrder] ([SpecialOrderID],[SpecialOrderName],[StartDate], [StatusFlag])
Values
('SO-001 ', 'Quantity100+',  '2017-08-07', 'Yes'),
('SO-002', 'CustomColor', '2019-11-06', 'Yes'),
('SO-003', 'CustomSize', '2018-07-15', 'Yes'),
('SO-004', 'NoSpecialOrder', '2018-02-25', 'Yes')

-----------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------

If object_id('[WhiteHall].[DimTerritory]') is not null
Truncate table [WhiteHall].[DimTerritory]

Insert into [WhiteHall].[DimTerritory] ([TerritoryID],[TerritoryName],[CountryRegionCode],[Group], [StartDate], [StatusFlag])
values
('1001A', 'WestTerritory1', 'W3166-1', 'Alpha', '2017-06-07', 'Yes'),
('2001A', 'EastTerritory1', 'W3165-1', 'Omega', '2018-06-07', 'Yes'),
('1001B', 'WestTerritory2', 'W3166-2', 'Alpha', '2017-08-10', 'Yes'),
('3001A', 'CentralTerritory1', 'W3160-1', 'Heart', '2019-03-13', 'Yes'),
('3001B', 'CentralTerritory2', 'W3160-2', 'Heart', '2019-06-27', 'Yes'),
('1001C', 'WestTerritory3', 'W3166-3', 'Alpha', '2017-10-14', 'Yes'),
('2001B', 'EastTerritory2', 'W3165-2', 'Omega', '2018-09-26', 'Yes')

-----------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------

CREATE PROCEDURE [WhiteHall].spFactSalesOrder(@EndCount int) 
AS
BEGIN
Declare @StartCount int = 1
Declare @SalesOrderID int
Declare @BusinessEntity_sk int
Declare @Territory_sk int
Declare @Product_sk int
Declare @Customer_sk int
Declare @Address_sk int
Declare @SpecialOrder_sk int
Declare @ShipMethod_sk int
Declare @LineTotal float
Declare @TaxAmount float
Declare @OrderQty int
Declare @CarrierTrackingNumber int
Declare @CreditCardID int
Declare @CreditCardApprovalCode int
Declare @SalesOrderNumber int
Declare @PurchaseOrderNumber int
Declare @OrderDate_sk int
Declare @DueDate_sk int
Declare @ShipDate_sk int
Declare @LoadDate datetime
Declare @datetable table
 (
 key_sk int identity (1,1),
 Datekey int
 ) 
 declare @datekey int

 insert into @datetable (Datekey)
 select datekey from [WhiteHall].[DimDate]

If object_ID('[WhiteHall].[FactSalesOrder]') IS NOT NULL
Truncate Table [WhiteHall].[FactSalesOrder]

While @StartCount<=@EndCount

Begin
Set nocount on
Select @DueDate_sk = ( select datekey from @datetable Where key_sk=( select cast(rand()*(select max (key_sk) from @datetable) as int)+1 ))
Select @ShipDate_sk =  ( select datekey from @datetable Where key_sk=( select cast(rand()*(select max (key_sk) from @datetable) as int)+1 ))
Select @OrderDate_sk =  ( select datekey from @datetable Where key_sk=( select cast(rand()*(select max (key_sk) from @datetable) as int)+1 ))
Select @SalesOrderID = cast(rand()*20 as int)+1
Select @BusinessEntity_sk = cast(rand()*(select max ([BusinessEntity_sk]) from [WhiteHall].[DimSalesPerson]) as int) +1
Select @Territory_sk = cast(rand()*(select max ([Territory_sk]) from [WhiteHall].[DimTerritory]) as int) +1
Select @Product_sk = cast(rand()*(select max ([Product_sk]) from [WhiteHall].[DimProduct]) as int) +1
Select @Customer_sk = cast(rand()*(select max ([Customer_sk]) from [WhiteHall].[DimCustomer]) as int) +1
Select @Address_sk = cast(rand()*(select max ([Address_sk]) from [WhiteHall].[DimAddress]) as int) +1
Select @ShipMethod_sk = cast(rand()*(select max ([ShipMethod_sk]) from [WhiteHall].[DimShipment]) as int) +1
Select @LineTotal = cast(rand()*10000 as int)+100
Select @OrderQty = cast(rand()*100 as int)+1
Select @CarrierTrackingNumber = cast(rand ()*20101 as int) +20000
Select @CreditCardID = cast(rand()*45064457 as int)  + 45064300
Select @CreditCardApprovalCode = cast(rand()*9150457 as int)  + 91450300
Select @SalesOrderNumber = cast(rand()*30506 as int)  + 30406
Select @PurchaseOrderNumber = cast(rand()*70706 as int)  + 70606
Select @TaxAmount = cast(rand()* 2 as int)  + 0.005
Select @LoadDate = GetDate()
Select @SpecialOrder_sk = 
(
case 
when @Product_sk in (1,2,4,5,6,7,8,9) and @OrderQty >50 then 1
when @Product_sk in (9,10) then 2
when @Product_sk in (3,10) then 3
else 4
end
)

Insert into [WhiteHall].[FactSalesOrder]
(
[SalesOrderID],
[BusinessEntity_sk],
[Territory_sk],
[Product_sk],
[Customer_sk],
[CustomerAddress_sk],
[SpecialOrder_sk],
[ShipMethod_sk],
[LineTotal],
[TaxAmount],
[OrderQty],
[CarrierTrackingNumber],
[CreditCardID],
[CreditCardApprovalCode],
[SalesOrderNumber],
[PurchaseOrderNumber],
[OrderDate_sk],
[DueDate_sk],
[ShipDate_sk],
LoadDate
)
Values
(
@SalesOrderID,
@BusinessEntity_sk,
@Territory_sk,
@Product_sk,
@Customer_sk,
@Address_sk,
@SpecialOrder_sk,
@ShipMethod_sk,
@LineTotal,
@TaxAmount,
@OrderQty,
@CarrierTrackingNumber,
@CreditCardID,
@CreditCardApprovalCode,
@SalesOrderNumber,
@PurchaseOrderNumber,
@OrderDate_sk,
@DueDate_sk,
@ShipDate_sk,
@LoadDate
)

select @Startcount = @Startcount+1
end
end

Execute [WhiteHall].[spFactSalesOrder] @EndCount = 20
