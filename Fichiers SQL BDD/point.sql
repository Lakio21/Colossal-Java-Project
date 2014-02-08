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

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `point`
--
ALTER TABLE `point`
  ADD CONSTRAINT `FK_Point_idPoint1` FOREIGN KEY (`idPoint1`) REFERENCES `point` (`idPoint`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
