CREATE TABLE Orders(OrderID INT AUTO_INCREMENT, CustomerID INT, OrderDate DATE, OrderMenu varchar(255), PRIMARY KEY(OrderID));
INSERT INTO Orders(CustomerID, OrderDate, OrderMenu) VALUES ("3", "2021-10-27", "Chicken Sandwich");
INSERT INTO Orders(CustomerID, OrderDate, OrderMenu) VALUES ("3", "2021-10-28", "Chicken Sandwich");
INSERT INTO Orders(CustomerID, OrderDate, OrderMenu) VALUES ("3", "2021-10-29", "Chicken Sandwich");
INSERT INTO Orders(CustomerID, OrderDate, OrderMenu) VALUES ("1", "2021-11-23", "Waffle Fries");
INSERT INTO Orders(CustomerID, OrderDate, OrderMenu) VALUES ("3", "2021-11-23", "Chicken Sandwich");
INSERT INTO Orders(CustomerID, OrderDate, OrderMenu) VALUES ("4", "2021-11-21", "Chicken Nugget");
INSERT INTO Orders(CustomerID, OrderDate, OrderMenu) VALUES ("3", "2021-11-24", "Chicken Sandwich");
INSERT INTO Orders(CustomerID, OrderDate, OrderMenu) VALUES ("4", "2021-11-24", "Chicken Nugget");
INSERT INTO Orders(CustomerID, OrderDate, OrderMenu) VALUES ("7", "2021-11-24", "Lemonade");
INSERT INTO Orders(CustomerID, OrderDate, OrderMenu) VALUES ("3", "2021-11-25", "Chicken Sandwich");
INSERT INTO Orders(CustomerID, OrderDate, OrderMenu) VALUES ("3", "2021-11-26", "Chicken Sandwich");
INSERT INTO Orders(CustomerID, OrderDate, OrderMenu) VALUES ("4", "2021-11-26", "Chicken Nugget");

CREATE TABLE Customers(CustomerID INT AUTO_INCREMENT, CustomerName VARCHAR(255), DateOfBirth DATE, PRIMARY KEY(CustomerID));
INSERT INTO Customers(CustomerName, DateOfBirth) VALUES ("Biff", "1997-09-01");
INSERT INTO Customers(CustomerName) VALUES ("Kookie");
INSERT INTO Customers(CustomerName, DateOfBirth) VALUES ("Jun", "2000-11-22");
INSERT INTO Customers(CustomerName, DateOfBirth) VALUES ("Lindsey", "2003-07-03");
INSERT INTO Customers(CustomerName) VALUES ("George");
INSERT INTO Customers(DateOfBirth) VALUES ("2004-02-08");

CREATE TABLE Menu(MenuID INT AUTO_INCREMENT, MenuName varchar(255),  PRIMARY KEY(MenuID));
INSERT INTO Menu(MenuName) VALUES ("Chicken Nuggets");
INSERT INTO Menu(MenuName) VALUES ("Chicken Sandwich");
INSERT INTO Menu(MenuName) VALUES ("Waffle Fries");
INSERT INTO Menu(MenuName) VALUES ("Lemonade");

