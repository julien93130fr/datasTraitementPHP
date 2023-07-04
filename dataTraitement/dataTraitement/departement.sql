-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 28 juin 2023 à 10:17
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `frenchcities`
--

-- --------------------------------------------------------

--
-- Structure de la table `departement`
--

CREATE TABLE `departement` (
  `departement_id` int(11) NOT NULL,
  `departement_code` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `departement_nom` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `departement_nom_uppercase` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `departement_slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `departement_nom_soundex` varchar(20) DEFAULT NULL,
  `departement_email` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `departement`
--

INSERT INTO `departement` (`departement_id`, `departement_code`, `departement_nom`, `departement_nom_uppercase`, `departement_slug`, `departement_nom_soundex`, `departement_email`) VALUES
(1, '01', 'Ain', 'AIN', 'ain', 'A500', 'communication@ain.fr'),
(2, '02', 'Aisne', 'AISNE', 'aisne', 'A250', NULL),
(3, '03', 'Allier', 'ALLIER', 'allier', 'A460', 'contact@allier.fr'),
(5, '05', 'Hautes-Alpes', 'HAUTES-ALPES', 'hautes-alpes', 'H32412', 'accueil@hautes-alpes.fr'),
(4, '04', 'Alpes-de-Haute-Provence', 'ALPES-DE-HAUTE-PROVENCE', 'alpes-de-haute-provence', 'A412316152', 'president@le04.fr'),
(6, '06', 'Alpes-Maritimes', 'ALPES-MARITIMES', 'alpes-maritimes', 'A41256352', 'pref-courrier@alpes-maritimes.gouv.fr'),
(7, '07', 'Ardèche', 'ARDÈCHE', 'ardeche', 'A632', 'pref-courrier@ardeche.gouv.fr'),
(8, '08', 'Ardennes', 'ARDENNES', 'ardennes', 'A6352', 'accueil@ardenne-metropole.fr'),
(9, '09', 'Ariège', 'ARIÈGE', 'ariege', 'A620', 'prefecture@ariege.gouv.fr'),
(10, '10', 'Aube', 'AUBE', 'aube', 'A100', 'departement@aube.fr'),
(11, '11', 'Aude', 'AUDE', 'aude', 'A300', 'prefecture@aude.pref.gouv.fr.'),
(12, '12', 'Aveyron', 'AVEYRON', 'aveyron', 'A165', 'cab@aveyron.fr'),
(13, '13', 'Bouches-du-Rhône', 'BOUCHES-DU-RHÔNE', 'bouches-du-rhone', 'B2365', 'sp-istres-associations@bouches-du-rhone.gouv.fr'),
(14, '1A', 'Calvados', 'CALVADOS', 'calvados', 'C4132', 'archives@calvados.fr'),
(15, '15', 'Cantal', 'CANTAL', 'cantal', 'C534', 'ccantuel@cantal.fr'),
(16, '16', 'Charente', 'CHARENTE', 'charente', 'C653', 'contact@lacharente.fr'),
(17, '17', 'Charente-Maritime', 'CHARENTE-MARITIME', 'charente-maritime', 'C6535635', 'info@charente-maritime.fr'),
(18, '18', 'Cher', 'CHER', 'cher', 'C600', 'prefecture@cher.gouv.fr'),
(19, '19', 'Corrèze', 'CORRÈZE', 'correze', 'C620', 'atabaste@correze.fr'),
(20, '2a', 'Corse-du-sud', 'CORSE-DU-SUD', 'corse-du-sud', 'C62323', 'pref-bclgi@corse-du-sud.gouv.fr'),
(21, '2b', 'Haute-corse', 'HAUTE-CORSE', 'haute-corse', 'H3262', 'haute-corse@haute-corse.fr'),
(22, '21', 'Côte-d\'or', 'CÔTE-D\'OR', 'cote-dor', 'C360', NULL),
(23, '22', 'Côtes-d\'armor', 'CÔTES-D\'ARMOR', 'cotes-darmor', 'C323656', 'contact@cotesdarmor.fr'),
(24, '23', 'Creuse', 'CREUSE', 'creuse', 'C620', NULL),
(25, '24', 'Dordogne', 'DORDOGNE', 'dordogne', 'D6325', 'cd24dordogne.fr'),
(26, '25', 'Doubs', 'DOUBS', 'doubs', 'D120', 'pref-courrier@doubs.gouv.fr'),
(27, '26', 'Drôme', 'DRÔME', 'drome', 'D650', 'prefecture@drome.gouv.fr'),
(28, '27', 'Eure', 'EURE', 'eure', 'E600', NULL),
(29, '28', 'Eure-et-Loir', 'EURE-ET-LOIR', 'eure-et-loir', 'E6346', '@eurelien.fr'),
(30, '29', 'Finistère', 'FINISTÈRE', 'finistere', 'F5236', 'contact@finistere.fr'),
(31, '30', 'Gard', 'GARD', 'gard', 'G630', 'courrier-internet@gard.fr'),
(32, '31', 'Haute-Garonne', 'HAUTE-GARONNE', 'haute-garonne', 'H3265', 'pref-communication@haute-garonne.gouv.fr'),
(33, '32', 'Gers', 'GERS', 'gers', 'G620', 'departement-du-gers@gers.fr'),
(34, '33', 'Gironde', 'GIRONDE', 'gironde', 'G653', 'pref-public@gironde.gouv.fr'),
(35, '34', 'Hérault', 'HÉRAULT', 'herault', 'H643', 'sgc-usager-accueil@herault.gouv.fr'),
(36, '35', 'Ile-et-Vilaine', 'ILE-ET-VILAINE', 'ile-et-vilaine', 'I43145', 'prefecture@ille-et-vilaine.gouv.fr'),
(37, '36', 'Indre', 'INDRE', 'indre', 'I536', 'contact@indre.fr'),
(38, '37', 'Indre-et-Loire', 'INDRE-ET-LOIRE', 'indre-et-loire', 'I536346', 'prefecture@indre-et-loire.gouv.fr'),
(39, '38', 'Isère', 'ISÈRE', 'isere', 'I260', 'cg38@cg38.fr'),
(40, '39', 'Jura', 'JURA', 'jura', 'J600', NULL),
(41, '40', 'Landes', 'LANDES', 'landes', 'L532', 'prefecture@landes.gouv.fr'),
(42, '41', 'Loir-et-Cher', 'LOIR-ET-CHER', 'loir-et-cher', 'L6326', 'conseil.departemental@departement41.fr'),
(43, '42', 'Loire', 'LOIRE', 'loire', 'L600', 'prefecture@loire.gouv.fr'),
(44, '43', 'Haute-Loire', 'HAUTE-LOIRE', 'haute-loire', 'H346', 'departement@hauteloire.fr'),
(45, '44', 'Loire-Atlantique', 'LOIRE-ATLANTIQUE', 'loire-atlantique', 'L634532', 'prefecture@loire-atlantique.gouv.fr'),
(46, '45', 'Loiret', 'LOIRET', 'loiret', 'L630', 'pref-internet@loiret.gouv.fr'),
(47, '46', 'Lot', 'LOT', 'lot', 'L300', 'communication@lot.fr'),
(48, '47', 'Lot-et-Garonne', 'LOT-ET-GARONNE', 'lot-et-garonne', 'L3265', 'departement@lotetgaronne.fr'),
(49, '48', 'Lozère', 'LOZÈRE', 'lozere', 'L260', 'contact@lozere.fr'),
(50, '49', 'Maine-et-Loire', 'MAINE-ET-LOIRE', 'maine-et-loire', 'M346', 'info@maine-et-loire.fr'),
(51, '50', 'Manche', 'MANCHE', 'manche', 'M200', 'dclic@.fr'),
(52, '51', 'Marne', 'MARNE', 'marne', 'M650', NULL),
(53, '52', 'Haute-Marne', 'HAUTE-MARNE', 'haute-marne', 'H3565', NULL),
(54, '53', 'Mayenne', 'MAYENNE', 'mayenne', 'M000', 'relations-public@mairie-mayenne.net'),
(55, '54', 'Meurthe-et-Moselle', 'MEURTHE-ET-MOSELLE', 'meurthe-et-moselle', 'M63524', 'pref-informations@meurthe-et-moselle.gouv.fr'),
(56, '55', 'Meuse', 'MEUSE', 'meuse', 'M200', 'contact@meuse.fr'),
(57, '56', 'Morbihan', 'MORBIHAN', 'morbihan', 'M615', 'courrier@morbihan.fr'),
(58, '57', 'Moselle', 'MOSELLE', 'moselle', 'M240', 'pref-sii-webmestre@moselle.gouv.fr'),
(59, '58', 'Nièvre', 'NIÈVRE', 'nievre', 'N160', NULL),
(60, '59', 'Nord', 'NORD', 'nord', 'N630', NULL),
(61, '60', 'Oise', 'OISE', 'oise', 'O200', 'pref-snpc@oise.gouv.fr'),
(62, '61', 'Orne', 'ORNE', 'orne', 'O650', 'contact@orne.fr'),
(63, '62', 'Pas-de-Calais', 'PAS-DE-CALAIS', 'pas-de-calais', 'P23242', 'prefecture@pas-de-calais.gouv.fr'),
(64, '63', 'Puy-de-Dôme', 'PUY-DE-DÔME', 'puy-de-dome', 'P350', 'pref-public@puy-de-dome.gouv.fr'),
(65, '64', 'Pyrénées-Atlantiques', 'PYRÉNÉES-ATLANTIQUES', 'pyrenees-atlantiques', 'P65234532', 'contact@le64fr'),
(66, '65', 'Hautes-Pyrénées', 'HAUTES-PYRÉNÉES', 'hautes-pyrenees', 'H321652', 'prefecture@hautes-pyrenees.gouv.fr'),
(67, '66', 'Pyrénées-Orientales', 'PYRÉNÉES-ORIENTALES', 'pyrenees-orientales', 'P65265342', 'pref-contact@pyrenees-orientales.gouv.fr'),
(68, '67', 'Bas-Rhin', 'BAS-RHIN', 'bas-rhin', 'B265', 'pref-webmaster@bas-rhin.gouv.fr'),
(69, '68', 'Haut-Rhin', 'HAUT-RHIN', 'haut-rhin', 'H365', 'pref-communication@haut-rhin.gouv.fr'),
(70, '69', 'Rhône', 'RHÔNE', 'rhone', 'R500', 'prefecture@rhone.pref.gouv.fr'),
(71, '70', 'Haute-Saône', 'HAUTE-SAÔNE', 'haute-saone', 'H325', 'sve@haute-saone.fr'),
(72, '71', 'Saône-et-Loire', 'SAÔNE-ET-LOIRE', 'saone-et-loire', 'S5346', 'courrier@saone-et-loire.pref.gouv.fr'),
(73, '72', 'Sarthe', 'SARTHE', 'sarthe', 'S630', 'pref-mail@sarthe.gouv.fr'),
(74, '73', 'Savoie', 'SAVOIE', 'savoie', 'S100', 'prefecture@savoie.gouv.fr'),
(75, '74', 'Haute-Savoie', 'HAUTE-SAVOIE', 'haute-savoie', 'H321', 'communication@hautesavoie.fr'),
(76, '75', 'Paris', 'PARIS', 'paris', 'P620', NULL),
(77, '76', 'Seine-Maritime', 'SEINE-MARITIME', 'seine-maritime', 'S5635', 'president@seinemaritime.fr'),
(78, '77', 'Seine-et-Marne', 'SEINE-ET-MARNE', 'seine-&-marne', 'S53565', 'departement@departement77.fr'),
(79, '78', 'Yvelines', 'YVELINES', 'yvelines', 'Y1452', 'pref-communication@yvelines.gouv.fr'),
(80, '79', 'Deux-Sèvres', 'DEUX-SÈVRES', 'deux-sevres', 'D2162', 'courrier@deux-sevres.pref.gouv.fr'),
(81, '80', 'Somme', 'SOMME', 'somme', 'S500', 'contact@somme.fr'),
(82, '81', 'Tarn', 'TARN', 'tarn', 'T650', 'contact@tarn.fr'),
(83, '82', 'Tarn-et-Garonne', 'TARN-ET-GARONNE', 'tarn-et-garonne', 'T653265', 'courrier@ledepartement82.fr'),
(84, '83', 'Var', 'VAR', 'var', 'V600', 'contact@var.fr'),
(85, '84', 'Vaucluse', 'VAUCLUSE', 'vaucluse', 'V242', 'pref-contact@vaucluse.gouv.fr'),
(86, '85', 'Vendée', 'VENDÉE', 'vendee', 'V530', 'communication@vendee.fr'),
(87, '86', 'Vienne', 'VIENNE', 'vienne', 'V500', NULL),
(88, '87', 'Haute-Vienne', 'HAUTE-VIENNE', 'haute-vienne', 'H315', 'president@haute-vienne.fr'),
(89, '88', 'Vosges', 'VOSGES', 'vosges', 'V200', NULL),
(90, '89', 'Yonne', 'YONNE', 'yonne', 'Y500', 'prefecture@yonne.gouv.fr'),
(91, '900', 'Territoire de Belfort*', 'TERRITOIRE DE BELFORT', 'territoire-de-belfort', 'T636314163', 'contact@territoiredebelfortfr'),
(92, '91', 'Essonne', 'ESSONNE', 'essonne', 'E250', 'prefecture@essonne.gouv.fr'),
(93, '92', 'Hauts-de-Seine', 'HAUTS-DE-SEINE', 'hauts-de-seine92', 'H32325', 'courrier@hauts-de-seine.pref.gouv.f'),
(94, '93', 'Seine-Saint-Denis', 'SEINE-SAINT-DENIS', 'seine-saint-denis', 'S525352', 'prefecture@seine-saint-denis..gouv.fr'),
(95, '94', 'Val-de-Marne', 'VAL-DE-MARNE', 'val-de-marne', 'V43565', 'prefecture@val-de-marne.gouv.fr'),
(96, '95', 'Val-d\'oise', 'VAL-D\'OISE', 'val-doise', 'V432', 'prefecture@val-doise.gouv.fr'),
(97, '976', 'Mayotte', 'MAYOTTE', 'mayotte', 'M300', NULL),
(98, '971', 'Guadeloup', 'GUADELOUPE', 'guadeloupe', 'G341', NULL),
(99, '973', 'Guyane', 'GUYANE', 'guyane', 'G500', 'courrier@guyane.pref.gouv.fr'),
(100, '972', 'Martinique', 'MARTINIQUE', 'martinique', 'M6352', 'contact.prefecture@martinique.pref.gouv.fr'),
(101, '974', 'Réunion', 'RÉUNION', 'reunion', 'R500', 'accueil@cg974.fr');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `departement`
--
ALTER TABLE `departement`
  ADD PRIMARY KEY (`departement_id`),
  ADD KEY `departement_slug` (`departement_slug`),
  ADD KEY `departement_code` (`departement_code`),
  ADD KEY `departement_nom_soundex` (`departement_nom_soundex`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `departement`
--
ALTER TABLE `departement`
  MODIFY `departement_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
