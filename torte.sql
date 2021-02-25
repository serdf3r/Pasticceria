-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Creato il: Feb 25, 2021 alle 11:46
-- Versione del server: 10.4.14-MariaDB
-- Versione PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `torte`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `CakeDetails`
--

CREATE TABLE `CakeDetails` (
  `Id` int(11) NOT NULL,
  `Cake_Id` int(11) NOT NULL,
  `Type_Id` int(11) NOT NULL,
  `Description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struttura della tabella `Cakes`
--

CREATE TABLE `Cakes` (
  `Id` int(11) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Insert_Date` date NOT NULL,
  `Chef` int(11) NOT NULL,
  `Price` int(11) NOT NULL,
  `Description` text NOT NULL,
  `Ingredients` text NOT NULL,
  `Picture` varchar(50) NOT NULL,
  `Sale` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `Cakes`
--

INSERT INTO `Cakes` (`Id`, `Name`, `Insert_Date`, `Chef`, `Price`, `Description`, `Ingredients`, `Picture`, `Sale`, `Quantity`) VALUES
(20, 'Alle Fragole', '2021-02-22', 1, 22, 'Una bella torta alle Fragole piena di fragole', 'Fragole\r\nZucchero', '20_img_cake.jpeg', 1, 2),
(21, 'Alla Cioccolata', '2021-02-23', 1, 13, 'Una bella torta alla cioccolata', 'Cioccoalata\r\nBiscotti', '21_img_cake.jpeg', 1, 4),
(22, 'Torta di mele', '2021-02-24', 1, 100, 'Una buona torta di mele', 'Mele 4\r\nZucchero 30g', '22_img_cake.jpeg', 1, 0),
(23, 'Torta Della Nonna', '2021-02-03', 1, 444, '30 g', '30 grammi di nonna ', '23_img_cake.jpeg', 1, 0),
(24, 'Torta frutta', '2021-02-26', 1, 33, 'desc desc desc ', 'ing ing ing ', '24_img_cake.jpeg', 0, 0),
(27, 'Torta banana', '2021-02-24', 1, 3, 'desc desc', 'ing ing ing ', '', 0, 0),
(28, 'Ciambellone', '2021-02-16', 1, 3, 'Ciambellone buono', 'zucchero sale ', '', 0, 0),
(29, 'Alle Fragole 2', '2021-02-25', 1, 33, '', '', '29_img_cake.jpeg', 1, 4);

-- --------------------------------------------------------

--
-- Struttura della tabella `Users`
--

CREATE TABLE `Users` (
  `Id` int(1) NOT NULL,
  `Username` varchar(30) DEFAULT NULL,
  `pwd` varchar(40) DEFAULT NULL,
  `Name` varchar(5) DEFAULT NULL,
  `CreationDate` datetime NOT NULL DEFAULT current_timestamp(),
  `LastLoginDate` datetime DEFAULT NULL,
  `IsAdmin` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `Users`
--

INSERT INTO `Users` (`Id`, `Username`, `pwd`, `Name`, `CreationDate`, `LastLoginDate`, `IsAdmin`) VALUES
(1, 'Luana@luana.it', 'Luanapass', 'Luana', '2021-02-19 17:57:32', NULL, 1),
(2, 'Maria@maria.it', 'Mariapass', 'Maria', '2021-02-19 17:58:00', NULL, 0);

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `CakeDetails`
--
ALTER TABLE `CakeDetails`
  ADD PRIMARY KEY (`Id`);

--
-- Indici per le tabelle `Cakes`
--
ALTER TABLE `Cakes`
  ADD PRIMARY KEY (`Id`);

--
-- Indici per le tabelle `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `CakeDetails`
--
ALTER TABLE `CakeDetails`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `Cakes`
--
ALTER TABLE `Cakes`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT per la tabella `Users`
--
ALTER TABLE `Users`
  MODIFY `Id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
