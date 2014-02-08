-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le: Sam 08 Février 2014 à 13:54
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
  PRIMARY KEY (`idDescription`),
  KEY `FK_DescriptionComplete_idPoint_Point` (`idPoint_Point`),
  KEY `FK_DescriptionComplete_idParcour_Parcours` (`idParcour_Parcours`),
  KEY `FK_DescriptionComplete_idNews_News` (`idNews_News`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Contenu de la table `descriptioncomplete`
--

INSERT INTO `descriptioncomplete` (`idDescription`, `htmlDescription`, `idPoint_Point`, `idParcour_Parcours`, `idNews_News`) VALUES
(1, '<p>Test voir si sa marche ou pas</p>', 2, NULL, NULL),
(2, '<p>Encore un test mais là c''est pour un parcours</p>', NULL, 1, NULL),
(3, '<p>Rencore un test mais pour un pts cette fois ...</p>', 3, NULL, NULL),
(4, '<p>Encore et toujours un test pour un point ...</p>', 4, NULL, NULL),
(5, '<p>News de test, on peut vraiment écrire de tout et n''importe quoi dans ce logiciel ...</p>', NULL, 1, NULL),
(6, '<p>Encore et toujours et toujours et toujours un test pour un point ...</p>', 5, NULL, NULL);

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
  `idDescription_DescriptionComplete` int(11) DEFAULT NULL,
  PRIMARY KEY (`idImage`),
  KEY `FK_Image_idDescription_DescriptionComplete` (`idDescription_DescriptionComplete`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Contenu de la table `image`
--

INSERT INTO `image` (`idImage`, `adresseImage`, `idDescription_DescriptionComplete`) VALUES
(1, '/java_project/jpg/Logo Fairy Tail.png', 1),
(2, '/java_project/jpg/logo_ffxiv.jpg', 1),
(3, '/java_project/jpg/Logo Fairy Tail.png', 3),
(4, '/java_project/jpg/logo_ffxiv.jpg', 3),
(5, '/java_project/jpg/Logo Fairy Tail.png', 4),
(6, '/java_project/jpg/logo_ffxiv.jpg', 4);

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

-- --------------------------------------------------------

--
-- Structure de la table `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `idNews` int(11) NOT NULL AUTO_INCREMENT,
  `libelleNews` varchar(255) DEFAULT NULL,
  `idDescription_DescriptionComplete` int(11) DEFAULT NULL,
  PRIMARY KEY (`idNews`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `news`
--

INSERT INTO `news` (`idNews`, `libelleNews`, `idDescription_DescriptionComplete`) VALUES
(1, 'News de test', 5);

-- --------------------------------------------------------

--
-- Structure de la table `parcours`
--

CREATE TABLE IF NOT EXISTS `parcours` (
  `idParcour` int(11) NOT NULL AUTO_INCREMENT,
  `libelleParcour` varchar(255) DEFAULT NULL,
  `theme` varchar(25255) DEFAULT NULL,
  `idDescription_DescriptionComplete` int(11) DEFAULT NULL,
  PRIMARY KEY (`idParcour`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `parcours`
--

INSERT INTO `parcours` (`idParcour`, `libelleParcour`, `theme`, `idDescription_DescriptionComplete`) VALUES
(1, 'parcourTest', 'test', 2),
(2, 'ParcoursTest2', 'Test2', 2);

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
  KEY `FK_Point_idPoint1` (`idPoint1`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Contenu de la table `point`
--

INSERT INTO `point` (`idPoint`, `libellePoint`, `xPoint`, `yPoint`, `zMinPoint`, `zMaxPoint`, `adresseImage`, `isLieu`, `idDescription_DescriptionComplete`, `idPoint1`) VALUES
(1, 'Origine', 0, 0, 0, 10, NULL, 1, NULL, NULL),
(2, 'Test1', 0, 0, 0, 10, '/jave_project/jpg/test_map.jpg', 1, NULL, 1),
(3, 'ptParcour1', 120, 50, 0, 10, NULL, 0, 3, 2),
(4, 'ptParcours2', 15, 301, 0, 10, NULL, 0, 4, 2),
(5, 'ptParcours3', 598, 354, 0, 10, NULL, 0, 5, 2);

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
  ADD CONSTRAINT `FK_DescriptionComplete_idNews_News` FOREIGN KEY (`idNews_News`) REFERENCES `news` (`idNews`),
  ADD CONSTRAINT `FK_DescriptionComplete_idParcour_Parcours` FOREIGN KEY (`idParcour_Parcours`) REFERENCES `parcours` (`idParcour`),
  ADD CONSTRAINT `FK_DescriptionComplete_idPoint_Point` FOREIGN KEY (`idPoint_Point`) REFERENCES `point` (`idPoint`);

--
-- Contraintes pour la table `historiqueparcours`
--
ALTER TABLE `historiqueparcours`
  ADD CONSTRAINT `FK_HistoriqueParcours_idHistorique_Historique` FOREIGN KEY (`idHistorique_Historique`) REFERENCES `historique` (`idHistorique`),
  ADD CONSTRAINT `FK_HistoriqueParcours_idParcour_Parcours` FOREIGN KEY (`idParcour_Parcours`) REFERENCES `parcours` (`idParcour`);

--
-- Contraintes pour la table `historiquepoint`
--
ALTER TABLE `historiquepoint`
  ADD CONSTRAINT `FK_HistoriquePoint_idHistorique_Historique` FOREIGN KEY (`idHistorique_Historique`) REFERENCES `historique` (`idHistorique`),
  ADD CONSTRAINT `FK_HistoriquePoint_idPoint_Point` FOREIGN KEY (`idPoint_Point`) REFERENCES `point` (`idPoint`);

--
-- Contraintes pour la table `image`
--
ALTER TABLE `image`
  ADD CONSTRAINT `FK_Image_idDescription_DescriptionComplete` FOREIGN KEY (`idDescription_DescriptionComplete`) REFERENCES `descriptioncomplete` (`idDescription`);

--
-- Contraintes pour la table `listepointparcours`
--
ALTER TABLE `listepointparcours`
  ADD CONSTRAINT `FK_ListePointParcours_idParcour_Parcours` FOREIGN KEY (`idParcour_Parcours`) REFERENCES `parcours` (`idParcour`),
  ADD CONSTRAINT `FK_ListePointParcours_idPoint_Point` FOREIGN KEY (`idPoint_Point`) REFERENCES `point` (`idPoint`);

--
-- Contraintes pour la table `point`
--
ALTER TABLE `point`
  ADD CONSTRAINT `FK_Point_idPoint1` FOREIGN KEY (`idPoint1`) REFERENCES `point` (`idPoint`);

--
-- Contraintes pour la table `referenceparcours`
--
ALTER TABLE `referenceparcours`
  ADD CONSTRAINT `FK_referenceParcours_idNews_News` FOREIGN KEY (`idNews_News`) REFERENCES `news` (`idNews`),
  ADD CONSTRAINT `FK_referenceParcours_idParcour_Parcours` FOREIGN KEY (`idParcour_Parcours`) REFERENCES `parcours` (`idParcour`);

--
-- Contraintes pour la table `referencepoint`
--
ALTER TABLE `referencepoint`
  ADD CONSTRAINT `FK_ReferencePoint_idNews_News` FOREIGN KEY (`idNews_News`) REFERENCES `news` (`idNews`),
  ADD CONSTRAINT `FK_ReferencePoint_idPoint_Point` FOREIGN KEY (`idPoint_Point`) REFERENCES `point` (`idPoint`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
