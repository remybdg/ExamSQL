-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mer. 13 nov. 2019 à 11:24
-- Version du serveur :  5.7.24
-- Version de PHP :  7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `latrines`
--

-- --------------------------------------------------------

--
-- Structure de la table `datalat`
--

DROP TABLE IF EXISTS `datalat`;
CREATE TABLE IF NOT EXISTS `datalat` (
  `idDat` int(3) UNSIGNED NOT NULL AUTO_INCREMENT,
  `idSte` int(3) UNSIGNED NOT NULL,
  `idEnv` int(3) UNSIGNED NOT NULL,
  `pitTyp` int(4) UNSIGNED DEFAULT NULL,
  `watTyp` int(4) UNSIGNED DEFAULT NULL,
  `othTyp` int(4) UNSIGNED DEFAULT NULL,
  `noTyp` int(4) UNSIGNED DEFAULT NULL,
  `mudSol` int(4) UNSIGNED DEFAULT NULL,
  `wodSol` int(4) UNSIGNED DEFAULT NULL,
  `brkSol` int(4) UNSIGNED DEFAULT NULL,
  `stnSol` int(4) UNSIGNED DEFAULT NULL,
  `cmtSol` int(4) UNSIGNED DEFAULT NULL,
  `mscSol` int(4) UNSIGNED DEFAULT NULL,
  `othSol` int(4) UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`idDat`),
  KEY `idSte` (`idSte`),
  KEY `idEnv` (`idEnv`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `environnements`
--

DROP TABLE IF EXISTS `environnements`;
CREATE TABLE IF NOT EXISTS `environnements` (
  `idEnv` int(3) UNSIGNED NOT NULL AUTO_INCREMENT,
  `envLib` varchar(128) NOT NULL,
  PRIMARY KEY (`idEnv`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `states`
--

DROP TABLE IF EXISTS `states`;
CREATE TABLE IF NOT EXISTS `states` (
  `idSte` int(3) UNSIGNED NOT NULL AUTO_INCREMENT,
  `steNom` varchar(128) NOT NULL,
  PRIMARY KEY (`idSte`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
