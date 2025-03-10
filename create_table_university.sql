-- create table mahasiswa
CREATE TABLE Mahasiswa (
    MahasiswaID INT PRIMARY KEY,
    NIM VARCHAR(15) NOT NULL,
    Nama VARCHAR(100),
    Alamat VARCHAR(200),
    TanggalLahir DATE,
    Gender VARCHAR(10)
);

-- create table matakuliah 
CREATE TABLE MataKuliah (
    MataKuliahID INT PRIMARY KEY,
    KodeMK VARCHAR(10) NOT NULL,
    NamaMataKuliah VARCHAR(100),
    SKS INT
);
-- create table enroll
CREATE TABLE Enroll (
    EnrollID INT PRIMARY KEY,
    MahasiswaID INT,
    MataKuliahID INT,
    TahunAkademik VARCHAR(10),
    Nilai VARCHAR(5),
    FOREIGN KEY (MahasiswaID) REFERENCES Mahasiswa(MahasiswaID),
    FOREIGN KEY (MataKuliahID) REFERENCES MataKuliah(MataKuliahID)
);
-- create table dosen 
CREATE TABLE Dosen (
    DosenID INT PRIMARY KEY,
    NIDN VARCHAR(20),
    NamaDosen VARCHAR(100),
    Fakultas VARCHAR(100)
);
-- Create table Mengajar
CREATE TABLE Mengajar (
    MengajarID INT PRIMARY KEY,
    DosenID INT,
    MataKuliahID INT,
    Semester VARCHAR(10),
    TahunAkademik VARCHAR(10),
    FOREIGN KEY (DosenID) REFERENCES Dosen(DosenID),
    FOREIGN KEY (MataKuliahID) REFERENCES MataKuliah(MataKuliahID)
);

