-----------------------------------------------------------------------------------------------------------------------------
/* Level_20191011 table */
CREATE TABLE Level_20191011 (
levelId varchar(3) NOT NULL,
levelType varchar(10) NOT NULL,
CONSTRAINT PK_Level PRIMARY KEY(levelId)
);

/*Data Entry*/
INSERT INTO Level_20191011 (levelId,levelType) VALUES
('L01','Basic');
INSERT INTO Level_20191011 (levelId,levelType) VALUES
('L02','Intermediate');
INSERT INTO Level_20191011 (levelId,levelType) VALUES
('L03','Advance');
INSERT INTO Level_20191011 (levelId,levelType) VALUES
('L04','Customised');
------------------------------------------------------------------------------------------------------------------------------

/* Training_Offer_20191011 table */
CREATE TABLE Training_Offer_20191011 (
trainingOfferDetailNumber varchar(5) NOT NULL,
trainingOfferLocation varchar(100) NOT NULL,
trainingOfferDeliveryDate date NOT NULL,
trainingOfferStartTime time NOT NULL,
trainingOfferEndTime time,
CONSTRAINT PK_trainingOfferDetailNumber PRIMARY KEY(trainingOfferDetailNumber)
);

/*Data Entry*/
INSERT INTO Training_Offer_20191011 (trainingOfferDetailNumber,trainingOfferLocation,trainingOfferDeliveryDate,trainingOfferStartTime,trainingOfferEndTime) VALUES
('T0001','Solaris Lanka Limited premises','2021/01/10','08:30:00','14:00:00');

INSERT INTO Training_Offer_20191011 (trainingOfferDetailNumber,trainingOfferLocation,trainingOfferDeliveryDate,trainingOfferStartTime,trainingOfferEndTime) VALUES
('T0002','Department Of Education premises','2021/02/15','08:00:00','14:00:00');

INSERT INTO Training_Offer_20191011 (trainingOfferDetailNumber,trainingOfferLocation,trainingOfferDeliveryDate,trainingOfferStartTime,trainingOfferEndTime) VALUES
('T0003','STH premises','2021/02/17','09:30:00','15:30:00');

INSERT INTO Training_Offer_20191011 (trainingOfferDetailNumber,trainingOfferLocation,trainingOfferDeliveryDate,trainingOfferStartTime,trainingOfferEndTime) VALUES
('T0004','Wordlab International premises','2021/02/20','08:45:00','14:45:00');

INSERT INTO Training_Offer_20191011 (trainingOfferDetailNumber,trainingOfferLocation,trainingOfferDeliveryDate,trainingOfferStartTime,trainingOfferEndTime) VALUES
('T0005','Department Of Examination premises','2021/02/25','11:30:00','17:30:00');


INSERT INTO Training_Offer_20191011 (trainingOfferDetailNumber,trainingOfferLocation,trainingOfferDeliveryDate,trainingOfferStartTime,trainingOfferEndTime) VALUES
('T0006','Travis Private Limited premises','2021/03/11','10:45:00','16:45:00');

INSERT INTO Training_Offer_20191011 (trainingOfferDetailNumber,trainingOfferLocation,trainingOfferDeliveryDate,trainingOfferStartTime,trainingOfferEndTime) VALUES
('T0007','STH premises','2021/03/15','09:45:00','15:45:00');

INSERT INTO Training_Offer_20191011 (trainingOfferDetailNumber,trainingOfferLocation,trainingOfferDeliveryDate,trainingOfferStartTime,trainingOfferEndTime) VALUES
('T0008','Cool Asia International premises','2021/03/20','08:15:00','14:15:00');

INSERT INTO Training_Offer_20191011 (trainingOfferDetailNumber,trainingOfferLocation,trainingOfferDeliveryDate,trainingOfferStartTime,trainingOfferEndTime) VALUES
('T0009','Department of Meteorology premises','2021/04/10','11:15:00','17:15:00');

INSERT INTO Training_Offer_20191011 (trainingOfferDetailNumber,trainingOfferLocation,trainingOfferDeliveryDate,trainingOfferStartTime,trainingOfferEndTime) VALUES
('T0010','STH premises','2021/05/25','11:30:00','17:30:00');

------------------------------------------------------------------------------------------------------------------------------
/* Course_20191011 table */

CREATE TABLE Course_20191011 (
courseId varchar(5)NOT NULL,
courseName varchar(30) NOT NULL,
CONSTRAINT PK_courseId PRIMARY KEY(courseId)
);

/*Data Entry*/
INSERT INTO Course_20191011 (courseId,courseName) VALUES
('C0001','Adobe Photoshop');
INSERT INTO Course_20191011 (courseId,courseName) VALUES
('C0002','Adobe Illustrator');
INSERT INTO Course_20191011 (courseId,courseName) VALUES
('C0003','Adobe InDesign');
INSERT INTO Course_20191011 (courseId,courseName) VALUES
('C0004','Corel VideoStudio Ultimate');
INSERT INTO Course_20191011 (courseId,courseName) VALUES
('C0005','Autodesk Maya');

INSERT INTO Course_20191011 (courseId,courseName) VALUES
('C0006','Microsoft Office');
INSERT INTO Course_20191011 (courseId,courseName) VALUES
('C0007','Microsoft Azure');
INSERT INTO Course_20191011 (courseId,courseName) VALUES
('C0008','TeamViewer');
INSERT INTO Course_20191011 (courseId,courseName) VALUES
('C0009','SQL Server');
INSERT INTO Course_20191011 (courseId,courseName) VALUES
('C0010','Visual Studio');

INSERT INTO Course_20191011 (courseId,courseName) VALUES
('C0011','AutoCAD');
INSERT INTO Course_20191011 (courseId,courseName) VALUES
('C0012','Microsoft Visio');

------------------------------------------------------------------------------------------------------------------------------
/* Expert_20191011 table */

CREATE TABLE Expert_20191011 (
expertId varchar(10) NOT NULL,
levelId varchar(5) NOT NULL,
expertFirstName varchar(50) NOT NULL,
expertSecondName varchar(50) NOT NULL,
expertDateOfEntry date NOT NULL,
expertSalary float(20) NOT NULL,
expertAddress varchar(100) NOT NULL,
expertMobileNumber bigint(15) NOT NULL,
expertEmail varchar(50) NOT NULL,
expertBankAccountNumber bigint(20) NOT NULL,
expertBankAccountRealatedBank varchar(20),
CONSTRAINT PK_Expert PRIMARY KEY(expertId),
CONSTRAINT FK_Expert FOREIGN KEY(levelId) REFERENCES Level_20191011(levelId)
);

/*Data Entry*/
INSERT INTO Expert_20191011 (expertId,expertFirstName,expertSecondName,expertDateOfEntry,expertSalary,expertAddress,expertMobileNumber,expertEmail,expertBankAccountNumber,expertBankAccountRealatedBank,levelId) VALUES
('EXP9943675','Hiran' , 'Gamage','2015/05/20','50000','No 270, Galle Rd, Mount Lavinia.','94773327209','hirang@sth.ac.lk','7691616314228','Sampath Bank','L03');

INSERT INTO Expert_20191011 (expertId,expertFirstName,expertSecondName,expertDateOfEntry,expertSalary,expertAddress,expertMobileNumber,expertEmail,expertBankAccountNumber,expertBankAccountRealatedBank,levelId) VALUES
('EXP8343058','Nadini', 'Rathnayake','2013/01/04','80000','No 14, New Kandy Rd, Malabe','94715366018','nadinir@sth.ac.lk','8928846162975','Peoples Bank','L04');

INSERT INTO Expert_20191011 (expertId,expertFirstName,expertSecondName,expertDateOfEntry,expertSalary,expertAddress,expertMobileNumber,expertEmail,expertBankAccountNumber,expertBankAccountRealatedBank,levelId) VALUES
('EXP9521153','Kavinda','Gamlath','2016/04/15','40000','No 41 High Level Rd, Maharagama.','94769917836','kavindag@sth.ac.lk','7085337201179','HNB','L02');

INSERT INTO Expert_20191011 (expertId,expertFirstName,expertSecondName,expertDateOfEntry,expertSalary,expertAddress,expertMobileNumber,expertEmail,expertBankAccountNumber,expertBankAccountRealatedBank,levelId) VALUES
('EXP2344054','Sithum', 'Bandara','2017/04/10','20000','No 10A Horana Rd, Piliyandala.','94777193082','sithumb@sth.ac.lk','6769636103294','Nations Trust Bank','L01');

------------------------------------------------------------------------------------------------------------------------------
/* Client_20191011 table */

CREATE TABLE Client_20191011 (
clientId varchar(10)NOT NULL,
trainingOfferDetailNumber varchar(5) NOT NULL,
clientName varchar(100) NOT NULL,
clientCategory varchar(50) NOT NULL,
clientAddress varchar(50),
clientTelephoneNumber bigint(15) NOT NULL,
clientEmailAddress varchar(50),
clientBankAccountNumber bigint(20),
clientBankAccountRealatedBank varchar(20),
CONSTRAINT PK_clientId PRIMARY KEY(clientId),
CONSTRAINT FK_trainingOfferDetailNumber FOREIGN KEY(trainingOfferDetailNumber) REFERENCES Training_Offer_20191011(trainingOfferDetailNumber)
);

/*Data Entry*/
INSERT INTO Client_20191011 (clientId,clientName,clientCategory,clientAddress,clientTelephoneNumber,clientEmailAddress,clientBankAccountNumber,clientBankAccountRealatedBank,trainingOfferDetailNumber) VALUES
('CL43162204','Solaris Lanka Limited', 'Private company','No 150/8, Stanley Tillekarathne Mawatha, Nugegoda.','94118090963','solarislanka@gmail.com','5265623922099','Bank Of Ceylon','T0001');

INSERT INTO Client_20191011 (clientId,clientName,clientCategory,clientAddress,clientTelephoneNumber,clientEmailAddress,clientBankAccountNumber,clientBankAccountRealatedBank,trainingOfferDetailNumber) VALUES
('CL51578918','Department Of Education', 'Central government department','No 5, Isurupaya, Battaramulla.','94114440450','depart.edu@gov.lk','7950197436402','Sampath Bank','T0002');

INSERT INTO Client_20191011 (clientId,clientName,clientCategory,clientAddress,clientTelephoneNumber,clientEmailAddress,clientBankAccountNumber,clientBankAccountRealatedBank,trainingOfferDetailNumber) VALUES
('CL60627392','Department Of Road Development, municipal council Dehiwala', 'Local government department','No 7, Galle Rd, Dehiwala-Mount Lavinia.','94115428443','municipaldehiwala@gov.lk','6081689551338','Peoples Bank','T0003');

INSERT INTO Client_20191011 (clientId,clientName,clientCategory,clientAddress,clientTelephoneNumber,clientEmailAddress,clientBankAccountNumber,clientBankAccountRealatedBank,trainingOfferDetailNumber) VALUES
('CL53762867','Wordlab International', 'Private company','No 20 Marine Drive, Colombo.','94119591648','wordlablk@gmail.com','9985026475002','DFCC Bank','T0004');

INSERT INTO Client_20191011 (clientId,clientName,clientCategory,clientAddress,clientTelephoneNumber,clientEmailAddress,clientBankAccountNumber,clientBankAccountRealatedBank,trainingOfferDetailNumber) VALUES
('CL26221938','Department Of Examination', 'Central government department','No 47, Sri Jayawardenepura Kotte, Nugegoda.','94116726928','deptexams.edu@gov.com','4868965872110','HNB','T0005');


INSERT INTO Client_20191011 (clientId,clientName,clientCategory,clientAddress,clientTelephoneNumber,clientEmailAddress,clientBankAccountNumber,clientBankAccountRealatedBank,trainingOfferDetailNumber) VALUES
('CL15771845','Travis Private Limited', 'Private company','No 22 Havelock Rd, Colombo 05.','94114922248','travispvt@gmail.com','3311383331413','Seylan Bank','T0006');

INSERT INTO Client_20191011 (clientId,clientName,clientCategory,clientAddress,clientTelephoneNumber,clientEmailAddress,clientBankAccountNumber,clientBankAccountRealatedBank,trainingOfferDetailNumber) VALUES
('CL23883763','Department Of Urban Development, Western Provincial Council', 'Local government department','No 2, Denzil Kobbekaduwa Mawatha, Battaramulla.','94113477490','provincialwp@gov.lk','9351783865902','Sampath Bank','T0007');

INSERT INTO Client_20191011 (clientId,clientName,clientCategory,clientAddress,clientTelephoneNumber,clientEmailAddress,clientBankAccountNumber,clientBankAccountRealatedBank,trainingOfferDetailNumber) VALUES
('CL48949970','Cool Asia International', 'Private company','No 52 Nawala Rd, Sri Jayawardenepura Kotte.','94114975926','coolasia.cus@gmail.com','1137209778433','Nations Trust Bank','T0008');

INSERT INTO Client_20191011 (clientId,clientName,clientCategory,clientAddress,clientTelephoneNumber,clientEmailAddress,clientBankAccountNumber,clientBankAccountRealatedBank,trainingOfferDetailNumber) VALUES
('CL57697088','Department of Meteorology', 'Central government department','No 83 Bauddhaloka Mawatha, Colombo 07.','94118589768','depmeterology.colombo@gov.lk','6752900218794','Union Bank','T0009');

INSERT INTO Client_20191011 (clientId,clientName,clientCategory,clientAddress,clientTelephoneNumber,clientEmailAddress,clientBankAccountNumber,clientBankAccountRealatedBank,trainingOfferDetailNumber) VALUES
('CL35520110','Department Of Motor Traffic, Sabaragamuwa Provincial Council', 'Local government department','No 34 Elvitigala Mawatha, Colombo 05.','94118544411','motortrafic.wp@gov.lk','6807204023535','Pan Asia Bank','T0010');


------------------------------------------------------------------------------------------------------------------------------
/* Client_Course_20191011 table */

CREATE TABLE Client_Course_20191011 (
courseId varchar(5) NOT NULL,
clientId varchar(10) NOT NULL,
CONSTRAINT PK_Client_Course PRIMARY KEY(courseId,clientId),
CONSTRAINT FK_Client_Course_01 FOREIGN KEY(courseId) REFERENCES Course_20191011(courseId),
CONSTRAINT FK_Client_Course_02 FOREIGN KEY(clientId) REFERENCES Client_20191011(clientId)
);

/*Data Entry*/
INSERT INTO Client_Course_20191011 (courseId,clientId) VALUES
('C0001','CL43162204');
INSERT INTO Client_Course_20191011 (courseId,clientId) VALUES
('C0002','CL43162204');


INSERT INTO Client_Course_20191011 (courseId,clientId) VALUES
('C0001','CL51578918');
INSERT INTO Client_Course_20191011 (courseId,clientId) VALUES
('C0002','CL51578918');
INSERT INTO Client_Course_20191011 (courseId,clientId) VALUES
('C0005','CL51578918');


INSERT INTO Client_Course_20191011 (courseId,clientId) VALUES
('C0004','CL60627392');
INSERT INTO Client_Course_20191011 (courseId,clientId) VALUES
('C0005','CL60627392');


INSERT INTO Client_Course_20191011 (courseId,clientId) VALUES
('C0001','CL53762867');
INSERT INTO Client_Course_20191011 (courseId,clientId) VALUES
('C0006','CL53762867');
INSERT INTO Client_Course_20191011 (courseId,clientId) VALUES
('C0007','CL53762867');
INSERT INTO Client_Course_20191011 (courseId,clientId) VALUES
('C0008','CL53762867');


INSERT INTO Client_Course_20191011 (courseId,clientId) VALUES
('C0006','CL26221938');
INSERT INTO Client_Course_20191011 (courseId,clientId) VALUES
('C0008','CL26221938');


INSERT INTO Client_Course_20191011 (courseId,clientId) VALUES
('C0009','CL15771845');
INSERT INTO Client_Course_20191011 (courseId,clientId) VALUES
('C0010','CL15771845');


INSERT INTO Client_Course_20191011 (courseId,clientId) VALUES
('C0007','CL23883763');
INSERT INTO Client_Course_20191011 (courseId,clientId) VALUES
('C0011','CL23883763');
INSERT INTO Client_Course_20191011 (courseId,clientId) VALUES
('C0012','CL23883763');


INSERT INTO Client_Course_20191011 (courseId,clientId) VALUES
('C0002','CL48949970');
INSERT INTO Client_Course_20191011 (courseId,clientId) VALUES
('C0003','CL48949970');


INSERT INTO Client_Course_20191011 (courseId,clientId) VALUES
('C0006','CL57697088');
INSERT INTO Client_Course_20191011 (courseId,clientId) VALUES
('C0009','CL57697088');


INSERT INTO Client_Course_20191011 (courseId,clientId) VALUES
('C0001','CL35520110');
INSERT INTO Client_Course_20191011 (courseId,clientId) VALUES
('C0010','CL35520110');
INSERT INTO Client_Course_20191011 (courseId,clientId) VALUES
('C0011','CL35520110');

-----------------------------------------------------------------------------------------------------------------------------
/* Training_Package_20191011 table */

CREATE TABLE Training_Package_20191011 (
trainingPackageId  varchar(5)NOT NULL,
expertId varchar(10) NOT NULL,
levelId varchar(3) NOT NULL,
clientId varchar(10) NOT NULL,
packageCost  float(20),
packageBookingDate date NOT NULL,
CONSTRAINT PK_Training_Package PRIMARY KEY(trainingPackageId),
CONSTRAINT FK_Training_Package01 FOREIGN KEY(expertId) REFERENCES Expert_20191011(expertId),
CONSTRAINT FK_Training_Package02 FOREIGN KEY(levelId) REFERENCES Level_20191011(levelId),
CONSTRAINT FK_Training_Package03 FOREIGN KEY(clientId) REFERENCES Client_Course_20191011(clientId)
);

/*Data Entry*/
INSERT INTO Training_Package_20191011 (trainingPackageId,packageBookingDate,packageCost,expertId,levelId,clientId) VALUES
('TP001','2020/07/20','200','EXP2344054','L01','CL43162204');

INSERT INTO Training_Package_20191011 (trainingPackageId,packageBookingDate,packageCost,expertId,levelId,clientId) VALUES
('TP002','2020/08/10','500','EXP9521153','L02','CL51578918');

INSERT INTO Training_Package_20191011 (trainingPackageId,packageBookingDate,packageCost,expertId,levelId,clientId) VALUES
('TP003','2020/08/25','200','EXP2344054','L01','CL60627392');

INSERT INTO Training_Package_20191011 (trainingPackageId,packageBookingDate,packageCost,expertId,levelId,clientId) VALUES
('TP004','2020/08/30','1000','EXP9943675','L03','CL53762867');

INSERT INTO Training_Package_20191011 (trainingPackageId,packageBookingDate,packageCost,expertId,levelId,clientId) VALUES
('TP005','2020/09/12','200','EXP2344054','L01','CL26221938');

INSERT INTO Training_Package_20191011 (trainingPackageId,packageBookingDate,packageCost,expertId,levelId,clientId) VALUES
('TP006','2020/09/15','500','EXP9521153','L02','CL15771845');

INSERT INTO Training_Package_20191011 (trainingPackageId,packageBookingDate,packageCost,expertId,levelId,clientId) VALUES
('TP007','2020/10/22','500','EXP9521153','L02','CL23883763');

INSERT INTO Training_Package_20191011 (trainingPackageId,packageBookingDate,packageCost,expertId,levelId,clientId) VALUES
('TP008','2020/10/30','2000','EXP8343058','L04','CL48949970');

INSERT INTO Training_Package_20191011 (trainingPackageId,packageBookingDate,packageCost,expertId,levelId,clientId) VALUES
('TP009','2020/11/05','200','EXP2344054','L01','CL57697088');

INSERT INTO Training_Package_20191011 (trainingPackageId,packageBookingDate,packageCost,expertId,levelId,clientId) VALUES
('TP010','2020/11/09','1000','EXP9943675','L03','CL35520110');


------------------------------------------------------------------------------------------------------------------------------
/* Training_Package_Course_20191011 table */

CREATE TABLE Training_Package_Course_20191011 (
courseId varchar(5) NOT NULL,
trainingPackageId  varchar(5) NOT NULL,
CONSTRAINT PK_Training_Package_Course PRIMARY KEY(courseId,trainingPackageId),
CONSTRAINT FK_Training_Package_Course_01 FOREIGN KEY(courseId) REFERENCES Course_20191011(courseId),
CONSTRAINT FK_Training_Package_Course_02 FOREIGN KEY(trainingPackageId) REFERENCES Training_Package_20191011(trainingPackageId)
);

/*Data Entry*/
INSERT INTO Training_Package_Course_20191011 (courseId,trainingPackageId) VALUES
('C0001','TP010');
INSERT INTO Training_Package_Course_20191011 (courseId,trainingPackageId) VALUES
('C0001','TP004');
INSERT INTO Training_Package_Course_20191011 (courseId,trainingPackageId) VALUES
('C0001','TP002');
INSERT INTO Training_Package_Course_20191011 (courseId,trainingPackageId) VALUES
('C0004','TP001');
INSERT INTO Training_Package_Course_20191011 (courseId,trainingPackageId) VALUES
('C0002','TP001');
INSERT INTO Training_Package_Course_20191011 (courseId,trainingPackageId) VALUES
('C0002','TP002');
INSERT INTO Training_Package_Course_20191011 (courseId,trainingPackageId) VALUES
('C0002','TP008');
INSERT INTO Training_Package_Course_20191011 (courseId,trainingPackageId) VALUES
('C0003','TP008');
INSERT INTO Training_Package_Course_20191011 (courseId,trainingPackageId) VALUES
('C0004','TP003');
INSERT INTO Training_Package_Course_20191011 (courseId,trainingPackageId) VALUES
('C0005','TP002');
INSERT INTO Training_Package_Course_20191011 (courseId,trainingPackageId) VALUES
('C0005','TP003');
INSERT INTO Training_Package_Course_20191011 (courseId,trainingPackageId) VALUES
('C0006','TP009');
INSERT INTO Training_Package_Course_20191011 (courseId,trainingPackageId) VALUES
('C0006','TP004');
INSERT INTO Training_Package_Course_20191011 (courseId,trainingPackageId) VALUES
('C0006','TP005');
INSERT INTO Training_Package_Course_20191011 (courseId,trainingPackageId) VALUES
('C0007','TP007');
INSERT INTO Training_Package_Course_20191011 (courseId,trainingPackageId) VALUES
('C0007','TP004');
INSERT INTO Training_Package_Course_20191011 (courseId,trainingPackageId) VALUES
('C0008','TP004');
INSERT INTO Training_Package_Course_20191011 (courseId,trainingPackageId) VALUES
('C0008','TP005');
INSERT INTO Training_Package_Course_20191011 (courseId,trainingPackageId) VALUES
('C0009','TP009');
INSERT INTO Training_Package_Course_20191011 (courseId,trainingPackageId) VALUES
('C0009','TP006');
INSERT INTO Training_Package_Course_20191011 (courseId,trainingPackageId) VALUES
('C0010','TP006');
INSERT INTO Training_Package_Course_20191011 (courseId,trainingPackageId) VALUES
('C0010','TP010');
INSERT INTO Training_Package_Course_20191011 (courseId,trainingPackageId) VALUES
('C0011','TP007');
INSERT INTO Training_Package_Course_20191011 (courseId,trainingPackageId) VALUES
('C0011','TP010');
INSERT INTO Training_Package_Course_20191011 (courseId,trainingPackageId) VALUES
('C0012','TP007');