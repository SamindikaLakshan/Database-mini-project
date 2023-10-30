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
('TG1011','Jayoda'),
('TG1019','Anusha');


CREATE TABLE COURSE_HAS_REPEATERS(
    C_code VARCHAR (7),
    R_id VARCHAR (7),
    PRIMARY KEY (C_code,R_id)
);


INSERT INTO COURSE_HAS_REPEATERS
VALUES
    ("TMS1233","TG1014"),
    ("ICT1242","TG1021"),
    ("ICT1222","TG1011"),
    ("TCS1212","TG1013"),
    ("ICT1233","TG1019");





//Marks Related requirements

CREATE VIEW THEORY_CA AS 
SELECT A.S_id,A.C_code,((A.T_assignment_marks/4)+(A.T_mid_marks/2)+(B.Quiz_marks/4)) AS 'CA'
FROM COURSE_THEORY_CA AS A , COURSE_THEORY_CA_QUIZ AS B
WHERE A.C_code=B.C_code AND A.S_id=B.S_id;

CREATE VIEW PRACTICAL_CA AS 
SELECT A.S_id,A.C_code,((B.p_assignment_marks/4)+(B.P_mid_marks/2)+(A.Quiz_marks/4)) AS 'P_CA'
FROM COURSE_PRACTICAL_CA_QUIZ AS A, COURSE_PRACTICAL_CA AS B
WHERE A.C_code=B.C_code AND A.S_id=B.S_id;

CREATE VIEW T_CA_ELEGIBILITY AS 
SELECT S_id,C_code,CA,IF(CA>50,'EL','NOT_EL') AS 'Elegibility'
FROM THEORY_CA;

CREATE VIEW P_CA_ELEGIBILITY AS 
SELECT S_id,C_code,P_CA,IF(P_CA>50,'EL','NOT_EL') AS 'Elegibility'
FROM PRACTICAL_CA;








