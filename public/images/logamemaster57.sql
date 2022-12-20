-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 20-Dez-2022 às 14:35
-- Versão do servidor: 8.0.21
-- versão do PHP: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `logamemaster57`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--

CREATE TABLE `clientes` (
  `id` int UNSIGNED NOT NULL,
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `domain` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bd_database` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bd_hostname` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bd_username` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bd_password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `clientes`
--

INSERT INTO `clientes` (`id`, `uuid`, `name`, `domain`, `bd_database`, `bd_hostname`, `bd_username`, `bd_password`, `created_at`, `updated_at`) VALUES
(1, 'a616cad4-cb55-11ea-9404-d09466a24655', 'UFA liga', 'ufa.upmaster.test', 'contabil1', 'localhost', 'root', '1234', '2020-07-21 13:25:30', '2020-11-25 14:07:45'),
(7, 'bddb2cd8-e094-11ea-957f-d09466a24655', 'BEE liga', 'ufa.upmaster-em.test', 'ufa-em', 'localhost', 'root', '1234', '2020-08-31 14:20:03', '2020-08-17 14:20:03'),
(10, 'bddb2cd8-e094-11ea-957f-d09466a24657', 'CPG', 'ufa.upmaster-cpr.test', 'contabil', 'localhost', 'root', '1234', '2022-09-19 18:31:05', '2022-09-19 18:31:05'),
(22, 'a616cad4-cb55-11ea-9404-d09466a24657', 'Cliente Base', 'ufa.upmaster-em57.test', 'ufa-em2', 'localhost', 'root', '1234', '2020-07-21 16:25:30', '2020-11-25 17:07:45');

-- --------------------------------------------------------

--
-- Estrutura da tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_06_06_154304_create_instituitions_table', 1),
(4, '2019_10_08_120156_create_clientes_table', 1),
(5, '2018_05_29_184516_create_simulations_table', 2),
(6, '2018_05_29_184935_add_simulation_id_to_user', 2),
(7, '2018_05_30_155612_create_turns_table', 2),
(8, '2018_06_01_141653_create_students_table', 2),
(9, '2018_06_01_171226_add_logo_to_users_table', 2),
(10, '2018_06_13_161855_create_strategic_plannings_table', 2),
(11, '2018_06_13_183212_add_planning_to_simulations_table', 2),
(12, '2018_06_14_105203_create_decision_coordinators_table', 2),
(13, '2018_07_17_144954_create_occupations_table', 2),
(14, '2018_07_17_145150_add_fields_to_students_table', 2),
(15, '2018_07_21_194034_create_themes_table', 2),
(16, '2018_07_21_194051_create_matters_table', 2),
(17, '2018_07_21_194058_create_newspapers_table', 2),
(18, '2018_07_23_014600_create_decision_companies_table', 2),
(19, '2018_07_24_133922_create_rankings_table', 2),
(20, '2018_07_24_134308_create_machines_table', 2),
(21, '2018_07_24_163032_create_limit_loans_table', 2),
(22, '2018_07_24_163336_create_loans_table', 2),
(23, '2018_07_25_133714_create_operationals_table', 2),
(24, '2018_07_25_140417_create_operational_details_table', 2),
(25, '2018_07_25_224608_create_cashflows_table', 2),
(26, '2018_07_25_224615_create_balances_table', 2),
(27, '2018_07_25_224619_create_dres_table', 2),
(28, '2018_08_15_172158_add_goals_fields_to_planning', 2),
(29, '2018_10_24_053320_add_tmp_machine_maintenance_field_to_cashflow', 2),
(30, '2018_11_04_150430_loss_machine_on_dre_cashflow', 2),
(31, '2018_11_04_150446_loss_machine_on_dre', 2),
(32, '2019_01_08_174638_add_medium_price_to_dre_table', 2),
(33, '2019_04_23_171142_add_juros_apropriar_to_balances_table', 2),
(34, '2019_04_24_222058_add_bir_to_loans_table', 2),
(35, '2019_07_09_112845_add_novocriterio_rankings_table', 2),
(36, '2020_02_28_203845_create_turn_parameters_table', 2),
(37, '2020_03_03_200232_edit_role_users_table', 2),
(38, '2020_03_27_221903_add_reseted_simulations_table', 2),
(39, '2021_09_30_152605_create_trucks_table', 2),
(40, '2022_10_04_105831_create_log_decisions_table', 2),
(41, '2022_10_24_084536_create_websockets_statistics_entries_table', 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password_plain` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` enum('owner','admin','coordinator','company','aluno') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `license` int DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `simulation_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token_pn` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `occupation_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `configured` tinyint(1) NOT NULL DEFAULT '0',
  `product_id` tinyint NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `password_plain`, `role`, `license`, `remember_token`, `created_at`, `updated_at`, `simulation_id`, `logo`, `token_pn`, `occupation_id`, `company_id`, `configured`, `product_id`) VALUES
('1', 'Wilmar', 'owner@lg', '$2y$10$f1K/2sghH4cKpiQL/ICEjeEQu0hnLNb4yjpckk4A7lHiPtKq272Pe', '123456', 'owner', NULL, 'LU85sQXn24GiTR0q3bVTqk9NSfotuGkfgJzddByQRo3vVPpfankS3ZAA0818', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `websockets_statistics_entries`
--

CREATE TABLE `websockets_statistics_entries` (
  `id` int UNSIGNED NOT NULL,
  `app_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `peak_connection_count` int NOT NULL,
  `websocket_message_count` int NOT NULL,
  `api_message_count` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `clientes_domain_unique` (`domain`),
  ADD UNIQUE KEY `clientes_bd_database_unique` (`bd_database`);

--
-- Índices para tabela `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_simulation_id_foreign` (`simulation_id`);

--
-- Índices para tabela `websockets_statistics_entries`
--
ALTER TABLE `websockets_statistics_entries`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de tabela `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT de tabela `websockets_statistics_entries`
--
ALTER TABLE `websockets_statistics_entries`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_simulation_id_foreign` FOREIGN KEY (`simulation_id`) REFERENCES `simulations` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
