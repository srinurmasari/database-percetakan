-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 25, 2025 at 12:12 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `percetakan_`
--

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `no_hp` varchar(15) DEFAULT NULL,
  `alamat` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `nama`, `no_hp`, `alamat`) VALUES
(1, 'Nesi', '081234567890', 'Jl. Mawar No. 1'),
(2, 'Bagas', '081122334455', 'Jl. Melati No. 2'),
(3, 'Siska', '082233445566', 'Jl. Anggrek No. 3'),
(4, 'Sari', '081256081637', 'jl. gunung pangilun');

-- --------------------------------------------------------

--
-- Table structure for table `poster`
--

CREATE TABLE `poster` (
  `id_poster` int(11) NOT NULL,
  `ukuran` varchar(20) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `poster`
--

INSERT INTO `poster` (`id_poster`, `ukuran`, `harga`) VALUES
(1, 'A0', 20000),
(2, 'A2', 15000),
(3, 'A3', 10000);

-- --------------------------------------------------------

--
-- Table structure for table `spanduk`
--

CREATE TABLE `spanduk` (
  `id_spanduk` int(11) NOT NULL,
  `jenis` varchar(50) DEFAULT NULL,
  `ukuran` varchar(20) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `spanduk`
--

INSERT INTO `spanduk` (`id_spanduk`, `jenis`, `ukuran`, `harga`) VALUES
(1, 'Flexi 280 gr', '60x160', 20000),
(2, 'Flexi 280 gr', '3x4', 240000),
(3, 'Blackout 340 gr', '2x3', 240000),
(4, 'Blackout 340 gr', '5x6', 1200000);

-- --------------------------------------------------------

--
-- Table structure for table `stiker`
--

CREATE TABLE `stiker` (
  `id_stiker` int(11) NOT NULL,
  `jenis` varchar(50) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stiker`
--

INSERT INTO `stiker` (`id_stiker`, `jenis`, `harga`) VALUES
(1, 'Stiker China', 65000),
(2, 'Magitac', 80000),
(3, 'Stiker Comel', 85000),
(4, 'Stiker Transparant', 55000);

-- --------------------------------------------------------

--
-- Table structure for table `transaksi_poster`
--

CREATE TABLE `transaksi_poster` (
  `id_transaksi` int(11) NOT NULL,
  `id_pelanggan` int(11) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `id_poster` int(11) DEFAULT NULL,
  `jumlah_pesanan` int(11) DEFAULT NULL,
  `total_harga` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaksi_poster`
--

INSERT INTO `transaksi_poster` (`id_transaksi`, `id_pelanggan`, `tanggal`, `id_poster`, `jumlah_pesanan`, `total_harga`) VALUES
(1, 1, '2025-05-26', 1, 1, 20000),
(2, 3, '2025-06-05', 3, 5, 50000),
(3, 4, '2025-06-24', 1, 1, 20000);

-- --------------------------------------------------------

--
-- Table structure for table `transaksi_spanduk`
--

CREATE TABLE `transaksi_spanduk` (
  `id_transaksi` int(11) NOT NULL,
  `id_pelanggan` int(11) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `id_spanduk` int(11) DEFAULT NULL,
  `jumlah_pesanan` int(11) DEFAULT NULL,
  `total_harga` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaksi_spanduk`
--

INSERT INTO `transaksi_spanduk` (`id_transaksi`, `id_pelanggan`, `tanggal`, `id_spanduk`, `jumlah_pesanan`, `total_harga`) VALUES
(1, 1, '2025-05-26', 1, 1, 192000),
(2, 2, '2025-06-01', 3, 1, 240000),
(3, 3, '2025-06-05', 4, 1, 1200000),
(4, 4, '2025-06-24', 3, 3, 720000);

-- --------------------------------------------------------

--
-- Table structure for table `transaksi_stiker`
--

CREATE TABLE `transaksi_stiker` (
  `id_transaksi` int(11) NOT NULL,
  `id_pelanggan` int(11) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `id_stiker` int(11) DEFAULT NULL,
  `jumlah_pesanan` int(11) DEFAULT NULL,
  `total_harga` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaksi_stiker`
--

INSERT INTO `transaksi_stiker` (`id_transaksi`, `id_pelanggan`, `tanggal`, `id_stiker`, `jumlah_pesanan`, `total_harga`) VALUES
(1, 1, '2025-05-26', 1, 1, 65000),
(2, 2, '2025-06-01', 3, 2, 170000),
(3, 4, '2025-06-24', 1, 1, 65000),
(5, 3, '2025-06-25', 3, 1, 85000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `poster`
--
ALTER TABLE `poster`
  ADD PRIMARY KEY (`id_poster`);

--
-- Indexes for table `spanduk`
--
ALTER TABLE `spanduk`
  ADD PRIMARY KEY (`id_spanduk`);

--
-- Indexes for table `stiker`
--
ALTER TABLE `stiker`
  ADD PRIMARY KEY (`id_stiker`);

--
-- Indexes for table `transaksi_poster`
--
ALTER TABLE `transaksi_poster`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `id_pelanggan` (`id_pelanggan`),
  ADD KEY `id_poster` (`id_poster`);

--
-- Indexes for table `transaksi_spanduk`
--
ALTER TABLE `transaksi_spanduk`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `id_pelanggan` (`id_pelanggan`),
  ADD KEY `id_spanduk` (`id_spanduk`);

--
-- Indexes for table `transaksi_stiker`
--
ALTER TABLE `transaksi_stiker`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `id_pelanggan` (`id_pelanggan`),
  ADD KEY `id_stiker` (`id_stiker`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `poster`
--
ALTER TABLE `poster`
  MODIFY `id_poster` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `spanduk`
--
ALTER TABLE `spanduk`
  MODIFY `id_spanduk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `stiker`
--
ALTER TABLE `stiker`
  MODIFY `id_stiker` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `transaksi_poster`
--
ALTER TABLE `transaksi_poster`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `transaksi_spanduk`
--
ALTER TABLE `transaksi_spanduk`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `transaksi_stiker`
--
ALTER TABLE `transaksi_stiker`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `transaksi_poster`
--
ALTER TABLE `transaksi_poster`
  ADD CONSTRAINT `transaksi_poster_ibfk_1` FOREIGN KEY (`id_pelanggan`) REFERENCES `pelanggan` (`id_pelanggan`),
  ADD CONSTRAINT `transaksi_poster_ibfk_2` FOREIGN KEY (`id_poster`) REFERENCES `poster` (`id_poster`);

--
-- Constraints for table `transaksi_spanduk`
--
ALTER TABLE `transaksi_spanduk`
  ADD CONSTRAINT `transaksi_spanduk_ibfk_1` FOREIGN KEY (`id_pelanggan`) REFERENCES `pelanggan` (`id_pelanggan`),
  ADD CONSTRAINT `transaksi_spanduk_ibfk_2` FOREIGN KEY (`id_spanduk`) REFERENCES `spanduk` (`id_spanduk`);

--
-- Constraints for table `transaksi_stiker`
--
ALTER TABLE `transaksi_stiker`
  ADD CONSTRAINT `transaksi_stiker_ibfk_1` FOREIGN KEY (`id_pelanggan`) REFERENCES `pelanggan` (`id_pelanggan`),
  ADD CONSTRAINT `transaksi_stiker_ibfk_2` FOREIGN KEY (`id_stiker`) REFERENCES `stiker` (`id_stiker`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
