CREATE TABLE  Customer(
CNumber int,
CFirstName varchar(30),
CSurName varchar(30),
CBirthDate DATE,
Cmail varchar(30),
CPhone varchar(30),
primary key(CNumber)
);

CREATE TABLE Company(
ComName varchar(30),
ComPhone varchar(30),
ComAdress varchar(30),
primary key(ComName)
);

CREATE TABLE Model(
ComName varchar(30),
MNumber varchar(30),
MName varchar(30),
MCleaningType varchar(30),
Processor varchar(30),
Memory int,
Warranty varchar(30),
primary key(ComName, MNumber),
foreign key(ComName) references Company(ComName) 
);

CREATE TABLE Robot(
RID int,
CNumber int,
ComName varchar(30),
MNumber varchar(30),
RColor varchar(30),
PurchaseDate date,
primary key(RID),
foreign key(CNumber) references Customer(CNumber),
foreign key(ComName, MNumber) references Model(ComName, MNumber)
);

INSERT INTO Customer VALUES (12,'dustin','zorba','1982-05-01','dus@gmail.com','0543531588'),
(15,'brutus','art','1984-10-10','bru@gmail.com','0549988452'),(16,'lubber','bob','1995-05-12','lub@gmail.com','0543531566'),
(48,'andy','frodo','1989-07-18','and@gmail.com','0543631599'),(50,'rusty','zee','1999-10-05','ze@gmail.com','0658487533'),
(52,'horatio','boaz','1977-03-13','bao@gmail.com','0548786533');

INSERT INTO Company VALUES ('USRobotics','0583531455','USA'),('ISRobotics','0583531456','ISR'),
('FraRbotics','0583531458','France'),('IndiaRobotics','0583531457','India'),
('GreRobotics','0583531469','Greece'),('SpaRobotics','0583531467','Spain');

INSERT INTO Model VALUES ('USRobotics','MD1582','A','Floor','A+',120,'Yes'),('FraRbotics','MD1583','B','Window','B+',400,'No'),
('IndiaRobotics','MD1584','C','Floor','C+',320,'Yes'),
('ISRobotics','MD1585','D','Window','D++',100,'No'),('ISRobotics','MD1582','D','Window','D++',100,'No'),
('GreRobotics','MD1586','E','Floor','E++',320,'Yes'),('SpaRobotics','MD1587','F','Window','F+',120,'No');

INSERT INTO Robot VALUES (300,12,'USRobotics','MD1582','red','2019-01-12'),(123,15,'FraRbotics','MD1583','green','2016-08-16'),
(125,16,'IndiaRobotics','MD1584','green','2019-05-10'),(147,48,'ISRobotics','MD1585','red','2018-09-19'),
(196,50,'GreRobotics','MD1586','blue','2019-10-05'),(489,52,'SpaRobotics','MD1587','blue','2017-01-19'),
(302,15,'ISRobotics','MD1582','red','2019-08-15'), (301,48,'USRobotics','MD1582','red','2019-01-12');
