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

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
