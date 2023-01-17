create table tblemployee1
(
EmpId int PRIMARY KEY IDENTITY(1001,1),
EmpName varchar(50) NOT NULL,
EmpAddress varchar(MAX) NOT NULL,
EmpSalary money NOT NULL
)

INSERT INTO tblemployee VALUES('Aravind','Bellary',28000)
INSERT INTO tblemployee VALUES('Ramesh','Hospet',29000)
INSERT INTO tblemployee VALUES('Teja','Pavgada',56999)
INSERT INTO tblemployee VALUES('Basu','Koppal',15820)
INSERT INTO tblemployee VALUES('Manju','Davangere',30000)
INSERT INTO tblemployee VALUES('Maruthi','Davangere',30000)


select * from tblemployee

select * from Emp