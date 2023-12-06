use KURSUS
create table ms_student
(
	Student_id char(5),
	Student_name varchar(30),
	Student_address varchar(50),
	Student_phone varchar(13),
	Student_email varchar(50),
	Student_gender varchar(6),
	Student_birth datetime,
)

create table ms_tutor
(
	Tutor_id char(5),
	Tutor_name varchar(30),
	Tutor_address varchar(50),
	Tutor_phone varchar(13),
	Tutor_email varchar(50),
	Tutor_gender varchar(6),
	Tutor_birth datetime,
)

create table ms_program
(
	Program_id char(5),
	Program_name varchar(50),
	Fee numeric,
	Program_duration varchar(20),
)

create table ms_grade
(
	grade_id char(1),
	nilai varchar(7),
	discount varchar(4),
)

alter table ms_grade
add program_name varchar(50)

sp_rename 'ms_program.program_duration', 'Duration', 'column'