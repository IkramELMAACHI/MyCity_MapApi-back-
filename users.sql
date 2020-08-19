-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 19 août 2020 à 23:18
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
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
