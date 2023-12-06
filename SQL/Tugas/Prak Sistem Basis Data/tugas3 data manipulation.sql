-- 1. Create database SBD_XXX, dimana xxx diganti dengan nim
create database SBD_220040001
GO
-- 2, 3, 4. Download dan execute script yang telah diberikan di elearning
use SBD_220040001
GO
-- 5. Menampilkan seluruh tabel
select * from ms_student
select * from ms_tutor
select * from ms_grade
select * from tr_jadwal
select * from tr_payment
select * from tr_regist
select * from tr_result
select * from trh_absensi
select * from trd_absensi
GO
-- 6.a. Menampilkan semua data di tabel tertentu misalnya ms_student
select * from ms_student
GO
-- 6.b. Menampilkan seluruh barus pada kolom tertentu
select student_id, student_name
from ms_student
GO
-- 6.c. Menampilkan angka 100 dan text 'STIKOM Bali'
select student_id, 100, student_name, 'STIKOM Bali'
from ms_student
GO
-- 6.d. Memberikan judul kolom
select student_id as NIM, 100 as Nilai, student_name, 'STIKOM Bali' as Kuliah
from ms_student
GO
-- 6.e. Memberikan judul tabel
select siswa.student_id, siswa.student_name
from ms_student siswa
GO
-- 6.f Menggunakan distinct
select program_id
from tr_jadwal
GO

select DISTINCT program_id
from tr_jadwal
GO
-- 7.a. Menampilkan daftar pembayaran, dengan menampilkan payment_id, regist_id dan total payment + 100
select payment_id, regist_id, total_payment
from tr_payment
GO

select payment_id, regist_id, total_payment + 100 as Bayar
from tr_payment
GO
-- 7.b. Menampilkan daftar pembayar, dengan menampilkan payment_id, regist_id dan 10% dari total payment
select payment_id, regist_id, total_payment
from tr_payment
GO

select payment_id, regist_id, total_payment, 0.1 * Total_payment as Bayar
from tr_payment
GO
-- 7.c. Menampilkan daftar pembataran, dengan menampilkan payment_id, regist_id, dan total payment perbulan
select payment_id, regist_id, total_payment
from tr_payment
GO

select payment_id, regist_id, total_payment, total_payment/12 as Bayar
from tr_payment
GO
-- 8.a. Menampilkan kode payment, kode_registrasi, dan jumlah pembayaran yang lebih dari 1.000.000
select payment_id, regist_id, total_payment
from tr_payment
where total_payment > 1000000
GO
-- 7.b. Menampilkan data mahasiswa yang tinggal di Slipi
select *
from ms_student
where Student_address = 'Slipi'
GO
-- 7.c. Menampilkan kode payment, kode regist dan total payment yang total payment tidak sama dengan 1500000
select payment_id, regist_id, total_payment
from tr_payment
where total_payment <> 1500000
GO
-- 7.d. Menampilkan kode payment, kode regist dan total payment kurang atau sama dengan 1500000
select payment_id, regist_id, total_payment
from tr_payment
where total_payment <= 1500000
GO