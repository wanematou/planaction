-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : jeu. 06 juin 2024 à 15:43
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
(47, 'Maiga', 'Celine', 'wanematou.vebama@ecodev.dev', '56523541', 114),
(48, 'Zabre', 'Edith', 'a@ecodev.dev', '6020324', 114),
(49, 'Traoré', 'Emi', 'a@ecodev.dev', '6020324', 114),
(50, 'So', 'Julie', 'a@ecodev.dev', '56523541', 114),
(51, 'cocti', 'Sonia', 'a@ecodev.dev', '6020324', 114),
(52, 'cocti', 'Kathérine', 'wanematou.vebama@ecodev.dev', '6020324', 114),
(53, 'ada', 'Kathérine', 'a@ecodev.dev', '6020324', 114),
(54, 'Traoré', 'Ali', 'a@ecodev.dev', '6020324', 114),
(55, 'Traoré', 'Kathérine', 'a@ecodev.dev', '6020324', 114),
(56, 'cocti', 'nafi', 'wanematou.vebama@ecodev.dev', '6020324', 114),
(57, 'cocti', 'Nema', 'a@ecodev.dev', '6020324', 114),
(58, 'Traoré', 'wane', 'a@ecodev.dev', '6020324', 114);

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
(84, '25/12/2025', 'delayobjective', 114),
(85, 'Grandir', 'specificobjective', 114);

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
(58, '-', 'Non concerné', NULL, 'codeur'),
(60, 'p', 'papa', NULL, NULL),
(62, 'G', 'papa', NULL, NULL),
(63, 'p', 'papa', NULL, NULL),
(65, 'G', 'geriatre', 114, NULL),
(68, 'A', 'Approuver', 114, NULL),
(69, 'F', 'Fati', 114, NULL);

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
(183, 114, 48, 40, 'F'),
(184, 114, 47, 39, '-'),
(185, 114, 47, 38, 'F'),
(186, 114, 46, 40, 'C'),
(187, 114, 46, 38, 'I'),
(188, 114, 46, 42, 'F'),
(189, 114, 46, 43, '-'),
(190, 114, 47, 39, 'I'),
(191, 114, 47, 42, 'C'),
(192, 114, 47, 43, 'E'),
(193, 114, 48, 38, '-'),
(194, 114, 48, 42, 'I'),
(195, 114, 48, 43, 'I'),
(196, 114, 49, 38, '-'),
(197, 114, 49, 40, '-'),
(198, 114, 49, 42, '-'),
(199, 114, 49, 43, '-'),
(200, 114, 50, 38, 'C'),
(201, 114, 50, 39, 'A'),
(202, 114, 50, 40, 'I'),
(203, 114, 50, 42, 'F'),
(204, 114, 50, 43, 'P'),
(205, 114, 46, 38, 'C'),
(206, 114, 46, 38, 'P'),
(207, 114, 46, 38, 'A'),
(208, 114, 46, 38, '-'),
(209, 114, 46, 38, 'P'),
(210, 114, 51, 38, 'I'),
(211, 114, 46, 44, 'I'),
(212, 114, 47, 44, '-'),
(213, 114, 46, 38, 'A'),
(214, 114, 46, 50, 'C'),
(215, 114, 47, 50, 'G');

-- --------------------------------------------------------

--
-- Structure de la table `tableau_action`
--

CREATE TABLE `tableau_action` (
  `id` int NOT NULL,
  `id_projet` int NOT NULL,
  `project` text NOT NULL,
  `task` text NOT NULL,
  `id_task` int NOT NULL,
  `qui` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `email` text NOT NULL,
  `ou` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `quandD` varchar(50) DEFAULT NULL,
  `quandF` varchar(50) DEFAULT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `pourquoi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `combien` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `tableau_action`
--

INSERT INTO `tableau_action` (`id`, `id_projet`, `project`, `task`, `id_task`, `qui`, `email`, `ou`, `quandD`, `quandF`, `comment`, `pourquoi`, `combien`) VALUES
(5514, 114, 'Colorier', 'Ketsia collection', 53, 'Celine Maiga', 'wanematou.vebama@ecodev.dev', 'Dori', '2024-05-30', '2024-06-07', 'Dori', 'Dori', 'Dori');

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
  `statut` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `tableau_priorite`
--

INSERT INTO `tableau_priorite` (`id`, `id_projet`, `task_id`, `urgent`, `important`, `priorite`, `statut`) VALUES
(285, 114, 38, 'urgent', 'undefined', NULL, NULL),
(286, 114, 38, 'urgent', 'important', NULL, NULL),
(287, 114, 38, 'urgent', 'important', NULL, NULL),
(288, 114, 39, 'urgent', 'undefined', 'undefined', NULL),
(289, 114, 39, 'urgent', 'important', '', NULL),
(290, 114, 40, 'urgent', 'undefined', 'undefined', NULL),
(291, 114, 40, 'urgent', 'pas_important ', '', NULL),
(292, 114, 42, 'pas_urgent ', 'undefined', 'undefined', NULL),
(293, 114, 42, 'pas_urgent ', 'important', '', NULL),
(294, 114, 43, 'urgent', 'undefined', 'undefined', NULL),
(295, 114, 43, 'urgent', 'important', '', NULL),
(296, 114, 40, 'urgent', 'important', '', NULL),
(297, 114, 38, 'urgent', 'pas_important ', 'X', NULL),
(298, 114, 39, 'pas_urgent ', 'important', 'X', NULL),
(299, 114, 38, 'urgent', 'important', '', NULL),
(300, 114, 39, 'pas_urgent ', 'important', '', NULL),
(301, 114, 40, 'urgent', 'important', 'X', NULL),
(302, 114, 42, 'pas_urgent ', 'important', '', NULL),
(303, 114, 43, 'urgent', 'important', 'X', NULL),
(304, 114, 38, 'urgent', 'pas_important ', 'X', NULL),
(305, 114, 39, 'pas_urgent ', 'pas_important ', '', NULL),
(306, 114, 40, 'pas_urgent ', 'important', 'X', NULL),
(307, 114, 40, 'pas_urgent ', 'pas_important ', '', NULL),
(308, 114, 42, 'urgent', 'important', '', NULL),
(309, 114, 42, 'pas_urgent ', 'important', 'X', NULL),
(310, 114, 42, 'pas_urgent ', 'pas_important ', '', NULL),
(311, 114, 42, 'pas_urgent ', 'important', '', NULL),
(312, 114, 40, 'pas_urgent ', 'important', '', NULL),
(313, 114, 39, 'urgent', 'pas_important ', '', NULL),
(314, 114, 39, 'urgent', 'important', '', NULL),
(315, 114, 38, 'urgent', 'important', '', NULL),
(316, 114, 50, 'urgent', 'undefined', 'undefined', NULL),
(317, 114, 50, 'urgent', 'important', '', NULL),
(318, 114, 50, 'urgent', 'pas_important ', 'X', NULL),
(319, 114, 51, 'pas_urgent ', 'undefined', 'undefined', NULL),
(320, 114, 51, 'pas_urgent ', 'pas_important ', '', NULL),
(321, 114, 51, 'pas_urgent ', 'important', '', NULL),
(322, 114, 51, 'urgent', 'important', '', NULL),
(323, 114, 50, 'urgent', 'undefined', 'undefined', NULL),
(324, 114, 51, 'urgent', 'pas_important ', 'X', NULL),
(325, 114, 52, 'urgent', 'undefined', 'undefined', NULL),
(326, 114, 52, 'urgent', 'pas_important ', '', NULL),
(327, 114, 50, 'urgent', 'pas_important ', '', NULL),
(328, 114, 50, 'urgent', 'important', '', NULL);

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
(50, 'Produire', 114),
(51, 'coudre', 114),
(52, 'Vendre', 114),
(53, 'Colorier', 114),
(55, 'vendre', 114);

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
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT pour la table `objective`
--
ALTER TABLE `objective`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT pour la table `plus`
--
ALTER TABLE `plus`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT pour la table `projectname`
--
ALTER TABLE `projectname`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT pour la table `selectplus`
--
ALTER TABLE `selectplus`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=216;

--
-- AUTO_INCREMENT pour la table `tableau_action`
--
ALTER TABLE `tableau_action`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5515;

--
-- AUTO_INCREMENT pour la table `tableau_priorite`
--
ALTER TABLE `tableau_priorite`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=329;

--
-- AUTO_INCREMENT pour la table `tasklist`
--
ALTER TABLE `tasklist`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

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
