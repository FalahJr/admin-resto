-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Waktu pembuatan: 25 Feb 2022 pada 13.56
-- Versi server: 5.7.34
-- Versi PHP: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `akses`
--

CREATE TABLE `akses` (
  `id_akses` int(11) NOT NULL,
  `nama_akses` varchar(25) NOT NULL,
  `deskripsi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `akses`
--

INSERT INTO `akses` (`id_akses`, `nama_akses`, `deskripsi`) VALUES
(1, 'administrator', 'sebagai  pengelola kendali penuh pada sistem aplikasi'),
(2, 'Asisten admin', 'sebagai pengelola sistem stok barang, penjualan dan laporan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `bank`
--

CREATE TABLE `bank` (
  `id` int(11) NOT NULL,
  `nama_bank` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `bank`
--

INSERT INTO `bank` (`id`, `nama_bank`) VALUES
(1, 'MANDIRI'),
(2, 'BNI'),
(3, 'BCA'),
(4, 'BRI'),
(5, 'CIMB Niaga');

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `id_barang` int(11) NOT NULL,
  `nama_barang` varchar(30) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `harga` int(20) NOT NULL,
  `foto` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id_barang`, `nama_barang`, `id_kategori`, `harga`, `foto`) VALUES
(73, 'Nasi Goreng', 21, 12000, '001eb9550790eab5fd3af9fd4661ec98.jpg'),
(74, 'Es Teh', 22, 4000, '51d3593efa2e17d153853d02a488ab3b.jpg'),
(75, 'Mie Goreng', 21, 5000, '77d19ec895526bf9aea47fa6676202e9.jpg'),
(76, 'Mie Kuah', 21, 5000, '6ddc4c807acc149dfd7c6181132a37ac.jpg'),
(77, 'Es Goday Friz', 22, 5000, '544deb6bceb0fcdf9810f55d201afd1b.jpg'),
(78, 'Es Josua', 22, 6000, '05e2bf0a99227ae9693aa39dd31d2f13.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_penjualan`
--

CREATE TABLE `detail_penjualan` (
  `id` int(11) NOT NULL,
  `no_trf` varchar(50) NOT NULL,
  `nama_pelanggan` varchar(35) NOT NULL,
  `totalpure` bigint(20) NOT NULL,
  `grand_total` bigint(20) NOT NULL,
  `diskon` int(3) NOT NULL,
  `bayar` bigint(20) NOT NULL,
  `kembalian` bigint(20) NOT NULL,
  `catatan` varchar(50) NOT NULL,
  `tgl_trf` date NOT NULL,
  `jam_trf` time NOT NULL,
  `id_pembayaran` int(2) NOT NULL,
  `no_rek` int(18) DEFAULT NULL,
  `atas_nama` varchar(35) NOT NULL,
  `id_bank` int(2) DEFAULT NULL,
  `operator` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `detail_penjualan`
--

INSERT INTO `detail_penjualan` (`id`, `no_trf`, `nama_pelanggan`, `totalpure`, `grand_total`, `diskon`, `bayar`, `kembalian`, `catatan`, `tgl_trf`, `jam_trf`, `id_pembayaran`, `no_rek`, `atas_nama`, `id_bank`, `operator`) VALUES
(3, 'C20190803001', 'qerqerqwer', 1135000, 1100950, 3, 9000000, 7899050, 'qerqerqer', '2019-08-03', '02:01:12', 1, 0, '', NULL, 'admin'),
(4, 'C20190803003', 'wdsfsdgsfgf', 385000, 377300, 2, 45454545, 45077245, 'twertwetwet', '2019-08-03', '05:42:58', 1, 0, '', 0, 'admin'),
(5, 'C20190804004', 'wewewerwer', 250000, 242500, 3, 34343334, 34100834, 'asdsfasdfasdffa', '2019-08-04', '05:45:16', 1, 0, '', NULL, 'admin'),
(6, 'T20190901005', 'adwqrr', 505000, 489850, 3, 3000000, 2510150, 'asdfasdf', '2019-09-01', '19:38:54', 2, 2147483647, 'qrqerqr', 4, 'admin'),
(7, 'T20190810006', 'ljkjlkj', 1875000, 1762500, 6, 900000000, 898237500, 'hjkhkj', '2019-08-10', '23:55:13', 2, 2147483647, 'GHJHJGH', 3, 'admin'),
(8, 'C20191001007', 'qerqwer', 250000, 247500, 1, 900000, 652500, 'qqrqrqwerqer', '2019-10-01', '19:23:26', 1, 0, '', NULL, 'admin'),
(9, 'T20190813008', 'faklsdfjkaldf', 440000, 435600, 1, 9000000, 8564400, 'alsdjfkalsdjf', '2019-08-13', '17:54:04', 2, 90909090, 'QERPQOER', 2, 'admin'),
(10, 'T20190816009', 'kljkjlkjkj', 250000, 250000, 0, 40000, -210000, 'hghghghgh', '2019-08-16', '18:53:16', 2, 2147483647, 'icih', 3, 'admin'),
(11, 'T20190817010', 'sddasd', 565000, 548050, 3, 9000000, 8451950, 'asdfasdfasdf', '2019-08-17', '10:28:03', 2, 545645456, 'asdfasdfasdf', 3, 'admin'),
(12, 'C20220225011', 'Falah', 36000, 36000, 0, 50000, 14000, 'disana', '2022-02-25', '09:16:07', 1, 0, '', NULL, 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`) VALUES
(21, 'Makanan'),
(22, 'Minuman');

-- --------------------------------------------------------

--
-- Struktur dari tabel `operator`
--

CREATE TABLE `operator` (
  `id_operator` int(11) NOT NULL,
  `nama_operator` varchar(50) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(32) NOT NULL,
  `id_akses` int(3) NOT NULL,
  `last_login` date NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `operator`
--

INSERT INTO `operator` (`id_operator`, `nama_operator`, `username`, `password`, `id_akses`, `last_login`, `foto`) VALUES
(9, 'Cicih Fitria Ningsih', 'admin', '21232f297a57a5a743894a0e4a801fc3', 1, '2022-02-25', 'avatar3.png'),
(10, 'jeff', 'jeff', '166ee015c0e0934a8781e0c86a197c6e', 1, '0000-00-00', '13005384ce54754b3a763180f2a6c83e.png'),
(13, 'jefri', 'jefri', 'c710857e9b674843afc9b54b7ae2032d', 2, '2019-08-14', 'b0be2fdc90a3b7a0900a81ed8e466af5.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id_byr` int(2) NOT NULL,
  `metode` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pembayaran`
--

INSERT INTO `pembayaran` (`id_byr`, `metode`) VALUES
(1, 'Cash'),
(2, 'Transfer');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penjualan`
--

CREATE TABLE `penjualan` (
  `id_transaksi` int(11) NOT NULL,
  `id_dtlpen` int(5) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `jumlah_stok` int(11) NOT NULL,
  `harga_barang` bigint(20) NOT NULL,
  `sub_total` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `penjualan`
--

INSERT INTO `penjualan` (`id_transaksi`, `id_dtlpen`, `id_barang`, `jumlah_stok`, `harga_barang`, `sub_total`) VALUES
(18, 3, 60, 1, 130000, 130000),
(19, 3, 61, 1, 120000, 120000),
(20, 3, 62, 1, 135000, 135000),
(21, 3, 63, 1, 750000, 750000),
(22, 4, 61, 1, 120000, 120000),
(23, 4, 62, 1, 135000, 135000),
(24, 4, 60, 1, 130000, 130000),
(25, 5, 60, 1, 130000, 130000),
(26, 5, 61, 1, 120000, 120000),
(27, 6, 61, 2, 120000, 240000),
(28, 6, 60, 1, 130000, 130000),
(29, 6, 62, 1, 135000, 135000),
(30, 7, 60, 6, 130000, 780000),
(31, 7, 61, 1, 120000, 120000),
(32, 7, 62, 1, 135000, 135000),
(33, 7, 63, 1, 750000, 750000),
(34, 7, 66, 1, 90000, 90000),
(35, 8, 60, 1, 130000, 130000),
(36, 8, 61, 1, 120000, 120000),
(37, 9, 64, 1, 130000, 130000),
(38, 9, 65, 1, 125000, 125000),
(39, 9, 67, 1, 185000, 185000),
(40, 10, 60, 1, 130000, 130000),
(41, 10, 61, 1, 120000, 120000),
(42, 11, 60, 1, 130000, 130000),
(43, 11, 61, 1, 120000, 120000),
(44, 11, 62, 1, 135000, 135000),
(45, 11, 66, 1, 90000, 90000),
(46, 11, 72, 1, 90000, 90000),
(47, 12, 73, 3, 12000, 36000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `stok`
--

CREATE TABLE `stok` (
  `id_stok` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `stok_barang` int(11) NOT NULL,
  `tanggal_stok` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `stok`
--

INSERT INTO `stok` (`id_stok`, `id_barang`, `stok_barang`, `tanggal_stok`) VALUES
(56, 73, 7, '2022-02-25'),
(57, 74, 12, '2022-02-24'),
(58, 75, 10, '2022-02-25'),
(59, 76, 8, '2022-02-25'),
(60, 77, 15, '2022-02-25'),
(61, 78, 6, '2022-02-25');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `akses`
--
ALTER TABLE `akses`
  ADD PRIMARY KEY (`id_akses`);

--
-- Indeks untuk tabel `bank`
--
ALTER TABLE `bank`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indeks untuk tabel `detail_penjualan`
--
ALTER TABLE `detail_penjualan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `operator`
--
ALTER TABLE `operator`
  ADD PRIMARY KEY (`id_operator`);

--
-- Indeks untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id_byr`);

--
-- Indeks untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indeks untuk tabel `stok`
--
ALTER TABLE `stok`
  ADD PRIMARY KEY (`id_stok`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `akses`
--
ALTER TABLE `akses`
  MODIFY `id_akses` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `bank`
--
ALTER TABLE `bank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `barang`
--
ALTER TABLE `barang`
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT untuk tabel `detail_penjualan`
--
ALTER TABLE `detail_penjualan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `operator`
--
ALTER TABLE `operator`
  MODIFY `id_operator` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id_byr` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT untuk tabel `stok`
--
ALTER TABLE `stok`
  MODIFY `id_stok` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
