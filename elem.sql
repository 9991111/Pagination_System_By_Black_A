-- phpMyAdmin SQL Dump
-- version 4.1.4
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Jeu 16 Avril 2020 à 18:19
-- Version du serveur :  5.6.15-log
-- Version de PHP :  5.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `bd_reunion`
--

-- --------------------------------------------------------

--
-- Structure de la table `elem`
--

CREATE TABLE IF NOT EXISTS `elem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `UV` int(36) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

--
-- Contenu de la table `elem`
--

INSERT INTO `elem` (`id`, `name`, `UV`) VALUES
(1, 'John Doe', 25),
(2, 'Charleston', 32),
(3, 'Armel Franck', 202),
(4, 'Richi harper', 12),
(5, 'Nemro Albert', 202),
(6, 'Tagni jospin', 525),
(7, 'Alex bollo', 21),
(8, 'leonnel Richi', 45),
(9, 'Hala Madrid', 54),
(10, 'Jose le pro', 12),
(11, 'Halan Gangs', 21),
(12, 'Bobo Junior', 56),
(13, 'Root Armel', 52),
(14, 'Heinse Ford', 52),
(15, 'Alberto Camus', 0),
(16, 'thomas edison', 56),
(17, 'bill gates', 1000),
(18, 'nonono momomo', 45),
(19, 'Teene evrad', 2020),
(20, 'Lwis hamilthon', 45),
(21, 'Zomo le pro', 212),
(22, 'toibaa Curtis', 54),
(23, 'Bobo Junior lidoqsq', 45),
(24, 'Root Armel021', 121),
(25, 'Heinse Fordsdqd', 223);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
