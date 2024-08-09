-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 09, 2024 at 06:15 AM
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
-- Database: `stock`
--

-- --------------------------------------------------------

--
-- Table structure for table `administrateurs`
--

CREATE TABLE `administrateurs` (
  `idAdmin` int(11) NOT NULL,
  `login` varchar(10) NOT NULL,
  `password` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `approvisionnement`
--

CREATE TABLE `approvisionnement` (
  `numeroAppro` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `idFournisseur` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `approvisionnement`
--

INSERT INTO `approvisionnement` (`numeroAppro`, `date`, `idFournisseur`) VALUES
(1, '2024-08-09 05:39:00', 0),
(2, '2024-08-09 05:46:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `categorie`
--

CREATE TABLE `categorie` (
  `idCategorie` varchar(10) NOT NULL,
  `nomCategorie` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categorie`
--

INSERT INTO `categorie` (`idCategorie`, `nomCategorie`) VALUES
('1', 'ecole');

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `idClient` int(11) NOT NULL,
  `nom` varchar(45) NOT NULL,
  `adresse` varchar(45) NOT NULL,
  `telephone` int(11) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`idClient`, `nom`, `adresse`, `telephone`, `email`) VALUES
(1, 'mouna ed-daoudi', 'tanger', 654325643, 'mouna.eddaoudi@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `commande`
--

CREATE TABLE `commande` (
  `numeroCmd` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `idClient` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `commande`
--

INSERT INTO `commande` (`numeroCmd`, `date`, `idClient`) VALUES
(1, '2024-08-09 05:38:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `detailapprovisionnement`
--

CREATE TABLE `detailapprovisionnement` (
  `numeroAppro` int(11) NOT NULL,
  `idProduit` int(11) NOT NULL,
  `quantite` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `detailcommande`
--

CREATE TABLE `detailcommande` (
  `numeroCmd` int(11) NOT NULL,
  `idProduit` int(11) NOT NULL,
  `quantite` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fournisseur`
--

CREATE TABLE `fournisseur` (
  `idFournisseur` int(11) NOT NULL,
  `nom` varchar(45) NOT NULL,
  `adresse` varchar(45) DEFAULT NULL,
  `telephone` varchar(15) DEFAULT NULL,
  `email` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fournisseur`
--

INSERT INTO `fournisseur` (`idFournisseur`, `nom`, `adresse`, `telephone`, `email`) VALUES
(0, 'laila ed-daoudi', 'tanger', '0654325643', 'salmai@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `ligneappro`
--

CREATE TABLE `ligneappro` (
  `numeroAppro` int(11) NOT NULL,
  `quantite` int(11) DEFAULT NULL,
  `reference` varchar(50) NOT NULL,
  `prixAchat` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ligneappro`
--

INSERT INTO `ligneappro` (`numeroAppro`, `quantite`, `reference`, `prixAchat`) VALUES
(2, 1, '2345', 0);

-- --------------------------------------------------------

--
-- Table structure for table `lignecmd`
--

CREATE TABLE `lignecmd` (
  `numeroCmd` int(11) NOT NULL,
  `quantite` int(11) DEFAULT NULL,
  `reference` varchar(50) NOT NULL,
  `prixVente` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lignecmd`
--

INSERT INTO `lignecmd` (`numeroCmd`, `quantite`, `reference`, `prixVente`) VALUES
(1, 1, '2345', 23);

-- --------------------------------------------------------

--
-- Table structure for table `produit`
--

CREATE TABLE `produit` (
  `reference` varchar(50) NOT NULL,
  `libelle` varchar(45) NOT NULL,
  `nom` varchar(45) NOT NULL,
  `prixUnitaire` decimal(10,2) NOT NULL,
  `quantiteStock` int(11) DEFAULT NULL,
  `prixAchat` decimal(10,2) NOT NULL,
  `image` varchar(60) NOT NULL,
  `idCategorie` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `produit`
--

INSERT INTO `produit` (`reference`, `libelle`, `nom`, `prixUnitaire`, `quantiteStock`, `prixAchat`, `image`, `idCategorie`) VALUES
('2345', 'livre', '', 23.00, 33, 34.00, 'livre.png', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `approvisionnement`
--
ALTER TABLE `approvisionnement`
  ADD PRIMARY KEY (`numeroAppro`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`idClient`);

--
-- Indexes for table `commande`
--
ALTER TABLE `commande`
  ADD PRIMARY KEY (`numeroCmd`);

--
-- Indexes for table `ligneappro`
--
ALTER TABLE `ligneappro`
  ADD PRIMARY KEY (`numeroAppro`,`reference`),
  ADD KEY `po_idx` (`reference`);

--
-- Indexes for table `lignecmd`
--
ALTER TABLE `lignecmd`
  ADD PRIMARY KEY (`numeroCmd`,`reference`),
  ADD KEY `fk3_idx` (`reference`);

--
-- Indexes for table `produit`
--
ALTER TABLE `produit`
  ADD PRIMARY KEY (`reference`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `approvisionnement`
--
ALTER TABLE `approvisionnement`
  MODIFY `numeroAppro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `idClient` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `commande`
--
ALTER TABLE `commande`
  MODIFY `numeroCmd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ligneappro`
--
ALTER TABLE `ligneappro`
  ADD CONSTRAINT `ap` FOREIGN KEY (`numeroAppro`) REFERENCES `approvisionnement` (`numeroAppro`),
  ADD CONSTRAINT `po` FOREIGN KEY (`reference`) REFERENCES `produit` (`reference`);

--
-- Constraints for table `lignecmd`
--
ALTER TABLE `lignecmd`
  ADD CONSTRAINT `fk2` FOREIGN KEY (`numeroCmd`) REFERENCES `commande` (`numeroCmd`),
  ADD CONSTRAINT `fk3` FOREIGN KEY (`reference`) REFERENCES `produit` (`reference`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
