-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Client :  localhost:3306
-- Généré le :  Ven 13 Décembre 2019 à 01:17
-- Version du serveur :  5.7.28-0ubuntu0.18.04.4
-- Version de PHP :  7.2.24-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `abeille`
--

-- --------------------------------------------------------

--
-- Structure de la table `plante`
--

CREATE TABLE `plante` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `nom_latin` varchar(255) NOT NULL,
  `taille` float NOT NULL,
  `couleur` varchar(255) NOT NULL,
  `floraison` varchar(255) NOT NULL,
  `emplacement` varchar(255) NOT NULL,
  `miellat` tinyint(1) NOT NULL,
  `nectar` int(11) NOT NULL,
  `pollen` int(11) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `plante`
--

INSERT INTO `plante` (`id`, `nom`, `nom_latin`, `taille`, `couleur`, `floraison`, `emplacement`, `miellat`, `nectar`, `pollen`, `photo`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'érable champêtre', 'Acer campestris', 15, 'vert clair', 'avril, mai', 'collection historique', 1, 3, 2, '', '2019-12-12 23:14:42', '2019-12-12 23:14:42', NULL),
(2, 'érable sycomore', 'Acer pseudoplatanus', 25, 'jaunâtre', 'mai', 'forêt', 0, 2, 2, '', '2019-12-12 23:50:23', '2019-12-12 23:50:23', NULL),
(3, 'aulne glutineux', 'Alnus glutinosa', 25, 'jaune', 'mars, avril', 'étang', 1, 1, 2, '', '2019-12-12 23:52:18', '2019-12-12 23:52:18', NULL),
(4, 'ancolie', 'Aquilegia vulgaris', 0.5, 'bleu', 'mai, juin', 'collection historique', 0, 2, 3, '', '2019-12-12 23:55:01', '2019-12-12 23:55:01', NULL),
(5, 'herbe à la ouate', 'Asclépias syriaca ', 1.5, 'mauve', 'juin, juillet, août', 'collection ornementale', 0, 3, 1, '', '2019-12-12 23:55:01', '2019-12-12 23:55:01', NULL),
(6, 'épine vinette', 'Berberis vulgaris', 2, 'jaune', 'juin, juillet', 'secteur arboretum Chine', 0, 2, 1, '', '2019-12-13 00:05:05', '2019-12-13 00:05:05', NULL),
(7, 'bourrache officinalis ', 'Borago officinalis', 0.5, 'bleu tendre', 'juin, juillet, août', 'collection historique', 0, 3, 2, '', '2019-12-13 00:05:05', '2019-12-13 00:05:05', NULL),
(8, 'moutarde des champs', 'brassica arvensis ', 0.6, 'jaune', 'juin, juillet, août', 'collection historique', 0, 3, 1, '', '2019-12-13 00:06:52', '2019-12-13 00:06:52', NULL),
(9, 'bruyère commune callune', 'Calluna vulgaris', 0.3, 'blanc, rose', 'août', 'secteur terre de bruyère', 0, 2, 1, '', '2019-12-13 00:09:23', '2019-12-13 00:09:23', NULL),
(10, 'noisetier de Bysance', 'Corylus colurna', 10, 'jaune', 'février, mars', 'secteur arboretum Europe', 0, 0, 1, '', '2019-12-13 00:11:38', '2019-12-13 00:11:38', NULL),
(11, 'cotoneaster ', 'Cotoneaster horizontalis', 2.3, 'rose', 'juin, juillet', 'arboretum,secteur chine', 0, 3, 2, '', '2019-12-13 00:11:38', '2019-12-13 00:11:38', NULL),
(12, 'crocus de printemps', 'Crocus vernus ', 0, 'toutes couleurs', 'février, mars', 'pelouses', 0, 1, 2, '', '2019-12-13 00:13:23', '2019-12-13 00:13:23', NULL);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `plante`
--
ALTER TABLE `plante`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `plante`
--
ALTER TABLE `plante`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
