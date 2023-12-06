-- Nama : I Putu Agus Yoga Pratama Putra
-- NIM : 220040001
-- Kelas : BA224

-- 1. Tampilkan data obat yang total telah terjual diatas 2 
select * from MsObat
where id_obat in (select id_obat from Trans_Jual_Detail where JumlahBeli > 2)

-- 2. Tampilkan data customer yang bukan dokter serta tidak pernah melakukan pembelian
SELECT c.*
FROM MsCustomer c
LEFT JOIN Trans_Jual_Header h ON c.id_customer = h.id_customer
WHERE c.id_jenis_customer <> 'JC003' AND h.id_order IS NULL;

-- 3. Tampilkan id customer, nama customer, total jumlah beli dari customer tersebut yang ditangani oleh karyawan Arif dan Endang.
SELECT c.id_customer, c.NamaCustomer, SUM(td.JumlahBeli) AS TotalJumlahBeli
FROM MsCustomer c
JOIN Trans_Jual_Header h ON c.id_customer = h.id_customer
JOIN Trans_Jual_Detail td ON h.id_order = td.id_order
JOIN MsKaryawan k ON h.id_karyawan = k.id_karyawan
WHERE k.NamaKaryawan IN ('Arif', 'Endang')
GROUP BY c.id_customer, c.NamaCustomer;

-- 4. Menampilkan data karyawan yang gajinya melebihi gaji apoteker. Gunakan Sub Query
SELECT a.id_karyawan, b.id_jabatan, a.NamaKaryawan, a.AlamatKaryawan, a.telp, a.email
FROM MsKaryawan a inner join MsJabatan b
ON a.id_jabatan = b.id_jabatan
WHERE gaji > (
SELECT gaji
FROM MsJabatan
WHERE jabatan = 'Apoteker'
)

-- 5. Tampilkan total pembelian masing – masing customer yang pernah belanja. Yang ditampilkan adalah id customer, nama customer dan total pembeliannya (total pembelian didapat dari jumlah beli dikali harga obat)
SELECT
  Mc.id_customer,
  Mc.NamaCustomer,
  SUM(Tjd.JumlahBeli * Mo.Harga) AS TotalPembelian
FROM
  MsCustomer Mc
  JOIN Trans_Jual_Header Tjh ON Mc.id_customer = Tjh.id_customer
  JOIN Trans_Jual_Detail Tjd ON Tjh.id_order = Tjd.id_order
  JOIN MsObat Mo ON Tjd.id_obat = Mo.id_obat
GROUP BY
  Mc.id_customer,
  Mc.NamaCustomer;
