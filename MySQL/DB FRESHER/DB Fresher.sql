CREATE DATABASE DB_Fresher;
USE DB_Fresher;
-- Question 1 
CREATE TABLE Trainee (
    TraineeID INT AUTO_INCREMENT PRIMARY KEY,
    Full_Name VARCHAR(50),
    Birth_Date DATE,
    Gender ENUM('Male', 'Female', 'Unknown'),
    ET_IQ TINYINT UNSIGNED CHECK (ET_IQ < 21),
    ET_Gmath TINYINT UNSIGNED CHECK (ET_Gmath < 21),
    ET_English TINYINT UNSIGNED CHECK (ET_English < 51),
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
 -- Question 4
 SELECT * FROM trainee WHERE ET_IQ >= 12 AND ET_Gmath >= 12 AND ET_English >=20 ORDER BY Birth_Date DESC; 
 -- Question 5
 SELECT * FROM trainee WHERE Full_Name LIKE'N%' AND Full_Name LIKE'%c';
-- Question 6
SELECT * FROM trainee WHERE Full_Name LIKE('_G%');
-- Question 7
SELECT * FROM trainee WHERE Full_Name Like('%c') AND length(Full_Name) >= 10;
-- Question 8
SELECT DISTINCT Full_Name FROM Trainee;
-- Question 9
SELECT 
    Full_Name
FROM
    Trainee
ORDER BY full_name ASC;
-- Question 10
SELECT * FROM trainee WHERE LENGTH(Full_Name) = (SELECT MAX(LENGTH(Full_Name)) FROM trainee);
-- Question 11
SELECT TraineeID,Full_Name,Birth_Date FROM trainee WHERE LENGTH(Full_Name) = (SELECT MAX(LENGTH(Full_Name)) FROM trainee);
-- Questin 12
SELECT Full_Name,ET_IQ,ET_Gmath,ET_English FROM trainee WHERE LENGTH(Full_Name) = (SELECT MAX(LENGTH(Full_Name)) FROM trainee);
-- Question 13
SELECT * FROM trainee ORDER BY birth_date DESC LIMIT 5;
-- Question 14
SELECT * FROM trainee WHERE ET_IQ+ET_Gmath >=20 AND ET_IQ>=8 AND ET_Gmath>=8 AND ET_English>=18;
-- Question 15
DELETE FROM trainee WHERE TraineeID = 5;
-- Question 16
DELETE FROM trainee WHERE ET_IQ <=15 AND ET_Gmath <=15;
-- Question 17
DELETE FROM trainee WHERE year(curdate()) - year(Birth_Date) >= 30;
-- Question 18
UPDATE trainee
SET Training_Class = 'VTI003'
WHERE TraineeID = 3;
-- Question 19
UPDATE trainee
SET Full_Name = 'LeVanA',
	ET_IQ = 10,
    ET_Gmath = 15,
    ET_English = 30
WHERE traineeid = 10;
-- Question20 +21
SELECT 
    COUNT(training_class)
FROM
    trainee
WHERE
    training_class = 'VTI001';
-- Question 22
SELECT 
    COUNT(training_class)
FROM
    trainee
WHERE
    training_class = 'VTI001' OR training_class = 'VTI003';
-- Question 23
SELECT 
    COUNT(gender) FROM
    trainee
WHERE
	gender = 'male';
    SELECT 
    COUNT(gender) FROM
    trainee
WHERE
	gender = 'unknown';
SELECT 
    COUNT(gender) FROM
    trainee
WHERE
	gender = 'female';
-- Question 24 + 25
SELECT 
    training_class
FROM
    trainee
GROUP BY training_class HAVING count(training_class) > 5;
-- Question 26
SELECT Evaluation_Notes FROM trainee GROUP BY Evaluation_Notes HAVING count(Evaluation_Notes) < 4;
-- Question 27 
SELECT TraineeID, Full_Name, Training_Class FROM Trainee WHERE training_class = 'VTI001';
SELECT TraineeID, Full_Name, Training_Class FROM Trainee WHERE training_class = 'VTI002';
SELECT 
TraineeID, Full_Name, Training_Class 
FROM Trainee 
WHERE training_class = 'VTI001' 
UNION
 SELECT 
 TraineeID, Full_Name, Training_Class 
 FROM Trainee 
 WHERE training_class = 'VTI002';



