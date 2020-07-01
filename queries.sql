-----------------------------------------------------------------------------------------
/* Writing a stored procedure to extract data to include the columns:
•	ProductID
•	Order Quantity
•	SalesorderID
•	Sales Person Firstname
•	Sales Person Lastname
•	Order Date
•	TerritoryID
. */
-----------------------------------------------------------------------------------------
--Solution Query--

Use [WhiteHallProject]
go

Create Procedure WhiteHall.spMegaProcedure1
as
begin
Select a.[ProductID],
       b.[OrderQty],
	   b.[SalesOrderID], 
	   c.[FirstName] as SalesPersonFirstName,
       c.[LastName] as SalesPersonLastName,
	   d.[ActualDate] as OrderDate,
	   e.[TerritoryID]
from [WhiteHall].[DimProduct]a 
inner join [WhiteHall].[FactSalesOrder]b on a.[Product_sk] = b.[Product_sk]
inner join [WhiteHall].[DimSalesPerson]c on b.[BusinessEntity_sk] = c.[BusinessEntity_sk]
inner join [WhiteHall].[DimDate]d on b.[OrderDate_sk] = d.[DateKey]
inner join [WhiteHall].[DimTerritory]e on b.[Territory_sk] = e.[Territory_sk]
end

Execute WhiteHall.spMegaProcedure1

-----------------------------------------------------------------------------------------
/* Writing a stored procedure to extract data that accepts the following parameters: Territory and a sales person name, including the following columns:
•	TerritoryID
•	Job Title
•	Sales Person FirstName
•	Sales Person LastName
•	Sales YTD	 */
------------------------------------------------------------------------------------





--Solution Query--

Use [WhiteHallProject]
go

Create procedure WhiteHall.spTerritorybySalespeople (@TerritoryID nvarchar(255), @Salesperson nvarchar(255))
	AS
	begin
	select a.[EmployeeFullName], a.[FirstName], a.[LastName], a.[JobTitle], sum(b.[LineTotal]) as SalesYTD, 
	 c.[TerritoryID], c.[TerritoryName], d.[ActualDate] as OrderDate 
	 from [WhiteHall].[DimSalesPerson]a
	 inner join [WhiteHall].[FactSalesOrder]b on a.[BusinessEntity_sk] = b.[BusinessEntity_sk]
	 inner join [WhiteHall].[DimTerritory]c on b.[Territory_sk] = c.[Territory_sk]
	 inner join [WhiteHall].[DimDate]d on d.[DateKey] = b.[OrderDate_sk]
	 where [TerritoryID] = (@TerritoryID) and EmployeeFullName = (@Salesperson)
	 group by 
			  [EmployeeFullName],
			  [FirstName], 
			  [LastName],
			  [JobTitle],
			  [LineTotal],
			  [TerritoryID], 
			  [TerritoryName],
			  [ActualDate]
	end 
	 

Execute WhiteHall.spTerritorybySalespeople @TerritoryID = '1001C', @Salesperson = 'Beebe Evans'

-----------------------------------------------------------------------------------------
-- Writing query to retrieve percent of total annual sales as column PercentOfTotal, and employee rank by sales. 

-----------------------------------------------------------------------------------------

--Solution Query--

Use [WhiteHallProject]
go

select a.EmployeeFullName,
       sum (b.[LineTotal]) as SalesYTD,
           round(sum(b.[LineTotal])/(select Sum (b.[LineTotal]) from [WhiteHall].[FactSalesOrder]b) *100, 3)  as PercentofTotal  ,
           dense_rank() over (order by sum(b.[LineTotal]) desc) as YearlyEmployeeRank
from [WhiteHall].[DimSalesPerson]a
inner join [WhiteHall].[FactSalesOrder]b on a.[BusinessEntity_sk] = b.[BusinessEntity_sk]
inner join [WhiteHall].[DimDate]c on b.[OrderDate_sk] = c.[DateKey]
where [CalendarYear] =  year(getdate())
group by EmployeeFullName



