-- create and select the database
DROP DATABASE IF EXISTS prs;
CREATE DATABASE prs;
USE prs;

-- create User table
-- DROP TABLE IF EXISTS User;
Create table User(
ID 				integer 		primary key auto_increment,
UserName 		varchar(25) 	not null, 
Password 		varchar(8) 		not null,
FirstName 		varchar(25) 	not null,
LastName 		varchar(25) 	not null,
Phone			varchar(12)		not null,
Email			varchar(100)	not null,
IsReviewer		tinyint			not null,
IsAdmin			tinyint			not null,
CONSTRAINT unq_username unique (UserName)
);

-- Add some Users
Insert into User values
	(1, 'System', 'xxxxx', 'System', 'System', 'XXX-XXX-XXXX', 'system@test.com', '0', '0'),
    (2, 'DarkEyestheBaker', 'Br0wni3s', 'Julie', 'Dietsch', '513-245-0881', 'julesdietsch@fioptics.com', '1', '1'),
    (3, 'Chetan', 'AB123!', 'Chetan', 'Hart', '555-123-4567', 'chetan.hart@test.com', '1', '0'),
    (4, 'Fnu', 'CD456!', 'Fnu', 'Snutee', '555-123-0123', 'fnu.snutee@test.com', '0', '0'),
    (5, 'Lakai', 'EF789!', 'Lakai', 'Gnusnudi', '555-123-8901', 'lakai.gnusnudi@test.com', '0', '1'),
    (6, 'Cinnamon', 'GH0123!', 'Sinnamin', 'Bagley', '555-123-2345', 'sinnamin.bagley@test.com', '1', '1'),
    (7, 'PastaPal', 'IJ4567!', 'Shelly', 'Verma', '555-123-6789', 'verma.shelly@test.com', '0', '0')
    ;


-- create Vendor table
-- Drop table if exists Vendor
Create table Vendor(
ID          	integer         primary key auto_increment,
Code	   		varchar(10)    	not null,
Name	    	varchar(255)    not null,
StreetAddress	varchar(255)    not null,
City		  	varchar(255)    not null,
State			varchar(2)		not null,
ZipCode			varchar(10)		not null,
Phone			varchar(12)		not null,
Email			varchar(100)	not null
);

-- Add some Vendors
 insert into Vendor VALUES
 	(1, 'BB-1001', 'Best Buy', '100 Best Buy Street', 'Louisville', 'KY', '40207', '502-111-9099', 'geeksquad@bestbuy.com'),
 	(2, 'AP-1001', 'Apple Inc', 'One Infinite Loop', 'Cupertino', 'CA', '95014', '800-123-4567', 'genius@apple.com'),
 	(3, 'AM-1001', 'Amazon', '410 Terry Avenue North', 'Seattle', 'WA', '98109', '206-266-1000', 'amazon@amazon.com'),
 	(4, 'ST-1001', 'Staples', '9550 Mason-Montgomery Road', 'Mason', 'OH', '45040', '513754-0235', 'support@orders.staples.com'),
 	(5, 'MC-1001', 'Micro Center', '11755 Mosteller Road', 'Sharonville', 'OH', '45241', '513-782-8500', 'support@microcenter.com');


-- create Request table
-- Drop table if exists Request
Create table Request(
ID          			integer         primary key auto_increment,
UserID   				integer		    not null,
Description    			varchar(255)    not null,
Justification   		varchar(255)    not null,
DateNeeded   			date	        not null,
DeliveryMode			varchar(25)		not null,
Status					varchar(20)		not null,
Total					decimal(10,2)	not null,
SubmittedDate			datetime		not null,
ReasonForRejection		varchar(100),
Foreign Key (UserID) references User(ID)
);

-- create Product table
-- Drop table if exists Product
Create table Product(
ID 				integer 		primary key auto_increment,
VendorID 		integer 		not null,
PartNumber 		varchar(50) 	not null,
Name 			varchar(150) 	not null,
Price 			decimal(10,2) 	not null,
Unit			varchar(255),
PhotoPath		varchar(100),
Foreign Key (VendorID) references Vendor(ID)
);

-- Insert Products
Insert into Product values
	(1, 1, 	'ME280LL', 	'iPad Mini 2', 												'296.99', 	null,									null),
	(2, 2, 	'ME280LL', 	'iPad Mini 2', 												'299.99', 	null, 									null),
	(3, 3, 	'105810', 	'Hammermill Paper, Premium Multi-Purpose Paper Poly Wrap', 	'8.99', 	'1 Ream/500 sheets', 					null),
    (4, 4, 	'122374', 	'Hammermill Copy Plus Copy Paper 8 1/2" x 11", Case', 		'29.99', 	'1 case, 10 reams, 500 Sheets/Ream', 	null),
	(5, 4, 	'784551', 	'Logitech M325 Wireless Optical Mouse, Ambidextrous, Black','14.99', 	null, 									null),
	(6, 4, 	'382955', 	'Staples Mouse Pad, Black', 								'2.99', 	null, 									null),
	(7, 4, 	'2122178', 	'AOC 24-Inch Class LED Monitor', 							'99.99', 	null, 									null),
    (8, 4, 	'2460649', 	'Laptop HP Notebook 15-AY163NR', 							'529.99', 	null, 									null),
    (9, 4, 	'2256788', 	'Laptop Dell i3552-3240BLK 15.6"', 							'239.99', 	null, 									null),
    (10, 4, 'IM12M9520','Laptop Acer Acer Aspire One Cloudbook 14"', 				'224.99', 	null, 									null),
    (11, 4, '940600', 	'Cannon imageCLASS copier', 								'99.99', 	null, 									null),
    (12, 5, '228148', 	'Acer Aspire ATC-780A-UR12 Desktop Computer', 				'399.99', 	null, 									null),
    (13, 5, '279364', 	'Lenovo IdeaCentre All-In-One Desktop', 					'349.99', 	null, 									null);
    

-- create LineItem table
-- Drop table if exists LineItem
Create table LineItem(
ID 				integer 		primary key auto_increment,
RequestID 		integer 		not null,
ProductID 		integer			not null,
Quantity 		integer		 	not null,
Foreign Key (RequestID) references Request(ID),
Foreign key	(ProductID) references Product(ID)
);
