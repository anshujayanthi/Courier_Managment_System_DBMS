INSERT INTO courier_service.cities (city, State) VALUES
('Mumbai', 'Maharashtra'),
('Delhi', 'Delhi'),
('Bangalore', 'Karnataka'),
('Chennai', 'Tamil Nadu'),
('Kolkata', 'West Bengal'),
('Hyderabad', ‘Telangana');


INSERT INTO courier_service.pincode (pcode, city) VALUES
(400001, 'Mumbai'),
(110001, 'Delhi'),
(560001, 'Bangalore'),
(600001, 'Chennai'),
(700001, 'Kolkata'),
(500001, 'Hyderabad'),
(500070, 'Hyderabad'),
(400050, 'Mumbai'),
(400075, ‘Mumbai');

INSERT INTO courier_service.employee (fname, lname, dob, doj,
salary) VALUES
('Ramesh', 'Kumar', '1990-05-15', '2015-07-10', 50000),
('Suresh', 'Verma', '1985-02-20', '2010-04-12', 55000),
('Priya', 'Gupta', '1992-08-12', '2016-09-20', 48000),
('Amit', 'Singh', '1988-04-25', '2014-03-15', 52000),
('Anita', 'Das', '1995-01-10', '2019-06-05', 49000),
('Rahul', 'Sharma', '1993-06-10', '2016-08-15', 45000),
('Amit', 'Gupta', '1990-07-20', '2017-09-12', 46000),
('Sneha', 'Verma', '1994-02-15', '2018-05-20', 44000),
('Vikas', 'Singh', '1988-11-25', '2015-04-10', 47000),
('Pooja', 'Das', '1991-04-05', '2019-06-25', 43000),
('Kiran', 'Reddy', '1987-09-20', '2014-11-10', 48000),
( 'Rohan', 'Kumar', '1985-05-15', '2010-08-20', 55000),
( 'Amit', 'Verma', '1989-07-12', '2015-06-10', 52000),
( 'Pooja', 'Sharma', '1992-03-25', '2018-09-05', 50000);


INSERT INTO courier_service.branch (name, street, pincode) VALUES
('Mumbai Central', 'ABC Street', 400001),
('Delhi North', 'XYZ Street', 110001),
('Bangalore East', 'PQR Street', 560001),
('Chennai West', 'LMN Street', 600001),
('Kolkata South', 'OPQ Street', 700001),
('Hyderabad North', 'JKL Street', 500001),
('Hyderabad East', 'XYZ Street', 500070),
('Mumbai West', 'LMN Street', 400001),
('Mumbai South', 'XYZ Street', 400050);

INSERT INTO courier_service.branchmanager (empid, branchid) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(11, 6),
(12, 7),
(13, 8),
(14, 9);

INSERT INTO courier_service.deliverypartner (empid, hours) VALUES
(6, 8),
(7, 7),
(8, 8),
(9, 7),
(10, 8);

INSERT INTO courier_service.operatesin (branchid, pincode) VALUES
(1, 400001),
(2, 110001),
(3, 560001),
(4, 600001),
(5, 700001),
(7, 500070),
(7, 500001),
(6, 500001),
(8, 400001),
(8, 400050),
(8, 400075),
(9, 400050),
(9, 400075);

INSERT INTO courier_service.customer (customerid, fname, lname,
ph1, ph2) VALUES
(1, 'Rohan', 'Kumar', 999990001, 999990011),
(2, 'Amit', 'Verma', 999990002, 999990012),
(3, 'Pooja', 'Sharma', 999990003, 999990013),
(4, 'Suresh', 'Menon', 999990004, 999990014),
(5, 'Priya', 'Nair', 999990005, 999990015),
(6, 'Ramesh', 'Iyer', 999990006, 999990016),
(7, 'Meena', 'Patel', 999990007, 999990017),
(8, 'Karthik', 'Raj', 999990008, 999990018),
(9, 'Neha', 'Singh', 999990009, 999990019),
(10, 'Anjali', 'Dutta', 999990010, 999990020);


INSERT INTO courier_service.feedback (customerid, ftime, ratings,
fdesc) VALUES
(1, '2024-03-27 10:15:00', 4, 'Good service'),
(2, '2024-03-27 11:20:00', 5, 'Excellent delivery'),
(3, '2024-03-28 09:45:00', 3, 'Late delivery but good
communication'),
(4, '2024-03-29 14:30:00', 4, 'Fast delivery and polite delivery
person'),
(5, '2024-03-30 16:00:00', 2, 'Package damaged upon arrival'),
(1, '2024-03-31 12:10:00', 5, 'Very satisfied with the service'),
(2, '2024-04-01 10:05:00', 4, 'Good tracking system and on-time
delivery'),
(3, '2024-04-02 11:50:00', 3, 'Average service'),
(4, '2024-04-03 13:20:00', 5, 'Excellent packaging and no
issues'),
(5, '2024-04-04 15:30:00', 1, 'Lost my package, very
disappointed’);


(2.3, '2024-05-11', 'LMN Street', 600001, 'XYZ Street', 110001,
2100, 150, '2024-05-15', NULL, 'DELIVERED', 4, 2, NULL, 6),
(1.7, '2024-05-12', 'JKL Street', 400050, 'RST Street', 500001,
1400, 100, '2024-05-16', NULL, 'IN TRANSIT', 8, 5, NULL, 3),
(3.4, '2024-05-13', 'GHI Street', 400075, 'OPQ Street', 700001,
2900, 210, '2024-05-17', NULL, 'OUT FOR DELIVERY', 9, 4, NULL, 7),
(2.6, '2024-05-14', 'RST Street', 500001, 'UVW Street', 500070,
2300, 160, '2024-05-18', NULL, 'DELIVERED', 7, 3, NULL, 8),
(2.0, '2024-05-15', 'ABC Street', 400001, 'PQR Street', 560001,
1800, 130, '2024-05-19', NULL, 'IN TRANSIT', 6, 1, NULL, 4),
(2.8, '2024-05-16', 'PQR Street', 560001, 'LMN Street', 600001,
2500, 180, '2024-05-20', NULL, 'DELIVERED', 3, 7, NULL, 2),
(1.9, '2024-05-17', 'UVW Street', 500070, 'GHI Street', 400075,
1700, 120, '2024-05-21', NULL, 'OUT FOR DELIVERY', 7, 3, NULL, 1),
(3.1, '2024-05-18', 'OPQ Street', 700001, 'JKL Street', 400050,
2800, 190, '2024-05-22', NULL, 'DELIVERED', 8, 5, NULL, 9),
(2.4, '2024-05-19', 'LMN Street', 600001, 'RST Street', 500001,
2200, 160, '2024-05-23', NULL, 'IN TRANSIT', 4, 2, NULL, 5),
(2.2, '2024-05-20', 'XYZ Street', 110001, 'OPQ Street', 700001,
2000, 140, '2024-05-24', NULL, 'DELIVERED', 2, 4, NULL, 8),
(2.5, '2024-05-21', 'JKL Street', 400050, 'ABC Street', 400001,
2100, 150, '2024-05-25', NULL, 'OUT FOR DELIVERY', 6, 1, NULL, 3),
(2.3, '2024-05-22', 'GHI Street', 400075, 'UVW Street', 500070,
1900, 130, '2024-05-26', NULL, 'DELIVERED', 7, 3, NULL, 4),
(1.6, '2024-05-23', 'PQR Street', 560001, 'LMN Street', 600001,
1300, 90, '2024-05-27', NULL, 'IN TRANSIT', 3, 7, NULL, 5),
(3.0, '2024-05-24', 'RST Street', 500001, 'XYZ Street', 110001,
2600, 190, '2024-05-28', NULL, 'DELIVERED', 2, 4, NULL, 9),
(2.1, '2024-05-25', 'OPQ Street', 700001, 'JKL Street', 400050,
1800, 120, '2024-05-29', NULL, 'IN TRANSIT', 8, 5, NULL, 7),
(2.7, '2024-05-26', 'ABC Street', 400001, 'PQR Street', 560001,
2400, 170, '2024-05-30', NULL, 'DELIVERED', 6, 1, NULL, 2),
(2.9, '2024-05-27', 'LMN Street', 600001, 'GHI Street', 400075,
2700, 200, '2024-05-31', NULL, 'OUT FOR DELIVERY', 4, 2, NULL, 9),
(2.7, '2024-06-07', 'ABC Street', 400001, 'UVW Street', 500070,
2400, 170, '2024-06-11', NULL, 'DELIVERED', 6, 1, NULL, 2),
(1.6, '2024-06-08', 'LMN Street', 600001, 'PQR Street', 560001,
1500, 100, '2024-06-12', NULL, 'IN TRANSIT', 4, 2, NULL, 5),
(2.9, '2024-06-09', 'RST Street', 500001, 'GHI Street', 400075,
2600, 190, '2024-06-13', NULL, 'DELIVERED', 7, 3, NULL, 9),
(2.2, '2024-06-10', 'JKL Street', 400050, 'XYZ Street', 110001,
2100, 150, '2024-06-14', NULL, 'OUT FOR DELIVERY', 8, 5, NULL, 3),
(3.0, '2024-06-11', 'OPQ Street', 700001, 'LMN Street', 600001,
2700, 200, '2024-06-15', NULL, 'DELIVERED', 3, 7, NULL, 6),
(2.5, '2024-06-12', 'UVW Street', 500070, 'OPQ Street', 700001,
2200, 160, '2024-06-16', NULL, 'IN TRANSIT', 9, 4, NULL, 1),
(1.8, '2024-06-13', 'ABC Street', 400001, 'JKL Street', 400050,
1900, 130, '2024-06-17', NULL, 'DELIVERED', 6, 1, NULL, 8),
(2.4, '2024-06-14', 'PQR Street', 560001, 'RST Street', 500001,
2300, 160, '2024-06-18', NULL, 'OUT FOR DELIVERY', 5, 2, NULL, 7),
(2.7, '2024-06-15', 'XYZ Street', 110001, 'GHI Street', 400075,
2500, 180, '2024-06-19', NULL, 'DELIVERED', 2, 4, NULL, 9),
(1.9, '2024-06-16', 'LMN Street', 600001, 'UVW Street', 500070,
2000, 140, '2024-06-20', NULL, 'IN TRANSIT', 4, 3, NULL, 5),
(2.3, '2024-06-17', 'OPQ Street', 700001, 'ABC Street', 400001,
2100, 150, '2024-06-21', NULL, 'DELIVERED', 9, 1, NULL, 6),
(3.1, '2024-06-18', 'RST Street', 500001, 'JKL Street', 400050,
2700, 200, '2024-06-22', NULL, 'OUT FOR DELIVERY', 7, 5, NULL, 2),
(2.0, '2024-06-19', 'GHI Street', 400075, 'PQR Street', 560001,
1800, 120, '2024-06-23', NULL, 'DELIVERED', 1, 6, NULL, 3),
(2.8, '2024-06-20', 'UVW Street', 500070, 'LMN Street', 600001,
2600, 190, '2024-06-24', NULL, 'IN TRANSIT', 9, 4, NULL, 7),
(2.6, '2024-06-21', 'ABC Street', 400001, 'RST Street', 500001,
2400, 170, '2024-06-25', NULL, 'DELIVERED', 6, 1, NULL, 8),
(2.1, '2024-06-22', 'PQR Street', 560001, 'GHI Street', 400075,
2000, 140, '2024-06-26', NULL, 'OUT FOR DELIVERY', 5, 2, NULL, 9),
(2.9, '2024-06-23', 'JKL Street', 400050, 'XYZ Street', 110001,
2800, 210, '2024-06-27', NULL, 'DELIVERED', 8, 5, NULL, 3),
(2.4, '2024-06-24', 'OPQ Street', 700001, 'UVW Street', 500070,
2300, 160, '2024-06-28', NULL, 'IN TRANSIT', 7, 3, NULL, 4),
(2.5, '2024-06-25', 'LMN Street', 600001, 'ABC Street', 400001,
2200, 150, '2024-06-29', NULL, 'DELIVERED', 4, 2, NULL, 6),
(2.3, '2024-06-26', 'RST Street', 500001, 'PQR Street', 560001,
2100, 140, '2024-06-30', NULL, 'OUT FOR DELIVERY', 3, 7, NULL, 1);