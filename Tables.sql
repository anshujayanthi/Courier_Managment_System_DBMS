CREATE TABLE `courier_service`.`cities` (
`city` VARCHAR(30) NOT NULL,
`State` VARCHAR(45) NOT NULL,
PRIMARY KEY (`city`));


CREATE TABLE `courier_service`.`pincode` (
`pcode` INT NOT NULL,
`city` VARCHAR(30) NULL,
PRIMARY KEY (`pcode`),
INDEX `city_idx` (`city` ASC) VISIBLE,
CONSTRAINT `city`
FOREIGN KEY (`city`)
REFERENCES `courier_service`.`cities` (`city`)
ON DELETE SET NULL
ON UPDATE CASCADE);


CREATE TABLE `courier_service`.`employee` (
`empid` INT NOT NULL AUTO_INCREMENT,
`fname` VARCHAR(45) NULL,
`lname` VARCHAR(45) NULL,
`dob` DATE NULL,
`doj` DATE NOT NULL,
`salary` INT NULL,
PRIMARY KEY (`empid`));


CREATE TABLE `courier_service`.`branch` (
`branchid` INT NOT NULL AUTO_INCREMENT,
`name` VARCHAR(45) NULL,
`street` VARCHAR(100) NULL,
`pincode` INT NULL,
PRIMARY KEY (`branchid`),
INDEX `pincode_idx` (`pincode` ASC) VISIBLE,
CONSTRAINT `pincode`
FOREIGN KEY (`pincode`)
REFERENCES `courier_service`.`pincode` (`pcode`)
ON DELETE SET NULL
ON UPDATE CASCADE);



CREATE TABLE `courier_service`.`branchmanager` (
`empid` INT NOT NULL,
`branchid` INT NULL,
PRIMARY KEY (`empid`),
UNIQUE INDEX `branchid_UNIQUE` (`branchid` ASC) VISIBLE,
CONSTRAINT `empid`
FOREIGN KEY (`empid`)
REFERENCES `courier_service`.`employee` (`empid`)
ON DELETE NO ACTION
ON UPDATE NO ACTION,
CONSTRAINT `branchid`
FOREIGN KEY (`branchid`)
REFERENCES `courier_service`.`branch` (`branchid`)
ON DELETE SET NULL
ON UPDATE CASCADE);


CREATE TABLE `courier_service`.`deliverypartner` (
`empid` INT NOT NULL,
`hours` TINYINT NULL,
PRIMARY KEY (`empid`),
CONSTRAINT `empidfk`
FOREIGN KEY (`empid`)
REFERENCES `courier_service`.`employee` (`empid`)
ON DELETE CASCADE


CREATE TABLE `courier_service`.`operatesin` (
`branchid` INT NOT NULL,
`pincode` INT NOT NULL,
PRIMARY KEY (`branchid`, `pincode`),
INDEX `pincodefk_idx` (`pincode` ASC) VISIBLE,
CONSTRAINT `branchidfk`
FOREIGN KEY (`branchid`)
REFERENCES `courier_service`.`branch` (`branchid`)
ON DELETE CASCADE
ON UPDATE CASCADE,
CONSTRAINT `pincodefk`
FOREIGN KEY (`pincode`)
REFERENCES `courier_service`.`pincode` (`pcode`)
ON DELETE CASCADE
ON UPDATE CASCADE);


CREATE TABLE `courier_service`.`customer` (
`customerid` INT NOT NULL,
`fname` VARCHAR(45) NULL,
`lname` VARCHAR(45) NULL,
`ph1` BIGINT NOT NULL,
`ph2` BIGINT NULL,
PRIMARY KEY (`customerid`));


CREATE TABLE `courier_service`.`package` (
`packageid` INT NOT NULL AUTO_INCREMENT,
`weight` FLOAT NOT NULL,
`datereceived` DATE NOT NULL,
`dstreet` VARCHAR(100) NOT NULL,
`dpincode` INT NOT NULL,
`rstreet` VARCHAR(100) NOT NULL,
`rpincode` INT NOT NULL,
`codamount` INT NULL,
`deliveryfees` INT NOT NULL,
`estdelivery` DATE NOT NULL,
`actualdelivery` DATE NULL,
`tstatus` ENUM('PROCESSING', 'DELIVERED', 'IN TRANSIT', 'OUT FOR
DELIVERY') NOT NULL,
`sbranch` INT NOT NULL,
`dbranch` INT NOT NULL,
`empid` INT NULL,
`customerid` INT NOT NULL,
PRIMARY KEY (`packageid`),
INDEX `sbranch_idx` (`sbranch` ASC) VISIBLE,
INDEX `customers_idx` (`customerid` ASC) VISIBLE,
INDEX `deliveryman_idx` (`empid` ASC) VISIBLE,
INDEX `pincodefk_idx` (`dpincode` ASC) VISIBLE,
INDEX `rpincode_idx` (`rpincode` ASC) VISIBLE,
INDEX `dbranch_idx` (`dbranch` ASC) VISIBLE,
CONSTRAINT `sbranch`
FOREIGN KEY (`sbranch`)
REFERENCES `courier_service`.`branch` (`branchid`)
ON DELETE CASCADE
ON UPDATE CASCADE,
CONSTRAINT `customers`
FOREIGN KEY (`customerid`)
REFERENCES `courier_service`.`customer` (`customerid`)
ON DELETE CASCADE
ON UPDATE CASCADE,
CONSTRAINT `deliveryman`
FOREIGN KEY (`empid`)
REFERENCES `courier_service`.`deliverypartner` (`empid`)
ON DELETE SET NULL
ON UPDATE CASCADE,
CONSTRAINT `dpincode`
FOREIGN KEY (`dpincode`)
REFERENCES `courier_service`.`pincode` (`pcode`)
ON DELETE CASCADE
ON UPDATE CASCADE,
CONSTRAINT `rpincode`
FOREIGN KEY (`rpincode`)
REFERENCES `courier_service`.`pincode` (`pcode`)
ON DELETE CASCADE
ON UPDATE CASCADE,
CONSTRAINT `dbranch`
FOREIGN KEY (`dbranch`)
REFERENCES `courier_service`.`branch` (`branchid`)
ON DELETE CASCADE
ON UPDATE CASCADE);


CREATE TABLE `courier_service`.`feedback` (
`customerid` INT NOT NULL,
`ftime` TIMESTAMP NOT NULL,
`ratings` TINYINT NULL,
`fdesc` VARCHAR(200) NULL,
PRIMARY KEY (`customerid`, `ftime`),
CONSTRAINT `customerid`
FOREIGN KEY (`customerid`)
REFERENCES `courier_service`.`customer` (`customerid`)
ON DELETE CASCADE
ON UPDATE CASCADE);