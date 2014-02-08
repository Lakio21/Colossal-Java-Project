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

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `image`
--
ALTER TABLE `image`
  ADD CONSTRAINT `FK_Image_idDescription_DescriptionComplete` FOREIGN KEY (`idDescription_DescriptionComplete`) REFERENCES `descriptioncomplete` (`idDescription`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
