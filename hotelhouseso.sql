-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 08 sep. 2023 à 15:35
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `hotelhouseso`
--

-- --------------------------------------------------------

--
-- Structure de la table `avis`
--

CREATE TABLE `avis` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `avis` longtext NOT NULL,
  `note` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `chambre`
--

CREATE TABLE `chambre` (
  `id` int(11) NOT NULL,
  `titre` varchar(255) NOT NULL,
  `description_courte` varchar(255) NOT NULL,
  `description_longue` longtext NOT NULL,
  `photo` varchar(255) NOT NULL,
  `prix_journalier` int(11) NOT NULL,
  `date_enregistrement` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `chambre`
--

INSERT INTO `chambre` (`id`, `titre`, `description_courte`, `description_longue`, `photo`, `prix_journalier`, `date_enregistrement`) VALUES
(1, 'chambre bagolet classique', 'jolie', 'jolie hotel  aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 'photo', 79, '2018-01-01 00:00:00'),
(2, 'chambre bagolet classique', 'Hôtel Économique : L\'hôtel économique est conçu pour les voyageurs à la recherche d\'un hébergement abordable et fonctionnel. Il propose des chambres simples et propres, généralement sans fioritures, mais offrant tout le confort de base.', 'Hôtel Économique :\r\nL\'hôtel économique est conçu pour les voyageurs à la recherche d\'un hébergement abordable et fonctionnel. Il propose des chambres simples et propres, généralement sans fioritures, mais offrant tout le confort de base. Les chambres sont équipées de lits confortables, d\'une salle de bains privative, d\'une télévision et d\'un accès Wi-Fi gratuit. Les installations de l\'hôtel peuvent inclure un petit-déjeuner continental gratuit, une réception ouverte 24 heures sur 24 et un parking gratuit. C\'est un choix idéal pour les voyageurs soucieux de leur budget qui recherchent un endroit propre et confortable pour se reposer.', 'photo', 69, '2018-01-01 00:00:00'),
(3, 'chambre moyen de gamme', 'Hôtel de Gamme Moyenne : Un hôtel de gamme moyenne offre une expérience plus complète et confortable pour les voyageurs qui souhaitent un mélange d\'élégance et de valeur. Les chambres sont plus spacieuses et bien aménagées, avec des équipements modernes.', 'Hôtel de Gamme Moyenne :\r\nUn hôtel de gamme moyenne offre une expérience plus complète et confortable pour les voyageurs qui souhaitent un mélange d\'élégance et de valeur. Les chambres sont plus spacieuses et bien aménagées, avec des équipements modernes tels que des télévisions à écran plat, des minibars et un service en chambre. Les restaurants sur place servent une cuisine de qualité, et les clients peuvent généralement profiter d\'une salle de sport, d\'une piscine et de services de spa. La réception est souvent ouverte 24 heures sur 24, et l\'hôtel propose des services de conciergerie pour répondre aux besoins des clients. C\'est un choix populaire pour les voyageurs d\'affaires et les vacanciers qui recherchent un bon rapport qualité-prix.', 'photo moyen de gamme', 100, '2020-01-01 00:00:00'),
(4, 'chambre de luxe', 'Hôtel de Luxe : Les hôtels de luxe sont le summum de l\'hébergement, offrant un service personnalisé et des installations haut de gamme. Les chambres sont élégamment décorées avec des matériaux de qualité supérieure, des œuvres d\'art.', 'Hôtel de Luxe :\r\nLes hôtels de luxe sont le summum de l\'hébergement, offrant un service personnalisé et des installations haut de gamme. Les chambres sont élégamment décorées avec des matériaux de qualité supérieure, des œuvres d\'art et des équipements de pointe. Les clients peuvent s\'attendre à des lits de luxe, des salles de bains somptueuses avec des baignoires spa, des peignoirs et des pantoufles. Les restaurants sur place proposent une cuisine raffinée préparée par des chefs renommés, et les bars à cocktails offrent une sélection de boissons haut de gamme. Les hôtels de luxe offrent également des services de conciergerie, des spas de classe mondiale, des piscines spectaculaires et des installations de remise en forme de pointe. C\'est un choix privilégié pour les voyageurs en quête d\'une expérience inoubliable et d\'un service exceptionnel.', 'photo chambre de luxe', 600, '2021-09-01 00:00:00'),
(5, 'chambre de luxe', 'Hôtel de Luxe : Les hôtels de luxe sont le summum de l\'hébergement, offrant un service personnalisé et des installations haut de gamme. Les chambres sont élégamment décorées avec des matériaux de qualité supérieure, des œuvres d\'art.', 'Hôtel de Luxe :\r\nLes hôtels de luxe sont le summum de l\'hébergement, offrant un service personnalisé et des installations haut de gamme. Les chambres sont élégamment décorées avec des matériaux de qualité supérieure, des œuvres d\'art et des équipements de pointe. Les clients peuvent s\'attendre à des lits de luxe, des salles de bains somptueuses avec des baignoires spa, des peignoirs et des pantoufles. Les restaurants sur place proposent une cuisine raffinée préparée par des chefs renommés, et les bars à cocktails offrent une sélection de boissons haut de gamme. Les hôtels de luxe offrent également des services de conciergerie, des spas de classe mondiale, des piscines spectaculaires et des installations de remise en forme de pointe. C\'est un choix privilégié pour les voyageurs en quête d\'une expérience inoubliable et d\'un service exceptionnel.', 'photo chambre de luxe', 600, '2021-09-01 00:00:00'),
(6, 'chambre de luxe', 'Hôtel de Luxe : Les hôtels de luxe sont le summum de l\'hébergement, offrant un service personnalisé et des installations haut de gamme. Les chambres sont élégamment décorées avec des matériaux de qualité supérieure, des œuvres d\'art.', 'Hôtel de Luxe :\r\nLes hôtels de luxe sont le summum de l\'hébergement, offrant un service personnalisé et des installations haut de gamme. Les chambres sont élégamment décorées avec des matériaux de qualité supérieure, des œuvres d\'art et des équipements de pointe. Les clients peuvent s\'attendre à des lits de luxe, des salles de bains somptueuses avec des baignoires spa, des peignoirs et des pantoufles. Les restaurants sur place proposent une cuisine raffinée préparée par des chefs renommés, et les bars à cocktails offrent une sélection de boissons haut de gamme. Les hôtels de luxe offrent également des services de conciergerie, des spas de classe mondiale, des piscines spectaculaires et des installations de remise en forme de pointe. C\'est un choix privilégié pour les voyageurs en quête d\'une expérience inoubliable et d\'un service exceptionnel.', 'photo chambre de luxe', 600, '2021-09-01 00:00:00'),
(7, 'chambre de luxe', 'Hôtel de Luxe :  L\'Hôtel Royal Palace est un joyau de luxe qui offre une expérience inégalée. Situé dans un bâtiment historique magnifiquement restauré, cet hôtel propose des suites somptueuses avec des vues panoramiques sur la ville, des lits king-size.', 'Hôtel de Luxe :\r\n\r\nL\'Hôtel Royal Palace est un joyau de luxe qui offre une expérience inégalée. Situé dans un bâtiment historique magnifiquement restauré, cet hôtel propose des suites somptueuses avec des vues panoramiques sur la ville, des lits king-size, un service de majordome 24 heures sur 24, une salle de bains en marbre avec une baignoire spa et une douche à jets multiples. Les clients ont accès à une piscine intérieure, un spa de classe mondiale, plusieurs restaurants étoilés au guide Michelin et un service de voiturier. L\'hôtel organise également des visites privées de la ville et des excursions en hélicoptère. C\'est l\'endroit idéal pour les voyageurs en quête d\'une expérience luxueuse et inoubliable.', 'photo chambre de luxe', 800, '2020-01-12 00:00:00'),
(8, 'twrqh', 'qrthqrth', 'qehrqrhrqth', 'qrhtqrth', 49, '2018-01-01 00:00:00'),
(9, 'twrqh', 'qrthqrth', 'qehrqrhrqth', 'qrhtqrth', 49, '2018-01-01 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20230905124807', '2023-09-05 14:49:10', 27),
('DoctrineMigrations\\Version20230906072630', '2023-09-06 09:26:53', 42),
('DoctrineMigrations\\Version20230906133320', '2023-09-06 15:34:07', 57),
('DoctrineMigrations\\Version20230908124802', '2023-09-08 14:48:37', 38);

-- --------------------------------------------------------

--
-- Structure de la table `messenger_messages`
--

CREATE TABLE `messenger_messages` (
  `id` bigint(20) NOT NULL,
  `body` longtext NOT NULL,
  `headers` longtext NOT NULL,
  `queue_name` varchar(190) NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `available_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `delivered_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `slider`
--

CREATE TABLE `slider` (
  `id` int(11) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `ordre` int(11) NOT NULL,
  `date_enregistrement` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(180) NOT NULL,
  `roles` longtext NOT NULL COMMENT '(DC2Type:json)',
  `password` varchar(255) NOT NULL,
  `pseudo` varchar(20) NOT NULL,
  `nom` varchar(20) NOT NULL,
  `prenom` varchar(20) NOT NULL,
  `civilite` varchar(6) NOT NULL,
  `statut` int(11) NOT NULL,
  `date_enregistrement` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`, `pseudo`, `nom`, `prenom`, `civilite`, `statut`, `date_enregistrement`) VALUES
(1, 'qeherhg', '[]', '$2y$13$OxXKYd24vjVJa/g1ZLjEHeb4fdiwzBDhTP8LNFWTczAHRiVye418S', 'rsjuhrtjtzyj', 'srtjtyjtyj', 'm', 'm', 1, '2023-09-06 10:25:45'),
(2, 'admin@admin.com', '[\"ROLE_ADMIN\"]', '$2y$13$jD1pG4kfHGOdiloCvbwsUuIGoCZ0LKum8vCveZ06aSysAwt.QFIJy', 'moi', 'o', 's', 'm', 1, '2023-09-06 10:27:36'),
(3, '1@gmail.com', '[]', '$2y$13$4twfacxnUImOemB.BR5Kr.YDDeW7AESmPUH.3BuV.DgxYBxwwFqMy', 'qghzrhz', 'qegrhtyjkuyk', 'zrhyteyku', 'm', 1, '2023-09-06 10:30:19'),
(4, '2@gmail.com', '[]', '$2y$13$GC6f4StpKZBAQ1Sc8z4Zr.pbk5d3rhR9XE7M1encfe1bSZK4vV4T.', 'client', 'manupre', 's', 'm', 1, '2023-09-06 10:32:27'),
(5, '¨TSYII@DFHFSH', '[]', '$2y$13$uUrw.sDfqHKU8XtyUGBFZOB.U/ez7sMMbdbQcQU6Dg9XHrwz4rT5y', 'sryhrtye', 'DQRYZRTYK', 'FUIPÏO0', 'M', 1, '2023-09-06 16:14:17'),
(6, 'fghrthfgh@sdqgerg', '[]', '$2y$13$Qe/ng9h8NjoL6Zzebrmoe.44CDJGXY0xIqiECg6BKdldZbodOU8fa', 'dzeerz', 'sfecxc', 'sdfgrer', 'f', 1, '2023-09-06 16:15:33');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `avis`
--
ALTER TABLE `avis`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `chambre`
--
ALTER TABLE `chambre`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  ADD KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  ADD KEY `IDX_75EA56E016BA31DB` (`delivered_at`);

--
-- Index pour la table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `avis`
--
ALTER TABLE `avis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `chambre`
--
ALTER TABLE `chambre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
