/*
Database Systems - Group Project - Create tables
Student Name: Jack Boeri
Student ID: 100296865

No incompatibility from MSSQL to MYSQL

MY SQL
CREATE DATABASE GroupProject;

----------------------------------------------------------------------------------------------------*/

CREATE TABLE People (
PeopleID VARCHAR(9),
FName VARCHAR(32) NOT NULL,
LName VARCHAR(32) NOT NULL,
Phone VARCHAR(22) NOT NULL,
Email VARCHAR(32) NOT NULL,
PRIMARY KEY (PeopleID)
);

CREATE TABLE CollegeMember (
CollegeID VARCHAR(9),
Department VARCHAR(32) NOT NULL,
PRIMARY KEY (CollegeID)
);

CREATE TABLE Member (
PeopleID VARCHAR(9),
Department VARCHAR(32) NOT NULL,
PRIMARY KEY (PeopleID),
FOREIGN KEY (PeopleID) REFERENCES People(PeopleID)
);

CREATE TABLE NonCollegeMember (
PeopleID VARCHAR(9),
PRIMARY KEY (PeopleID),
FOREIGN KEY (PeopleID) REFERENCES People(PeopleID)
);

CREATE TABLE Student (
PeopleID VARCHAR(9),
FieldOfStudy VARCHAR(32) NULL,
PRIMARY KEY (PeopleID),
FOREIGN KEY (PeopleID) REFERENCES People(PeopleID)
);

CREATE TABLE Professor (
PeopleID VARCHAR(9),
StartDate DATE NOT NULL,
OfficeLocation VARCHAR(32) NOT NULL,
PRIMARY KEY (PeopleID),
FOREIGN KEY (PeopleID) REFERENCES People(PeopleID)
);

CREATE TABLE Staff (
PeopleID VARCHAR(9),
Position VARCHAR(32) NOT NULL,
OfficeLocation VARCHAR(32) NOT NULL,
StartDate DATE NOT NULL,
PRIMARY KEY (PeopleID),
FOREIGN KEY (PeopleID) REFERENCES People(PeopleID)
);

CREATE TABLE Board (
BoardID VARCHAR(9),
Building VARCHAR(32) NOT NULL,
Floor INT NOT NULL,
Location VARCHAR(32) NOT NULL,
PRIMARY KEY (BoardID)
);

CREATE TABLE Advertisement (
AdID VARCHAR(9),
AdType VARCHAR(32) NOT NULL,
PostDate VARCHAR(32) NOT NULL,
Duration TIME NOT NULL,
Length INT NOT NULL,
Width INT NOT NULL,
PRIMARY KEY (AdID)
);

CREATE TABLE AdvertisementApprovedByStaff (
AdID VARCHAR(9),
PeopleID VARCHAR(9),
PRIMARY KEY (AdID),
FOREIGN KEY (AdID) REFERENCES Advertisement(AdID),
FOREIGN KEY (PeopleID) REFERENCES People(PeopleID)
);

CREATE TABLE AdvertisementPostedByMember (
AdID VARCHAR(9),
PeopleID VARCHAR(9),
PRIMARY KEY (AdID),
FOREIGN KEY (AdID) REFERENCES Advertisement(AdID),
FOREIGN KEY (PeopleID) REFERENCES People(PeopleID)
);

CREATE TABLE AdvertisementPostedOnBoard (
BoardID VARCHAR(9),
AdID VARCHAR(9),
FOREIGN KEY (BoardID) REFERENCES Board(BoardID),
FOREIGN KEY (AdID) REFERENCES Advertisement(AdID),
PRIMARY KEY (BoardID, AdID)
);

CREATE TABLE SenderSendsMessageToReciever (
SenderID VARCHAR(9),
RecieverID VARCHAR(9),
Title VARCHAR(32) NOT NULL,
Num INT NOT NULL,
MsgDate VARCHAR(32) NOT NULL,
MessageTime VARCHAR(32) NOT NULL,
FOREIGN KEY (SenderID) REFERENCES People(PeopleID),
FOREIGN KEY (RecieverID) REFERENCES People(PeopleID),
PRIMARY KEY (SenderID, RecieverID)
);

CREATE TABLE Messages (
MessageID INT,
Message VARCHAR(200) NOT NULL,
PRIMARY KEY (MessageID)
);

CREATE TABLE MemberMessage (
SenderID VARCHAR(9),
RecieverID VARCHAR(9),
MessageID INT,
FOREIGN KEY (SenderID) REFERENCES People(PeopleID),
FOREIGN KEY (RecieverID) REFERENCES People(PeopleID),
FOREIGN KEY (MessageID) REFERENCES Messages(MessageID),
PRIMARY KEY (SenderID, RecieverID, MessageID)
);

