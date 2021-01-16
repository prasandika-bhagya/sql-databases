/*W1790272_Company*/

CREATE TABLE W1790272_Company (
W1790272_compCode varchar(5),
W1790272_compName varchar(30) UNIQUE NOT NULL,
W1790272_compDescrip varchar(220),
CONSTRAINT PK_W1790272_compCode PRIMARY KEY(W1790272_compCode)
);

/*Data entry for W1790272_Company*/

INSERT INTO W1790272_Company (W1790272_compCode,W1790272_compName,W1790272_compDescrip) VALUES
('C001','AvianLK (pvt) Limited','AvianLK (pvt) Limited is is an online birthday card designing and delivery company. The company is mainly based in Sri Lanka.');
INSERT INTO W1790272_Company (W1790272_compCode,W1790272_compName,W1790272_compDescrip) VALUES
('C002','VIP Holdings','VIP Holdings was regarded as a leading financial institution as well as a non-banking financial institution.');
INSERT INTO W1790272_Company (W1790272_compCode,W1790272_compName,W1790272_compDescrip) VALUES
('C003','Jason (pvt) Limited','Jason (pvt) Limited is a company with the mission of providing digital marketing solutions to its customers. The company is based in Sri Lanka.');

/*W1790272_Staff*/

CREATE TABLE W1790272_Staff (
W1790272_staffId varchar(5) ,
W1790272_compCode varchar(5) NOT NULL,
W1790272_staffFullName varchar(50) NOT NULL,
W1790272_staffEmail varchar(100) UNIQUE ,
W1790272_staffPosition varchar(30)NOT NULL,


CONSTRAINT PK_W1790272_staffId PRIMARY KEY(W1790272_staffId),
CONSTRAINT FK_Staff_W1790272_compCode FOREIGN KEY (W1790272_compCode) REFERENCES W1790272_Company(W1790272_compCode)
);

/*Data entry for W1790272_Staff*/

INSERT INTO W1790272_Staff (W1790272_staffId,W1790272_compCode,W1790272_staffFullName,W1790272_staffEmail,W1790272_staffPosition) VALUES
('ST01','C002','Barnes John','john.b@gmail.com','Branch Manager');
INSERT INTO W1790272_Staff (W1790272_staffId,W1790272_compCode,W1790272_staffFullName,W1790272_staffEmail,W1790272_staffPosition) VALUES
('ST02','C003','Bennett Ann','ann90bennett@gmail.com','Operations manager');
INSERT INTO W1790272_Staff (W1790272_staffId,W1790272_compCode,W1790272_staffFullName,W1790272_staffEmail,W1790272_staffPosition) VALUES
('ST03','C001','Alex Bradley','alexbrad@gmail.com','Office manager');
INSERT INTO W1790272_Staff (W1790272_staffId,W1790272_compCode,W1790272_staffFullName,W1790272_staffEmail,W1790272_staffPosition) VALUES
('ST04','C003','Burton Lee','burton.lee@gmail.com','Marketing manager');

/*W1790272_Offer*/

CREATE TABLE W1790272_Offer (
W1790272_offerCode varchar(5),
W1790272_compCode varchar(5) NOT NULL,
W1790272_offerName varchar(50) NOT NULL,
W1790272_offerDescrip varchar(240),
W1790272_offerStartDate date NOT NULL,
W1790272_offerDeadline date NOT NULL,


CONSTRAINT PK_W1790272_offerCode PRIMARY KEY(W1790272_offerCode),
CONSTRAINT FK__Offer_W1790272_compCode FOREIGN KEY (W1790272_compCode) REFERENCES W1790272_Company(W1790272_compCode)
);

/*Data entry for W1790272_Offer*/

INSERT INTO W1790272_Offer (W1790272_offerCode,W1790272_compCode,W1790272_offerName,W1790272_offerDescrip,W1790272_offerStartDate,W1790272_offerDeadline) VALUES
('OF01','C003','Graduate Scheme','The graduate scheme is a offer giving to the employees to complete higher studies parallel to the job.The company provides a total college fee and it gives necessary study leaves under this offer.','2021/01/01','2022/01/02');

INSERT INTO W1790272_Offer (W1790272_offerCode,W1790272_compCode,W1790272_offerName,W1790272_offerDescrip,W1790272_offerStartDate,W1790272_offerDeadline) VALUES 
('OF02','C002','Anniversary','The companys anniversary date is the 10th of May and it celebrates its anniversary in May of every year. Employees will get and salary increment from this offer. So employees can enjoy this offer for one month from the 01st Of May.','2021/05/01','2021/06/01');

INSERT INTO W1790272_Offer (W1790272_offerCode,W1790272_compCode,W1790272_offerName,W1790272_offerDescrip,W1790272_offerStartDate,W1790272_offerDeadline) VALUES
('OF03','C001','Mid Year','Employees can enjoy this offer from May to July. Employees will get a 40% discount for buying company items.','2021/05/01','2021/07/01');

INSERT INTO W1790272_Offer (W1790272_offerCode,W1790272_compCode,W1790272_offerName,W1790272_offerDescrip,W1790272_offerStartDate,W1790272_offerDeadline) VALUES
('OF04','C003','Christmas Offer','This offer is giving to customers in December. Duration is one month from the first of December.','2021/12/01','2022/12/01');

INSERT INTO W1790272_Offer (W1790272_offerCode,W1790272_compCode,W1790272_offerName,W1790272_offerDescrip,W1790272_offerStartDate,W1790272_offerDeadline) VALUES
('OF05','C002','Year End Bonus','This offer is giving to employees in December. Employees will get a bonus from this offer. Duration is 15 days from the 15th of December.','2021/12/15','2021/12/31');



/*quiry 1*/
SELECT W1790272_Company.W1790272_compCode, W1790272_Company.W1790272_compName, 
COUNT(W1790272_Staff.W1790272_staffId)AS 'Number of staff' 
FROM W1790272_Staff 
INNER JOIN W1790272_Company ON W1790272_Staff.W1790272_compCode = W1790272_Company.W1790272_compCode 
GROUP BY W1790272_Company.W1790272_compCode 