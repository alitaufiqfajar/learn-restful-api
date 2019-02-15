-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 15 Feb 2019 pada 09.24
-- Versi server: 10.1.37-MariaDB
-- Versi PHP: 5.6.39

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_learn_api`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `book`
--

CREATE TABLE `book` (
  `id` int(11) NOT NULL,
  `isbn` varchar(50) NOT NULL,
  `name` varchar(255) NOT NULL,
  `year` varchar(4) NOT NULL,
  `author` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `book`
--

INSERT INTO `book` (`id`, `isbn`, `name`, `year`, `author`, `description`, `image`, `createdAt`, `updatedAt`) VALUES
(2, '9781787121799', 'Practical Game Design', '2018', 'Adam Kramarzewski, Ennio De Nucci', 'Design accessible and creative games across genres, platforms, and development realities', 'B06082.png', '0000-00-00 00:00:00', '2018-04-22 13:57:30'),
(3, '9781788293631', 'Learn Node.js by Building 6 Projects', '2018', 'Eduonix Learning Solutions', 'This is an advanced, practical guide to harnessing the power of Node.js by creating 6 full-scale real-world projects, from creating a chat application to an eLearning system.', 'B07858_cover.png', '2018-04-22 13:57:14', '2018-04-22 13:57:14'),
(17, '9781785283109', 'Multiplayer Game Development with HTML5', '2015', 'Rodrigo Silveira', 'Build fully-featured, highly interactive multiplayer games with HTML5', '3109OS_Multiplayer Game Development with HTML5.jpg', '2018-04-23 18:46:36', '2018-04-23 18:46:36'),
(18, '9781788299954', 'Integrating Twitter and Facebook into Your iOS Apps', '2018', 'Nick Walter', 'Learn how to integrate Twitter and Facebook APIs into iOS apps', 'V07323_low.png', '2018-04-23 18:47:04', '2018-04-23 18:47:04'),
(19, '123', 'buku tes', '2019', 'hardiansyah', 'buku tes learn api', '123', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `person`
--

CREATE TABLE `person` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL DEFAULT '0',
  `last_name` varchar(50) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `person`
--

INSERT INTO `person` (`id`, `first_name`, `last_name`) VALUES
(1, 'hardiansyah', 'hardiansyah'),
(2, 'tes', 'tes'),
(3, 'tes 2', 'tes 2'),
(4, 'ea', 'ea'),
(9, 'tes3', 'tes3');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `book`
--
ALTER TABLE `book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `person`
--
ALTER TABLE `person`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
