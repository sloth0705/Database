INSERT INTO `lecture` (`lecNo`, `lecName`, `lecCredit`, `lecTime`, `lecClass`) VALUES (159, '인지행동심리학', 3, 40, '본304');
INSERT INTO `lecture` (`lecNo`, `lecName`, `lecCredit`, `lecTime`, `lecClass`) VALUES (167, '운영체제론', 3, 25, '본B05');
INSERT INTO `lecture` (`lecNo`, `lecName`, `lecCredit`, `lecTime`, `lecClass`) VALUES (234, '중급 영문법', 3, 20, '본201');
INSERT INTO `lecture` (`lecNo`, `lecName`, `lecCredit`, `lecTime`, `lecClass`) VALUES (239, '세법개론', 3, 40, '본204');
INSERT INTO `lecture` (`lecNo`, `lecName`, `lecCredit`, `lecTime`, `lecClass`) VALUES (248, '빅데이터 개론', 3, 20, '본B01');
INSERT INTO `lecture` (`lecNo`, `lecName`, `lecCredit`, `lecTime`, `lecClass`) VALUES (253, '컴퓨팅사고와 코딩', 2, 10, '본B02');
INSERT INTO `lecture` (`lecNo`, `lecName`, `lecCredit`, `lecTime`, `lecClass`) VALUES (349, '사회복지 마케팅', 2, 50, '본301');

INSERT INTO `student` (`stdNo`, `stdName`, `stdHp`, `stdYear`, `stdAddress`) VALUES ('20201016', '김유신', '010-1234-1001', 3, NULL);
INSERT INTO `student` (`stdNo`, `stdName`, `stdHp`, `stdYear`, `stdAddress`) VALUES ('20201126', '김춘추', '010-1234-1002', 3, '경상남도 경주시');
INSERT INTO `student` (`stdNo`, `stdName`, `stdHp`, `stdYear`, `stdAddress`) VALUES ('20210216', '장보고', '010-1234-1003', 2, '전라남도 완도시');
INSERT INTO `student` (`stdNo`, `stdName`, `stdHp`, `stdYear`, `stdAddress`) VALUES ('20210326', '강감찬', '010-1234-1004', 2, '서울시 영동포구');
INSERT INTO `student` (`stdNo`, `stdName`, `stdHp`, `stdYear`, `stdAddress`) VALUES ('20220416', '이순신', '010-1234-1005', 1, '부산시 부산진구');
INSERT INTO `student` (`stdNo`, `stdName`, `stdHp`, `stdYear`, `stdAddress`) VALUES ('20220521', '송상현', '010-1234-1006', 1, '부산시 동래구');

INSERT INTO `register` (`regStdNo`, `regLecNo`, `regMidScore`, `regFinalScore`, `regTotalScore`, `regGrade`) VALUES ('20201126', 234, 36, 42, 78, 'C');
INSERT INTO `register` (`regStdNo`, `regLecNo`, `regMidScore`, `regFinalScore`, `regTotalScore`, `regGrade`) VALUES ('20201016', 248, 24, 62, 86, 'B');
INSERT INTO `register` (`regStdNo`, `regLecNo`, `regMidScore`, `regFinalScore`, `regTotalScore`, `regGrade`) VALUES ('20201016', 253, 28, 40, 68, 'D');
INSERT INTO `register` (`regStdNo`, `regLecNo`, `regMidScore`, `regFinalScore`, `regTotalScore`, `regGrade`) VALUES ('20201126', 239, 37, 57, 94, 'A');
INSERT INTO `register` (`regStdNo`, `regLecNo`, `regMidScore`, `regFinalScore`, `regTotalScore`, `regGrade`) VALUES ('20210216', 349, 28, 68, 96, 'A');
INSERT INTO `register` (`regStdNo`, `regLecNo`, `regMidScore`, `regFinalScore`, `regTotalScore`, `regGrade`) VALUES ('20210326', 349, 16, 65, 81, 'B');
INSERT INTO `register` (`regStdNo`, `regLecNo`, `regMidScore`, `regFinalScore`, `regTotalScore`, `regGrade`) VALUES ('20201016', 167, 18, 38, 56, 'F');
INSERT INTO `register` (`regStdNo`, `regLecNo`, `regMidScore`, `regFinalScore`, `regTotalScore`, `regGrade`) VALUES ('20220416', 349, 25, 58, 83, 'B');