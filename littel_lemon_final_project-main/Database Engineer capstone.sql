CREATE TABLE `Customers` (
  `CustomerID` INT PRIMARY KEY,
  `FullName` VARCHAR(255),
  `ContactNumber` VARCHAR(45),
  `Email` VARCHAR(255)
);

CREATE TABLE `Orders` (
  `OrderID` INT PRIMARY KEY,
  `customerID` INT UNIQUE,
  `ProductID` INT UNIQUE,
  `DeliveryID` INT,
  `OrderPriority` Varchar(45),
  `Discount` Decimal,
  `TotaleCost` DECIMAL,
  `ShipID` INT
);

CREATE TABLE `Shipping` (
  `ShipID` INT PRIMARY KEY,
  `ShipDate` DATE,
  `ShipMode` VARCHAR(45),
  `AdressID` INT,
  `ShipCost` DECIMAL
);

CREATE TABLE `Products` (
  `ProductID` int PRIMARY KEY,
  `ProductName` VARCHAR(255),
  `AmountInStock` int,
  `Price` Decimal,
  `Category` Varchart(255),
  `SubCategory` varchar(255)
);

CREATE TABLE `delivery` (
  `AdressID` int PRIMARY KEY,
  `Street` varchar(255),
  `PostCode` varchar(255),
  `City` timestamp,
  `State` VarChar(255),
  `Country` varChar(255)
);

ALTER TABLE `Customers` ADD FOREIGN KEY (`CustomerID`) REFERENCES `Orders` (`customerID`);

ALTER TABLE `Products` ADD FOREIGN KEY (`ProductID`) REFERENCES `Orders` (`ProductID`);

ALTER TABLE `delivery` ADD FOREIGN KEY (`AdressID`) REFERENCES `Shipping` (`AdressID`);

ALTER TABLE `Shipping` ADD FOREIGN KEY (`ShipID`) REFERENCES `Orders` (`ShipID`);
