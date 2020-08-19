-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 19 août 2020 à 23:19
-- Version du serveur :  10.4.11-MariaDB
-- Version de PHP : 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `map_api`
--

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `favoris`
--

CREATE TABLE `favoris` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `place_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vicinity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `open_now` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(37, '2014_10_12_000000_create_users_table', 1),
(38, '2014_10_12_100000_create_password_resets_table', 1),
(39, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(40, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(41, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(42, '2016_06_01_000004_create_oauth_clients_table', 1),
(43, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(44, '2019_08_19_000000_create_failed_jobs_table', 1),
(45, '2020_06_02_142316_create_favoris_table', 1);

-- --------------------------------------------------------

--
-- Structure de la table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('02ac41f3f945ab935490aaa53be975a101ec3ca07f4d541d0cb46db2ea506bea17531fe428302760', 9, 1, 'MyApp', '[]', 0, '2020-08-19 09:01:48', '2020-08-19 09:01:48', '2021-08-19 11:01:48'),
('05fd225c7c39eea0db9d1fbd3edba0b4b6ad334e90e343845c8cfd05951679f1bd75dd16c2fcf236', 3, 1, 'MyApp', '[]', 0, '2020-08-18 12:39:24', '2020-08-18 12:39:24', '2021-08-18 14:39:24'),
('06328c7669f85fa3704303764cc874f8383cc812f04dbb30b0f3a485182abe02d7a6f095b1ed09a0', 9, 1, 'MyApp', '[]', 0, '2020-08-19 09:44:06', '2020-08-19 09:44:06', '2021-08-19 11:44:06'),
('0aff0f37d9c7cfb8c44f02d732e8a8816a2ec79ebf7f0054af58f00de8bd3d927f5c420ecc5383fe', 9, 1, 'MyApp', '[]', 0, '2020-08-19 14:18:15', '2020-08-19 14:18:15', '2021-08-19 16:18:15'),
('11e859ad742edfd91ffaac5988b464bac0588cfb551dd3cd165f64a3d46f784558175731056aaf2a', 9, 1, 'MyApp', '[]', 0, '2020-08-19 18:23:37', '2020-08-19 18:23:37', '2021-08-19 20:23:37'),
('220ec3c229b0624ad0cb6fb39c3edd5e10cc1f9d21faed94d061e19f07adf5e178684f001f2599cc', 3, 1, 'MyApp', '[]', 0, '2020-08-18 12:47:32', '2020-08-18 12:47:32', '2021-08-18 14:47:32'),
('267ea5ddf954633e2696c99ef027d8e76bc0acdeaf83e8e68a73ee8ff04e969d51d7e68c6751b071', 9, 1, 'MyApp', '[]', 0, '2020-08-19 18:20:20', '2020-08-19 18:20:20', '2021-08-19 20:20:20'),
('3cf4853e282e79291f052fa1b50a777d460b79d3bdfeb7c18aceeb9499b746a3cb1e985b8dfd6b63', 4, 1, 'MyApp', '[]', 0, '2020-08-18 12:39:59', '2020-08-18 12:39:59', '2021-08-18 14:39:59'),
('3fc19470d51ec11813afcd4177202a750e6f8447898248549ac6efe7e77a4ebb63c720acb6e550b2', 3, 1, 'MyApp', '[]', 0, '2020-08-19 09:40:13', '2020-08-19 09:40:13', '2021-08-19 11:40:13'),
('45edde80758c34aad2b2d629030fee71dda58fa53455ebac9eb0798d56e047bae2f5ab2dafb01282', 5, 1, 'MyApp', '[]', 0, '2020-08-18 12:40:49', '2020-08-18 12:40:49', '2021-08-18 14:40:49'),
('46c672f76b72edc6bd20b131c4f049c8894edffdf42da37f638e8023d72164ad40d755a83a2e5841', 3, 1, 'MyApp', '[]', 0, '2020-08-19 09:03:52', '2020-08-19 09:03:52', '2021-08-19 11:03:52'),
('4e61de7d4f712758d6ac4445757edabf3e80b3c492159bd9ae4bb7aab9854bed742ff772b057584e', 9, 1, 'MyApp', '[]', 0, '2020-08-19 08:46:07', '2020-08-19 08:46:07', '2021-08-19 10:46:07'),
('71f53cbf40e96ca9a878ac05181de8911fb7eaacf606ce2756c7258f5fd13fcd83ba5bc81490d1b1', 3, 1, 'MyApp', '[]', 0, '2020-08-18 12:23:30', '2020-08-18 12:23:30', '2021-08-18 14:23:30'),
('84c899144eff996ef93f32ace574083ad612f91d50ace1f7d6729259941a5e59d1c4bb51b1eff06d', 11, 1, 'MyApp', '[]', 0, '2020-08-19 18:29:14', '2020-08-19 18:29:14', '2021-08-19 20:29:14'),
('87bbe16aaa357bb591f66a80caf67df7cd76d68e8109d43a556587bde9ec114a88d42e0c86fc7762', 12, 1, 'MyApp', '[]', 0, '2020-08-19 18:56:42', '2020-08-19 18:56:42', '2021-08-19 20:56:42'),
('9b832a99ec476267f3121a1811fb923f772439aa3702f15bd8a98847d1b563494baf69af05019b8b', 3, 1, 'MyApp', '[]', 0, '2020-08-18 12:38:42', '2020-08-18 12:38:42', '2021-08-18 14:38:42'),
('9c728d148e95ef23fd934ee7b900504691c7c1eafe0535b45878629277d8930a5d55c2e8ad3c3da1', 9, 1, 'MyApp', '[]', 0, '2020-08-18 14:21:34', '2020-08-18 14:21:34', '2021-08-18 16:21:34'),
('a135cf3013097d2913871a04a0620d1f0cb835022215ffac8b4a375b24961e9269c6a765f51817af', 3, 1, 'MyApp', '[]', 0, '2020-08-19 09:21:17', '2020-08-19 09:21:17', '2021-08-19 11:21:17'),
('a4fe2828b946f63653bd9bf7fb57f8012673732dd9054c1829f1290eac12ea90ecc910925dbd5285', 6, 1, 'MyApp', '[]', 0, '2020-08-18 12:43:05', '2020-08-18 12:43:05', '2021-08-18 14:43:05'),
('acb014d32f2758c9a9c92d74791825fcf1c1e37d9458a8b704ab43b137961f629a4b73d954eac1ad', 3, 1, 'MyApp', '[]', 0, '2020-08-19 09:26:39', '2020-08-19 09:26:39', '2021-08-19 11:26:39'),
('b4a15c80921d6113f5986aae51190b8d661ecc900d3a0898fb514eef9b98c77ad228d41a08a1e1ee', 3, 1, 'MyApp', '[]', 0, '2020-08-18 12:23:32', '2020-08-18 12:23:32', '2021-08-18 14:23:32'),
('db544e75119901bec964a75e7febc5a19db0a9b127797ae058e2d7d7ce2351b64705c83649da1707', 9, 1, 'MyApp', '[]', 0, '2020-08-19 10:10:02', '2020-08-19 10:10:02', '2021-08-19 12:10:02'),
('def603fcdc9fb4af39b2b1f75418810d62ca3de518f1c2b7dd4e4e02ef49290ac1a941d2788a7888', 7, 1, 'MyApp', '[]', 0, '2020-08-18 12:46:59', '2020-08-18 12:46:59', '2021-08-18 14:46:59'),
('ee4ab2756fc522a517560e583e532334b19d0c36517a34a563d1220cca7aa91774f8e78b532336c9', 3, 1, 'MyApp', '[]', 0, '2020-08-19 07:16:23', '2020-08-19 07:16:23', '2021-08-19 09:16:23'),
('f1878f943de5476025ef6d05732fe664267cd19771bda33d0968986eb9f6061df6f7eda284d73d6f', 2, 1, 'MyApp', '[]', 0, '2020-08-18 12:18:14', '2020-08-18 12:18:14', '2021-08-18 14:18:14'),
('f41a19d985a5d27f2fa332b5bb9f03d67b5b51166e4c3faa4b98d2c7238e1681d1ff946b6661a240', 9, 1, 'MyApp', '[]', 0, '2020-08-19 12:28:10', '2020-08-19 12:28:10', '2021-08-19 14:28:10'),
('ff2f890e426e10d8f77196e001eda0ce1edd30cfbf63bc51fe4a2748b523fb76637a0a431c26c928', 3, 1, 'MyApp', '[]', 0, '2020-08-18 12:21:39', '2020-08-18 12:21:39', '2021-08-18 14:21:39');

-- --------------------------------------------------------

--
-- Structure de la table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'RU4hV3vIk9zCPP52YuMu3o2ulUiJmhqCVNvzUktC', NULL, 'http://localhost', 1, 0, 0, '2020-08-18 12:15:53', '2020-08-18 12:15:53'),
(2, NULL, 'Laravel Password Grant Client', 'oBgP5OuuSR97VDDJoWWTMVco2LUEV4LXwfzPbyDp', 'users', 'http://localhost', 0, 1, 0, '2020-08-18 12:15:53', '2020-08-18 12:15:53');

-- --------------------------------------------------------

--
-- Structure de la table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-08-18 12:15:53', '2020-08-18 12:15:53');

-- --------------------------------------------------------

--
-- Structure de la table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` text COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '/img/avatar/avatar.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `nom`, `prenom`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'line', 'jack', 'jack@gmail.com', '/img/avatar/avatar.png', NULL, '$2y$10$FsqBkMpjmumCHaZ6J3Zl6O9wUWdgqr.K8FEUrS6S01fyrGWOfzwMO', NULL, '2020-08-18 12:14:58', '2020-08-18 12:14:58'),
(2, 'hanchir', 'lahcen', 'lahcen@gmail.com', '/img/avatar/avatar.png', NULL, '$2y$10$pHto1EYhAy7eFR6wUYpBZOVsgP4ECS15lr9Qm32ct.mfHVET16O62', NULL, '2020-08-18 12:18:13', '2020-08-18 12:18:13'),
(3, 'ouldjelloul', 'sara', 'sara@gmail.com', 'img/avatar/19-08-2020-daiP2AXP2N.jpeg', NULL, '$2y$10$DeAQr88dG07dArHn9/j5P.LjQ9NS5EmABdEvwYp6qY8/tJLeByAhe', NULL, '2020-08-18 12:21:39', '2020-08-19 09:41:42'),
(4, 'dada', 'dada', 'dada@gmail.com', '/img/avatar/avatar.png', NULL, '$2y$10$rVWvDc30ALo4t6ZVEUNhaOwS/E1EDSHzj8slUCIA3YIgiaM2hOw8O', NULL, '2020-08-18 12:39:59', '2020-08-18 12:39:59'),
(5, 'hgh', 'hghg', 'hghg@gmail.com', '/img/avatar/avatar.png', NULL, '$2y$10$0Ie/773c1bBzTiy0Od3OiucATgj2.OyIn5UR6sdfvqT4eckqHWT0W', NULL, '2020-08-18 12:40:48', '2020-08-18 12:40:48'),
(6, 'fhfgh', 'hfghfgh', 'hfghf@gmail.com', '/img/avatar/avatar.png', NULL, '$2y$10$hWeu9rmZ0YGa4ePY7NcSx.s5UlFZIMLMSX.wGtq0QXnjk7rs2327e', NULL, '2020-08-18 12:43:04', '2020-08-18 12:43:04'),
(7, 'dgdfgdf', 'fdgd', 'gdfgd@gmail.com', '/img/avatar/avatar.png', NULL, '$2y$10$ZkuixqJS6UW70awzWJpjNe2aY0NIIj6/K/E78IqJRw68BbcXrE4Ou', NULL, '2020-08-18 12:46:59', '2020-08-18 12:46:59'),
(9, 'El maachi', 'ikram', 'ikram@gmail.com', 'img/avatar/19-08-2020-1503WyqoP1.jpeg', NULL, '$2y$10$nRz9LjUqxrRi1rqLAkmT1.cogEPPAnNoRixLSuQf5z6sTWhMoqMYq', NULL, '2020-08-18 14:21:32', '2020-08-19 18:20:01'),
(11, 'taha', 'taha', 'taha@gmail.com', 'img/avatar/19-08-2020-7H6H3hbLRJ.jpeg', NULL, '$2y$10$0tgUIoQxYWpV.LRHY67El.UPXVz4cr.quFDdHBj8eihWeKqvIhZX2', NULL, '2020-08-19 18:29:14', '2020-08-19 18:55:06'),
(12, 'karima', 'Lloyd', 'karima@gmail.com', '/img/avatar/19-08-2020-K8N5rdS6Vv.jpeg', NULL, '$2y$10$VLeyJga/mw807MbKWfsuc.1YxJ1hUgYwrCucwyiQs3bi3vcCGhUta', NULL, '2020-08-19 18:56:42', '2020-08-19 19:00:47');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `favoris`
--
ALTER TABLE `favoris`
  ADD PRIMARY KEY (`id`),
  ADD KEY `favoris_user_id_foreign` (`user_id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Index pour la table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Index pour la table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Index pour la table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `favoris`
--
ALTER TABLE `favoris`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT pour la table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `favoris`
--
ALTER TABLE `favoris`
  ADD CONSTRAINT `favoris_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
