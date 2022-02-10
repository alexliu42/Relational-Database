/*
Database Systems - Group Project - Create tables
Student Name: Alex Liu
Student ID: 100272425

No incompatibility from MYSQL to MSSQL 

MS SQL
CREATE DATABASE GroupProject;

----------------------------------------------------------------------------------------------------*/
USE GroupProject;

CREATE TABLE People
(
PeopleID BIGINT PRIMARY KEY,
FName VARCHAR(50),
LName VARCHAR(50),
Phone BIGINT,
Email VARCHAR(65)
);


CREATE TABLE CollegeMember
(
CollegeID BIGINT PRIMARY KEY,
Dept VARCHAR(50)
)
CREATE TABLE Member
(
PeopleID BIGINT FOREIGN KEY REFERENCES People(PeopleID),
PRIMARY KEY(PeopleID),
CollegeID BIGINT FOREIGN KEY REFERENCES CollegeMember(CollegeID)
)

CREATE TABLE NonCollegeMember
(
PeopleID BIGINT FOREIGN KEY REFERENCES People(PeopleID),
PRIMARY KEY(PeopleID)
)

CREATE TABLE Student
(
PeopleID BIGINT FOREIGN KEY REFERENCES People(PeopleID),
PRIMARY KEY(PeopleID),
FieldOfStudy VARCHAR(50)
)

CREATE TABLE Professor
(
PeopleID BIGINT FOREIGN KEY REFERENCES People(PeopleID),
PRIMARY KEY(PeopleID),
StartDate DATE,
OfficeLocation VARCHAR(50)
)

CREATE TABLE Staff
(
PeopleID BIGINT FOREIGN KEY REFERENCES People(PeopleID),
PRIMARY KEY(PeopleID),
Position VARCHAR(50),
OfficeLocation VARCHAR(50),
StartDate DATE
)

CREATE TABLE Board
(
BoardID BIGINT PRIMARY KEY,
Building VARCHAR(50),
Floor INT,
Location VARCHAR(50)
)


CREATE TABLE Advertisement
(
AdID BIGINT PRIMARY KEY,
Type VARCHAR(50),
Postdate DATE,
Duration TIME,
Length_Inch INT,
Width_Inch INT
)

CREATE TABLE AdvertisementApprovedByStaff
(
AdID BIGINT NOT NULL FOREIGN KEY REFERENCES Advertisement(AdID),
PRIMARY KEY(AdID),
PeopleID BIGINT FOREIGN KEY REFERENCES Staff(PeopleID)
)

CREATE TABLE AdvertisementPostedByMember
(
AdID BIGINT NOT NULL FOREIGN KEY REFERENCES Advertisement(AdID),
PRIMARY KEY(AdID),
PeopleID BIGINT FOREIGN KEY REFERENCES Member(PeopleID)
)

CREATE TABLE AdvertisementPostedOnBoard
(
BoardID BIGINT FOREIGN KEY REFERENCES Board(BoardID),
AdID BIGINT NOT NULL FOREIGN KEY REFERENCES Advertisement(AdID),
PRIMARY KEY(BoardID, AdID)
)

CREATE TABLE Sender_Send_Msg_To_Reciever
(
PostTitle VARCHAR(50),
PostNum BIGINT,
Date DATE,
Time TIME,
SenderPeople_ID BIGINT FOREIGN KEY REFERENCES Member(PeopleID),
RecieverPeople_ID BIGINT FOREIGN KEY REFERENCES Member(PeopleID),
PRIMARY KEY (SenderPeople_ID, RecieverPeople_ID)
)

CREATE TABLE Messages
(
MessageID BIGINT PRIMARY KEY,
Message TEXT
)

CREATE TABLE MemberMessage
(
SenderPeople_ID BIGINT ,
RecieverPeople_ID BIGINT,
FOREIGN KEY (SenderPeople_ID, RecieverPeople_ID) REFERENCES Sender_Send_Msg_To_Reciever(SenderPeople_ID, RecieverPeople_ID) ON DELETE CASCADE,
MessageID BIGINT FOREIGN KEY REFERENCES Messages(MessageID) ON DELETE CASCADE,
PRIMARY KEY(SenderPeople_ID, RecieverPeople_ID, MessageID)
)

