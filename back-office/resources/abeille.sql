-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Client :  localhost:3306
-- Généré le :  Ven 20 Décembre 2019 à 00:50
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
  `taille` text NOT NULL,
  `couleur` varchar(255) NOT NULL,
  `floraison` varchar(255) NOT NULL,
  `emplacement` varchar(255) NOT NULL,
  `miellat` tinyint(1) NOT NULL,
  `nectar` int(11) NOT NULL,
  `pollen` int(11) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `plante`
--

INSERT INTO `plante` (`id`, `nom`, `nom_latin`, `taille`, `couleur`, `floraison`, `emplacement`, `miellat`, `nectar`, `pollen`, `photo`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'érable champêtre', 'Acer campestris', '15', 'vert clair', 'avril, mai', 'collection historique', 1, 3, 2, '', '2019-12-12 23:14:42', '2019-12-18 23:25:59', NULL),
(2, 'érable sycomore', 'Acer pseudoplatanus', '25', 'jaunâtre', 'mai', 'forêt', 0, 2, 2, '', '2019-12-12 23:50:23', '2019-12-18 23:26:06', NULL),
(3, 'aulne glutineux', 'Alnus glutinosa', '25', 'jaune', 'mars, avril', 'étang', 1, 1, 2, '', '2019-12-12 23:52:18', '2019-12-12 23:52:18', NULL),
(4, 'ancolie', 'Aquilegia vulgaris', '0.5', 'bleu', 'mai, juin', 'collection historique', 0, 2, 3, '', '2019-12-12 23:55:01', '2019-12-12 23:55:01', NULL),
(5, 'herbe à la ouate', 'Asclépias syriaca ', '1.5', 'mauve', 'juin, juillet, août', 'collection ornementale', 0, 3, 1, '', '2019-12-12 23:55:01', '2019-12-12 23:55:01', NULL),
(6, 'épine vinette', 'Berberis vulgaris', '2', 'jaune', 'juin, juillet', 'secteur arboretum Chine', 0, 2, 1, '', '2019-12-13 00:05:05', '2019-12-13 00:05:05', NULL),
(7, 'bourrache officinalis ', 'Borago officinalis', '0.5', 'bleu tendre', 'juin, juillet, août', 'collection historique', 0, 3, 2, '', '2019-12-13 00:05:05', '2019-12-13 00:05:05', NULL),
(8, 'moutarde des champs', 'brassica arvensis ', '0.6', 'jaune', 'juin, juillet, août', 'collection historique', 0, 3, 1, '', '2019-12-13 00:06:52', '2019-12-13 00:06:52', NULL),
(9, 'bruyère commune callune', 'Calluna vulgaris', '0.3', 'blanc, rose', 'août', 'secteur terre de bruyère', 0, 2, 1, '', '2019-12-13 00:09:23', '2019-12-13 00:09:23', NULL),
(10, 'noisetier de Bysance', 'Corylus colurna', '10', 'jaune', 'février, mars', 'secteur arboretum Europe', 0, 0, 1, '', '2019-12-13 00:11:38', '2019-12-13 00:11:38', NULL),
(11, 'cotoneaster ', 'Cotoneaster horizontalis', '2.3', 'rose', 'juin, juillet', 'arboretum,secteur chine', 0, 3, 2, '', '2019-12-13 00:11:38', '2019-12-18 21:31:25', NULL),
(12, 'crocus de printemps', 'Crocus vernus ', '0', 'toutes couleurs', 'février, mars', 'pelouses', 0, 1, 2, '', '2019-12-13 00:13:23', '2019-12-18 22:51:48', NULL),
(13, 'dalhia CV', 'Dalhia variabilis', '0.5', 'toutes couleurs', 'juiller, août', 'collection de dahlias', 0, 0, 2, NULL, '2019-12-19 22:17:19', '2019-12-19 22:17:19', NULL),
(14, 'epilobe en épis', 'Epilobium angustifolium', '2', 'rose', 'juiller, août', 'ruisseau', 0, 3, 2, NULL, '2019-12-19 22:18:41', '2019-12-19 22:18:41', NULL),
(15, 'sarrasin ou blé noir', 'Fagopyrum esculentum', '1', 'blanc', 'juin, juillet, août', 'collection historique', 0, 2, 1, NULL, '2019-12-19 22:21:01', '2019-12-19 23:22:04', NULL),
(16, 'frêne à fleurs', 'Fraxinus ornus', '10', 'blanc', 'mai, juin', 'secteur arboretum Europe', 0, 1, 2, NULL, '2019-12-19 22:23:44', '2019-12-19 22:23:44', NULL),
(17, 'févier', 'Gleditsia triacanthos', '20', 'jaune, vert', 'juin, juillet', 'secteur Amérique du nord', 0, 2, 0, NULL, '2019-12-19 23:21:48', '2019-12-19 23:21:48', NULL),
(18, 'lierre', 'Hedera helix', 'rampant', 'vert tendre', 'septembre, octobre', 'forêt', 0, 3, 3, NULL, '2019-12-19 23:24:04', '2019-12-19 23:24:04', NULL),
(19, '', 'Lavandula officinale', '', 'bleu lilas', 'juillet, août', 'potager', 0, 3, 1, NULL, '2019-12-19 23:25:57', '2019-12-19 23:25:57', NULL),
(20, 'chèvrefeuille', 'Lonicera tartarica', '3', 'blanc', 'mai, juin', 'collection historique', 0, 2, 2, NULL, '2019-12-19 23:27:14', '2019-12-19 23:27:14', NULL),
(21, 'luzerne cultivée', 'Médicago sativa', '0.5', 'mauve', 'juin, juillet, août', 'collection historique', 0, 3, 1, NULL, '2019-12-19 23:28:17', '2019-12-19 23:28:17', NULL),
(22, 'phacelie à feuilles de tanaisie', 'Phacelia tanacetifolia', '0.5', 'bleu clair', 'juillet, août, septembre', 'potager écologique', 0, 3, 2, NULL, '2019-12-19 23:29:56', '2019-12-19 23:29:56', NULL),
(23, 'merisier', 'Prunus avium', '10', 'blanc', 'avril, mai', 'forêt', 1, 2, 3, NULL, '2019-12-19 23:31:18', '2019-12-19 23:31:18', NULL),
(24, 'prunellier', 'Prunus spinosa', '3', 'blanc', 'avril, mai', 'roseraie', 0, 2, 2, NULL, '2019-12-19 23:32:17', '2019-12-19 23:32:17', NULL),
(25, 'buisson ardent', 'Pyracantha coccinéa', '2', 'blanc', 'juin, juillet', 'roseraie', 0, 2, 3, NULL, '2019-12-19 23:33:28', '2019-12-19 23:33:28', NULL),
(26, 'robinier faux acacia', 'Robinia pseudoacacia', '20', 'blanc', 'juin', 'étang pavillon d\'accueil', 0, 3, 2, NULL, '2019-12-19 23:34:38', '2019-12-19 23:34:38', NULL),
(27, 'rudbeckia lacinié', 'Rudbeckia laciniata', '1.5', 'jaune', 'juillet, août', 'collection historique ornementale', 0, 0, 3, NULL, '2019-12-19 23:36:41', '2019-12-19 23:36:41', NULL),
(28, 'saule marsault', 'Salix capréa', '', 'jaune, vert', 'mars, avril', 'ruisseau', 0, 2, 3, NULL, '2019-12-19 23:39:08', '2019-12-19 23:39:08', NULL),
(29, 'verge d\'or', 'Solidago virgaurea', '1.5', 'jaune', 'août, septembre, octobre', 'collection historique', 0, 2, 2, NULL, '2019-12-19 23:40:42', '2019-12-19 23:40:42', NULL),
(30, 'sophora du japon', 'Sophora japonica', '15', 'blanc crème', 'août, septembre', '', 0, 3, 1, NULL, '2019-12-19 23:42:05', '2019-12-19 23:42:05', NULL),
(31, 'pissenlit', 'Taraxacum officinalis', '', 'jaune', 'avril, mai, juin, juillet', 'pelouse prairie', 0, 3, 3, NULL, '2019-12-19 23:43:02', '2019-12-19 23:43:02', NULL),
(32, 'thym', 'Thymus vulgaris', '0.2', 'mauve', 'juin, juillet, août', 'jardin écologique, potager', 0, 3, 0, NULL, '2019-12-19 23:44:05', '2019-12-19 23:44:05', NULL),
(33, 'tilleul de Henry', 'Tilia henryana', '12', 'jaunâtre', 'septembre', 'étang pavillon d\'accueil', 0, 3, 2, NULL, '2019-12-19 23:45:07', '2019-12-19 23:45:07', NULL),
(34, 'tilleul à larges feuilles', 'Tilia platyphillos', '20', 'jaunâtre', 'juin', 'parcelle Emile Gallé', 0, 3, 2, NULL, '2019-12-19 23:46:52', '2019-12-19 23:46:52', NULL),
(35, 'trèfle blanc', 'Trifolium repens', '', '', 'mai, juin, juillet, août, septembre', 'pelouse', 0, 3, 2, NULL, '2019-12-19 23:48:29', '2019-12-19 23:48:29', NULL),
(36, 'petite pervenche', 'Vinca minor', '0.3', 'bleu', 'mars, avril', 'arboretum', 0, 2, 0, NULL, '2019-12-19 23:49:41', '2019-12-19 23:49:41', NULL);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
