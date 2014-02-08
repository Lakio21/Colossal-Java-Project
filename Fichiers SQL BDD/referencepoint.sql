-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le: Sam 08 Février 2014 à 13:24
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
-- Contraintes pour la table `referencepoint`
--
ALTER TABLE `referencepoint`
  ADD CONSTRAINT `FK_ReferencePoint_idNews_News` FOREIGN KEY (`idNews_News`) REFERENCES `news` (`idNews`),
  ADD CONSTRAINT `FK_ReferencePoint_idPoint_Point` FOREIGN KEY (`idPoint_Point`) REFERENCES `point` (`idPoint`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
