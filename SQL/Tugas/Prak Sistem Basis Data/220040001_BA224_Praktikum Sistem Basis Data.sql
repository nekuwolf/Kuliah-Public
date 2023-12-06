/*
Nama = I Putu Agus Yoga Pratama Putra
NIM = 220040001
Kelas = BA224 (Praktikum Sistem Basis Data)
*/
-- 1. Buat database rental_xxx
create database RENTAL_001
on primary (
	NAME='RENTAL_001_DATA',
	FILENAME='C:\Users\user\Documents\SQLDB\RENTAL.mdf',
	SIZE=10MB,
	MAXSIZE=300MB,
	FILEGROWTH=4MB
)
log on (
	NAME='RENTAL_001_LOG',
	FILENAME='C:\Users\user\Documents\SQLDB\RENTAL_LOG.ldf',
	SIZE=10MB,
	MAXSIZE=300MB,
	FILEGROWTH=4MB
)

-- 2.A. Membuat tabel MSFilm dan TrPinjam
USE RENTAL_001

CREATE TABLE MSFilm
(
    Kd_VCD CHAR(5),
    Judul VARCHAR(50),
    Durasi INT,
    Harga_Sewa DECIMAL,
)

CREATE TABLE TrPinjam
(
    Kd_Trs CHAR(6),
    Tgl_Pinjam DATETIME,
    Tgl_Kembali DATETIME,
    Kd_VCD CHAR(5),
)

-- 2.B. Tambahkan kolom Status_pinjam char(1) dan Stok int pada tabel MSFilm, serta tambahkan kolom Denda numeric pada tabel TrPinjam
ALTER TABLE MSFilm
ADD Status_pinjam char(1);

ALTER TABLE MSFilm
ADD Stok INT;

ALTER TABLE TrPinjam
ADD Denda NUMERIC;

-- 2.C. Rubah tipe data kolom denda pada tabel TrPinjam menjadi decimal 
ALTER TABLE TrPinjam
ALTER COLUMN Denda DECIMAL;

-- 3.A. Membuat constrain kolom sesuai aturan tabel
-- Tabel MSFilm
ALTER TABLE MSFilm
ALTER COLUMN Kd_VCD char(5) NOT NULL;

ALTER TABLE MSFilm
ADD CONSTRAINT PK_MSFilm_Kd_VCD PRIMARY KEY(Kd_VCD);

ALTER TABLE MSFilm
ALTER COLUMN Judul VARCHAR(50) NOT NULL;
-- Tabel TrPinjam
ALTER TABLE TrPinjam
ALTER COLUMN Kd_Trs char(6) NOT NULL;

ALTER TABLE TrPinjam
ADD CONSTRAINT PK_TrPinjam_Kd_Trs PRIMARY KEY(Kd_Trs);

ALTER TABLE TrPinjam
ALTER COLUMN Kd_VCD CHAR(5) NOT NULL;

-- 3.B. Membuat constraint pada tabel MSFilm, Status_pinjam Y atau T dan Stok tidak boleh kosong atau minus
ALTER TABLE MSFilm
ADD CONSTRAINT chk_MSFilm_Status_pinjam CHECK(Status_pinjam IN ('Y', 'T'));

ALTER TABLE MSFilm
ADD CONSTRAINT chk_MSFilm_Stok CHECK(Stok > 0);

-- 3.C. Tambahkan Constraint pada table TrPinjam dengan aturan pada kolom Tgl_Kembali harus Lebih besar atau sama dengan Tgl_pinjam 
ALTER TABLE TrPinjam
ADD CONSTRAINT chk_TrPinjam_Tgl_Kembali CHECK(Tgl_Kembali >= Tgl_Pinjam);

-- 4.A. Memasukan data
-- Tabel MSFilm
('00001', 'Test VCD 1', 60, 5000, 'Y', 5), 
('00002', 'Test VCD 2', 120, 8000, 'T', 10);
-- mm/dd/yyyy
INSERT INTO TrPinjam (Kd_Trs, Tgl_Pinjam, Tgl_Kembali, Kd_VCD, Denda) VALUES
('000001', '05/13/2022', '05/24/2022', '00001', 1000),
('000002', '05/15/2022', '05/25/2022', '00002', 0);

-- 4.B. Update kolom harga_sewa menjadi 5000 pada tabel MSFilm untuk film yang durasinya diatas 100 menit dan status_Pinjam nya belum terpinjam
UPDATE MSFilm
SET Harga_Sewa = 5000
WHERE Durasi > 100 and Status_pinjam = 'T'

-- 4.C. Hapus data di table TrPinjam yang dendanya diatas 0 atau yang tgl_kembali nya lebih besar dari tgl_pinjam 
DELETE FROM TrPinjam
WHERE Denda > 0 or Tgl_Kembali > Tgl_Pinjam