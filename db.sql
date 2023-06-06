-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : lun. 05 juin 2023 à 17:29
-- Version du serveur : 10.5.20-MariaDB
-- Version de PHP : 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Base de données : `id20192227_samabase`
--

-- --------------------------------------------------------

--
-- Structure de la table `experiences`
--

CREATE TABLE `experiences` (
  `experience_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `experience` varchar(255) NOT NULL,
  `entreprise` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `d_date` date DEFAULT NULL,
  `f_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `experiences`
--

INSERT INTO `experiences` (`experience_id`, `user_id`, `experience`, `entreprise`, `description`, `d_date`, `f_date`) VALUES
(1, 1, 'Developer', 'Kinefashion', 'Tempor eos dolore amet tempor dolor tempor. Dolore ea magna sit amet dolor eirmod. Eos ipsum est tempor dolor. Clita lorem kasd sed ea lorem diam ea lorem eirmod duo sit ipsum stet lorem diam', '2020-01-01', '2022-01-01'),
(2, 1, 'Developer', 'Sosh', 'Tempor eos dolore amet tempor dolor tempor. Dolore ea magna sit amet dolor eirmod. Eos ipsum est tempor dolor. Clita lorem kasd sed ea lorem diam ea lorem eirmod duo sit ipsum stet lorem diam', '2020-01-01', '2022-01-01'),
(3, 1, 'Takamtiku', 'Kinefashion', 'Tempor eos dolore amet tempor dolor tempor. Dolore ea magna sit amet dolor eirmod. Eos ipsum est tempor dolor. Clita lorem kasd sed ea lorem diam ea lorem eirmod duo sit ipsum stet lorem diam', '2020-01-01', '2022-01-01'),
(4, 1, 'Prospecteur Web', 'KSFCB', 'Tempor eos dolore amet tempor dolor tempor. Dolore ea magna sit amet dolor eirmod. Eos ipsum est tempor dolor. Clita lorem kasd sed ea lorem diam ea lorem eirmod duo sit ipsum stet lorem diam', '2020-05-03', '2023-06-04');

-- --------------------------------------------------------

--
-- Structure de la table `info`
--

CREATE TABLE `info` (
  `info_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contexte` varchar(255) NOT NULL,
  `u_message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `info`
--

INSERT INTO `info` (`info_id`, `user_id`, `username`, `email`, `contexte`, `u_message`) VALUES
(1, 1, 'momar', 'momar@gmail.com', 'Collabe', 'Diam rebum sea stet rebum ea. Et kasd amet et accusam elitr voluptua. Tempor dolore sit'),
(2, 1, 'Momo', 'momo@gmail.com', 'Collabe', 'Diam rebum sea stet rebum ea. Et kasd amet et accusam elitr voluptua. Tempor dolore sit'),
(3, 2, 'Fallou', 'fallou@gmail.com', 'Collabe', 'Diam rebum sea stet rebum ea. Et kasd amet et accusam elitr voluptua. Tempor dolore sit');

-- --------------------------------------------------------

--
-- Structure de la table `news`
--

CREATE TABLE `news` (
  `news_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `news_date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `news`
--

INSERT INTO `news` (`news_id`, `user_id`, `email`, `news_date`) VALUES
(1, 1, 'iboufreshboy@gmail.com', '2023-06-05 16:57:25'),
(2, 1, 'karish@gmail.com', '2023-06-05 16:57:25'),
(3, 1, 'momar@gmail.com', '2023-06-05 16:57:25'),
(4, 1, 'momo@gmail.com', '2023-06-05 16:57:25');

-- --------------------------------------------------------

--
-- Structure de la table `portfolio`
--

CREATE TABLE `portfolio` (
  `portfolio_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `titre` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `image_actuel` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `portfolio`
--

INSERT INTO `portfolio` (`portfolio_id`, `user_id`, `titre`, `category`, `description`, `image`, `image_actuel`) VALUES
(1, 1, 'Port1', 'web', 'Justo sit justo eos amet tempor amet clita amet ipsum eos elitr. Amet lorem lorem lorem est amet labore', 'portfolio-1.jpg', ''),
(2, 1, 'Port2', 'web', 'Justo sit justo eos amet tempor amet clita amet ipsum eos elitr. Amet lorem lorem lorem est amet labore', 'portfolio-2.jpg', ''),
(3, 1, 'Port3', 'mobile', 'Justo sit justo eos amet tempor amet clita amet ipsum eos elitr. Amet lorem lorem lorem est amet labore', 'portfolio-1.jpg', ''),
(4, 1, 'Port4', 'mobile', 'Justo sit justo eos amet tempor amet clita amet ipsum eos elitr. Amet lorem lorem lorem est amet labore', 'portfolio-2.jpg', ''),
(5, 1, 'Port5', 'logiciel', 'Justo sit justo eos amet tempor amet clita amet ipsum eos elitr. Amet lorem lorem lorem est amet labore', 'portfolio-3.jpg', ''),
(6, 1, 'Port6', 'logiciel', 'Justo sit justo eos amet tempor amet clita amet ipsum eos elitr. Amet lorem lorem lorem est amet labore', 'portfolio-4.jpg', ''),
(7, 1, '', 'mobile', 'Diam rebum sea stet rebum ea. Et kasd amet et accusam elitr voluptua. Tempor dolore sit et accusam', 'portfolio-7.jpg', 'portfolio-7.jpg'),
(8, 1, 'Port8', 'web', 'Tempor eos dolore amet tempor dolor tempor. Dolore ea magna sit amet dolor eirmod.', 'portfolio-8.jpg', 'portfolio-8.jpg'),
(9, 1, 'Port8', 'web', 'Tempor eos dolore amet tempor dolor tempor. Dolore ea magna sit amet dolor eirmod.', 'portfolio-8.jpg', 'portfolio-8.jpg'),
(10, 1, 'Port10', 'logiciel', 'JISDJKSQDJDNAZJKSQ', 'portfolio-8.jpg', 'portfolio-8.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `qualifications`
--

CREATE TABLE `qualifications` (
  `qualif_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `qualif` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `qualifications`
--

INSERT INTO `qualifications` (`qualif_id`, `user_id`, `qualif`) VALUES
(1, 1, 'Web Designer'),
(2, 1, 'Web Developer'),
(3, 1, 'Front End Developer'),
(4, 1, ' Apps Designer'),
(5, 1, 'Apps Developer'),
(6, 1, 'Wordpress');

-- --------------------------------------------------------

--
-- Structure de la table `services`
--

CREATE TABLE `services` (
  `service_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `service` varchar(255) NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `services`
--

INSERT INTO `services` (`service_id`, `user_id`, `service`, `description`) VALUES
(1, 1, 'Web Design', 'Justo sit justo eos amet tempor amet clita amet ipsum eos elitr. Amet lorem lorem lorem est amet labore'),
(2, 1, 'Apps Development', 'Justo sit justo eos amet tempor amet clita amet ipsum eos elitr. Amet lorem lorem lorem est amet labore'),
(3, 1, 'SEO', 'Justo sit justo eos amet tempor amet clita amet ipsum eos elitr. Amet lorem lorem lorem est amet labore'),
(4, 1, 'Content Creating', 'Justo sit justo eos amet tempor amet clita amet ipsum eos elitr. Amet lorem lorem lorem est amet labore'),
(5, 1, 'Operateur de Saisi', 'Justo sit justo eos amet tempor amet clita amet ipsum eos elitr. Amet lorem lorem lorem est amet labore	'),
(6, 1, 'Bureautique', 'Justo sit justo eos amet tempor amet clita amet ipsum eos elitr. Amet lorem lorem lorem est amet labore');

-- --------------------------------------------------------

--
-- Structure de la table `skills`
--

CREATE TABLE `skills` (
  `skill_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `skill` varchar(255) NOT NULL,
  `skill_value` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `skills`
--

INSERT INTO `skills` (`skill_id`, `user_id`, `skill`, `skill_value`) VALUES
(1, 1, 'HTML', 90),
(2, 1, 'CSS', 90),
(3, 1, 'PHP', 90),
(4, 1, 'Javascript', 90),
(5, 1, 'Angular JS', 90),
(6, 1, 'Wordpress', 50),
(7, 1, 'Django', 95),
(8, 1, 'Laravel', 45),
(12, 1, 'CMS', 35),
(13, 1, 'React', 60),
(14, 2, 'HTML', 100);

-- --------------------------------------------------------

--
-- Structure de la table `sociaux`
--

CREATE TABLE `sociaux` (
  ` social_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `twitter` varchar(255) NOT NULL,
  `facebook` varchar(255) NOT NULL,
  `linkedin` varchar(255) NOT NULL,
  `instagram` varchar(255) NOT NULL,
  `whatsapp` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `sociaux`
--

INSERT INTO `sociaux` (` social_id`, `user_id`, `twitter`, `facebook`, `linkedin`, `instagram`, `whatsapp`) VALUES
(1, 1, 'twitter', 'facebook', 'linkedin', 'instagram', 'whatsapp');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `degree` varchar(255) NOT NULL,
  `description` longtext DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `address` varchar(255) NOT NULL,
  `user_date` date DEFAULT NULL,
  `experience` int(11) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `cv` varchar(255) NOT NULL,
  `job` varchar(255) NOT NULL,
  `n_client` int(11) DEFAULT NULL,
  `n_project` int(11) DEFAULT NULL,
  `image_actuel` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `degree`, `description`, `phone`, `address`, `user_date`, `experience`, `email`, `image`, `cv`, `job`, `n_client`, `n_project`, `image_actuel`) VALUES
(1, 'Ibrahima Diallo', 'Princekh@lil1', 'Licence', 'Diam rebum sea stet rebum ea. Et kasd amet et accusam elitr voluptua. Tempor dolore sit et accusam ipsum erat duo. Gubergren et takimata dolor duo amet et sanctus elitr lorem. Ipsum amet duo rebum dolor labore. No diam duo lorem elitr dolor takimata elitr no. Magna et gubergren duo ipsum sed, amet ea voluptua dolores voluptua dolor ipsum et. Sit takimata erat consetetur invidunt lorem consetetur. Lorem magna diam vero nonumy. Aliquyam diam voluptua magna et magna nonumy. Accusam rebum clita et sit vero lorem, voluptua amet sit eos no et labore vero, et consetetur justo et et sit aliquyam labore, sit erat lorem justo dolores kasd est sit. Dolor et accusam ea et dolor sit.', 784720536, 'Sicap Baobab', '2000-01-17', 10, 'iboufreshboy@gmail.com', 'profile.jpg', '', 'Available', 5, 5, 'profile.jpg'),
(2, 'Momo', 'Princekh@lil1', 'Licence', 'Diam rebum sea stet rebum ea. Et kasd amet et accusam elitr voluptua. Tempor dolore sit et accusam ipsum erat duo. Gubergren et takimata dolor duo amet et sanctus elitr lorem. Ipsum amet duo rebum dolor labore. No diam duo lorem elitr dolor takimata elitr no. Magna et gubergren duo ipsum sed, amet ea voluptua dolores voluptua dolor ipsum et. Sit takimata erat consetetur invidunt lorem consetetur. Lorem magna diam vero nonumy. Aliquyam diam voluptua magna et magna nonumy. Accusam rebum clita et sit vero lorem, voluptua amet sit eos no et labore vero, et consetetur justo et et sit aliquyam labore, sit erat lorem justo dolores kasd est sit. Dolor et accusam ea et dolor sit.', 784720536, 'Big Town', '2000-01-17', 10, 'momo@gmail.com', 'profile.jpg', '', 'Disponible', 5, 5, 'profile.jpg');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `experiences`
--
ALTER TABLE `experiences`
  ADD PRIMARY KEY (`experience_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Index pour la table `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`info_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Index pour la table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`news_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Index pour la table `portfolio`
--
ALTER TABLE `portfolio`
  ADD PRIMARY KEY (`portfolio_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Index pour la table `qualifications`
--
ALTER TABLE `qualifications`
  ADD PRIMARY KEY (`qualif_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Index pour la table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`service_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Index pour la table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`skill_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Index pour la table `sociaux`
--
ALTER TABLE `sociaux`
  ADD PRIMARY KEY (` social_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `experiences`
--
ALTER TABLE `experiences`
  MODIFY `experience_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `info`
--
ALTER TABLE `info`
  MODIFY `info_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `news`
--
ALTER TABLE `news`
  MODIFY `news_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `portfolio`
--
ALTER TABLE `portfolio`
  MODIFY `portfolio_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `qualifications`
--
ALTER TABLE `qualifications`
  MODIFY `qualif_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `services`
--
ALTER TABLE `services`
  MODIFY `service_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `skills`
--
ALTER TABLE `skills`
  MODIFY `skill_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `sociaux`
--
ALTER TABLE `sociaux`
  MODIFY ` social_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `experiences`
--
ALTER TABLE `experiences`
  ADD CONSTRAINT `experiences_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Contraintes pour la table `info`
--
ALTER TABLE `info`
  ADD CONSTRAINT `info_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Contraintes pour la table `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `news_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Contraintes pour la table `portfolio`
--
ALTER TABLE `portfolio`
  ADD CONSTRAINT `portfolio_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Contraintes pour la table `qualifications`
--
ALTER TABLE `qualifications`
  ADD CONSTRAINT `qualifications_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Contraintes pour la table `services`
--
ALTER TABLE `services`
  ADD CONSTRAINT `services_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Contraintes pour la table `skills`
--
ALTER TABLE `skills`
  ADD CONSTRAINT `skills_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Contraintes pour la table `sociaux`
--
ALTER TABLE `sociaux`
  ADD CONSTRAINT `sociaux_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);
COMMIT;
