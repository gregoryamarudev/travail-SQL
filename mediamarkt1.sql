-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : ven. 30 oct. 2026 à 12:11
-- Version du serveur : 8.4.7
-- Version de PHP : 8.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `mediamarkt1`
--

-- --------------------------------------------------------

--
-- Structure de la table `smartphones`
--

DROP TABLE IF EXISTS `smartphones`;
CREATE TABLE IF NOT EXISTS `smartphones` (
  ` id_nomdelatable` int NOT NULL AUTO_INCREMENT,
  `nom_de_Smartphone` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `marque_de_Smartphone` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Date_de_sortie` date NOT NULL,
  PRIMARY KEY (` id_nomdelatable`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `smartphones`
--

INSERT INTO `smartphones` (` id_nomdelatable`, `nom_de_Smartphone`, `marque_de_Smartphone`, `Date_de_sortie`) VALUES
(1, 'iPhone 15', 'Apple', '2023-09-22'),
(2, 'Galaxy S24', 'Samsung', '2024-01-31'),
(3, 'Pixel 8', 'Google', '2023-10-12');

-- --------------------------------------------------------

--
-- Structure de la table `tvs`
--

DROP TABLE IF EXISTS `tvs`;
CREATE TABLE IF NOT EXISTS `tvs` (
  ` id_nomdelatable` int NOT NULL AUTO_INCREMENT,
  `nom_de_Tv` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Marque_de_Tv` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `taille` float NOT NULL,
  PRIMARY KEY (` id_nomdelatable`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `tvs`
--

INSERT INTO `tvs` (` id_nomdelatable`, `nom_de_Tv`, `Marque_de_Tv`, `taille`) VALUES
(1, 'QN85D', 'Samsung', 55),
(2, 'Bravia 7', 'Sony', 65),
(3, 'OLED65B4', 'LG', 65);

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurs`
--

DROP TABLE IF EXISTS `utilisateurs`;
CREATE TABLE IF NOT EXISTS `utilisateurs` (
  ` id_nomdelatable` int NOT NULL AUTO_INCREMENT,
  `Nom` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `Prénom` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `Age` int NOT NULL,
  `date_de_naissance` date NOT NULL,
  `Adresse` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `Email` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (` id_nomdelatable`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `utilisateurs`
--

INSERT INTO `utilisateurs` (` id_nomdelatable`, `Nom`, `Prénom`, `Age`, `date_de_naissance`, `Adresse`, `Email`) VALUES
(1, 'Joestar', 'Jonathan', 60, '1945-12-22', '86 Rue du Ramon, Bruxelles', 'jonathan-joestar@gmail.com'),
(2, 'Joestar', 'Joseph', 45, '1985-06-25', '74 avenue Ho non, Barcelone', 'Joesph-jojo@hotmail.com'),
(3, 'Joestar', 'Jotaro', 25, '2001-10-04', '256 rue du Stand, New York', 'Jotaro-jolyne@gmail.com');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
