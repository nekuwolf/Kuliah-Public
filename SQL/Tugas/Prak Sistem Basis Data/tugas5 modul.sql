-- Nama : I Putu Agus Yoga Pratama Putra
-- NIM : 220040001
-- Kelas : BA224 (Praktikum Sistem Basis Data)

USE Kursus
GO

-- Buat tabel dan input data
create table TrPinjam
(
	KdTransaksi CHAR(10),
	TglPinjam DATETIME,
	KdPeminjam CHAR(10),
	KdVcd CHAR(10),
	LamaPinjam INT,
	TglKembali DATETIME,
	Denda INT
)
GO

create table MsPeminjam
(
	KdPeminjam CHAR(10),
	NmPeminjam VARCHAR(50),
	KTP VARCHAR(50),
	Alamat VARCHAR(50),
	Telp VARCHAR(50),
)
GO

create table MsFilm
(
	KdVcd CHAR(10),
	Judul VARCHAR(50),
	StatusPinjam VARCHAR(50),
)
GO

create table Kinerja_Pegawai
(
	ID_Karyawan CHAR(10),
	Bulan CHAR(2),
	Kinerja INT
)
GO

create table Pegawai
(
	ID_Karyawan CHAR(10),
	Nama_Depan VARCHAR(50),
	ID_Departemen CHAR(10),
	Upah INT
)
GO

insert into TrPinjam (KdTransaksi, TglPinjam, KdPeminjam, KdVcd, LamaPinjam, TglKembali, Denda) values
('TR001', '2008-01-01 00:00:00', 'P0001', 'KM001', '6', '2008-01-07 00:00:00', ''),
('TR002', '2008-01-01 00:00:00', 'P0002', 'AC001', '6', '2008-01-08 00:00:00', '500'),
('TR003', '2008-01-01 00:00:00', 'P0003', 'AC002', '6', '2008-01-07 00:00:00', ''),
('TR004', '2008-01-01 00:00:00', 'P0004', 'FS001', '6', '2008-01-09 00:00:00', '1000'),
('TR005', '2008-01-02 00:00:00', 'P0001', 'KR001', '8', '2008-01-10 00:00:00', ''),
('TR006', '2008-01-10 00:00:00', 'P0003', 'KM001', '6', '2008-01-19 00:00:00', '1500');
GO

insert into MsPeminjam (KdPeminjam, NmPeminjam, KTP, Alamat, Telp) values
('P0001', 'Made Rimpeg', '20049876', 'Jl Drupadi No 99', '484844'),
('P0002', 'Ketut Semprong', '20059876', 'Jl Imam Bonjol 222', '567845'),
('P0003', 'Sathosi', '20051111', 'Jl Kebo Iwo 20', '487563'),
('P0004', 'Kim Tae Hun', '20065432', 'Jl Teuku Umar 32', '578612');
GO

insert into MsFilm (KdVcd, Judul, StatusPinjam) values
('KM001', 'The Mask', 'Y'),
('KM002', 'Maju kena mundur nggak kena', 'T'),
('KR001', 'Naruto Shipdeh', 'T'),
('AC001', 'Rambu', 'T'),
('FS001', 'Suparman', 'T'),
('AC002', 'Speed o meter', 'Y');
GO

insert into Kinerja_Pegawai (ID_Karyawan, Bulan, Kinerja) values
('100', '1', '80'),
('100', '2', '85'),
('100', '3', '75'),
('101', '2', '90'),
('101', '3', '70'),
('102', '1', '90'),
('102', '2', '95');
GO

insert into Pegawai (ID_Karyawan, Nama_Depan, ID_Departemen, Upah) values
('100', 'Gede Ronaldo', '20', '10000'),
('101', 'Ketut Poltak', '20', '20000'),
('102', 'Made Suroto', '30', '15000'),
('103', 'Wayan Muhammad', '10', '12000'),
('104', 'Luh Angelina', '50', '25000'),
('105', 'Putu Mely', '10', '22000');
GO

-- 1.1. Tampilkan data pegawai yang gajinya lebih kecil dari ID_karyawan 105 dengan asumsi upah atau gaji pegawai ID 105 tidak diketahu
select * from Pegawai
where Upah < (select Upah from Pegawai where ID_Karyawan = '105')
GO

-- 1.2. Berapa Nilai Kinerja terendah dari pegawai yang Bernama Gede Ronaldo
select MIN(Kinerja) as [nilai terendah] from Kinerja_Pegawai
where ID_Karyawan = (select ID_Karyawan from Pegawai where Nama_Depan = 'Gede Ronaldo')
GO

-- 2.1. Tampilkan daftar transaksi yang dikenakan denda dengan menghitung apakah “tglKembali" terlambat atau tidak (perhatikan “tglPinjam” dan “LamaPinjam”)
select * from TrPinjam
where TglKembali > TglPinjam + LamaPinjam
GO

-- 2.2. Tampilkan daftar film yang tidak disewa dengan melibatkan table “MsFilm” dan “trPinjam”
select * from MsFilm
where KdVcd not in (select DISTINCT(KdVcd) from TrPinjam)
GO

-- 2.3. Tampilkan daftar seluruh film yang melebihi lama pinjam
select a.* from MsFilm a INNER JOIN TrPinjam b
ON a.KdVcd = b.KdVcd
where b.TglKembali > b.TglPinjam + b.LamaPinjam
GO

-- 2.4. Tampilkan data peminjam yang kena denda
select * from MsPeminjam
where KdPeminjam in (select DISTINCT KdPeminjam from TrPinjam where Denda > 0)
GO