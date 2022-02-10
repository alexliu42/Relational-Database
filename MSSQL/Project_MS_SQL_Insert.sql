/*
Database Systems - Group Project - Insert tables
Student Name: Alex Liu
Student ID: 100272425


No incompatibility from MYSQL to MSSQL

MS SQL

----------------------------------------------------------------------------------------------------*/

USE GroupProject;

INSERT INTO People
VALUES (128349449,'Alex Liu', 'Liu', 7786687462, 'alexliu42@yahoo.com.tw'),
(225323413,'Jack','Boeri',7782311147,'Jackboeri@gmail.com'),
(200000002,'Saeed','Mirjalil',6042791728,'Saeed@gmail.com'),
(100000002,'Kim','Lam',7782311147,'Kim@gmail.com'),
(300000003,'Andy','Lau',7784421233,'Andy@gmail.com'),
(400000004,'Peter','Pan',7781232313,'Peter@gmail.com'),
(500000005,'Zion','Williamson', 4031231234, 'Zion@gmail.com');

INSERT INTO CollegeMember
VALUES (100272425,'CPSC'),
(35501113,'CPSC'),
(111111111,'CPSC'),
(222222222,'CPSC'),
(333333333,'CPSC'),
(444444444,'CPSC');

INSERT INTO Member
VALUES (128349449, 100272425), (225323413,35501113),
(200000002,111111111),
(100000002,222222222),
(300000003,333333333),
(400000004,444444444);


INSERT INTO NonCollegeMember
VALUES (500000005);

INSERT INTO Student
VALUES (128349449,'CPSC'),(225323413,'CPSC');

INSERT INTO Professor
VALUES (200000002,'2000/09/01','Kaiser220'),(100000002,'2005/09/01','Irving120');

INSERT INTO Staff
VALUES (300000003,'Janitor','Nest100','2010/09/01'),(400000004,'Janitor','Nest100','2010/09/01');

INSERT INTO Board
VALUES (15,'Kaiser','2','Board next to entrance'),
(16,'Irving','1','Board next to entrance');

INSERT INTO Advertisement
VALUES (1,'Housing','2020/12/20','0:0:30', 55, 50), (2,'Job','2020/10/20','0:0:30', 55, 50);

INSERT INTO AdvertisementApprovedByStaff
VALUES (1,300000003), (2,400000004);

INSERT INTO AdvertisementPostedByMember
VALUES (1,128349449), (2,225323413);

INSERT INTO AdvertisementPostedOnBoard
VALUES (15,1), (16,2);

INSERT INTO Sender_Send_Msg_To_Reciever
VALUES ('Apartment for rent', 100, '2020/12/25','10:30:00',225323413,128349449), 
('Apartment for rent', 100, '2020/12/25','10:35:01',128349449,225323413);

INSERT INTO Messages
VALUES (200,'Hi I am interested in your apartment.'), 
(201,'Thank you for your interest.');

INSERT INTO MemberMessage
VALUES (225323413,128349449,200),(128349449,225323413,201)
