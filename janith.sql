CREATE TABLE REPEATER(
    R_id VARCHAR (7),
    R_name VARCHAR (30),
    PRIMARY KEY (R_id)
);


INSERT INTO REPEATER
VALUES 
('TG1014','Kumara'),
('TG1021','Lakshan'),
('TG1013','Kavindu'),
('TG1011','Jayoda')
('TG1019','Anusha');


CREATE TABLE COURSE_HAS_REPEATERS(
    C_code VARCHAR (7),
    R_id VARCHAR (7),
    PRIMARY KEY (C_code,R_id)
);


INSERT INTO COURSE_HAS_REPEATERS
VALUES
    ("TMS1233","TG1014")
    ("ICT1242","TG1021")
    ("ICT1222","TG1011")
    ("TCS1212","TG1013")
    ("ICT1233","Anusha");


    CREATE VIEW THEORY_CA__ELIGIBILITY AS 
    SELECT SUM(A.T_assignment_marks + A.T_mid_marks + B.Quiz_marks)*100/3 
    FROM COURSE_THEORY_CA AS A , COURSE_THEORY_CA_QUIZ AS B;

    CREATE VIEW PRACTICAL_CA_ELIGIBILITY AS 
    SELECT SUM(p_assignment_marks + P_mid_marks)*100/2 
    FROM COURSE_PRACTICAL_CA;

    CREATE VIEW THEORY_CA AS 
    SELECT A.T_assignment_marks + A.T_mid_marks + B.Quiz_marks 
    FROM  COURSE_THEORY_CA AS A, COURSE_THEORY_CA_QUIZ AS B
    WHERE C_code = "";

    CREATE VIEW PRACTICAL_CA AS 
    SELECT p_assignment_marks + P_mid_marks 
    FROM COURSE_PRACTICAL_CA
    WHERE C_code = "";

    CREATE VIEW INDIVIDUALS_THEORY_CA AS 
    SELECT A.T_assignment_marks + A.T_mid_marks + B.Quiz_marks 
    FROM  COURSE_THEORY_CA AS A , COURSE_THEORY_CA_QUIZ AS B
    WHERE C_code = "" AND S_id = "";

    CREATE VIEW INDIVIDUALS_PRACTICAL_CA AS 
    SELECT p_assignment_marks + P_mid_marks 
    FROM  COURSE_PRACTICAL_CA
    WHERE C_code = "" AND S_id = "";

    CREATE VIEW THEORY_FINAL_MARKS AS 
    SELECT S_id , Final_marks 
    FROM COURSE_THEORY_FINAL;

    CREATE VIEW PRACTICAL_FINAL_MARKS AS 
    SELECT S_id , Final_marks
    FROM COURSE_PRACTICAL_FINAL;





