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
-- Structure de la table `historiqueparcours`
--

CREATE TABLE IF NOT EXISTS `historiqueparcours` (
  `idHistorique_Historique` int(11) NOT NULL,
  `idParcour_Parcours` int(11) NOT NULL,
  PRIMARY KEY (`idHistorique_Historique`,`idParcour_Parcours`),
  KEY `FK_HistoriqueParcours_idParcour_Parcours` (`idParcour_Parcours`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `historiqueparcours`
--
ALTER TABLE `historiqueparcours`
  ADD CONSTRAINT `FK_HistoriqueParcours_idHistorique_Historique` FOREIGN KEY (`idHistorique_Historique`) REFERENCES `historique` (`idHistorique`),
  ADD CONSTRAINT `FK_HistoriqueParcours_idParcour_Parcours` FOREIGN KEY (`idParcour_Parcours`) REFERENCES `parcours` (`idParcour`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
