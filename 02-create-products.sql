-- -----------------------------------------------------
-- Schema ShopBridge
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `ShopBridge`;

CREATE SCHEMA `ShopBridge`;
USE `ShopBridge` ;

-- -----------------------------------------------------
-- Table `ShopBridge`.`product_category`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ShopBridge`.`Product_category` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `category_name` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE=InnoDB AUTO_INCREMENT = 1;

-- -----------------------------------------------------
-- Table `ShopBridge`.`product`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ShopBridge`.`Product` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) DEFAULT NULL,
  `description` VARCHAR(255) DEFAULT NULL,
  `price` DECIMAL(13,2) DEFAULT NULL,
  `image_url` VARCHAR(255) DEFAULT NULL,
  `active` BIT DEFAULT 1,
  `units_in_stock` INT(11) DEFAULT NULL,
  `category_id` BIGINT(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_category` (`category_id`),
  CONSTRAINT `fk_category` FOREIGN KEY (`category_id`) REFERENCES `Product_category` (`id`)
) 
ENGINE=InnoDB AUTO_INCREMENT = 1;


-- -----------------------------------------------------
-- Add sample data
-- -----------------------------------------------------

INSERT INTO PRODUCT_CATEGORY(CATEGORY_NAME) VALUES ('Inventory');

INSERT INTO PRODUCT (NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, PRICE, CATEGORY_ID) 
VALUES ('Handcrafted Bracelet', 'Handcrafted bangle-type bracelet with artificial stones', 
'images/Products/HandcraftedBracelet.jpg', 1, 150, 250, 1);

INSERT INTO PRODUCT (NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, PRICE, CATEGORY_ID) 
VALUES ('Classic Jhumkas', 'Silver-toned classic jhumkas with no warranty', 
'images/Products/silverJhumkas.png', 1, 100, 175, 1);

INSERT INTO PRODUCT (NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, PRICE, CATEGORY_ID) 
VALUES ('Silver Necklace', 'Beautiful necklace designed with diamond stones', 
'images/Products/necklaceSet.jpg', 1, 75, 550, 1);