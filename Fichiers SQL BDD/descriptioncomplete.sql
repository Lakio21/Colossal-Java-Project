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

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
