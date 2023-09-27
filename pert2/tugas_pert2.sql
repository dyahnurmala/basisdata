CREATE TABLE `Fakultas`  (
  `kode_fk` int NOT NULL,
  `nama_fk` varchar(255) NULL,
  PRIMARY KEY (`kode_fk`)
);

CREATE TABLE `Kampus`  (
  `nama_kampus` int NOT NULL,
  PRIMARY KEY (`nama_kampus`)
);

CREATE TABLE `Lulus`  (
  `grade` varchar(255) NOT NULL,
  PRIMARY KEY (`grade`)
);

CREATE TABLE `Mahasiswa`  (
  `nim` varchar(255) NOT NULL,
  `nama` varchar(255) NULL,
  `kode_fk` varchar(255) NOT NULL,
  PRIMARY KEY (`nim`, `kode_fk`)
);

CREATE TABLE `MataKuliah`  (
  `kodemk` int NOT NULL,
  `namamk` varchar(255) NULL,
  `sks` varchar(255) NULL,
  PRIMARY KEY (`kodemk`)
);

CREATE TABLE `Nilai`  (
  `kodemk` varchar(255) NOT NULL,
  `nim` varchar(255) NOT NULL,
  `grade` varchar(255) NOT NULL,
  `tugas` varchar(255) NULL,
  `UTS` varchar(255) NULL,
  `UAS` varchar(255) NULL,
  `total` varchar(255) NULL,
  PRIMARY KEY (`kodemk`, `nim`, `grade`)
);

ALTER TABLE `Fakultas` ADD CONSTRAINT `fk_Fakultas_Mahasiswa_1` FOREIGN KEY (`kode_fk`) REFERENCES `Mahasiswa` (`kode_fk`);
ALTER TABLE `Mahasiswa` ADD CONSTRAINT `fk_Mahasiswa_Nilai_1` FOREIGN KEY (`nim`) REFERENCES `Nilai` (`nim`);
ALTER TABLE `MataKuliah` ADD CONSTRAINT `fk_MataKuliah_Nilai_1` FOREIGN KEY (`kodemk`) REFERENCES `Nilai` (`kodemk`);
ALTER TABLE `Nilai` ADD CONSTRAINT `fk_Nilai_Lulus_1` FOREIGN KEY (`grade`) REFERENCES `Lulus` (`grade`);

