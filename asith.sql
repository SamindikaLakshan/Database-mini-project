CREATE TABLE COURSE_PRACTICAL_CA_QUIZ(
    C_code VARCHAR(7),
    Quiz_marks FLOAT(5,2),
    S_id CHAR(6),
    PRIMARY KEY(C_code,S_id)
    );

INSERT INTO COURSE_PRACTICAL_CA_QUIZ
VALUES
("ICT1222",75,"TG1011"),
("ICT1233",60,"TG1011"),
("ICT1253",40,"TG1011"),

("ICT1222",50,"TG1012"),
("ICT1233",80,"TG1012"),
("ICT1253",25,"TG1012"),

("ICT1222",60,"TG1013"),
("ICT1233",70,"TG1013"),
("ICT1253",35,"TG1013"),

("ICT1222",45,"TG1014"),
("ICT1233",85,"TG1014"),
("ICT1253",75,"TG1014"),

("ICT1222",55,"TG1015"),
("ICT1233",75,"TG1015"),
("ICT1253",30,"TG1015"),

("ICT1222",90,"TG1016"),
("ICT1233",30,"TG1016"),
("ICT1253",40,"TG1016"),

("ICT1222",20,"TG1017"),
("ICT1233",80,"TG1017"),
("ICT1253",55,"TG1017"),

("ICT1222",35,"TG1018"),
("ICT1233",40,"TG1018"),
("ICT1253",70,"TG1018"),

("ICT1222",25,"TG1019"),
("ICT1233",35,"TG1019"),
("ICT1253",50,"TG1019"),

("ICT1222",35,"TG1020"),
("ICT1233",20,"TG1020"),
("ICT1253",15,"TG1020"),

("ICT1222",80,"TG1021"),
("ICT1233",50,"TG1021"),
("ICT1253",45,"TG1021");

CREATE TABLE LECTURER_HAS_COURSE(
    L_id VARCHAR(5),
    C_code VARCHAR(7),
    PRIMARY KEY(L_id,C_code)
    );

INSERT INTO LECTURER_HAS_COURSE
VALUES
("LEC1","ICT1242"),
("LEC2","TCS1212"),
("LEC3","ICT1212"),
("LEC3","ICT1222"),
("LEC4","TMS1233"),
("LEC5","ENG1212"),
("LEC6","ICT1253"),
("LEC7","ICT1233"),
("LEC8","TCS1212");

CREATE TABLE ATTENDENCE(
    C_code VARCHAR(7),
    At_id VARCHAR(6),
    Medical INT(1),
    To_id VARCHAR(3),
    PRIMARY KEY(At_id,C_code)
    );

INSERT INTO ATTENDENCE
VALUES
("ENG1212", "TG1011", 0, "To1"),
("ICT1212", "TG1011", 0, "To3"),
("ICT1222", "TG1011", 0, "To1"),
("ICT1233", "TG1011", 3, "To1"),
("ICT1242", "TG1011", 0, "To5"),
("ICT1253", "TG1011", 0, "To1"),
("TCS1212", "TG1011", 0, "To3"),
("TMS1233", "TG1011", 0, "To1"),

("ENG1212", "TG1012", 0, "To2"),
("ICT1212", "TG1012", 0, "To2"),
("ICT1222", "TG1012", 0, "To1"),
("ICT1233", "TG1012", 2, "To2"),
("ICT1242", "TG1012", 0, "To1"),
("ICT1253", "TG1012", 0, "To2"),
("TCS1212", "TG1012", 0, "To4"),
("TMS1233", "TG1012", 0, "To2"),

("ENG1212", "TG1013", 0, "To2"),
("ICT1212", "TG1013", 0, "To3"),
("ICT1222", "TG1013", 0, "To2"),
("ICT1233", "TG1013", 0, "To2"),
("ICT1242", "TG1013", 0, "To5"),
("ICT1253", "TG1013", 0, "To5"),
("TCS1212", "TG1013", 0, "To3"),
("TMS1233", "TG1013", 0, "To1"),

("ENG1212", "TG1014", 0, "To4"),
("ICT1212", "TG1014", 0, "To1"),
("ICT1222", "TG1014", 0, "To1"),
("ICT1233", "TG1014", 1, "To1"),
("ICT1242", "TG1014", 0, "To4"),
("ICT1253", "TG1014", 0, "To2"),
("TCS1212", "TG1014", 1, "To5"),
("TMS1233", "TG1014", 0, "To5"),

("ENG1212", "TG1015", 0, "To5"),
("ICT1212", "TG1015", 0, "To2"),
("ICT1222", "TG1015", 0, "To5"),
("ICT1233", "TG1015", 0, "To2"),
("ICT1242", "TG1015", 0, "To1"),
("ICT1253", "TG1015", 0, "To1"),
("TCS1212", "TG1015", 0, "To4"),
("TMS1233", "TG1015", 0, "To3"),

("ENG1212", "TG1016", 0, "To1"),
("ICT1212", "TG1016", 0, "To4"),
("ICT1222", "TG1016", 0, "To3"),
("ICT1233", "TG1016", 0, "To4"),
("ICT1242", "TG1016", 0, "To5"),
("ICT1253", "TG1016", 0, "To1"),
("TCS1212", "TG1016", 0, "To2"),
("TMS1233", "TG1016", 0, "To1"),

("ENG1212", "TG1017", 0, "To2"),
("ICT1212", "TG1017", 0, "To2"),
("ICT1222", "TG1017", 0, "To3"),
("ICT1233", "TG1017", 0, "To4"),
("ICT1242", "TG1017", 1, "To4"),
("ICT1253", "TG1017", 0, "To1"),
("TCS1212", "TG1017", 0, "To5"),
("TMS1233", "TG1017", 0, "To2"),

("ENG1212", "TG1018", 0, "To3"),
("ICT1212", "TG1018", 0, "To2"),
("ICT1222", "TG1018", 0, "To3"),
("ICT1233", "TG1018", 0, "To2"),
("ICT1242", "TG1018", 0, "To4"),
("ICT1253", "TG1018", 0, "To5"),
("TCS1212", "TG1018", 0, "To5"),
("TMS1233", "TG1018", 0, "To3"),

("ENG1212", "TG1019", 0, "To4"),
("ICT1212", "TG1019", 0, "To4"),
("ICT1222", "TG1019", 0, "To5"),
("ICT1233", "TG1019", 2, "To2"),
("ICT1242", "TG1019", 0, "To2"),
("ICT1253", "TG1019", 0, "To4"),
("TCS1212", "TG1019", 0, "To1"),
("TMS1233", "TG1019", 0, "To4"),

("ENG1212", "TG1020", 0, "To5"),
("ICT1212", "TG1020", 0, "To1"),
("ICT1222", "TG1020", 0, "To5"),
("ICT1233", "TG1020", 0, "To1"),
("ICT1242", "TG1020", 0, "To2"),
("ICT1253", "TG1020", 0, "To1"),
("TCS1212", "TG1020", 2, "To5"),
("TMS1233", "TG1020", 0, "To3"),

("ENG1212", "TG1021", 0, "To1"),
("ICT1212", "TG1021", 0, "To4"),
("ICT1222", "TG1021", 0, "To2"),
("ICT1233", "TG1021", 0, "To1"),
("ICT1242", "TG1021", 0, "To1"),
("ICT1253", "TG1021", 0, "To2"),
("TCS1212", "TG1021", 0, "To1"),
("TMS1233", "TG1021", 0, "To2");

CREATE TABLE TECHNICAL_OFFICER(
    To_id VARCHAR(3),
    To_name VARCHAR(30),
    To_mail VARCHAR(30),
    PRIMARY KEY(To_id)
    );

INSERT INTO TECHNICAL_OFFICER
VALUES
("To1","K.L.Pathum","Pathum@gmail.com"),
("To2","L.G.Gayan Sandaruwan","Gayan@gmail.com"),
("To3","K.D.Malith Lakshan","Malith@gmail.com"),
("To4","T.L.Sandun Peris","Sandun@gmail.com"),
("To5","L.Dimuth Nissanka","Dimuth@gmail.com");