CREATE DATABASE Testing_System_1;
USE Testing_System_1;
CREATE TABLE Department (
    DepartmentID MEDIUMINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    DepartmentName NVARCHAR(30) NOT NULL UNIQUE KEY
);
CREATE TABLE `Position` (
    PositionID MEDIUMINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    PositionName ENUM('DEV', 'TEST', 'SCRUM_MASTER', 'PM') NOT NULL UNIQUE KEY
);
CREATE TABLE `Account` (
    AccountID MEDIUMINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    Email VARCHAR(50) NOT NULL UNIQUE KEY,
    Username VARCHAR(50) NOT NULL UNIQUE KEY,
    FullName NVARCHAR(50) NOT NULL,
    DepartmentID MEDIUMINT UNSIGNED NOT NULL,
    PositionID MEDIUMINT UNSIGNED NOT NULL,
    CreateDate DATETIME DEFAULT NOW(),
    FOREIGN KEY (DepartmentID)
        REFERENCES Department (DepartmentID),
    FOREIGN KEY (PositionID)
        REFERENCES `Position` (PositionID)
);
CREATE TABLE `Group` (
    GroupID MEDIUMINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    GroupName NVARCHAR(50) NOT NULL UNIQUE KEY,
    CreatorID MEDIUMINT UNSIGNED,
    CreateDate DATETIME DEFAULT NOW(),
    FOREIGN KEY (CreatorID)
        REFERENCES `Account` (AccountId)
);
CREATE TABLE GroupAccount (
    GroupID MEDIUMINT UNSIGNED NOT NULL,
    AccountID MEDIUMINT UNSIGNED NOT NULL,
    JoinDate DATETIME DEFAULT NOW(),
    PRIMARY KEY (GroupID , AccountID),
    FOREIGN KEY (GroupID)
        REFERENCES `Group` (GroupID)
);
CREATE TABLE TypeQuestion (
    TypeID MEDIUMINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    TypeName ENUM('Essay', 'Multiple-Choice') NOT NULL UNIQUE KEY
);
CREATE TABLE CategoryQuestion (
    CategoryID MEDIUMINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    CategoryName NVARCHAR(50) NOT NULL UNIQUE KEY
);
CREATE TABLE Question (
    QuestionID MEDIUMINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    Content NVARCHAR(100) NOT NULL,
    CategoryID MEDIUMINT UNSIGNED NOT NULL,
    TypeID MEDIUMINT UNSIGNED NOT NULL,
    CreatorID MEDIUMINT UNSIGNED NOT NULL,
    CreateDate DATETIME DEFAULT NOW(),
    FOREIGN KEY (CategoryID)
        REFERENCES CategoryQuestion (CategoryID),
    FOREIGN KEY (TypeID)
        REFERENCES TypeQuestion (TypeID),
    FOREIGN KEY (CreatorID)
        REFERENCES `Account` (AccountId)
);
CREATE TABLE Answer (
    AnswerID MEDIUMINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    Content NVARCHAR(100) NOT NULL,
    QuestionID MEDIUMINT UNSIGNED,
    isCorrect BIT DEFAULT 1,
    FOREIGN KEY (QuestionID)
        REFERENCES Question (QuestionID)
);
CREATE TABLE Exam (
    ExamID MEDIUMINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    `Code` CHAR(10) NOT NULL,
    Title NVARCHAR(50) NOT NULL,
    CategoryID MEDIUMINT UNSIGNED NOT NULL,
    Duration MEDIUMINT UNSIGNED NOT NULL,
    CreatorID MEDIUMINT UNSIGNED NOT NULL,
    CreateDate DATETIME DEFAULT NOW(),
    FOREIGN KEY (CategoryID)
        REFERENCES CategoryQuestion (CategoryID),
    FOREIGN KEY (CreatorID)
        REFERENCES `Account` (AccountId)
);
CREATE TABLE ExamQuestion (
    ExamID MEDIUMINT UNSIGNED NOT NULL,
    QuestionID MEDIUMINT UNSIGNED NOT NULL,
    FOREIGN KEY (QuestionID)
        REFERENCES Question (QuestionID)
        ON DELETE CASCADE,
    FOREIGN KEY (ExamID)
        REFERENCES Exam (ExamID),
    PRIMARY KEY (ExamID , QuestionID)
);