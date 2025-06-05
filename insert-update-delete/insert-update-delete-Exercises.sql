-- 1. Add a new Supplier
SELECT * FROM northwind.suppliers;
INSERT INTO suppliers(CompanyName, ContactName, ContactTitle, Address, City, Region, PostalCode, Country, Phone)
VALUES("Pokemon Dreams", "Sarah Farris", "Owner", "555 Main St.", "San Francisco", "Norcal", "94103", "USA", "555-555-5555");

-- 2. Add a new product provided by that supplier
SELECT * FROM northwind.categories;
INSERT INTO northwind.categories(CategoryName, Description, Picture)
VALUES("Merchandise", "Swag bags, Stuffed Animals, Graphic T's", null);

SELECT * FROM northwind.products;
INSERT INTO northwind.products(ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued)
Values("Pikachu Squishmallow", "30", "9", "1", "20.00", "30", "0", "5", 0);

-- 3. List all products and their suppliers
SELECT Products.ProductName, Suppliers.CompanyName
FROM Products
JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID;

-- 4. Raise the Price of your new product by 15%
UPDATE products
SET UnitPrice = UnitPrice * 1.15
WHERE ProductID = 78;

-- 5. List the products and prices of all products from that supplier
SELECT Products.ProductName, Suppliers.CompanyName, Suppliers.SupplierID
FROM Suppliers
JOIN Products ON suppliers.SupplierID = Products.SupplierID
WHERE suppliers.SupplierID = 30;

-- 6. Delete the new product
DELETE FROM products
WHERE ProductID = 78;