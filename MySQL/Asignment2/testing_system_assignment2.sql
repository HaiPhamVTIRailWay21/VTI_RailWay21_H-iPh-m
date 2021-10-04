USE testing_system_1;
INSERT INTO department
(departmentname)
VALUES
('sales'),
('marketing'),
('Deverloper'),
('QA');
INSERT INTO `position`
(PositionName)
VALUES
('DEV'),
('TEST'),
('SCRUM_MASTER'),
('PM');
INSERT INTO `Account`(Email,Username,Fullname,departmentid,positionid,createdate)
VALUES 
('luongnx@gmail.com','luongnx','Nguyễn Xuân Lương',1,1,'2021-10-03'),
('anhnm@gmail.com','minhanh','Nguyễn Minh Anh',3,3,'2021-10-02'),
('nhatbv@gmail.com','vannhat','Bùi Văn Nhật',2,2,'2021-10-01'),
('huyentt@gmail.com','tohuyen','Tô Thị Huyền',1,1,'2021-10-03'),
('thanhvu@gmail.com','thanh','Vũ Thành Mentor',4,4,'2021-10-02'),
('chainman@gmail.com','xuantruong','Phạm Xuân Trường',3,3,'2021-10-01'),
('ngochai@gmail.com','ngochai','Phạm Ngọc Hải',1,1,'2021-10-01'),
('nguyenduc@gmail.com','nguyenduc','Nguyễn Đức',2,2,'2021-10-03'),
('ngocbich@gmail.com','ngocbich','Mai Bích Ngọc',3,3,'2021-10-02');
INSERT INTO `Group` (GroupName,CreatorID,CreateDate)
VALUES
('RailWay21',1,'2021-09-30'),
('Railway20',2,'2021-09-29'),
('Railway19',3,'2021-09-28'),
('Laptrinh',4,'2021-08-30'),
('Laptrinh1',5,'2021-08-29'),
('Laptrinh2',6,'2021-10-03'),
('Laptrinh3',7,'2021-10-01'),
('Laptrinh4',8,'2021-08-28'),
('Laptrinh5',9,'2021-08-27');
INSERT INTO GroupAccount (AccountID,GroupID,JoinDate)
VALUES
('1','1','2021-10-03'),
('2','3','2021-10-02'),
('3','5','2021-10-01'),
('4','7','2021-10-03'),
('5','2','2021-10-03'),
('6','4','2021-10-02'),
('7','6','2021-10-01'),
('8','8','2021-10-03'),
('9','9','2021-10-03');
INSERT INTO typequestion (TypeName)
VALUES 
('Essay'),
('Multiple-Choice');
INSERT INTO CategoryQuestion(CategoryName)
VALUES
('Java'),
('Net'),
('SQL'),
('Postman'),
('Ruby');
INSERT INTO Question (Content,CategoryID,TypeID,CreatorID,CreateDate)
VALUES
('Đâylà khóa học về?',2,1,1,'2021-09-15'),
('Khóa học này có công dụng',3,2,3,'2021-09-10'),
('Trong My SQL, để xóa một bảng ta sử dụng câu lệnh?',1,2,2,'2021-09-13'),
('ABC?',4,1,4,'2021-09-20'),
('XYZ?',5,2,5,'2021-09-16');
INSERT INTO Answer (Content,QuestionID,IsCorrect)
VALUES
('A',2,1),
('B',3,0),
('C',1,0),
('D',4,1),
('DE',5,1);
INSERT INTO Exam(`Code`,Title,CategoryID,Duration,CreatorID,CreateDate)
VALUES
('D01','A',1,45,6,'2021-10-01'),
('D02','B',2,60,7,'2021-10-01'),
('D03','C',3,90,8,'2021-10-02'),
('D04','D',4,120,9,'2021-10-02'),
('D05','C',5,60,7,'2021-10-03');
INSERT INTO Examquestion(ExamID,QuestionID)
VALUES
(1,3),
(2,5),
(3,2),
(4,1),
(5,4);
SELECT * FROM Examquestion;
SELECT * FROM Exam;
SELECT * FROM Answer;
SELECT * FROM Question;
SELECT * FROM CategoryQuestion;
SELECT * FROM typequestion;
SELECT * FROM GroupAccount;
SELECT * FROM `Group`;
SELECT * FROM `Account`;
SELECT * FROM `position`;
SELECT * FROM department;