SELECT * from Products


SELECT *  
       from  Products 
               WHERE ProductID < 18 and ProductID > 11
SELECT * 
       from Products 
               WHERE ReorderLevel = 0
SELECT * 
       from Products 
               WHERE ProductName like 'T%'
SELECT * 
       from Orders

create 
    PROC kayit_ekle
           @name varchar(29),
           @supp INT,
           @cat INT,
           @quan NVARCHAR(20),
           @unitp float,
           @units INT,
           @unito INT,
           @reol INT,
           @dis INT
as 
    INSERT Into Products 
    VALUES(@name,
           @supp,
           @cat,
           @quan,
           @unitp,
           @units,
           @unito,
           @reol,
           @dis)

EXEC kayit_ekle 
    'aaa',2,3,sss2,2.3,4,5,6,77
UPDATE Products 
       set ProductName = 'Chong' 
           where ProductID = 2

/* ÖNCEDEN TANIMLANMIŞ BİR PROSEDÜRÜ KULLANMA*/
 EXEC CustOrdersDetail 10249

select * 
       from Orders
SELECT * 
       from Orders ORDER BY ShipCountry
SELECT * 
       from Orders


 /* DOĞUM GÜNÜ BUGÜN OLAN ÇALIŞANLARI BULMA*/
 select * from Employees
UPDATE Employees 
set BirthDate = '1948.06.27' 
    where EmployeeID = 1
SELECT * from Employees where Day(Birthdate) =  DAY( GETDATE() ) and MONTH(BirthDate) = MONTH(GETDATE())
SELECT CAST( GETDATE() AS Date )
/* TOPLAM CİROYU HESAPLAMA*/
SELECT SUM((UnitPrice*Quantity)-(UnitPrice*Quantity*Discount)) AS TOPLAM_CİRO
FROM[Order Details] 

/* TETİKLEYİCİLER*/
use test
SELECT * from bina
CREATE TRIGGER liste on bina 
after INSERT 
as 
BEGIN
select * from bina 
END 

INSERT INTO bina VALUES(3,45,6,'beykoz', 'aaaa', 232332,'2022.12.02')

/* VİEW YARATMA*/

create VIEW bina_bisi
as 
SELECT b.bina_id, b.bina_yasi,b.bina_semti, s.sigorta_id
from bina b, ceza s 
where  b.bina_id = s.sigorta_id
go 
select * from bina_bisi
drop VIEW bina_bisi

select SUM(ProductSales) as kategorileregoresatis from[Sales by Category]
/*Nortwind üzerinde view tanımlama*/
create VIEW order_customer
AS
select Orders.OrderID, Orders.OrderDate
from dbo.Customers 
INNER JOIN dbo.Orders on Customers.CustomerID = Orders.CustomerID

SELECT * from order_customer