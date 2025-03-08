--ini untuk bikin database baru
CREATE DATABASE testDB;
--ini untuk drop database
DROP DATABASE testDB;
--bikin table persons 
CREATE TABLE Mahasiswa (
    NoInduk int,
    Nama_Mhs varchar(255),
    Kelas varchar(255),
    Alamat varchar(255),
);
--select tabel mahasiswa yg uda kita bikin 
SELECT * FROM Mahasiswa;
--insert 3 data mahasiswa
INSERT INTO Mahasiswa (NoInduk, Nama_Mhs, Kelas, Alamat)
VALUES
(0003, 'Cak Rafi', 'Sistem Informasi', 'Magelang'),
(0001, 'Cak Robet', 'Teknik Informatika', 'Suroboyo'),
(0002, 'Cak Rafi', 'Sistem Informasi', 'Sidoarjo');
(0003, 'Cak Yono', 'Ekonomi', 'Mediun');
--check data insert ke tabel mahasiswa
SELECT * FROM Mahasiswa;
--delete semua customer
DELETE FROM Mahasiswa;
--check data yg uda delete ke tabel mahasiswa
SELECT * FROM Mahasiswa;
--delete semua customer
DELETE FROM Mahasiswa where NoInduk = 1
--update merubah data cak rafi no indu 3 ke nama_mhs cak yono
update Mahasiswa set Nama_Mhs ='Cak Yono' where NoInduk =3
--kita mau tampilin data mahasiswa yg namanya ada kalimat ono
--Cak Yono - Yono Cak
select Nama_Mhs from Mahasiswa where Nama_Mhs like 'Cak' 