-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le: Sam 08 Février 2014 à 13:23
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
-- Structure de la table `listepointparcours`
--

CREATE TABLE IF NOT EXISTS `listepointparcours` (
  `numeroPOI` int(11) DEFAULT NULL,
  `idParcour_Parcours` int(11) NOT NULL,
  `idPoint_Point` int(11) NOT NULL,
  PRIMARY KEY (`idParcour_Parcours`,`idPoint_Point`),
  KEY `FK_ListePointParcours_idPoint_Point` (`idPoint_Point`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `listepointparcours`
--

INSERT INTO `listepointparcours` (`numeroPOI`, `idParcour_Parcours`, `idPoint_Point`) VALUES
(NULL, 1, 3),
(NULL, 1, 4),
(NULL, 2, 4),
(NULL, 2, 5);

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `listepointparcours`
--
ALTER TABLE `listepointparcours`
  ADD CONSTRAINT `FK_ListePointParcours_idParcour_Parcours` FOREIGN KEY (`idParcour_Parcours`) REFERENCES `parcours` (`idParcour`),
  ADD CONSTRAINT `FK_ListePointParcours_idPoint_Point` FOREIGN KEY (`idPoint_Point`) REFERENCES `point` (`idPoint`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
