-- ----------------------------------------------------------------------------
-- MySQL Workbench Migration
-- Migrated Schemata: OnlineShopDb
-- Source Schemata: OnlineShopDb
-- Created: Wed May 17 01:45:16 2017
-- Workbench Version: 6.3.9
-- ----------------------------------------------------------------------------

SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------------------------------------------------------
-- Schema OnlineShopDb
-- ----------------------------------------------------------------------------
DROP SCHEMA IF EXISTS `OnlineShopDb` ;
CREATE SCHEMA IF NOT EXISTS `OnlineShopDb` ;

-- ----------------------------------------------------------------------------
-- Table OnlineShopDb.Category
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `OnlineShopDb`.`Category` (
  `CategoryId` INT NOT NULL AUTO_INCREMENT,
  `CategoryName` VARCHAR(50) CHARACTER SET 'utf8mb4' NOT NULL,
  `Icon` VARCHAR(50) NULL,
  `ParentId` INT NULL,
  PRIMARY KEY (`CategoryId`),
  CONSTRAINT `FK_Category_Category`
    FOREIGN KEY (`ParentId`)
    REFERENCES `OnlineShopDb`.`Category` (`CategoryId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

-- ----------------------------------------------------------------------------
-- Table OnlineShopDb.Supplier
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `OnlineShopDb`.`Supplier` (
  `SupplierId` INT NOT NULL AUTO_INCREMENT,
  `SupplierName` VARCHAR(50) CHARACTER SET 'utf8mb4' NOT NULL,
  `Address` VARCHAR(50) CHARACTER SET 'utf8mb4' NULL,
  `PhoneNumber` VARCHAR(50) NULL,
  `Email` VARCHAR(50) NULL,
  PRIMARY KEY (`SupplierId`));

-- ----------------------------------------------------------------------------
-- Table OnlineShopDb.Product
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `OnlineShopDb`.`Product` (
  `ProductId` INT NOT NULL AUTO_INCREMENT,
  `ProductName` VARCHAR(100) CHARACTER SET 'utf8mb4' NOT NULL,
  `PriceUnit` DECIMAL(19,4) NOT NULL,
  `CalculationUnit` VARCHAR(50) CHARACTER SET 'utf8mb4' NOT NULL,
  `RemainQuanlity` INT NULL DEFAULT 0,
  `Description` VARCHAR(1000) CHARACTER SET 'utf8mb4' NULL,
  `SupplierId` INT NULL,
  PRIMARY KEY (`ProductId`),
  CONSTRAINT `FK_Product_Supplier`
    FOREIGN KEY (`SupplierId`)
    REFERENCES `OnlineShopDb`.`Supplier` (`SupplierId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

-- ----------------------------------------------------------------------------
-- Table OnlineShopDb.Image
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `OnlineShopDb`.`Image` (
  `ImageId` INT NOT NULL AUTO_INCREMENT,
  `Url` VARCHAR(50) NOT NULL,
  `ProductId` INT NULL,
  PRIMARY KEY (`ImageId`),
  CONSTRAINT `FK_Image_Product`
    FOREIGN KEY (`ProductId`)
    REFERENCES `OnlineShopDb`.`Product` (`ProductId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

-- ----------------------------------------------------------------------------
-- Table OnlineShopDb.Comment
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `OnlineShopDb`.`Comment` (
  `CommentId` INT NOT NULL,
  `Content` VARCHAR(100) CHARACTER SET 'utf8mb4' NULL,
  `Time` DATETIME(6) NULL,
  `AccountId` INT NULL,
  `ProductId` INT NULL,
  PRIMARY KEY (`CommentId`),
  CONSTRAINT `FK_Comment_Product`
    FOREIGN KEY (`ProductId`)
    REFERENCES `OnlineShopDb`.`Product` (`ProductId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FK_Comment_Account`
    FOREIGN KEY (`AccountId`)
    REFERENCES `OnlineShopDb`.`Account` (`AccountId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

-- ----------------------------------------------------------------------------
-- Table OnlineShopDb.Cart
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `OnlineShopDb`.`Cart` (
  `CartId` INT NOT NULL AUTO_INCREMENT,
  `AccountId` INT NULL,
  `TotalProduct` INT NULL,
  `TotalPrice` DECIMAL(19,4) NULL,
  PRIMARY KEY (`CartId`),
  CONSTRAINT `FK_Cart_Account`
    FOREIGN KEY (`AccountId`)
    REFERENCES `OnlineShopDb`.`Account` (`AccountId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

-- ----------------------------------------------------------------------------
-- Table OnlineShopDb.CartDetail
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `OnlineShopDb`.`CartDetail` (
  `CartDetailId` INT NOT NULL AUTO_INCREMENT,
  `CartId` INT NULL,
  `ProductId` INT NULL,
  `Quantity` INT NULL,
  PRIMARY KEY (`CartDetailId`),
  CONSTRAINT `FK_CartDetail_Product`
    FOREIGN KEY (`ProductId`)
    REFERENCES `OnlineShopDb`.`Product` (`ProductId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FK_CartDetail_Cart`
    FOREIGN KEY (`CartId`)
    REFERENCES `OnlineShopDb`.`Cart` (`CartId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

-- ----------------------------------------------------------------------------
-- Table OnlineShopDb.Order
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `OnlineShopDb`.`Order` (
  `OrderId` INT NOT NULL AUTO_INCREMENT,
  `CartId` INT NULL,
  `ReceiverName` VARCHAR(50) CHARACTER SET 'utf8mb4' NOT NULL,
  `ReceivingAddress` VARCHAR(50) CHARACTER SET 'utf8mb4' NOT NULL,
  `ReceiverPhoneNumber` VARCHAR(50) NOT NULL,
  `ScheduleReceivedDate` DATETIME(6) NULL,
  `ReceivedDate` DATETIME(6) NULL,
  `Paid` TINYINT(1) NULL,
  PRIMARY KEY (`OrderId`),
  CONSTRAINT `FK_Order_Cart`
    FOREIGN KEY (`CartId`)
    REFERENCES `OnlineShopDb`.`Cart` (`CartId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

-- ----------------------------------------------------------------------------
-- Table OnlineShopDb.ProductCategory
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `OnlineShopDb`.`ProductCategory` (
  `ProductId` INT NOT NULL,
  `CategoryId` INT NOT NULL,
  PRIMARY KEY (`ProductId`, `CategoryId`),
  CONSTRAINT `FK_ProductCategory_Product`
    FOREIGN KEY (`ProductId`)
    REFERENCES `OnlineShopDb`.`Product` (`ProductId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FK_ProductCategory_Category`
    FOREIGN KEY (`CategoryId`)
    REFERENCES `OnlineShopDb`.`Category` (`CategoryId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

-- ----------------------------------------------------------------------------
-- Table OnlineShopDb.Account
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `OnlineShopDb`.`Account` (
  `AccountId` INT NOT NULL AUTO_INCREMENT,
  `Username` VARCHAR(50) NOT NULL,
  `Password` VARCHAR(50) NOT NULL,
  `Email` VARCHAR(50) NOT NULL,
  `Birthday` DATE NULL,
  `Address` VARCHAR(50) CHARACTER SET 'utf8mb4' NULL,
  `Score` INT NULL,
  `AccountType` VARCHAR(50) NULL,
  `Actived` TINYINT(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`AccountId`));

-- ----------------------------------------------------------------------------
-- Table OnlineShopDb.Rating
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `OnlineShopDb`.`Rating` (
  `RatingId` INT NOT NULL AUTO_INCREMENT,
  `Score` INT NULL,
  `AccountId` INT NULL,
  `ProductId` INT NULL,
  PRIMARY KEY (`RatingId`),
  CONSTRAINT `FK_Rating_Account`
    FOREIGN KEY (`AccountId`)
    REFERENCES `OnlineShopDb`.`Account` (`AccountId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FK_Rating_Product`
    FOREIGN KEY (`ProductId`)
    REFERENCES `OnlineShopDb`.`Product` (`ProductId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

-- ----------------------------------------------------------------------------
-- Table OnlineShopDb.Discount
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `OnlineShopDb`.`Discount` (
  `DiscountId` INT NOT NULL AUTO_INCREMENT,
  `Percent` DOUBLE NULL,
  `StartDate` DATETIME(6) NULL,
  `EndDate` DATETIME(6) NULL,
  PRIMARY KEY (`DiscountId`));

-- ----------------------------------------------------------------------------
-- Table OnlineShopDb.ProductDiscount
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `OnlineShopDb`.`ProductDiscount` (
  `ProductId` INT NOT NULL,
  `DiscountId` INT NOT NULL,
  PRIMARY KEY (`ProductId`, `DiscountId`),
  CONSTRAINT `FK_ProductDiscount_Product`
    FOREIGN KEY (`ProductId`)
    REFERENCES `OnlineShopDb`.`Product` (`ProductId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FK_ProductDiscount_Discount`
    FOREIGN KEY (`DiscountId`)
    REFERENCES `OnlineShopDb`.`Discount` (`DiscountId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
SET FOREIGN_KEY_CHECKS = 1;
