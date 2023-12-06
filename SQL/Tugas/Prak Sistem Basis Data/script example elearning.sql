use SBD_220040001
GO

create table ms_student(
Student_id	  char(5) primary key not null, 
Student_name	  varchar (30),
Student_address	  varchar (50),
Student_phone	  varchar (13),
Student_email	  varchar (50),
Student_gender	  varchar (6),
Student_birth	  datetime,
);
GO

create table ms_tutor(
Tutor_id          char (5) primary key not null,
Tutor_name        varchar (30),
Tutor_address     varchar (50),
Tutor_phone       varchar (13),
Tutor_email       varchar (50),
Tutor_gender      varchar (6),
Tutor_birth       datetime,
);
GO

create table ms_program(
Program_id        char (5) primary key not null,
Program_name      varchar(50),
Fee               numeric,
Program_duration  varchar (20),
);
GO

create table ms_grade(
grade_id          char(1) primary key not null,
nilai             varchar(7),
discount          varchar(4),
);
GO

create table tr_jadwal (
Jadwal_id         char (5) primary key not null,
Day_              varchar(10),
Time_             varchar(50),
Program_id        char (5) foreign key references  ms_program(Program_id) on update cascade on delete cascade,
Room              char (3),
tutor_id          char(5) foreign key references ms_tutor(tutor_id) on update cascade on delete cascade,
);
GO

create table tr_regist (
regist_id 	char (6) primary key not null,
Student_id 	char(5) foreign key references ms_student(student_id) on update cascade on delete cascade,
Jadwal_id	char(5) foreign key references tr_jadwal(jadwal_id) on update cascade on delete cascade,
grade_id        char(1) foreign key references ms_grade(grade_id) on update cascade on delete cascade,
);
GO

create table tr_payment(
payment_id      char(5) primary key not null,	
regist_id       char(6) foreign key references tr_regist(regist_id) on update cascade on delete cascade,
Total_payment   numeric,
Payment_date    datetime,
);
GO

create table trh_absensi(
absensi_id        char (2) primary key not null,
jadwal_id         char (5) foreign key references tr_jadwal(jadwal_id)   on update cascade on delete cascade,
Pertemuan1_date   datetime,
Pertemuan2_date   datetime,
Pertemuan3_date   datetime,
Pertemuan4_date   datetime,
Pertemuan5_date   datetime,
Pertemuan6_date   datetime,
Pertemuan7_date   datetime,
Pertemuan8_date   datetime,
Pertemuan9_date   datetime,
Pertemuan10_date  datetime,
Pertemuan11_date  datetime,
Pertemuan12_date  datetime,
);
GO

create table trd_absensi(
absensi_id       char (2) ,
student_id       char (5) ,
Pertemuan_1      varchar(5),
Pertemuan_2      varchar(5),
Pertemuan_3      varchar(5),
Pertemuan_4      varchar(5),
Pertemuan_5      varchar(5),
Pertemuan_6      varchar(5),
Pertemuan_7      varchar(5),
Pertemuan_8      varchar(5),
Pertemuan_9      varchar(5),
Pertemuan_10     varchar(5),
Pertemuan_11     varchar(5),
Pertemuan_12     varchar(5),
primary key(absensi_id,student_id)
);
GO


create table tr_result(
Result_id        char (5) primary key not null,
program_id       char (5) foreign key references ms_program(program_id) on update cascade on delete cascade,   
student_id       char (5) foreign key references ms_student(student_id) on update cascade on delete cascade,   
Written_Test     varchar (4),
Oral_Test        varchar (4),
Note             varchar (10),
);
GO

INSERT INTO ms_student VALUES ('80692','Lily Siswani','haji senen','085920735341','lily_siswani@yahoo.com','Female','11/03/1989')
INSERT INTO ms_student VALUES ('80862','Stella clarissa','ks tubun','081808887933','stellycious@yahoo.com','female','09/08/1988')
INSERT INTO ms_student VALUES ('82205','Agustino','jembatan tiga','08180834234','tino_she@yahoo.com','male','07/08/1988');
INSERT INTO ms_student VALUES ('82312','Imelda putri','duta indah','08569463434','ineldhaputri@yahoo.co.id','female','12/07/1988');
INSERT INTO ms_student VALUES ('85131','Titis annisa astrini','pasar minggu','08563434423','annisa_titis@yahoo.com','female','06/12/1987');
INSERT INTO ms_student VALUES ('81234','Hendri Tella','Slipi','0219886765','hendri@yahoo.com','male','04/04/1989');
INSERT INTO ms_student VALUES ('84321','Lily Annisa Clarissa','Rawa belong','081765342509','bunga_lili@yahoo.com','female','10/02/1987');
INSERT INTO ms_student VALUES ('87078','Kevin Pratama','Jeruk Purut','02198765432','tama_boy@gmail.com','male','12/12/1986');
INSERT INTO ms_student VALUES ('83421','Juliana','kebun jeruk','081834534443','ana_pink@gmail.com','female','02/02/1988');
INSERT INTO ms_student VALUES ('88139','Windika','gang u','0878343434','Windika@yahoo.com','male','02/07/1986');
GO

INSERT INTO ms_tutor VALUES  ('D1908','Robert','Haji rabu','0818666673','Robert@yahoo.com','Male','10/09/1970');
INSERT INTO ms_tutor VALUES  ('D1989','Alexandra','Harmoni','0812624343','alex_chen@yahoo.com','Male','08/05/1973');
INSERT INTO ms_tutor VALUES  ('D0708','stefania angelina','jl.anggrek','0813453434','angel_cute@yahoo.com','Female','10/12/1969');
INSERT INTO ms_tutor VALUES  ('D1507','Fauzan','serpong','08783435534','zan@yahoo.com','Male','08/07/1972');
INSERT INTO ms_tutor VALUES  ('D0612','sabrina','Lebak bulus','0859345344','rina@yahoo.com','Female','11/06/1977');
GO

INSERT INTO ms_program VALUES  ('PC001','conversation',1500000,'12');
INSERT INTO ms_program VALUES  ('PP001','toefl preparation',2000000,'12');
INSERT INTO ms_program VALUES  ('PG001','general english',1000000,'12');
GO

INSERT INTO ms_grade VALUES ('A','85-100','10%');
INSERT INTO ms_grade VALUES ('B','75-84','5%');
INSERT INTO ms_grade VALUES ('C','0-74','0%');
GO

INSERT INTO tr_jadwal VALUES  ('J0001','mon','13.00-15.00','PC001','101','D1908');
INSERT INTO tr_jadwal VALUES  ('J0002','mon','15.00-17.00','PG001','105','D0612');
INSERT INTO tr_jadwal VALUES  ('J0003','tue','09.00-11.00','PP001','101','D1989');
INSERT INTO tr_jadwal VALUES  ('J0004','wed','13.00-15.00','PG001','103','D0612');
INSERT INTO tr_jadwal VALUES  ('J0005','wed','15.00-17.00','PP001','104','D1989');
INSERT INTO tr_jadwal VALUES  ('J0006','thu','09.00-11.00','PG001','102','D0612');
INSERT INTO tr_jadwal VALUES  ('J0007','fri','15.00-17.00','PC001','101','D1908');
INSERT INTO tr_jadwal VALUES  ('J0008','tue','13.00-15.00','PG001','104','D0612');
GO

INSERT INTO tr_regist VALUES	('reg001','80692','J0005','B');
INSERT INTO tr_regist VALUES	('reg002','80862','J0002','A');
INSERT INTO tr_regist VALUES	('reg003','82205','J0001','B');
INSERT INTO tr_regist VALUES	('reg004','82312','J0003','B');
INSERT INTO tr_regist VALUES	('reg005','85131','J0005','C');
INSERT INTO tr_regist VALUES	('reg006','81234','J0004','B');
INSERT INTO tr_regist VALUES	('reg007','84321','J0007','C');
INSERT INTO tr_regist VALUES	('reg008','87078','J0008','C');
INSERT INTO tr_regist VALUES	('reg009','83421','J0001','C');
INSERT INTO tr_regist VALUES	('reg010','88139','J0005','B');
GO

INSERT INTO tr_payment VALUES ('PO101','reg001',1900000,'1/3/2008');
INSERT INTO tr_payment VALUES ('PO102','reg002',900000,'1/10/2008');
INSERT INTO tr_payment VALUES ('PO103','reg003',1425000,'1/11/2008');
INSERT INTO tr_payment VALUES ('PO104','reg004',1900000,'2/2/2008');
INSERT INTO tr_payment VALUES ('PO105','reg005',2000000,'2/5/2008');
INSERT INTO tr_payment VALUES ('PO106','reg006',950000,'2/11/2008');
INSERT INTO tr_payment VALUES ('PO107','reg007',1500000,'1/8/2008');
INSERT INTO tr_payment VALUES ('PO108','reg008',1000000,'2/8/2008');
INSERT INTO tr_payment VALUES ('PO109','reg009',1500000,'1/9/2008');
INSERT INTO tr_payment VALUES ('PO110','reg010',1900000,'2/12/2008');
GO

INSERT INTO trh_absensi VALUES ('01','J0001','03/03/2008','03/10/2008','03/17/2008','03/24/2008','03/31/2008','04/07/2008','04/14/2008','04/21/2008','04/28/2008','05/05/2008','05/12/2008','05/19/2008');
INSERT INTO trh_absensi VALUES ('02','J0002','03/03/2008','03/10/2008','03/17/2008','03/24/2008','03/31/2008','04/07/2008','04/14/2008','04/21/2008','04/28/2008','05/05/2008','05/12/2008','05/19/2008');
INSERT INTO trh_absensi VALUES ('03','J0003','03/04/2008','03/11/2008','03/18/2008','03/25/2008','04/01/2008','04/08/2008','04/15/2008','04/22/2008','04/29/2008','05/06/2008','05/13/2008','05/27/2008');
INSERT INTO trh_absensi VALUES ('04','J0004','03/05/2008','03/12/2008','03/19/2008','03/26/2008','04/02/2008','04/09/2008','04/16/2008','04/23/2008','04/30/2008','05/07/2008','05/14/2008','05/21/2008');
INSERT INTO trh_absensi VALUES ('05','J0005','03/05/2008','03/12/2008','03/19/2008','03/26/2008','04/02/2008','04/09/2008','04/16/2008','04/23/2008','04/30/2008','05/07/2008','05/14/2008','05/21/2008');
INSERT INTO trh_absensi VALUES ('06','J0006','03/06/2008','03/13/2008','03/27/2008','04/03/2008','04/10/2008','04/17/2008','04/24/2008','05/08/2008','05/15/2008','05/22/2008','05/29/2008','06/05/2008');
INSERT INTO trh_absensi VALUES ('07','J0007','03/14/2008','03/28/2008','04/04/2008','04/11/2008','04/18/2008','04/25/2008','05/02/2008','05/09/2008','05/16/2008','05/23/2008','05/30/2008','06/06/2008');
INSERT INTO trh_absensi VALUES ('08','J0008','03/04/2008','03/11/2008','03/18/2008','03/25/2008','04/01/2008','04/08/2008','04/15/2008','04/22/2008','04/29/2008','05/06/2008','05/13/2008','05/27/2008');
GO

INSERT INTO trd_absensi VALUES ('01','80692','hadir','hadir','hadir','hadir','Izin','hadir','hadir','hadir','hadir','hadir','hadir','hadir');
INSERT INTO trd_absensi VALUES ('02','80862','hadir','hadir','hadir','Izin','hadir','hadir','hadir','hadir','hadir','Izin','hadir','hadir');
INSERT INTO trd_absensi VALUES ('03','82205','hadir','hadir','hadir','hadir','hadir','hadir','hadir','Alpha','hadir','hadir','hadir','hadir');
INSERT INTO trd_absensi VALUES ('04','82312','hadir','hadir','hadir','hadir','hadir','hadir','hadir','hadir','hadir','hadir','hadir','hadir');
INSERT INTO trd_absensi VALUES ('05','85131','hadir','Izin','hadir','hadir','hadir','hadir','hadir','hadir','hadir','hadir','hadir','hadir');
INSERT INTO trd_absensi VALUES ('06','81234','hadir','hadir','hadir','hadir','Alpha','hadir','Alpha','Alpha','hadir','hadir','aLpha','hadir');
INSERT INTO trd_absensi VALUES ('07','84321','hadir','hadir','hadir','hadir','hadir','Izin','hadir','hadir','hadir','hadir','hadir','hadir');
INSERT INTO trd_absensi VALUES ('08','87078','hadir','hadir','hadir','hadir','hadir','hadir','hadir','hadir','hadir','hadir','hadir','hadir');
INSERT INTO trd_absensi VALUES ('09','83421','hadir','hadir','Alpha','hadir','hadir','hadir','Alpha','hadir','hadir','hadir','Izin','hadir');
INSERT INTO trd_absensi VALUES ('10','88139','hadir','hadir','hadir','hadir','hadir','Alpha','hadir','hadir','Izin','hadir','hadir','hadir');
GO

INSERT INTO tr_result VALUES 	('RE001','PP001','80692','NULL','B','GOOD');
INSERT INTO tr_result VALUES 	('RE002','PG001','80862','c','B','AVERAGE');
INSERT INTO tr_result VALUES 	('RE003','PC001','82205','B','A','GOOD');
INSERT INTO tr_result VALUES 	('RE004','PP001','82312','C','C','NULL');
INSERT INTO tr_result VALUES 	('RE005','PP001','85131','B','NULL','GOOD');
INSERT INTO tr_result VALUES 	('RE006','PG001','81234','C','C','NULL');
INSERT INTO tr_result VALUES    ('RE007','PC001','84321','NULL','A','EXCELLENT');
INSERT INTO tr_result VALUES 	('RE008','PG001','87078','A','C','NULL');
INSERT INTO tr_result VALUES 	('RE009','PC001','83421','A','b','GOOD');
INSERT INTO tr_result VALUES 	('RE010','PP001','88139','B','C','AVERAGE');
GO
