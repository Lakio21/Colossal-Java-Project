-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le: Sam 08 Février 2014 à 13:22
-- Version du serveur: 5.6.12-log
-- Version de PHP: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `bddop`
--

-- --------------------------------------------------------

--
-- Structure de la table `historiquepoint`
--

CREATE TABLE IF NOT EXISTS `historiquepoint` (
  `idPoint_Point` int(11) NOT NULL,
  `idHistorique_Historique` int(11) NOT NULL,
  PRIMARY KEY (`idPoint_Point`,`idHistorique_Historique`),
  KEY `FK_HistoriquePoint_idHistorique_Historique` (`idHistorique_Historique`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `historiquepoint`
--
ALTER TABLE `historiquepoint`
  ADD CONSTRAINT `FK_HistoriquePoint_idHistorique_Historique` FOREIGN KEY (`idHistorique_Historique`) REFERENCES `historique` (`idHistorique`),
  ADD CONSTRAINT `FK_HistoriquePoint_idPoint_Point` FOREIGN KEY (`idPoint_Point`) REFERENCES `point` (`idPoint`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
