/*
Database Systems - Group Project - Insert tables
Student Name: Jack Boeri
Student ID: 100296865


No incompatibility from MSSQL to MYSQL

MY SQL

----------------------------------------------------------------------------------------------------*/

INSERT INTO People (PeopleID, FName, LName, Phone, Email) VALUES 
(100845934, 'John', 'Samiro', 8589403928, 'John@gmail.com'),
(100394832, 'Victoria', "Nordil", 7789482934, 'VictoriaV@hotmail.com'),
(100389493, 'Jack', 'Bodery', 7788347293, 'Jbodery@gmail.com'),
(200483948, 'Saeed', 'Mirijali', 7783829384, 'Saeed@langara.ca');

INSERT INTO Member (PeopleID, Department) VALUES 
(100845934, 'Staff'),
(100394832, 'Marketing'),
(100389493, 'Computer Science');

INSERT INTO Student (PeopleID, FieldOfStudy) VALUES 
(100389493, 'Computer Science'),
(100394832, 'Marketing');

INSERT INTO Staff () VALUES 
(300845934, 'Janitor', 'Vancouver', "2019-03-20");
INSERT INTO Professor (PeopleID, StartDate, OfficeLocation) VALUES 
(200483948, '2016-01-02', 'Vancouver');

INSERT INTO Advertisement VALUES
(1,'Housing','2020/12/20','0:0:30', 55, 50), 
(2,'Job','2020/10/20','0:0:30', 55, 50);

INSERT INTO AdvertisementApprovedByStaff VALUES 
(999999998,100845934),
(222222222,100845934);

INSERT INTO CollegeMember VALUES 
(100272425,'CPSC'),
(35501113,'CPSC');

INSERT INTO NonCollegeMember VALUES
(600000006);

INSERT INTO MemberMessage VALUES 
(225323413,128349449,200),
(128349449,225323413,201);

INSERT INTO Messages VALUES 
(200,'Hello! I am interested in your apartment, is it still available?'), 
(201,'Thank you for your interest. Yes, it is still available.');

INSERT INTO SenderSendsMessageToReciever VALUES 
(225323413, 128349449, 'Apartment for rent', 100, '2020/12/25','10:30:00'), 
(128349449, 225323413, 'Apartment for rent', 100, '2020/12/25','10:35:01');

INSERT INTO AdvertisementPostedOnBoard VALUES 
(15,1),
(16,2);

INSERT INTO AdvertisementPostedByMember VALUES 
(1,128349449),
(2,225323413);

INSERT INTO Board VALUES
(15,'Central','2','Cafeteria'),
(16,'Burmingham','1','Library');
