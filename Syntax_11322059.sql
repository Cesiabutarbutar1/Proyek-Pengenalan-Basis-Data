/* 
   Nama   : Cesia Sauria Butarbutar
   NIM    : 11322059
   Prodi  : D3TI-02
 */
 
CREATE TABLE admin(
id_admin BIGINT(20) NOT NULL,
username VARCHAR(255) NOT NULL,
passwort VARCHAR(255) NOT NULL,
email VARCHAR(255) NOT NULL,
id_donasi BIGINT(20) NOT NULL,
id_jadwal BIGINT(20) NOT NULL,
id_keuangan BIGINT(20) NOT NULL,
id_photo BIGINT(20) NOT NULL,
id_warta BIGINT(20) NOT NULL,
id BIGINT(20) NOT NULL,
created_at TIMESTAMP NULL,
updated_at TIMESTAMP NULL,
PRIMARY KEY(id_users)
FOREIGN KEY (id_donasi,id_jadwal,id_keuangan,id_photo,id_warta,id)
)

INSERT INTO admin (id_admin, email, passwort)VALUES
(1,'cesia@gmail.com','cesia57328'),
(2,'dian@gmail.com','dian18'),
(3,'juan2@gmail.com','juan2'),
(4,'nita67@gmail.com','nita67'),
(5,'monica21@gmail.com','moncan'),
(6,'markus78@gmail.com','markus'),
(7,'silvi90@gmail.com','sisil'),
(8,'heru20@gmail.com','heru'),
(9,'Denis60@gmail.com','deden'),
(10,'Daniel99@gmail.com','dani');
SELECT *FROM admin

CREATE TABLE datajemaat(
id_datajemaat BIGINT(20) NOT NULL,
nama VARCHAR(255) NOT NULL,
jeniskelamin ENUM('perempuan','Laki-laki') NOT NULL,
alamat VARCHAR(255) NOT NULL ,
notelpon BIGINT(20) NOT NULL,
created_at TIMESTAMP NULL,
updated_at TIMESTAMP NULL,
PRIMARY KEY(id_datajemaat)
FOREIGN KEY (nama)
)

INSERT INTO `datajemaat` (`id_datajemaat`, `nama`, `alamat`, `notelp`, `jeniskelamin`) VALUES
(120, 'Fahri', 'jln.pintuterbuka', 89456748322, 'laki-laki'),
(121, 'Bintang', 'jln.parparean', 85123122345, 'perempuan'),
(122, 'olivia', 'jln. sudinsiregar no.21', 87768944351, 'perempuan'),
(123, 'Natanael', 'jln. mawar no 13', 81327483764, 'laki-laki'),
(124, 'irma', 'jln.mangga no 11', 82947316373, 'perempuan'),
(125, 'Miranda', 'jln.merahmelati no 102', 83622355161, 'perempuan'),
(126, 'Putri', 'jln.ir.indah', 89933562211, 'perempuan'),
(127, 'jansudin', 'jln. sudinsiregar no.21', 82112345657, 'laki-laki'),
(128, 'Naky', 'jln.pelangi no.54', 86453216443, 'laki-laki'),
(129, 'Ezra', 'jln. bintangcemerlang', 86756453211, 'perempuan');
SELECT *FROM datajemaat


CREATE TABLE donasi(
id BIGINT(20) NOT NULL,
tanggal DATE NOT NULL,
jenis VARCHAR(255) NOT NULL,
nama VARCHAR(255) NOT NULL,
jumlah VARCHAR(255) NOT NULL,
created_at TIMESTAMP NULL,
updated_at TIMESTAMP NULL,
PRIMARY KEY(id)
FOREIGN KEY (nama,tanggal)
)


INSERT INTO `donasi` (`id_donasi`, `tanggal`, `jenis`, `nama`, `jumlah`) VALUES
(1,'2020/08/21','Photo','Cesia','7000 biji'),
(2,'2021/07/11','pakian','Dian','200 biji'),
(3,'2020/09/17','alkitab','Mananda','4000 biji'),
(4,'2021/03/02','uang','Sarah','800000'),
(5,'2022/10/09','buku cerita alkitab','Helen','150 biji'),
(6,'2022/08/19','uang','Maudy','120000'),
(7,'2020/03/23','alkitab','Olivia','100 biji'),
(8,'2022/05/10','pakaian','Indah','4000 biji'),
(9,'2023/02/06','bible','Hasan','3000 biji'),
(10,'2023/10/02','photo','Natanel','500 biji');
SELECT *FROM donasi

CREATE TABLE jadwalibadah(
id_jadwal BIGINT(20)NOT NULL,
namaibadah VARCHAR(255) NOT NULL,
ayatalkitab VARCHAR(255) NOT NULL,
haritanggal DATE NOT NULL,
deskripsi TEXT(255) NOT NULL,
created_at TIMESTAMP NULL,
updated_at TIMESTAMP NULL,
PRIMARY KEY(id_jadwal)
FOREIGN KEY (deskripsi)
)

INSERT INTO `jadwalibadah` (`id_jadwal`, `namaibadah`, `ayatibadah`, `haritanggal`, `deskripsi`) VALUES
(1, 'ibadah Minggu', 'efesus 6:1', '2023-04-21', 'ibadah minggu ini untuk anak sekolah minggu di masing-masing rayon'),
(2, 'ibadah Minggu', '1 petrus 3:11', '2023-04-12', '\"Ibadah umum Gereja GPdI\"'),
(3, 'Ibadah Senin', '1 tesalonika 20:24', '2022-12-13', 'Tuhan akan menggenapi firmannya'),
(4, 'ibadah Kamis', '1 yohannes 1:1', '2022-05-18', 'Menyaksikan kebesaran Tuhan'),
(5, 'ibadah Jumat', 'Mazmur 11:4', '2022-12-25', 'telah lahirnya Juruslamat'),
(8, 'ibadah Rabu', 'ibrani 5:2', '2023-05-01', 'kita harus dapat mengerti orang-orang yang jahil dan orang yang sesat'),
(11, 'ibadah Sabtu', 'Rut 4:1', '2023-02-05', 'Rut menjadi istri Boas'),
(23, 'ibadah jumat', 'matius 5:4', '2023-05-09', 'berbahagialah orang yang berdukacita, karena mereka akan dihibur'),
(43, 'ibadah Kamis', 'Yosua 9:2', '2023-05-27', 'Akal Orang Gibeon'),
(74, 'ibadah Senin', 'filemon 3:6', '2022-05-17', 'Berdoa agar persekutuan kita dekat dengan Tuhan');
SELECT *FROM jadwalibadah

CREATE TABLE keuangan(
id_keuangan BIGINT(20) NOT NULL,
tanggal DATE NOT NULL,
pemasukan BIGINT(100) NOT NULL,
pengeluaran BIGINT(100) NOT NULL,
deskripsi TEXT(255) NOT NULL,
created_at TIMESTAMP NULL,
updated_at TIMESTAMP NULL,
PRIMARY KEY (id_keuangan)
FOREIGN KEY (tanggal,deskripsi)
)


INSERT INTO keuangan (id_keuangan, tanggal, pemasukan, pengeluaran, deskripsi) VALUES
(1, '2023-04-08', 60000, 20000, 'Beli lampu gereja'),
(2, '2021-07-11', 100000, 70000, 'Beli perlengkapan gereja'),
(3, '2020-05-15', 350000, 90000, 'Sumbangan dari jemaat'),
(4, '2023-07-10', 630000, 250000, 'Acara pemakaman keluarga'),
(5, '2020-09-08', 209900, 450000, 'Uang perpuluhan'),
(6, '2022-11-06', 670000, 60000, 'Beli pohon Natal'),
(7, '2021-05-03', 895000, 10000, 'Dari keluarga pastor'),
(8, '2021-10-08', 115000, 500000, 'Beli telur Paskah'),
(9, '2023-08-03', 550000, 80000, 'Bayar listrik gereja'),
(10, '2023-08-19', 760000, 650000, 'Hadiah Hari Paskah');
SELECT *FROM keuangan


CREATE TABLE photo(
id_photo BIGINT(20) NOT NULL,
nama VARCHAR(255) NOT NULL,
photo VARCHAR(255)NOT NULL,
created_at TIMESTAMP NULL,
updated_at TIMESTAMP NULL,
PRIMARY KEY (id_photo)
FOREIGN KEY (nama)
)

INSERT INTO photo(id_photo,nama,photo) VALUE
(1,'Cesia','Youth GPdI'),
(2,'Naky','Anak Sekolah Minggu'),
(3,'Jansudin','Kaum Ibu'),
(4,'Buana','Kaum Bapak'),
(5,'Yoan','Para Pelayan'),
(6,'Elisa','Pelayan Pemain Musik'),
(7,'Cecilia','Gambar Gereja Dari luar'),
(8,'Trinita','Gambar Gereja Dari dalam'),
(9,'Palti','Pelayan Pemain Tamborine'),
(10,'Citra','Singer & WL');
SELECT *FROM photo


CREATE TABLE wartagereja(
id_warta BIGINT(20)NOT NULL,
judul VARCHAR(255) NOT NULL,
keterangan VARCHAR(255) NOT NULL,
photo VARCHAR(255) NOT NULL,
created_at TIMESTAMP NULL,
updated_at TIMESTAMP NULL,
PRIMARY KEY (id_warta)
FOREIGN KEY (photo)
)

INSERT INTO `wartagereja` (`id_wartagereja`, `judul`, `keterangan`, `photo`) VALUES
(36483, 'youth', 'ibadah padang', 'youth ibadah padang'),
(63782, 'perpuluhan', 'ibadah umum', 'Jemaat'),
(64783, 'uang khas', 'dari jemaat', 'diberikan'),
(462832, 'kaum ibu', 'koor kaum ibu', 'ibadah koor'),
(653782, 'jemaat yang ulang tahun', 'di bulan agustus', 'selamat'),
(683292, 'sekolah minggu', 'ibadah sekolah minggu', 'anak sekolah minggu'),
(4537726, 'keuangan', 'keuangan gereja', 'anugrahhh'),
(6738282, 'yang melayani', 'pelayan-pelayan', 'pelayanan'),
(6857648, 'persembahan', 'ibadah rayon', 'gereja'),
(7382746, 'baptisan', 'yang sudah dibaptis', 'baptisan');

SELECT *FROM wartagereja

/* 
   Nama   : Cesia Sauria Butarbutar
   NIM    : 11322059
   Prodi  : D3TI-02
 */
 
 /* Query 1 */
SELECT * FROM datajemaat ORDER BY nama DESC; 

 /* Query 2 */
SELECT * FROM datajemaat WHERE nama LIKE '%a'

 /* Query 3 */
SELECT * FROM datajemaat WHERE nama = 'Ezra'

 /* Query 4 */
SELECT nama FROM datajemaat ORDER BY nama ASC

 /* Query 5 */
SELECT id_datajemaat,nama FROM datajemaat WHERE nama LIKE '%e%' 

 /* Query 6*/
SELECT * FROM datajemaat WHERE jeniskelamin = 'laki-laki' 

 /* Query 7 */
SELECT * FROM datajemaat WHERE jeniskelamin = 'perempuan' 

 /* Query 8*/
SELECT * FROM datajemaat WHERE notelp LIKE '%9%';

 /* Query 9*/
SELECT * FROM datajemaat WHERE id_datajemaat >= '120' AND (nama='fahri' OR nama='putri')

 /* Query 10*/
SELECT * FROM datajemaat WHERE id_datajemaat > 124;

/* 
   Nama   : Cesia Sauria Butarbutar
   NIM    : 11322059
   Prodi  : D3TI-02
 */
 
/* no 1 */
SELECT keuangan.*, donasi.*
FROM keuangan
INNER JOIN donasi
ON keuangan.id_keuangan = donasi.id_donasi;

/* no 2*/
SELECT keuangan.`pemasukan`, wartagereja.`judul`
FROM keuangan
LEFT JOIN wartagereja
ON keuangan.`deskripsi`= wartagereja.`deskripsi`


/*3*/
SELECT donasi.`nama`,jumlah,jenis,datajemaat.`notelp`,jeniskelamin
FROM donasi
LEFT JOIN datajemaat
ON donasi.`nama`=datajemaat.`nama`
WHERE donasi.`nama` LIKE '%o%'

/*4*/
SELECT j1.`id_jadwal`, j1.`haritanggal`
FROM jadwalibadah j1
LEFT JOIN jadwalibadah j2
ON j1.`id_jadwal` = j2.`haritanggal`;

/*5*/
SELECT datajemaat.`nama`, donasi.`jumlah`, donasi.`jenis`
FROM datajemaat
INNER JOIN donasi
ON datajemaat.`nama` = donasi.`nama`

/*6*/
SELECT photo.`id_photo`, donasi.nama
FROM photo
INNER JOIN donasi
ON donasi.id_donasi = photo.id_photo;

/*7*/
SELECT donasi.`nama`,jumlah,jenis,datajemaat.`notelp`,jeniskelamin
FROM donasi
LEFT JOIN datajemaat
ON donasi.`nama`=datajemaat.`nama`
WHERE donasi.`nama` LIKE '%e%'

/*8*/
SELECT wartagereja.`photo`,photo.`nama`
FROM wartagereja
RIGHT JOIN photo
ON wartagereja.`photo` = photo.`photo`
WHERE photo.`nama` LIKE 'Naky'

/*9*/
SELECT keuangan.`pengeluaran`, keuangan.`tanggal`, wartagereja.`photo`
FROM keuangan
LEFT JOIN wartagereja
ON keuangan.`deskripsi` = wartagereja.`deskripsi`

/*10*/
SELECT photo.`nama`, admin.`email`
FROM photo
RIGHT JOIN admin
ON photo.`id_photo` = admin.`id_photo`

/* 
   Nama   : Cesia Sauria Butarbutar
   NIM    : 11322059
   Prodi  : D3TI-02
 */
 
/* Query 1 */
SELECT * FROM datajemaat
WHERE notelp > (SELECT AVG(notelp) FROM datajemaat)
ORDER BY nama ASC;

/* Query 2 */
SELECT *
FROM datajemaat
WHERE nama IN (SELECT nama FROM datajemaat WHERE nama = 'Fahri');

/* Query 3 */
SELECT nama, alamat, notelp, jeniskelamin
FROM datajemaat
WHERE id_datajemaat IN (
  SELECT id_datajemaat
  FROM datajemaat
  WHERE jeniskelamin = 'Laki-laki'
);

/* Query 4 */
SELECT jeniskelamin, COUNT(*) AS total_jemaat
FROM datajemaat
GROUP BY jeniskelamin
HAVING COUNT(*) > (
  SELECT AVG(total_jemaat)
  FROM (
    SELECT COUNT(*) AS total_jemaat
    FROM datajemaat
    GROUP BY jeniskelamin
  ) AS subquery
);

/* Query 5*/
SELECT nama, alamat
FROM datajemaat
WHERE alamat LIKE (SELECT CONCAT('%', SUBSTRING_INDEX(alamat, ',', 1), '%') FROM datajemaat WHERE nama = 'olivia')
AND nama != 'olivia';
