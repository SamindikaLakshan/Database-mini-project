CREATE USER 'Admin'@'localhost'
IDENTIFIED BY 'admin123';

mysql -u Admin -p
admin123

CREATE USER 'Dean'@'localhost'
IDENTIFIED BY 'dean123';

CREATE USER 'Lecturer'@'localhost'
IDENTIFIED BY 'lec123';

CREATE USER 'Technicalofficer'@'localhost'
IDENTIFIED BY 'to123';

CREATE USER 'Student'@'localhost'
IDENTIFIED BY 'student123';

quit;

CREATE TABLE ADMIN (
    A_id INT AUTO_INCREMENT,
    A_name VARCHAR(30),
    A_mail VARCHAR(30),
    PRIMARY KEY(A_id)
);

INSERT INTO ADMIN
VALUES
(1,'A.A.P Samantha','samantha@gmail.com');

CREATE TABLE DEAN (
    Dean_id INT AUTO_INCREMENT,
    Dean_name VARCHAR(30),
    Dean_mail varchar(30),
    Dean_gender char(1),
    Dean_salary FLOAT(8,2),
    D_id CHAR(4),
    PRIMARY KEY(Dean_id)
);

INSERT INTO DEAN
VALUES
(1,'A.M.S. Subhash','subhash@gmail.com','M',200000.00,'FOT1');


CREATE TABLE DEPARTMENT (
    D_id CHAR(4),
    D_name VARCHAR(30),
    PRIMARY KEY(D_id)
);

INSERT INTO DEPARTMENT 
VALUES
('FOT1','ICT'),
('FOT2','ET'),
('FOT3','BST'),
('FOT4','MULTIDECIPLINARY');

CREATE TABLE DEPARTMENT_LOCATION (
    D_id CHAR(4),
    D_location VARCHAR(30)
);

INSERT INTO DEPARTMENT_LOCATION 
VALUES
('FOT1','D_hall 1st floor'),
('FOT2','D_hall ground floor'),
('FOT3','D_hall 2nd floor'),
('FOT4','New bulding'),
('FOT3','behind the library');


CREATE TABLE LECTURER (
    L_id VARCHAR(5),
    L_name VARCHAR(30),
    L_email VARCHAR(30),
    L_salary FLOAT(8,2),
    D_id CHAR(4),
    PRIMARY KEY (L_id)
);

INSERT INTO LECTURER 
VALUES
('LEC1','A.M.S.Subash Jayasinghe','subhash@gmail.com',200000.00,'FOT1'),
('LEC2','K.K. Nilanthi Adikaram','nilanthi@gmail.com',150000.00,'FOT4'),
('LEC3','P.H.P. Nuwan Laksiri','nuwan2gmail.com',200000.00,'FOT1'),
('LEC4','A. Harshana Senavirathna','harshana@gmail.com',150000.00,'FOT2'),
('LEC5','S. Hiranya Amarasinghe','hiranya@gmail.com',175000.00,'FOT4'),
('LEC6','C. Chanduni Gamage','chanduni@gmail.com',175000.00,'FOT1'),
('LEC7','K.A. Rumeshika W. arachchi','rumeshika@gmail.com',175000.00,'FOT1'),
('LEC8','M. Chathuranga Adhikari','chathurange@gmail.com',170000.00,'FOT4');

CREATE TABLE STUDENT (
    S_id CHAR(6),
    F_name VARCHAR(15),
    L_name VARCHAR(15),
    S_mail VARCHAR(30),
    Gender CHAR(1),
    Dob DATE,
    Status VARCHAR(10),
    PRIMARY KEY(S_id)
);

INSERT INTO STUDENT 
VALUES
('TG1011','G.B.S.','Jayoda','jayoda@gmail.com','F','2001-05-06'),
('TG1012','M.P.C.','Priyamantha','priyamantha@gmail.com','M','2002-05-06'),
('TG1013','K.P.C.','Kavindu','kavindu@gmail.com','M','2001-04-14'),
('TG1014','A.M.S.','Kumara','kumara@gmail.com','M','2000-08-28'),
('TG1015','K.A.A','Rajapaksha','rajapaksha@gmail.com','M','2002-01-13'),
('TG1016','S.A.','Supun','Supun@gmail.com','M','2001-06-23'),
('TG1017','K.L.','Anuruddhika','anu@gmail.com','F','2000-04-12'),
('TG1018','P.C.K.','Thilakarathne','kalana@gmail.com','M','2000-09-12'),
('TG1019','M.S.','Anusha','anusha@gmail.com','F','2001-05-13'),
('TG1020','D.A.','Dulangi','dula@gmail.com','F','2001-08-20'),
('TG1021','M.M.S.','Lakshan','lakshan@gmail.com','M','2001-05-05');

CREATE TABLE STUDENT_BELONGS_DEPARTMENT (
    S_id CHAR(6),
    D_id CHAR(4)
);

INSERT INTO STUDENT_BELONGS_DEPARTMENT 
VALUES
('TG1011','FOT1'),
('TG1012','FOT1'),
('TG1013','FOT1'),
('TG1014','FOT1'),
('TG1015','FOT1'),
('TG1016','FOT1'),
('TG1017','FOT1'),
('TG1018','FOT1'),
('TG1019','FOT1'),
('TG1020','FOT1'),
('TG1021','FOT1');

CREATE TABLE LECTURER_TEACHES_STUDENTS (
    L_id VARCHAR(5),
    S_id CHAR(6)
);

INSERT INTO LECTURER_TEACHES_STUDENTS 
VALUES
('LEC1','TG1011'),
('LEC1','TG1012'),
('LEC1','TG1014'),
('LEC1','TG1015'),
('LEC1','TG1016'),
('LEC1','TG1017'),
('LEC1','TG1018'),
('LEC1','TG1019'),
('LEC1','TG1020'),
('LEC1','TG1021'),
('LEC2','TG1011'),
('LEC2','TG1012'),
('LEC2','TG1013'),
('LEC2','TG1014'),
('LEC2','TG1015'),
('LEC2','TG1016'),
('LEC2','TG1017'),
('LEC2','TG1018'),
('LEC2','TG1019'),
('LEC2','TG1020'),
('LEC2','TG1021'),
('LEC3','TG1011'),
('LEC3','TG1012'),
('LEC3','TG1013'),
('LEC3','TG1014'),
('LEC3','TG1015'),
('LEC3','TG1016'),
('LEC3','TG1017'),
('LEC3','TG1018'),
('LEC3','TG1019'),
('LEC3','TG1020'),
('LEC3','TG1021'),
('LEC4','TG1011'),
('LEC4','TG1012'),
('LEC4','TG1013'),
('LEC4','TG1014'),
('LEC4','TG1015'),
('LEC4','TG1016'),
('LEC4','TG1017'),
('LEC4','TG1018'),
('LEC4','TG1019'),
('LEC4','TG1020'),
('LEC4','TG1021'),
('LEC5','TG1011'),
('LEC5','TG1012'),
('LEC5','TG1013'),
('LEC5','TG1014'),
('LEC5','TG1015'),
('LEC5','TG1016'),
('LEC5','TG1017'),
('LEC5','TG1018'),
('LEC5','TG1019'),
('LEC5','TG1020'),
('LEC5','TG1021'),
('LEC6','TG1011'),
('LEC6','TG1012'),
('LEC6','TG1013'),
('LEC6','TG1014'),
('LEC6','TG1015'),
('LEC6','TG1016'),
('LEC6','TG1017'),
('LEC6','TG1018'),
('LEC6','TG1019'),
('LEC6','TG1020'),
('LEC6','TG1021'),
('LEC7','TG1011'),
('LEC7','TG1012'),
('LEC7','TG1013'),
('LEC7','TG1014'),
('LEC7','TG1015'),
('LEC7','TG1016'),
('LEC7','TG1017'),
('LEC7','TG1018'),
('LEC7','TG1019'),
('LEC7','TG1020'),
('LEC7','TG1021'),
('LEC8','TG1011'),
('LEC8','TG1012'),
('LEC8','TG1013'),
('LEC8','TG1014'),
('LEC8','TG1015'),
('LEC8','TG1016'),
('LEC8','TG1017'),
('LEC8','TG1018'),
('LEC8','TG1019'),
('LEC8','TG1020'),
('LEC8','TG1021');


CREATE VIEW ATTENDENCE_PERCENTAGE AS 
SELECT C_code AS 'Subject_code',At_id AS 'Student_reg_num',((Medical+sessions)/15)*100 AS 'Percentage'
FROM ATTENDENCE;

CREATE VIEW ATTENDENCE_ELIGIBILITY AS 
SELECT Subject_code,Student_reg_num, IF(Percentage>80,'EL','NOT_EL') AS 'Elegibility'
FROM ATTENDENCE_PERCENTAGE;

CREATE VIEW STUDENT_THEORY_GRADES AS
SELECT C_code AS 'Subject_code',S_id AS 'Student_reg_num',Final_marks AS 'Theory_Final_Marks',IF(Final_marks>=85,'A+',IF((Final_marks<84 && Final_marks>=75),'A',IF((Final_marks<74 && Final_marks>=70),'A-',IF((Final_marks<69 && Final_marks>=65),'B+',IF((Final_marks<64 && Final_marks>=60),'B',IF((Final_marks<59 && Final_marks>=55),'B-',IF((Final_marks<54 && Final_marks>=50),'C+',IF((Final_marks<49 && Final_marks>=45),'C',IF((Final_marks<44 && Final_marks>=40),'C-','F'))))))))) AS 'Grade'
FROM COURSE_THEORY_FINAL;

CREATE VIEW STUDENT_PRACTICAL_GRADES AS
SELECT C_code AS 'Subject_code',S_id AS 'Student_reg_num',Final_marks AS 'Practical_Final_Marks',IF(Final_marks>=85,'A+',IF((Final_marks<84 && Final_marks>=75),'A',IF((Final_marks<74 && Final_marks>=70),'A-',IF((Final_marks<69 && Final_marks>=65),'B+',IF((Final_marks<64 && Final_marks>=60),'B',IF((Final_marks<59 && Final_marks>=55),'B-',IF((Final_marks<54 && Final_marks>=50),'C+',IF((Final_marks<49 && Final_marks>=45),'C',IF((Final_marks<44 && Final_marks>=40),'C-','F'))))))))) AS 'Grade'
FROM COURSE_PRACTICAL_FINAL;

CREATE VIEW CGP AS
SELECT Subject_code,Student_reg_num,Grade,
CASE 
WHEN STUDENT_THEORY_GRADES.Grade='A+' THEN 4.00
WHEN STUDENT_THEORY_GRADES.Grade='A' THEN 4.00
WHEN STUDENT_THEORY_GRADES.Grade='A-' THEN 3.70
WHEN STUDENT_THEORY_GRADES.Grade='B+' THEN 3.30
WHEN STUDENT_THEORY_GRADES.Grade='B' THEN 3.00
WHEN STUDENT_THEORY_GRADES.Grade='B-' THEN 2.70
WHEN STUDENT_THEORY_GRADES.Grade='C+' THEN 2.30
WHEN STUDENT_THEORY_GRADES.Grade='C' THEN 2.00
WHEN STUDENT_THEORY_GRADES.Grade='C-' THEN 1.30
ELSE 0.00
END AS 'CGP'
FROM STUDENT_THEORY_GRADES; 

CREATE VIEW STUDENT_SGPA AS
SELECT Student_reg_num,SUM(a.CGP*b.Credits)/SUM(b.Credits) AS 'SGPA'
FROM CGP a, COURSE_UNITS b
WHERE a.Subject_code=b.C_code
GROUP BY Student_reg_num;


CREATE VIEW STUDENT_CGPA AS
SELECT Student_reg_num,SUM(a.CGP*b.Credits)/SUM(b.Credits) AS 'CGPA'
FROM CGP a, COURSE_UNITS b
WHERE a.Subject_code=b.C_code AND a.Subject_code != 'ENG1212'
GROUP BY Student_reg_num;

