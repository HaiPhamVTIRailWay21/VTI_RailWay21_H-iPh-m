CREATE DATABASE DB_Fresher;
USE DB_Fresher;
-- Question 1 
CREATE TABLE Trainee 
(
   TraineeID INT AUTO_INCREMENT PRIMARY KEY,
   Full_Name VARCHAR(50),
   Birth_Date DATE,
   Gender ENUM('Male','Female','Unknow'),
   ET_IQ TINYINT UNSIGNED CHECK(ET_IQ < 21),
   ET_Gmath TINYINT UNSIGNED CHECK(ET_Gmath < 21),
   ET_English TINYINT UNSIGNED CHECK(ET_English < 51),
   Training_Class VARCHAR(50),
   Evaluation_Notes VARCHAR(50)
   );
-- Question 2
INSERT INTO Trainee ( Full_Name, Birth_Date, Gender, ET_IQ, ET_Gmath, ET_English, Training_Class, Evaluation_Notes)
 VALUES 
 ('Phạm Xuân Ngọc','1994-04-01','Male',18,15,30,'VTI001','ĐHBKHN'),
 ('Phạm Ngọc Hải','1995-12-13','Male',20,17,35,'VTI002','ĐHCNTT'), 
 ('Đỗ Đức Nam','1996-03-11','Male',15,20,32,'VTI003','ĐHBKHN'),
 ('Nguyễn Đức Ngọc','1995-10-05','Male',16,18,28,'VTI001','ĐHGTVT'), 
 ('Nguyễn Hữu Kiên','1998-01-01','Male',13,15,25,'VTI003','ĐHCNTT'),
 ('Đỗ Thanh Tâm','1996-01-08','Female',10,14,23,'VTI002','ĐHGTVT'), 
 ('Trần Thùy Linh','1997-03-10','Female',15,18,28,'VTI004','ĐHKTQD'),
 ('Nguyễn Thị Hòa','1996-12-03','Female',19,15,32,'VTI004','ĐHKTQD'),
 ('Phạm Minh Đức','1996-02-04','Male',10,16,25,'VTI005','ĐHGTVT'), 
 ('Nguyễn Huyền Anh','1997-05-02','Female',18,12,28,'VTI005','ĐHGTVT');
 -- Question 3
 INSERT INTO Trainee ( Full_Name, Birth_Date, Gender, ET_IQ, ET_Gmath, ET_English, Training_Class, Evaluation_Notes)
 VALUES ('Nguyễn Thị Hiền Hồng','1998-01-01','Female',30,20,30,'VTI004','HVPNVN');
