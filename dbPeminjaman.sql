-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 22 Jul 2022 pada 08.11
-- Versi server: 10.3.15-MariaDB
-- Versi PHP: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_perpustakaan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `alat`
--

CREATE TABLE `alat` (
  `idAlat` int(11) NOT NULL,
  `kodeAlat` varchar(125) NOT NULL,
  `namaAlat` varchar(200) NOT NULL,
  `keterangan` varchar(125) NOT NULL,
  `jumlahAlat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `alat`
--

INSERT INTO `alat` (`idAlat`, `kodeAlat`, `namaAlat`, `keterangan`, `jumlahAlat`) VALUES
(11, '898234', 'Proyektor', 'baik', 4),
(16, '89832947329', 'Monitor', 'Baik', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `datapeminjaman`
--

CREATE TABLE `datapeminjaman` (
  `idPeminjaman` int(100) NOT NULL,
  `namaPeminjam` varchar(230) NOT NULL,
  `namaAlat` varchar(230) NOT NULL,
  `kodeAlat` varchar(127) NOT NULL,
  `tanggalPengajuan` varchar(20) NOT NULL,
  `tanggalKembali` varchar(20) NOT NULL,
  `jamPinjam` varchar(20) NOT NULL,
  `jamKembali` varchar(20) NOT NULL,
  `kondisi` varchar(200) NOT NULL,
  `keperluan` varchar(230) NOT NULL,
  `status` varchar(40) NOT NULL,
  `konfirmasi` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `datapeminjaman`
--

INSERT INTO `datapeminjaman` (`idPeminjaman`, `namaPeminjam`, `namaAlat`, `kodeAlat`, `tanggalPengajuan`, `tanggalKembali`, `jamPinjam`, `jamKembali`, `kondisi`, `keperluan`, `status`, `konfirmasi`) VALUES
(39, 'nadya', 'Proyektor', '', '14-07-2022', '14-07-2022', '22:30:09', '22:35:11', '', 'Acara Workshop', 'Sudah Dikembalikan', 'ACC'),
(40, 'nadyaa', 'Proyektor', '', '16-07-2022', '19-07-2022', '23:25:12', '2:04:07', '', 'Acara', 'Sudah Dikembalikan', 'ACC'),
(48, 'nadyaa', 'Proyektor', '', '18-07-2022', '20-07-2022', '4:26:06', '14:52:04', '', 'Acara', 'Sudah Dikembalikan', 'ACC'),
(51, 'nadyaa', 'Monitor', '89832947329', '19-07-2022', '22-07-2022', '13:56:07', '13:08:21', '', 'kjkjgkjs', 'Sudah Dikembalikan', 'ACC'),
(52, 'Rifki', 'Monitor', '89832947329', '20-07-2022', '20-07-2022', '14:53:47', '15:12:12', '', 'Acara', 'Sudah Dikembalikan', 'ACC'),
(53, 'Rifki', 'Proyektor', '898234', '20-07-2022', '20-07-2022', '14:56:26', '15:09:29', '', 'eewew', 'Sudah Dikembalikan', 'ACC'),
(54, 'Rifki', 'Proyektor', '898234', '20-07-2022', '20-07-2022', '15:11:41', '15:40:01', '', 'ngng', 'Sudah Dikembalikan', 'ACC'),
(55, 'Rifki', 'Monitor', '89832947329', '20-07-2022', '22-07-2022', '15:40:51', '13:08:45', '', 'ddd', 'Sudah Dikembalikan', 'ACC'),
(56, 'Rifki', 'Proyektor', '898234', '20-07-2022', '22-07-2022', '15:42:44', '13:08:38', '', 'ddd', 'Sudah Dikembalikan', 'ACC');

-- --------------------------------------------------------

--
-- Struktur dari tabel `identitas`
--

CREATE TABLE `identitas` (
  `id_identitas` int(11) NOT NULL,
  `nama_app` varchar(50) NOT NULL,
  `alamat_app` text NOT NULL,
  `email_app` varchar(125) NOT NULL,
  `nomor_hp` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `identitas`
--

INSERT INTO `identitas` (`id_identitas`, `nama_app`, `alamat_app`, `email_app`, `nomor_hp`) VALUES
(1, 'Peminjaman Alat', 'Fakultas Kehutanan UGM', 'ugm@ac.id', '8998298121');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `kode_kategori` varchar(50) NOT NULL,
  `nama_kategori` varchar(125) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `idMahasiswa` int(11) NOT NULL,
  `NIM` varchar(20) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(230) NOT NULL,
  `role` varchar(100) NOT NULL,
  `namaMahasiswa` varchar(200) NOT NULL,
  `jurusanMahasiswa` varchar(40) NOT NULL,
  `noTeleponMahasiswa` varchar(20) NOT NULL,
  `emailMahasiswa` varchar(100) NOT NULL,
  `FPMahasiswa` varchar(200) NOT NULL,
  `join_date` varchar(130) NOT NULL,
  `terakhir_login` varchar(130) NOT NULL,
  `verif` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`idMahasiswa`, `NIM`, `username`, `password`, `role`, `namaMahasiswa`, `jurusanMahasiswa`, `noTeleponMahasiswa`, `emailMahasiswa`, `FPMahasiswa`, `join_date`, `terakhir_login`, `verif`) VALUES
(40, '98432940', 'bima', '$2y$10$28x5ze7d7nWe6ftVEL7IS.WWz4yTIIAmm9EaFL/33nfu8rYS6Bq1.', 'Mahasiswa', 'Bima Noraga', 'S1 - Teknik Komputer dan Jaringan', '98129898249898124', 'bima@jackdaniel.com', 'Mg.jpg', '', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pegawai`
--

CREATE TABLE `pegawai` (
  `idPegawai` int(11) NOT NULL,
  `NIK` int(20) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(230) NOT NULL,
  `role` varchar(100) NOT NULL,
  `namaPegawai` varchar(200) NOT NULL,
  `noTeleponPegawai` int(20) NOT NULL,
  `emailPegawai` varchar(100) NOT NULL,
  `FPPegawai` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pegawai`
--

INSERT INTO `pegawai` (`idPegawai`, `NIK`, `username`, `password`, `role`, `namaPegawai`, `noTeleponPegawai`, `emailPegawai`, `FPPegawai`) VALUES
(1, 8899989, 'pegawai', 'pegawai', 'pegawai', 'haris', 987998, 'har@gmail.com', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemberitahuan`
--

CREATE TABLE `pemberitahuan` (
  `idPemberitahuan` int(11) NOT NULL,
  `idPeminjaman` varchar(100) NOT NULL,
  `isiPemberitahuan` varchar(255) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pemberitahuan`
--

INSERT INTO `pemberitahuan` (`idPemberitahuan`, `idPeminjaman`, `isiPemberitahuan`, `status`) VALUES
(24, '', 'Rufie Telah meminjam Alat', 'Sudah dibaca'),
(25, '', 'Rufie Telah meminjam Alat', 'Sudah dibaca'),
(26, '', 'Rufie Telah meminjam Alat', 'Sudah dibaca'),
(27, '', 'Rufie Telah meminjam Alat', 'Sudah dibaca'),
(28, '', 'Rufie Telah meminjam Alat', 'Sudah dibaca'),
(29, '', 'Rufie Telah meminjam Alat', 'Sudah dibaca'),
(30, '', 'Rufie Telah meminjam Alat', 'Sudah dibaca'),
(32, '', 'Rufie Telah meminjam Alat', 'Sudah dibaca'),
(33, '', 'Rufie Telah meminjam Alat', 'Sudah dibaca'),
(34, '', 'Rufie Telah meminjam Alat', 'Sudah dibaca'),
(35, '', 'Rufie Telah meminjam Alat', 'Sudah dibaca'),
(36, '', 'Rufie Telah meminjam Alat', 'Sudah dibaca'),
(37, '', 'Rufie Telah meminjam Alat', 'Sudah dibaca'),
(38, '', 'Rufie Telah meminjam Alat', 'Sudah dibaca'),
(39, '', 'Purwanto Telah meminjam Alat', 'Sudah dibaca'),
(40, '', 'Purwanto Telah meminjam Alat', 'Sudah dibaca'),
(41, '', 'Purwanto Telah meminjam Alat', 'Sudah dibaca'),
(42, '', 'Purwanto Telah meminjam Alat', 'Sudah dibaca'),
(43, '', '<i class=\'fa fa-repeat\'></i> # mengajukan Pengembalian Alat', 'Sudah dibaca'),
(44, '', 'Purwanto Telah mengajukan Pinjaman Alat', 'Sudah dibaca'),
(45, '', 'Purwanto Telah mengajukan Pinjaman Alat', 'Sudah dibaca'),
(46, '', 'Annissa Telah mengajukan Pinjaman Alat', 'Sudah dibaca'),
(47, '', '<i class=\'fa fa-repeat\'></i> # mengajukan Pengembalian Alat', 'Sudah dibaca'),
(48, '', '<i class=\'fa fa-repeat\'></i> # mengajukan Pengembalian Alat', 'Sudah dibaca'),
(49, '', '<i class=\'fa fa-repeat\'></i> # mengajukan Pengembalian Alat', 'Sudah dibaca'),
(50, '', 'Annissa Telah mengajukan Pinjaman Alat', 'Sudah dibaca'),
(51, '', 'Annissa Telah mengajukan Pinjaman Alat', 'Sudah dibaca'),
(52, '', 'nadya Telah mengajukan Pinjaman Alat', 'Sudah dibaca'),
(53, '', 'nadya Telah mengajukan Pinjaman Alat', 'Sudah dibaca'),
(54, '', 'nadyaa Telah mengajukan Pinjaman Alat', 'Sudah dibaca'),
(55, '', 'nadyaa Telah mengajukan Pinjaman Alat', 'Sudah dibaca'),
(56, '', 'nadyaa Telah mengajukan Pinjaman Alat', 'Sudah dibaca'),
(57, '', 'nadyaa Telah mengajukan Pinjaman Alat', 'Sudah dibaca'),
(58, '', 'nadyaa Telah mengajukan Pinjaman Alat', 'Sudah dibaca'),
(59, '', 'nadyaa Telah mengajukan Pinjaman Alat', 'Sudah dibaca'),
(60, '', 'nadyaa Telah mengajukan Pinjaman Alat', 'Sudah dibaca'),
(61, '', 'nadyaa Telah mengajukan Pinjaman Alat', 'Sudah dibaca'),
(62, '', '<i class=\'fa fa-share\'></i> nadyaa Telah Pinjaman Alat', 'Sudah dibaca'),
(63, '', '<i class=\'fa fa-share\'></i> nadyaa Telah Pinjam Alat', 'Belum dibaca'),
(64, '', '<i class=\'fa fa-share\'></i> nadyaa Telah Pinjam Alat', 'Belum dibaca'),
(65, '', '<i class=\'fa fa-share\'></i> nadyaa Telah Pinjam Alat', 'Sudah dibaca'),
(66, '', '<i class=\'fa fa-share\'></i> Rifki Telah Pinjam Alat', 'Belum dibaca'),
(67, '', '<i class=\'fa fa-share\'></i> Rifki Telah Pinjam Alat', 'Sudah dibaca'),
(68, '', '<i class=\'fa fa-share\'></i> Rifki Telah Pinjam Alat', 'Belum dibaca'),
(69, '', '<i class=\'fa fa-share\'></i> Rifki Telah Pinjam Alat', 'Belum dibaca'),
(70, 'Array', '<i class=\'fa fa-share\'></i> Rifki Telah Pinjam Alat', 'Belum dibaca');

-- --------------------------------------------------------

--
-- Struktur dari tabel `peminjaman`
--

CREATE TABLE `peminjaman` (
  `id_peminjaman` int(11) NOT NULL,
  `nama_anggota` varchar(125) NOT NULL,
  `judul_buku` varchar(125) NOT NULL,
  `tanggal_peminjaman` varchar(125) NOT NULL,
  `tanggal_pengembalian` varchar(50) NOT NULL,
  `kondisi_buku_saat_dipinjam` varchar(125) NOT NULL,
  `kondisi_buku_saat_dikembalikan` varchar(125) NOT NULL,
  `denda` varchar(125) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `peminjaman`
--

INSERT INTO `peminjaman` (`id_peminjaman`, `nama_anggota`, `judul_buku`, `tanggal_peminjaman`, `tanggal_pengembalian`, `kondisi_buku_saat_dipinjam`, `kondisi_buku_saat_dikembalikan`, `denda`) VALUES
(9, 'Rufi', 'Proyektor', '29-06-2022', '', 'Baik', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesan`
--

CREATE TABLE `pesan` (
  `id_pesan` int(11) NOT NULL,
  `penerima` varchar(50) NOT NULL,
  `pengirim` varchar(50) NOT NULL,
  `judul_pesan` varchar(50) NOT NULL,
  `isi_pesan` text NOT NULL,
  `status` varchar(50) NOT NULL,
  `tanggal_kirim` varchar(50) NOT NULL,
  `jam` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pesan`
--

INSERT INTO `pesan` (`id_pesan`, `penerima`, `pengirim`, `judul_pesan`, `isi_pesan`, `status`, `tanggal_kirim`, `jam`) VALUES
(30, 'Rufie', 'bima ', 'sdsdsdsdsd', 'sdsdsdsd', 'Sudah dibaca', '01-07-2022', '15:34:22'),
(34, 'bima ', 'Annissa', 'sdfdsfds', 'dsfdsfds', 'Sudah dibaca', '03-07-2022', '23:37:32'),
(43, 'nadya', 'Admin Cuy', 'Hallo Nda', 'Saya udah di Tempat', 'Sudah dibaca', '14-07-2022', '22:26:04');

-- --------------------------------------------------------

--
-- Struktur dari tabel `petugas`
--

CREATE TABLE `petugas` (
  `idPetugas` int(20) NOT NULL,
  `NIP` varchar(20) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(230) NOT NULL,
  `role` varchar(100) NOT NULL,
  `namaPetugas` varchar(200) NOT NULL,
  `unitKerja` varchar(70) NOT NULL,
  `noTeleponPetugas` varchar(20) NOT NULL,
  `emailPetugas` varchar(100) NOT NULL,
  `FPPetugas` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `petugas`
--

INSERT INTO `petugas` (`idPetugas`, `NIP`, `username`, `password`, `role`, `namaPetugas`, `unitKerja`, `noTeleponPetugas`, `emailPetugas`, `FPPetugas`) VALUES
(1, '907024023989832432', 'petugas', 'petugas', 'Petugas', 'hallo', 'IT', '907049724', 'lkglkagd@gmail', 'Mg.jpg'),
(2, '989832423', 'admin', 'admin123', 'Petugas', 'Admintrator', 'S1 - Teknik Komputer dan Jaringan', '09809', 'sdfdsfds', 'Mg.jpg'),
(3, '1234', 'admin', '$2y$10$XVSkiGU31COjkRr/MyU/.uXGHdbsxWuqMKsyJFMDHg3EMdBTTp0Ra', 'Petugas', 'Admin', '', '', '', ''),
(11, '43434', 'anu', '$2y$10$uQKY0QvREV1/tQ3dBE9F9O0669CXRBsbNNGoIe3esHzx87Fk/k3c6', 'Petugas', 'anu', '', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `alat`
--
ALTER TABLE `alat`
  ADD PRIMARY KEY (`idAlat`);

--
-- Indeks untuk tabel `datapeminjaman`
--
ALTER TABLE `datapeminjaman`
  ADD PRIMARY KEY (`idPeminjaman`);

--
-- Indeks untuk tabel `identitas`
--
ALTER TABLE `identitas`
  ADD PRIMARY KEY (`id_identitas`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`idMahasiswa`);

--
-- Indeks untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`idPegawai`);

--
-- Indeks untuk tabel `pemberitahuan`
--
ALTER TABLE `pemberitahuan`
  ADD PRIMARY KEY (`idPemberitahuan`);

--
-- Indeks untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`id_peminjaman`);

--
-- Indeks untuk tabel `pesan`
--
ALTER TABLE `pesan`
  ADD PRIMARY KEY (`id_pesan`);

--
-- Indeks untuk tabel `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`idPetugas`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `alat`
--
ALTER TABLE `alat`
  MODIFY `idAlat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `datapeminjaman`
--
ALTER TABLE `datapeminjaman`
  MODIFY `idPeminjaman` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT untuk tabel `identitas`
--
ALTER TABLE `identitas`
  MODIFY `id_identitas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `idMahasiswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `idPegawai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `pemberitahuan`
--
ALTER TABLE `pemberitahuan`
  MODIFY `idPemberitahuan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `id_peminjaman` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `pesan`
--
ALTER TABLE `pesan`
  MODIFY `id_pesan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT untuk tabel `petugas`
--
ALTER TABLE `petugas`
  MODIFY `idPetugas` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
