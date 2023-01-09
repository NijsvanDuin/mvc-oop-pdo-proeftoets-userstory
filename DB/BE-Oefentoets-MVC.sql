-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Gegenereerd op: 09 jan 2023 om 08:24
-- Serverversie: 5.7.31
-- PHP-versie: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `BE-Oefentoets-MVC`
--
CREATE DATABASE IF NOT EXISTS `BE-Oefentoets-MVC` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `BE-Oefentoets-MVC`;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `Auto`
--

DROP TABLE IF EXISTS `Auto`;
CREATE TABLE IF NOT EXISTS `Auto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Kenteken` varchar(10) NOT NULL,
  `Type` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `Auto`
--

INSERT INTO `Auto` (`id`, `Kenteken`, `Type`) VALUES
(1, 'AU-67-IO', 'Golf'),
(2, 'TH-78-KL', 'Ferrari'),
(3, '90-KL-TR ', 'Fiat 500'),
(4, 'YY-OP-78', 'Mercedes');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `Kilometerstand`
--

DROP TABLE IF EXISTS `Kilometerstand`;
CREATE TABLE IF NOT EXISTS `Kilometerstand` (
  `AutoId` int(11) NOT NULL,
  `Datum` datetime NOT NULL,
  `KmStand` int(11) NOT NULL,
  KEY `AutoId` (`AutoId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `Kilometerstand`
--

INSERT INTO `Kilometerstand` (`AutoId`, `Datum`, `KmStand`) VALUES
(3, '2023-01-09 07:57:33', 70788),
(3, '2022-12-12 10:53:01', 123234);

--
-- Beperkingen voor geëxporteerde tabellen
--

--
-- Beperkingen voor tabel `Kilometerstand`
--
ALTER TABLE `Kilometerstand`
  ADD CONSTRAINT `AutoId` FOREIGN KEY (`AutoId`) REFERENCES `Auto` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
