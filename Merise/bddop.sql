-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le: Jeu 06 Février 2014 à 21:03
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
CREATE DATABASE IF NOT EXISTS `bddop` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `bddop`;

-- --------------------------------------------------------

--
-- Structure de la table `descriptioncomplete`
--

CREATE TABLE IF NOT EXISTS `descriptioncomplete` (
  `idDescription` int(11) NOT NULL AUTO_INCREMENT,
  `htmlDescription` varchar(1500) DEFAULT NULL,
  `idPoint_Point` int(11) DEFAULT NULL,
  `idParcour_Parcours` int(11) DEFAULT NULL,
  `idNews_News` int(11) DEFAULT NULL,
  `idImage_Image` int(11) DEFAULT NULL,
  PRIMARY KEY (`idDescription`),
  KEY `FK_DescriptionComplete_idImage_Image` (`idImage_Image`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `historique`
--

CREATE TABLE IF NOT EXISTS `historique` (
  `idHistorique` int(11) NOT NULL AUTO_INCREMENT,
  `dateAjout` date DEFAULT NULL,
  PRIMARY KEY (`idHistorique`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

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

-- --------------------------------------------------------

--
-- Structure de la table `image`
--

CREATE TABLE IF NOT EXISTS `image` (
  `idImage` int(11) NOT NULL AUTO_INCREMENT,
  `adresseImage` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idImage`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

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

-- --------------------------------------------------------

--
-- Structure de la table `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `idNews` int(11) NOT NULL AUTO_INCREMENT,
  `libelleNews` varchar(255) DEFAULT NULL,
  `idDescription_DescriptionComplete` int(11) DEFAULT NULL,
  PRIMARY KEY (`idNews`),
  KEY `FK_News_idDescription_DescriptionComplete` (`idDescription_DescriptionComplete`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `parcours`
--

CREATE TABLE IF NOT EXISTS `parcours` (
  `idParcour` int(11) NOT NULL AUTO_INCREMENT,
  `libelleParcour` varchar(255) DEFAULT NULL,
  `theme` varchar(25255) DEFAULT NULL,
  `idDescription_DescriptionComplete` int(11) DEFAULT NULL,
  PRIMARY KEY (`idParcour`),
  KEY `FK_Parcours_idDescription_DescriptionComplete` (`idDescription_DescriptionComplete`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `point`
--

CREATE TABLE IF NOT EXISTS `point` (
  `idPoint` int(11) NOT NULL AUTO_INCREMENT,
  `libellePoint` varchar(25) DEFAULT NULL,
  `xPoint` float DEFAULT NULL,
  `yPoint` float DEFAULT NULL,
  `zMinPoint` int(11) DEFAULT NULL,
  `zMaxPoint` int(11) DEFAULT NULL,
  `adresseImage` varchar(255) DEFAULT NULL,
  `isLieu` tinyint(1) DEFAULT NULL,
  `idDescription_DescriptionComplete` int(11) DEFAULT NULL,
  `idPoint1` int(11) DEFAULT NULL,
  PRIMARY KEY (`idPoint`),
  KEY `FK_Point_idDescription_DescriptionComplete` (`idDescription_DescriptionComplete`),
  KEY `FK_Point_idPoint1` (`idPoint1`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `referenceparcours`
--

CREATE TABLE IF NOT EXISTS `referenceparcours` (
  `idNews_News` int(11) NOT NULL,
  `idParcour_Parcours` int(11) NOT NULL,
  PRIMARY KEY (`idNews_News`,`idParcour_Parcours`),
  KEY `FK_referenceParcours_idParcour_Parcours` (`idParcour_Parcours`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `referencepoint`
--

CREATE TABLE IF NOT EXISTS `referencepoint` (
  `idNews_News` int(11) NOT NULL,
  `idPoint_Point` int(11) NOT NULL,
  PRIMARY KEY (`idNews_News`,`idPoint_Point`),
  KEY `FK_ReferencePoint_idPoint_Point` (`idPoint_Point`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `descriptioncomplete`
--
ALTER TABLE `descriptioncomplete`
  ADD CONSTRAINT `FK_DescriptionComplete_idImage_Image` FOREIGN KEY (`idImage_Image`) REFERENCES `image` (`idImage`);

--
-- Contraintes pour la table `historiqueparcours`
--
ALTER TABLE `historiqueparcours`
  ADD CONSTRAINT `FK_HistoriqueParcours_idParcour_Parcours` FOREIGN KEY (`idParcour_Parcours`) REFERENCES `parcours` (`idParcour`),
  ADD CONSTRAINT `FK_HistoriqueParcours_idHistorique_Historique` FOREIGN KEY (`idHistorique_Historique`) REFERENCES `historique` (`idHistorique`);

--
-- Contraintes pour la table `historiquepoint`
--
ALTER TABLE `historiquepoint`
  ADD CONSTRAINT `FK_HistoriquePoint_idHistorique_Historique` FOREIGN KEY (`idHistorique_Historique`) REFERENCES `historique` (`idHistorique`),
  ADD CONSTRAINT `FK_HistoriquePoint_idPoint_Point` FOREIGN KEY (`idPoint_Point`) REFERENCES `point` (`idPoint`);

--
-- Contraintes pour la table `listepointparcours`
--
ALTER TABLE `listepointparcours`
  ADD CONSTRAINT `FK_ListePointParcours_idPoint_Point` FOREIGN KEY (`idPoint_Point`) REFERENCES `point` (`idPoint`),
  ADD CONSTRAINT `FK_ListePointParcours_idParcour_Parcours` FOREIGN KEY (`idParcour_Parcours`) REFERENCES `parcours` (`idParcour`);

--
-- Contraintes pour la table `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `FK_News_idDescription_DescriptionComplete` FOREIGN KEY (`idDescription_DescriptionComplete`) REFERENCES `descriptioncomplete` (`idDescription`);

--
-- Contraintes pour la table `parcours`
--
ALTER TABLE `parcours`
  ADD CONSTRAINT `FK_Parcours_idDescription_DescriptionComplete` FOREIGN KEY (`idDescription_DescriptionComplete`) REFERENCES `descriptioncomplete` (`idDescription`);

--
-- Contraintes pour la table `point`
--
ALTER TABLE `point`
  ADD CONSTRAINT `FK_Point_idPoint1` FOREIGN KEY (`idPoint1`) REFERENCES `point` (`idPoint`),
  ADD CONSTRAINT `FK_Point_idDescription_DescriptionComplete` FOREIGN KEY (`idDescription_DescriptionComplete`) REFERENCES `descriptioncomplete` (`idDescription`);

--
-- Contraintes pour la table `referenceparcours`
--
ALTER TABLE `referenceparcours`
  ADD CONSTRAINT `FK_referenceParcours_idParcour_Parcours` FOREIGN KEY (`idParcour_Parcours`) REFERENCES `parcours` (`idParcour`),
  ADD CONSTRAINT `FK_referenceParcours_idNews_News` FOREIGN KEY (`idNews_News`) REFERENCES `news` (`idNews`);

--
-- Contraintes pour la table `referencepoint`
--
ALTER TABLE `referencepoint`
  ADD CONSTRAINT `FK_ReferencePoint_idPoint_Point` FOREIGN KEY (`idPoint_Point`) REFERENCES `point` (`idPoint`),
  ADD CONSTRAINT `FK_ReferencePoint_idNews_News` FOREIGN KEY (`idNews_News`) REFERENCES `news` (`idNews`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
