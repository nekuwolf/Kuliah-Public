-- Nama : I Putu Agus Yoga Pratama Putra
-- NIM : 220040001
-- Kelas : BA224 (Praktikum Sistem Basis Data)

use SBD_220040001
GO

-- 1. Tampilkan data jadwal yang bukan hari jumat dan pengajarnya bukan D1989
select * from tr_jadwal
where DAY_ <> 'fri' and tutor_id <> 'D1989';
GO

-- 2. Cari nama siswa yang berawalan huruf 'L', huruf ke-2 sd ke-5 tidak diketahui, huruf ke-6 'a' dan huruf selanjutnya tidak di ketahui
select * from ms_student
where Student_name like 'L____a%';
GO

-- 3. Tampilkan seluruh pembayaran yang total pembayaran kurang dari 1500000 dan tanggal bayar nya tahun 2008
select * from tr_payment
where Total_payment < 1500000 and year(Payment_date) = 2008;
GO

-- 4. Tampilkan id siswa yang pernah alpha atau izin dan susun berdasarkan id siswa urut naik
select student_id from trd_absensi
where 'Alpha' in (Pertemuan_1, Pertemuan_2, Pertemuan_3, Pertemuan_4, Pertemuan_5, Pertemuan_6, Pertemuan_7, Pertemuan_8, Pertemuan_9, Pertemuan_10, Pertemuan_11, Pertemuan_12)
    OR 'Izin' in (Pertemuan_1, Pertemuan_2, Pertemuan_3, Pertemuan_4, Pertemuan_5, Pertemuan_6, Pertemuan_7, Pertemuan_8, Pertemuan_9, Pertemuan_10, Pertemuan_11, Pertemuan_12)
ORDER BY student_id;
GO

-- 5. Tampilkan data tutor id (hilangkan duplikasi untuk tutor id yang sama) yang tidak mengajar di hari kamis atau jumat dan mengajar program ‘PG001’
select DISTINCT Tutor_id from tr_jadwal
where Day_ in ('thu', 'fri') and Program_id = 'PG001';
GO

-- 6. Tampilkan data hasil ujian bagi ujian oraltest atau writtentest A dan dua karakter awal program id bukan PG
select * from tr_result
where 'A' in (Oral_Test, Written_Test)
    and program_id not like 'PG%';
GO