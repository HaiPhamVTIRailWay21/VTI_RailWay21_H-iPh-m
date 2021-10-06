USE TESTINGSYSTEM3;
-- Question2
SELECT departmentname FROM department;
-- Question3
SELECT departmentid FROM department WHERE departmentname = 'sale';
-- Question4
SELECT * FROM `Account` WHERE LENGTH(FullName) = (SELECT MAX(LENGTH(FullName)) FROM `account`);
-- Question5
SELECT * FROM account WHERE length(FullName) = 
(SELECT MAX(DoDai) as DaiNhat FROM 
(SELECT length(FullName) as DoDai FROM account WHERE departmentID = 3) as TongHopDoDai) AND departmentID = 3;
-- Question6
SELECT GroupName FROM `group` WHERE CreateDate < '2019-12-20';
-- Question7
SELECT questionid FROM answer GROUP BY questionid HAVING COUNT(QuestionID) >= 4;
-- Question8
SELECT `code` FROM exam WHERE Duration >= 60 AND CreateDate < '2019-12-20';
-- Question9
SELECT groupname FROM `group` ORDER BY CreateDate DESC LIMIT 5;
-- Question10
SELECT count(accountid) as SoLuongNhanVien FROM `account` WHERE departmentid = 2;
-- Question11
SELECT FullName FROM `account` WHERE FullName LIKE'D%' AND FullName LIKE'%r';
-- Question12
DELETE FROM exam WHERE createdate < '2019-12-20';
-- Question13
DELETE FROM question WHERE content LIKE'Câu hỏi %';
SELECT * FROM question;
-- Question14
UPDATE `account`
SET fullname = 'Nguyễn Bá Lộc',
	email = 'loc.nguyenba@vti.com.vn'
WHERE 
	accountid = 5;
-- Question15
UPDATE `groupaccount`
SET groupid = 4
WHERE accountid = 5;

