use KURSUS

insert into ms_student(Student_id, Student_name, Student_address, Student_phone, Student_email, Student_gender, Student_birth) values
('80692', 'Lily Siswani', 'Jl Tukad Yeh Aye', '85920735341', 'lily@yahoo.com', 'Female', '11/03/1989'),
('80862', 'Stella clarissa', 'Ubung', '81808887933', 'stellycious@yahoo.com', 'Female', '09/08/1988'),
('82205', 'Agustino', 'Puputan Renon 6', '8180834234', 'tino_she@yahoo.com', 'Male', '07/08/1988'),
('82312', 'Imelda Putri', 'Jl Gunung Agung', '8569463434', 'putri@yahoo.co.id', 'Female', '12/07/1988'),
('85131', 'Ketut Joni', 'Gianyar', '8563434423', 'joni@yahoo.com', 'Male', '06/12/1987'),
('81234', 'Hendri', 'Sangeh', '361223344', 'hendri@stikom.com', 'Male', '04/04/1989'),
('84321', 'Agnes', 'Jakarta', '8172217865', 'agnes@yahoo.com', 'Female', '10/02/1987'),
('87078', 'Kaka', 'Brasil', '361237468', 'kaka@brasil.com', 'Male', '12/12/1986'),
('83421', 'Torres', 'Spanyol', '878765456', 'Torres@spanyol.com', 'Male', '02/02/1988'),
('88139', 'Pato', 'Brasil', '31234572', 'Pato.brasil.com', 'Male', '02/07/1986');

insert into ms_tutor(Tutor_id, Tutor_name, Tutor_address, Tutor_phone, Tutor_email, Tutor_gender, Tutor_birth) values
('D1908', 'Robert', 'Sukawati 56', '818277345', 'Robert@yahoo.com', 'Male', '10/09/1970'),
('D1989', 'Ayu Nurani', 'Tanah Lot', '361298782', 'Ayu@yahoo.com', 'Female', '08/05/1973'),
('D1507', 'Joko Susanto', 'Klitren', '274231398', 'Joko@gmail.com', 'Male', '08/07/1972'),
('D0708', 'Angelina', 'Jl Selaparang 60', '370616278', 'angel@telkom.co.id', 'Female', '10/12/1969'),
('D0612', 'Indah dewi', 'Denpasar', '361567567', 'indah@hotmail.com', 'Female', '11/06/1977');

insert into ms_program(Program_id, Program_name, Fee, Duration) values
('PC001', 'Conversation', '1500000', '12'),
('PP001', 'TEOFL Preparation', '2000000', '12'),
('PG001', 'General English', '1000000', '12');

insert into ms_grade(grade_id, nilai, discount) values
('A', '85-100', '10%'),
('B', '75-84', '5%'),
('C', '0-74', '0%');

/* select * from ms_student
select * from ms_tutor
select * from ms_program
select * from ms_grade
delete ms_grade
 */
update ms_program
set Duration = '10'
where Fee < 2000000

update ms_program
set Duration = '12',
	Fee = 1500000
where Duration = 10 and Fee < 1500000

delete ms_tutor
where Tutor_gender = 'Female' or Tutor_address = 'Denpasar'