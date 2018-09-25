-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  mar. 25 sep. 2018 à 17:44
-- Version du serveur :  10.1.35-MariaDB
-- Version de PHP :  7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `laravel57_oauth_api`
--

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 2),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 2),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 2),
(6, '2016_06_01_000004_create_oauth_clients_table', 2),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 2);

-- --------------------------------------------------------

--
-- Structure de la table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('1e7b901c1194df7d8b43424787f15f099f583a801763baa4504d75d282be9e117449b7ab7d3baa82', 11, 5, NULL, '[\"Hello\"]', 0, '2018-09-25 14:34:46', '2018-09-25 14:34:46', '2019-09-25 15:34:46'),
('223b3946a9de4cfcf4fa69dfbb3f4e1ac51fc436877d921122f87f5baa9d2a28a55cb1e9c09c520e', 11, 2, NULL, '[]', 0, '2018-09-25 14:09:11', '2018-09-25 14:09:11', '2019-09-25 15:09:11'),
('59afe3813c24f883e6e6edf7a80f8e960abe7af6eac9fb8360e64de45f7c9fdd95ac4c096fb0a76e', 11, 5, NULL, '[\"Hello\"]', 0, '2018-09-25 14:38:06', '2018-09-25 14:38:06', '2019-09-25 15:38:06'),
('6b307db7aca57b6fe42ebfa8808fc6c45781bb4f2f96958fc544a926a9c5c52c107e1ec7958fb66d', 11, 5, NULL, '[\"Hello\"]', 1, '2018-09-25 14:35:40', '2018-09-25 14:35:40', '2019-09-25 15:35:40'),
('7f7456687e65ab263029910b286b0cd4c0fd4f078d2d7cd526e75faeb939091e80f56aef268dd47e', 11, 1, 'medaimane', '[]', 0, '2018-09-25 14:13:47', '2018-09-25 14:13:47', '2019-09-25 15:13:47'),
('c4937fc8bcd4920c7500a4a815716fe60501947e7d222ed3b0c668743d34733531c10c00f0c6e812', 11, 5, NULL, '[]', 0, '2018-09-25 13:55:47', '2018-09-25 13:55:47', '2019-09-25 14:55:47'),
('ca38ec85bcd2947145c9c639bd82e4151a091e7ecedcc9d582a6ffeee33da6c2b1a64df50fc3cf68', 11, 5, NULL, '[\"Hello\",\"Goodbye\"]', 0, '2018-09-25 14:39:21', '2018-09-25 14:39:21', '2019-09-25 15:39:21'),
('d10320b1b86abcf5161bd03c678c7ef8d4ee87be8947aaa4eb6f3bdaff585740970c4523d4da2c49', 11, 5, NULL, '[\"Hello\"]', 1, '2018-09-25 14:37:22', '2018-09-25 14:37:22', '2019-09-25 15:37:22'),
('f07fc1b39ef4055d2c407301de70f981fd7a48e723a2da8d7510223c3678ffc9ffdb57d05714f5dc', 1, 5, NULL, '[]', 0, '2018-09-25 12:11:19', '2018-09-25 12:11:19', '2019-09-25 13:11:19');

-- --------------------------------------------------------

--
-- Structure de la table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `oauth_auth_codes`
--

INSERT INTO `oauth_auth_codes` (`id`, `user_id`, `client_id`, `scopes`, `revoked`, `expires_at`) VALUES
('3032d5457368ee195e68a18ca908eaca77066f858d0991847ccdf9bce54ddd97348a515bd20ac27d', 1, 5, '[]', 1, '2018-09-25 13:20:54'),
('4b21f3bb0fa080af0db3e176d57be195a4f9b0301c319d6544ae762a16504e5f542bfa4314cbb73b', 11, 5, '[\"Hello\"]', 1, '2018-09-25 15:44:45'),
('524d974b43bd641e719ea9cd817e8a8a3b48bd68b1bc1f099585554ccf2ff3ab91c219e5a2bf0aff', 11, 5, '[\"Hello\"]', 1, '2018-09-25 15:45:39'),
('8b4a8904c3feeb42943f4c763052d18f47d3081f38abebac64e12ace530b9bc7d783017bdb9b323e', 1, 5, '[]', 0, '2018-09-25 12:54:02'),
('b5ce04a4fc2c57a7141e4beb2502f80bd81485a0992470a5a57a5f4fe7d8411d9aa1cd9dead49a70', 11, 5, '[\"Hello\",\"Goodbye\"]', 1, '2018-09-25 15:49:20'),
('deb67d9ef2034d2ba8def4324e6e309a79d8cb0e80bb8d65d111f94d4bc49f82bf3a743d9f81e63c', 11, 5, '[]', 1, '2018-09-25 15:05:45');

-- --------------------------------------------------------

--
-- Structure de la table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
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

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'OAuth API Laravel/Passport Personal Access Client', 'qiP2S0xsIa14RDi3XIHNazupt65SLy6gZplo5pra', 'http://localhost', 1, 0, 0, '2018-09-24 15:50:48', '2018-09-24 15:50:48'),
(2, NULL, 'OAuth API Laravel/Passport Password Grant Client', 'zMSGW0rgJ6PFqdT6tMjiBQFWYJiV1q6tOZdn9012', 'http://localhost', 0, 1, 0, '2018-09-24 15:50:48', '2018-09-24 15:50:48'),
(5, 1, 'demo', 'upuuMEzfVTVqB6nl7hWJYRBDRDwn7wW4Ei4vbgmL', 'http://localhost:8000/', 0, 0, 0, '2018-09-25 11:34:43', '2018-09-25 11:34:43');

-- --------------------------------------------------------

--
-- Structure de la table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL);

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

--
-- Déchargement des données de la table `oauth_refresh_tokens`
--

INSERT INTO `oauth_refresh_tokens` (`id`, `access_token_id`, `revoked`, `expires_at`) VALUES
('02b674abff7926e3ed188d9a36fadee50c59fc8915dbfee4e23838b27fabd377c3c77659a065aba0', '59afe3813c24f883e6e6edf7a80f8e960abe7af6eac9fb8360e64de45f7c9fdd95ac4c096fb0a76e', 0, '2019-09-25 15:38:06'),
('148de3e6652b3bde18d6b43f9226254a528e77bce74864ed474ada7ebdb33ce8d1906367d79bf439', '6b307db7aca57b6fe42ebfa8808fc6c45781bb4f2f96958fc544a926a9c5c52c107e1ec7958fb66d', 1, '2019-09-25 15:35:40'),
('150b31b01c221265a696236cae718860305be3757aaaec7ab0446bd50e7b551bab5a2c171e46be1b', 'd10320b1b86abcf5161bd03c678c7ef8d4ee87be8947aaa4eb6f3bdaff585740970c4523d4da2c49', 1, '2019-09-25 15:37:22'),
('2e7b3907c9dc484c2ce0c0a9f9f0eb48e962ab12676a839315c1bebbddc2f6395c7dae4457832c4c', '223b3946a9de4cfcf4fa69dfbb3f4e1ac51fc436877d921122f87f5baa9d2a28a55cb1e9c09c520e', 0, '2019-09-25 15:09:11'),
('830e159670fecb556fedbb37de65eb9f99343d9ec50e3b93b4b06bddd4ac4f18dad45e97b9b148de', 'ca38ec85bcd2947145c9c639bd82e4151a091e7ecedcc9d582a6ffeee33da6c2b1a64df50fc3cf68', 0, '2019-09-25 15:39:21'),
('8b537cfe01a562ae3b861fd1ab3ceb6fb40646a06865f139e204a30c8a756d563a9ab270c8c50d9e', '1e7b901c1194df7d8b43424787f15f099f583a801763baa4504d75d282be9e117449b7ab7d3baa82', 0, '2019-09-25 15:34:46'),
('eb4d4e43887ca81888afba52c8cfc795264bddf8ad67f24fc2e41a007bebe3c7987c0b14c1e1d476', 'c4937fc8bcd4920c7500a4a815716fe60501947e7d222ed3b0c668743d34733531c10c00f0c6e812', 0, '2019-09-25 14:55:47'),
('fbb26db3979b014cbdb0ff5b468fad761de89904a1bdfa60750fd7c2ca940f63fb241b8bb2e5152c', 'f07fc1b39ef4055d2c407301de70f981fd7a48e723a2da8d7510223c3678ffc9ffdb57d05714f5dc', 0, '2019-09-25 13:11:19');

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Ms. Marietta Wolf', 'madison61@example.com', NULL, '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'wECCWgqzYHj98XbpojTZDFVUNjYsROAuMmZrZbEPaNfRs7gLgpnfOe50SQj8', '2018-09-24 14:55:59', '2018-09-24 14:55:59'),
(2, 'Jaycee Orn', 'blake.mcdermott@example.net', NULL, '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'QsR9aDwOmC', '2018-09-24 14:55:59', '2018-09-24 14:55:59'),
(3, 'Yessenia Wintheiser', 'wisoky.laila@example.com', NULL, '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'GsfHddPa14', '2018-09-24 14:55:59', '2018-09-24 14:55:59'),
(4, 'Savanna Champlin', 'lindgren.jordon@example.net', NULL, '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'AwYDyTDgN3', '2018-09-24 14:55:59', '2018-09-24 14:55:59'),
(5, 'Shayne Nicolas', 'jenkins.linda@example.org', NULL, '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'Ym6IlkP3Bm', '2018-09-24 14:55:59', '2018-09-24 14:55:59'),
(6, 'Dr. Brandy Casper DVM', 'cassidy89@example.org', NULL, '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'VqjXMQddVL', '2018-09-24 14:55:59', '2018-09-24 14:55:59'),
(7, 'Cyril Bednar IV', 'morar.shirley@example.com', NULL, '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'TFyrE5xi74', '2018-09-24 14:55:59', '2018-09-24 14:55:59'),
(8, 'Aisha Hodkiewicz', 'marlene.sanford@example.net', NULL, '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'gBaLRdosNM', '2018-09-24 14:55:59', '2018-09-24 14:55:59'),
(9, 'Prof. Leora Moore Jr.', 'marques.christiansen@example.com', NULL, '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '7vTsUrsfar', '2018-09-24 14:55:59', '2018-09-24 14:55:59'),
(10, 'Priscilla Kuvalis', 'wmarvin@example.net', NULL, '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'zHwkjwtcKN', '2018-09-24 14:55:59', '2018-09-24 14:55:59'),
(11, 'medaimane', 'medaimane@fds.com', NULL, '$2y$10$2UIiYJBLb6OoU7704GrUq.taEFuMU/3f9Mo8ttQ1Muuh6seYfdfDe', 'oovDkam9Lac9NXsubamNvepU4K9M49o8mrWl1IloF4egGwqE48p85yTlUkOF', '2018-09-24 15:10:29', '2018-09-24 15:10:29');

--
-- Index pour les tables déchargées
--

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
  ADD PRIMARY KEY (`id`);

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Index pour la table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

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
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
