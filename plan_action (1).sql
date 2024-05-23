-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : jeu. 23 mai 2024 à 16:01
-- Version du serveur : 8.0.30
-- Version de PHP : 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `plan_action`
--

-- --------------------------------------------------------

--
-- Structure de la table `humanresource`
--

CREATE TABLE `humanresource` (
  `id` int NOT NULL,
  `lastname` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `firstname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `email` varchar(100) NOT NULL,
  `phonenumber` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `id_projet` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `humanresource`
--

INSERT INTO `humanresource` (`id`, `lastname`, `firstname`, `email`, `phonenumber`, `id_projet`) VALUES
(11, 'Da', 'Ali', 'a@ecodev.dev', '6020324', 35),
(13, 'Da', 'Kathérine', 'wanematou.vebama@ecodev.dev', '56523541', 35),
(14, 'Da', 'Ali', 'a@ecodev.dev', '6020324', 49),
(15, 'Da', 'Kathérine', 'a@ecodev.dev', '6020324', 113),
(16, 'Da', 'Ali', 'wanematou.vebama@ecodev.dev', '56523541', 113),
(17, 'Da', 'Kathérine', 'a@ecodev.dev', '15585', 113),
(18, 'some', 'Ali', 'a@ecodev.dev', '6020324', 113),
(19, 'some', 'Ali', 'a@ecodev.dev', '6020324', 113),
(20, 'Da', 'wane', 'a@ecodev.dev', '56523541', 113),
(31, 'some', 'Ali', 'a@ecodev.dev', '6020324', 104),
(32, 'ky', 'ada', 'a@ecodev.dev', '6020324', 104),
(33, 'bah', 'amadou', 'a@ecodev.dev', '6020324', 104),
(34, 'some', 'Kathérine', 'a@ecodev.dev', '6020324', 104),
(35, 'Da', 'Ali', 'wanematou.vebama@ecodev.dev', '6020324', 104),
(36, 'Da', 'wane', 'a@ecodev.dev', '6020324', 104),
(37, 'Da', 'Kathérine', 'a@ecodev.dev', '6020324', 104),
(38, 'Da', 'Ali', 'a@ecodev.dev', '6020324', 104),
(39, 'Da', 'Kathérine', 'a@ecodev.dev', '6020324', 104),
(46, 'Da', 'Kathérine', 'a@ecodev.dev', '6020324', 114),
(47, 'Da', 'Kathérine', 'wanematou.vebama@ecodev.dev', '56523541', 114),
(48, 'Da', 'wane', 'a@ecodev.dev', '6020324', 114),
(49, 'Da', 'Kathérine', 'a@ecodev.dev', '6020324', 114),
(50, 'Da', 'Wanematou aida', 'a@ecodev.dev', '56523541', 114);

-- --------------------------------------------------------

--
-- Structure de la table `objective`
--

CREATE TABLE `objective` (
  `id` int NOT NULL,
  `objectives` varchar(1000) NOT NULL,
  `types` varchar(1000) NOT NULL,
  `id_projet` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `objective`
--

INSERT INTO `objective` (`id`, `objectives`, `types`, `id_projet`) VALUES
(36, 'Planter des oignons', 'mainobjective', 49),
(37, 'le chic et le glam pour toute les morphologies\r\n', 'mainobjective', 35),
(38, 'des cullottes', 'specificobjective', 35),
(39, 'des jupes', 'specificobjective', 35),
(47, 'coco dunda', 'qualityobjective', 35),
(50, '45000', 'costobjective', 35),
(52, '14/12/2023', 'delayobjective', 35),
(54, 'hghhhhhhhhhhhhhhhhhhhhhhhg', 'specificobjective', 49),
(55, 'spécifiques\r\n\r\nTableau d\'objectifs intermédiaire', 'specificobjective', 49),
(56, '\'\'\'\'\'\'\'\'\'', 'qualityobjective', 49),
(57, '25000', 'costobjective', 49),
(58, '11/25/2024', 'delayobjective', 49),
(59, 'this.readProjectN', 'mainobjective', 72),
(61, 'Le chic et le glam de chez nous', 'mainobjective', 113),
(62, 'Jupes en lin', 'specificobjective', 113),
(63, 'Robe en soi', 'specificobjective', 113),
(64, 'Pantalon en coco dunda', 'specificobjective', 113),
(65, 'Veste en faso danfani', 'specificobjective', 113),
(66, 'Fluidité et modernité', 'qualityobjective', 113),
(67, 'Beau et de chez nous', 'qualityobjective', 113),
(68, '5000fcfa', 'costobjective', 113),
(69, '10$', 'costobjective', 113),
(70, 'Avant 2025', 'delayobjective', 113),
(71, 'Satisfaire la clientèle', 'mainobjective', 114),
(72, 'coudre', 'specificobjective', 114),
(73, 'Habit', 'mainobjective', 104),
(74, 'Meilleur sur le marché', 'specificobjective', 104),
(75, 'Qualité supérieur', 'specificobjective', 104),
(76, 'Utilisable 20ans', 'qualityobjective', 104),
(77, '25000', 'costobjective', 104),
(78, '15/05/2024', 'delayobjective', 104),
(79, 'vendre', 'specificobjective', 114),
(80, 'mettre sur le marché', 'specificobjective', 114),
(81, 'publié', 'specificobjective', 114),
(82, 'lin', 'qualityobjective', 114),
(83, '25000', 'costobjective', 114),
(84, '25/12/2025', 'delayobjective', 114);

-- --------------------------------------------------------

--
-- Structure de la table `plus`
--

CREATE TABLE `plus` (
  `id` int NOT NULL,
  `sigle` varchar(1000) NOT NULL,
  `signification` varchar(1000) NOT NULL,
  `id_projet` int DEFAULT NULL,
  `author` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `plus`
--

INSERT INTO `plus` (`id`, `sigle`, `signification`, `id_projet`, `author`) VALUES
(52, 'A', 'Approuver', NULL, 'codeur'),
(53, 'C', 'Contrôler', NULL, 'codeur'),
(54, 'I', 'Informer', NULL, 'codeur'),
(55, 'E', 'Executer', NULL, 'codeur'),
(56, 'F', 'Fournir', NULL, 'codeur'),
(57, 'P', 'Participer', NULL, 'codeur'),
(58, '-', 'Non concerné', NULL, 'codeur');

-- --------------------------------------------------------

--
-- Structure de la table `projectname`
--

CREATE TABLE `projectname` (
  `id` int NOT NULL,
  `projectname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `projectname`
--

INSERT INTO `projectname` (`id`, `projectname`) VALUES
(35, 'Ketsia collection'),
(49, 'PLAN D’ACTION PRODUCTION D’OIGNONS A BONKORE'),
(50, 'Ketsia collectio'),
(51, 'Ketsia collectio'),
(52, 'Ketsia collectio'),
(53, 'Ketsia collectio'),
(54, 'Ketsia collectio'),
(55, 'Ketsia collectio'),
(56, 'Ketsia collectio'),
(57, 'Ketsia collectio'),
(58, 'kalil da'),
(59, 'kalil da'),
(60, 'check_number'),
(61, 'check_number'),
(62, 'kalil da'),
(63, 'ecodfeqt_clientdbecodev21'),
(64, 'check_number'),
(65, 'ecodfeqt_clientdbecodev21'),
(66, 'ecodfeqt_clientdbecodev21'),
(67, 'check_number'),
(68, 'check_number'),
(69, 'check_number'),
(70, 'kalil da'),
(71, 'kalil da'),
(72, 'check_number'),
(73, 'kalil da'),
(74, 'kalil daalil da'),
(75, 'check_number'),
(76, 'check_number'),
(77, 'check_number'),
(78, 'kalil daalil da'),
(79, 'check_number'),
(80, 'check_number'),
(81, 'kalil daalil da'),
(82, 'kalil daalil da'),
(83, 'kalil daalil da'),
(84, 'kalil daalil da'),
(85, 'kalil daalil da'),
(86, 'kalil daalil da'),
(87, 'kalil daalil da'),
(88, 'kalil daalil da'),
(89, 'check_number'),
(90, 'kalil daalil da'),
(91, 'check_number'),
(92, 'check_number'),
(93, 'ecodfeqt_clientdbecodev21'),
(94, 'check_number'),
(95, 'check_number'),
(96, 'ecodfeqt_clientdbecodev21'),
(97, 'kalil daalil da'),
(98, 'check_number'),
(99, 'ecodfeqt_clientdbecodev21'),
(100, 'kalil daalil da'),
(101, 'k'),
(102, 'check_number'),
(103, 'kalil daalil da'),
(104, 'Ketsia collection'),
(105, 'Ketsia '),
(106, 'Ktsia\'s collection'),
(107, 'Ktsia\'s collection'),
(108, 'Ketsia '),
(109, 'Ketsia '),
(110, 'Nema collection'),
(111, ' PLAN D’ACTION PRODUCTION D’OIGNONS A BONKORE'),
(112, 'Ketsia '),
(113, 'NEMA COLLECTION'),
(114, 'Ketsia collection');

-- --------------------------------------------------------

--
-- Structure de la table `selectplus`
--

CREATE TABLE `selectplus` (
  `id` int NOT NULL,
  `id_projet` int NOT NULL,
  `id_actor` int NOT NULL,
  `id_task` int NOT NULL,
  `choice` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `selectplus`
--

INSERT INTO `selectplus` (`id`, `id_projet`, `id_actor`, `id_task`, `choice`) VALUES
(134, 104, 31, 23, 'C'),
(135, 104, 32, 23, '-'),
(136, 104, 33, 23, 'I'),
(137, 104, 34, 23, '-'),
(138, 104, 33, 24, 'P'),
(139, 104, 34, 24, 'E'),
(140, 104, 32, 24, 'E'),
(141, 104, 31, 24, 'P'),
(142, 104, 31, 25, 'F'),
(143, 104, 32, 25, 'F'),
(144, 104, 33, 25, 'P'),
(145, 104, 34, 25, '-'),
(146, 104, 31, 26, 'P'),
(147, 104, 32, 26, 'P'),
(148, 104, 33, 26, 'P'),
(149, 104, 34, 26, 'P'),
(150, 104, 31, 27, 'P'),
(151, 104, 32, 27, 'P'),
(152, 104, 33, 27, '-'),
(153, 104, 34, 27, 'P'),
(154, 104, 31, 28, '-'),
(155, 104, 32, 28, '-'),
(156, 104, 33, 28, '-'),
(157, 104, 34, 28, '-'),
(158, 104, 33, 28, 'P'),
(159, 104, 31, 29, 'I'),
(160, 104, 31, 30, 'C'),
(161, 104, 32, 30, '-'),
(162, 104, 32, 29, '-'),
(163, 104, 33, 29, 'I'),
(164, 104, 33, 30, '-'),
(165, 104, 34, 28, 'P'),
(166, 104, 34, 29, '-'),
(167, 104, 31, 23, 'A'),
(168, 104, 31, 23, 'C'),
(169, 104, 31, 23, 'I'),
(170, 104, 31, 23, 'A'),
(171, 104, 35, 23, 'A'),
(172, 104, 35, 24, 'I'),
(173, 104, 35, 25, 'P'),
(174, 104, 37, 25, 'I'),
(175, 104, 36, 27, 'F'),
(176, 104, 36, 27, 'P'),
(177, 104, 31, 31, 'C'),
(178, 114, 46, 38, '-'),
(179, 114, 46, 39, 'I'),
(180, 114, 48, 39, '-'),
(181, 114, 49, 39, 'E'),
(182, 114, 47, 40, 'C'),
(183, 114, 48, 40, 'F');

-- --------------------------------------------------------

--
-- Structure de la table `tableau_action`
--

CREATE TABLE `tableau_action` (
  `id` int NOT NULL,
  `id_projet` int NOT NULL,
  `id_task` int NOT NULL,
  `qui` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `ou` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `quandD` varchar(50) DEFAULT NULL,
  `quandF` varchar(50) DEFAULT NULL,
  `comment` varchar(50) DEFAULT NULL,
  `pourquoi` varchar(50) DEFAULT NULL,
  `combien` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `tableau_action`
--

INSERT INTO `tableau_action` (`id`, `id_projet`, `id_task`, `qui`, `ou`, `quandD`, `quandF`, `comment`, `pourquoi`, `combien`) VALUES
(4535, 114, 38, 'wane Da', 'undefined', 'undefined', 'undefined', 'undefined', 'undefined', 'undefined'),
(4536, 114, 38, 'wane Da', 'Mali', 'undefined', 'undefined', '', '', ''),
(4537, 114, 38, 'wane Da', 'Mali', '2024-05-24', 'undefined', '', '', ''),
(4538, 114, 38, 'wane Da', 'Mali', '2024-05-24', '2024-05-25', '', '', ''),
(4539, 114, 38, 'wane Da', 'Mali', '2024-05-24', '2024-05-25', 'Car', '', ''),
(4540, 114, 38, 'wane Da', 'Mali', '2024-05-24', '2024-05-25', 'Car', 'vendre', ''),
(4541, 114, 38, 'wane Da', 'Mali', '2024-05-24', '2024-05-25', 'Car', 'vendre', '11000'),
(4542, 114, 39, 'Kathérine Da', 'undefined', 'undefined', 'undefined', 'undefined', 'undefined', 'undefined'),
(4543, 114, 39, 'Kathérine Da', 'Niger', 'undefined', 'undefined', '', '', ''),
(4544, 114, 39, 'Kathérine Da', 'Niger', '2024-05-01', 'undefined', '', '', ''),
(4545, 114, 39, 'Kathérine Da', 'Niger', '2024-05-01', '2024-05-24', '', '', ''),
(4546, 114, 39, 'Kathérine Da', 'Niger', '2024-05-01', '2024-05-24', 'Bus', '', ''),
(4547, 114, 39, 'Kathérine Da', 'Niger', '2024-05-01', '2024-05-24', 'Bus', 'Prospecter', ''),
(4548, 114, 39, 'Kathérine Da', 'Niger', '2024-05-01', '2024-05-24', 'Bus', 'Prospecter', '5000'),
(4549, 114, 40, 'Kathérine Da', 'undefined', 'undefined', 'undefined', 'undefined', 'undefined', 'undefined'),
(4550, 114, 40, 'Kathérine Da', 'Bobo', 'undefined', 'undefined', '', '', ''),
(4551, 114, 40, 'Kathérine Da', 'Bobo', '2024-04-30', 'undefined', '', '', ''),
(4552, 114, 40, 'Kathérine Da', 'Bobo', '2024-04-30', '2024-05-25', '', '', ''),
(4553, 114, 40, 'Kathérine Da', 'Bobo', '2024-04-30', '2024-05-25', 'Avion', '', ''),
(4554, 114, 40, 'Kathérine Da', 'Bobo', '2024-04-30', '2024-05-25', 'Avion', 'vendre', ''),
(4555, 114, 40, 'Kathérine Da', 'Bobo', '2024-04-30', '2024-05-25', 'Avion', 'vendre', '10000'),
(4556, 114, 40, 'Kathérine Da', 'Bobo', '2024-05-10', '2024-05-25', 'Avion', 'vendre', '10000'),
(4557, 114, 39, 'Kathérine Da', 'Niger', '2024-05-17', '2024-05-24', 'Bus', 'Prospecter', '5000'),
(4558, 114, 40, 'Kathérine Da', 'Bobo', '2024-05-10', '2024-05-16', 'Avion', 'vendre', '10000'),
(4559, 114, 38, 'wane Da', 'Mali', '2024-05-24', '2024-05-31', 'Car', 'vendre', '11000'),
(4560, 114, 42, 'Kathérine Da', 'undefined', 'undefined', 'undefined', 'undefined', 'undefined', 'undefined'),
(4561, 114, 42, 'wane Da', '', 'undefined', 'undefined', '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `tableau_priorite`
--

CREATE TABLE `tableau_priorite` (
  `id` int NOT NULL,
  `id_projet` int NOT NULL,
  `task_id` int NOT NULL,
  `urgent` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `important` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `priorite` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `statut` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `delai` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `tableau_priorite`
--

INSERT INTO `tableau_priorite` (`id`, `id_projet`, `task_id`, `urgent`, `important`, `priorite`, `statut`, `delai`) VALUES
(285, 114, 38, 'urgent', 'undefined', NULL, NULL, 'undefined'),
(286, 114, 38, 'urgent', 'important', NULL, NULL, 'undefined'),
(287, 114, 38, 'urgent', 'important', NULL, NULL, '2024-05-02'),
(288, 114, 39, 'urgent', 'undefined', 'undefined', NULL, 'undefined'),
(289, 114, 39, 'urgent', 'important', '', NULL, 'undefined'),
(290, 114, 40, 'urgent', 'undefined', 'undefined', NULL, 'undefined'),
(291, 114, 40, 'urgent', 'pas_important ', '', NULL, 'undefined'),
(292, 114, 42, 'pas_urgent ', 'undefined', 'undefined', NULL, 'undefined'),
(293, 114, 42, 'pas_urgent ', 'important', '', NULL, 'undefined'),
(294, 114, 43, 'urgent', 'undefined', 'undefined', NULL, 'undefined'),
(295, 114, 43, 'urgent', 'important', '', NULL, 'undefined'),
(296, 114, 40, 'urgent', 'important', '', NULL, 'undefined'),
(297, 114, 38, 'urgent', 'pas_important ', 'X', NULL, '2024-05-02');

-- --------------------------------------------------------

--
-- Structure de la table `tasklist`
--

CREATE TABLE `tasklist` (
  `id` int NOT NULL,
  `tasklists` varchar(1000) NOT NULL,
  `id_projet` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `tasklist`
--

INSERT INTO `tasklist` (`id`, `tasklists`, `id_projet`) VALUES
(31, 'recruter', 104),
(32, 'codre', 104),
(33, 'vendre', 104),
(34, 'faire du profit', 104),
(35, 'grandir', 104),
(36, 's\'étendre', 104),
(37, '', 104),
(38, 'coudre', 114),
(39, 'vendre', 114),
(40, 'publié', 114),
(42, 'barrer', 114),
(43, 'zazer', 114);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `humanresource`
--
ALTER TABLE `humanresource`
  ADD PRIMARY KEY (`id`),
  ADD KEY `j_projet` (`id_projet`);

--
-- Index pour la table `objective`
--
ALTER TABLE `objective`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_projet` (`id_projet`);

--
-- Index pour la table `plus`
--
ALTER TABLE `plus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `k_projet` (`id_projet`);

--
-- Index pour la table `projectname`
--
ALTER TABLE `projectname`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `selectplus`
--
ALTER TABLE `selectplus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_projectname_id` (`id_projet`);

--
-- Index pour la table `tableau_action`
--
ALTER TABLE `tableau_action`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ta_projectname_id` (`id_projet`);

--
-- Index pour la table `tableau_priorite`
--
ALTER TABLE `tableau_priorite`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tp_project_id` (`id_projet`);

--
-- Index pour la table `tasklist`
--
ALTER TABLE `tasklist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `t_projet` (`id_projet`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `humanresource`
--
ALTER TABLE `humanresource`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT pour la table `objective`
--
ALTER TABLE `objective`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT pour la table `plus`
--
ALTER TABLE `plus`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT pour la table `projectname`
--
ALTER TABLE `projectname`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT pour la table `selectplus`
--
ALTER TABLE `selectplus`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=184;

--
-- AUTO_INCREMENT pour la table `tableau_action`
--
ALTER TABLE `tableau_action`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4562;

--
-- AUTO_INCREMENT pour la table `tableau_priorite`
--
ALTER TABLE `tableau_priorite`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=298;

--
-- AUTO_INCREMENT pour la table `tasklist`
--
ALTER TABLE `tasklist`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `humanresource`
--
ALTER TABLE `humanresource`
  ADD CONSTRAINT `j_projet` FOREIGN KEY (`id_projet`) REFERENCES `projectname` (`id`);

--
-- Contraintes pour la table `objective`
--
ALTER TABLE `objective`
  ADD CONSTRAINT `fk_projet` FOREIGN KEY (`id_projet`) REFERENCES `projectname` (`id`);

--
-- Contraintes pour la table `plus`
--
ALTER TABLE `plus`
  ADD CONSTRAINT `k_projet` FOREIGN KEY (`id_projet`) REFERENCES `projectname` (`id`);

--
-- Contraintes pour la table `selectplus`
--
ALTER TABLE `selectplus`
  ADD CONSTRAINT `fk_projectname_id` FOREIGN KEY (`id_projet`) REFERENCES `projectname` (`id`);

--
-- Contraintes pour la table `tableau_action`
--
ALTER TABLE `tableau_action`
  ADD CONSTRAINT `ta_projectname_id` FOREIGN KEY (`id_projet`) REFERENCES `projectname` (`id`);

--
-- Contraintes pour la table `tableau_priorite`
--
ALTER TABLE `tableau_priorite`
  ADD CONSTRAINT `tp_project_id` FOREIGN KEY (`id_projet`) REFERENCES `projectname` (`id`);

--
-- Contraintes pour la table `tasklist`
--
ALTER TABLE `tasklist`
  ADD CONSTRAINT `t_projet` FOREIGN KEY (`id_projet`) REFERENCES `projectname` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
