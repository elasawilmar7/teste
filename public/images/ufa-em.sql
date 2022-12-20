-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 20-Dez-2022 às 14:37
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
-- Banco de dados: `ufa-em`
--

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
(3, '2018_05_29_184516_create_simulations_table', 1),
(4, '2018_05_29_184935_add_simulation_id_to_user', 1),
(5, '2018_05_30_155612_create_turns_table', 1),
(6, '2018_06_01_141653_create_students_table', 1),
(7, '2018_06_01_171226_add_logo_to_users_table', 1),
(8, '2018_06_06_154304_create_instituitions_table', 1),
(9, '2018_06_13_161855_create_strategic_plannings_table', 1),
(10, '2018_06_13_183212_add_planning_to_simulations_table', 1),
(11, '2018_06_14_105203_create_decision_coordinators_table', 1),
(12, '2018_07_17_144954_create_occupations_table', 1),
(13, '2018_07_17_145150_add_fields_to_students_table', 1),
(14, '2018_07_21_194034_create_themes_table', 1),
(15, '2018_07_21_194051_create_matters_table', 1),
(16, '2018_07_21_194058_create_newspapers_table', 1),
(17, '2018_07_23_014600_create_decision_companies_table', 1),
(18, '2018_07_24_133922_create_rankings_table', 1),
(19, '2018_07_24_134308_create_machines_table', 1),
(20, '2018_07_24_163032_create_limit_loans_table', 1),
(21, '2018_07_24_163336_create_loans_table', 1),
(22, '2018_07_25_133714_create_operationals_table', 1),
(23, '2018_07_25_140417_create_operational_details_table', 1),
(24, '2018_07_25_224608_create_cashflows_table', 1),
(25, '2018_07_25_224615_create_balances_table', 1),
(26, '2018_07_25_224619_create_dres_table', 1),
(27, '2018_08_15_172158_add_goals_fields_to_planning', 1),
(28, '2018_10_24_053320_add_tmp_machine_maintenance_field_to_cashflow', 1),
(29, '2018_11_04_150430_loss_machine_on_dre_cashflow', 1),
(30, '2018_11_04_150446_loss_machine_on_dre', 1),
(31, '2019_01_08_174638_add_medium_price_to_dre_table', 1),
(32, '2019_04_23_171142_add_juros_apropriar_to_balances_table', 1),
(33, '2019_04_24_222058_add_bir_to_loans_table', 1),
(34, '2019_07_09_112845_add_novocriterio_rankings_table', 1),
(35, '2020_03_03_200232_edit_role_users_table', 1),
(36, '2020_02_28_203845_create_turn_parameters_table', 2),
(37, '2020_03_27_221903_add_reseted_simulations_table', 3),
(38, '2021_09_30_152605_create_trucks_table', 4),
(39, '2022_10_04_105831_create_log_decisions_table', 4);

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
  `product_id` tinyint NOT NULL DEFAULT '1',
  `configured` tinyint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `password_plain`, `role`, `license`, `remember_token`, `created_at`, `updated_at`, `simulation_id`, `logo`, `token_pn`, `occupation_id`, `company_id`, `product_id`, `configured`) VALUES
('4ae87d78-cb56-11ea-9b75-d09466a24655', 'TESTEB', 'admin@gmail.com', '$2y$10$9ei9sgYTtteaCHffvSg7ROvKinGJvUo2ioZsj8cfipUKImAKlmomO', '123456', 'admin', NULL, 'uwBkxpnUm8XTFeYAV2VyIGMNU3Fr9ln1rAB7eYKZWs4AQcMoC6w93f1xiMkb', '2020-07-21 13:30:07', '2020-09-16 10:36:28', NULL, NULL, NULL, NULL, NULL, 1, 0),
('618a2c52-cb56-11ea-9083-d09466a24655', 'Wilmar Lima da Silva', 'teste@gmail.com', '$2y$10$A3iehuO0drgBK7w8p7NAFuolFdo9snQTduxgN5oT8F4Rn/CfgIn0S', '123456', 'coordinator', 5, 'Nctt6db0pGwrgIeeOpb34mdbaLJ5jJtkj7N3IXGhMJBa79Du9PKHe2rEIy5w', '2020-07-21 13:30:45', '2021-03-12 12:32:11', NULL, NULL, 'edphWzqySgSZEtqMS-PQvd:APA91bE2DWotCHKkR6kIbjIf19BMR2gHwJ0DEPaeRbcwZTRIA-sVOGGtbpxMHd73cqx_a9KntEmemZ19eHjldKFfRJCl9O2P9K2knOwnsr93PcWhxVJJb1oimM0HRKU5mxIUgUeihbSm', NULL, NULL, 1, 0),
('69dea7ce-126d-11ed-9d4f-d09466a24655', 'Empresa 1', 'pw@1e4567', '$2y$10$NoBBhZCFQPfTmrp8JHK4hu50055QEDH1C0qO5Hz2m5sDr9x2/qr3W', '807931', 'company', NULL, 'QmfBrQWl2xKPmUKcGVX39pLyRHjn3kkWxnmIxMMSwT9SZGkNvOjuYZrzylhQ', '2022-08-02 14:14:25', '2022-08-02 14:25:39', '69cf814a-126d-11ed-82e8-d09466a24655', NULL, NULL, NULL, NULL, 1, 1),
('69eb3b24-126d-11ed-8e18-d09466a24655', 'Empresa 2', 'pw@2e4567', '$2y$10$YV/7EEOcnhjs9rMqPEWux.2VnZnvtyLY2pkOG65kEiGb4331o8cpS', '051837', 'company', NULL, 'WJgMVQ8AAyRX33AqkbK3SP7FnOax45N4QLBNnpqQ1ex42G9c59qEdOJspkUk', '2022-08-02 14:14:25', '2022-08-18 13:40:41', '69cf814a-126d-11ed-82e8-d09466a24655', NULL, NULL, NULL, NULL, 1, 1),
('69f75940-126d-11ed-b254-d09466a24655', 'Empresa 3', 'pw@3e4567', '$2y$10$3fzIrSLcS.kxAh6HB/MwT.UWdppdMumZcCssFMZDxaB/ONnxrVZ/S', '190875', 'company', NULL, 'LFCglivJp0TCQulkV3HivIx45M8MH7HNDPnfowNKg89qaiESHEwu1N9nTR5T', '2022-08-02 14:14:25', '2022-08-02 14:27:42', '69cf814a-126d-11ed-82e8-d09466a24655', NULL, NULL, NULL, NULL, 1, 1),
('82dade12-1fb7-11ed-91e6-d09466a24655', 'Empresa 12d', 'pw@1e5390', '$2y$10$kXEqalWBKJq1TEGwB8rlUOEGnmjIsVs.PYEpnJEpeWK6h1hTdxqZ2', '172409', 'company', NULL, 'bdNx9Mko4LN2IMV97JpfpXxsbKGKZ4xarrcWIQmlZ6UKqbNI4Z0oA64fdr4S', '2022-08-19 12:07:35', '2022-08-26 19:41:29', '82c14a10-1fb7-11ed-9e3f-d09466a24655', 'engineer.png', NULL, NULL, NULL, 1, 1),
('82e747b0-1fb7-11ed-a755-d09466a24655', 'Empresa 2', 'pw@2e5390', '$2y$10$WdqXWBbIcmUS8D9a/KwIye4zyvCwq7L7MjYWY6cg4L0nb5lT0xpHW', '596304', 'company', NULL, 'EmNv88jT598mDSgJcFzourGbfJPBBwIFeXjNQYIwhcD7rxZY0c3fNJ4Klwr2', '2022-08-19 12:07:35', '2022-08-23 19:16:27', '82c14a10-1fb7-11ed-9e3f-d09466a24655', NULL, NULL, NULL, NULL, 1, 1),
('82f4fa04-1fb7-11ed-b711-d09466a24655', 'Empresa 3', 'pw@3e5390', '$2y$10$tI6zwLLYk.JK7DCyu5Q.N.5gSHgnChBh78C6rgMvkdZ8sUO72V0iC', '634527', 'company', NULL, 'amYOPE73MNyb7KECsBtXZga0bITqFKVwAGHmomVVx6iX6FgcoiotBWvVdn1u', '2022-08-19 12:07:35', '2022-08-24 14:40:57', '82c14a10-1fb7-11ed-9e3f-d09466a24655', NULL, NULL, NULL, NULL, 1, 1),
('88eb503c-470a-11ed-a64b-d09466a24655', 'Empresa 1', 'pw@1e1386', '$2y$10$cqlNFKMSc6Q3WmL3SWJ70uTjplHWHjqsXNmoQ1aolwj0MN0LUE2cK', '753406', 'company', NULL, 'H9MFXO6nMt0OfeUTJlZAa96fvx4ubDjBDthOClX7AgJ4LBwbdWc31p5a527a', '2022-10-08 13:10:09', '2022-10-10 13:29:31', '88cc2e6e-470a-11ed-ab30-d09466a24655', NULL, NULL, NULL, NULL, 1, 1),
('88f807e6-470a-11ed-b26f-d09466a24655', 'Empresa 2', 'pw@2e1386', '$2y$10$fuQInxfPBOZbbi87W/oymOvdK7XCq5B5zoJhwQiPdErGlPWZgAL3i', '657914', 'company', NULL, '9bU5UUQYxreozfFmkzZyeRdAVI1lJcvrwhzBcwFngNfBJd1EzvdaVHQnvGgW', '2022-10-08 13:10:09', '2022-10-10 13:30:40', '88cc2e6e-470a-11ed-ab30-d09466a24655', NULL, NULL, NULL, NULL, 1, 1),
('890a1d46-470a-11ed-8c45-d09466a24655', 'Empresa 3', 'pw@3e1386', '$2y$10$a1jx04sXjii8RBDsNYOw8OaMn5Tf6HFaXN8FmL26thhDq8nkkuP0.', '487506', 'company', NULL, 'heg1181leMGgOE54PI5xEJRRNveg4ICJftw0ycBIykMjLy9ACze2M9MVTE6U', '2022-10-08 13:10:09', '2022-10-10 13:31:41', '88cc2e6e-470a-11ed-ab30-d09466a24655', NULL, NULL, NULL, NULL, 1, 1),
('a85f07ca-cb55-11ea-bfa7-d09466a24655', 'owner', 'owner@lg', '$2y$10$ztZcbkfU8KYManuUS4DBceJQyabgod5PgJ4fF3HuLrNc9x4CfzHT2', '123456', 'owner', NULL, 'EPJwlGd0NxuSURIbL3B83VQugwqqfLoBYEMRvjuqLT2dDAwXrbZ7YNutN2hl', '2020-07-21 13:25:34', '2020-07-21 13:25:34', NULL, NULL, NULL, NULL, NULL, 1, 0),
('aba992f0-470a-11ed-acd6-d09466a24655', 'ANDREA SOARES ROCHA DA SILVA', 'andreasrs07@gmail.com', '$2y$10$g0DzUWVqxkvyaMpx0EfOPuOLNIPCQf5XxkgFR63anQKW7tC74fG4e', '7083', 'aluno', NULL, 'b52VHPL6T7hInTx3ZxnP8L3oFOoiVhevddol67WC3vEjcubbN2QWD0rmspwn', '2022-10-08 13:11:07', '2022-10-08 13:11:07', '88cc2e6e-470a-11ed-ab30-d09466a24655', NULL, NULL, 'a8604bc6-cb55-11ea-9341-d09466a24655', '88eb503c-470a-11ed-a64b-d09466a24655', 1, 0),
('d5994068-5472-11ed-bb51-d09466a24655', 'Empresa 1', 'pw@1e9257', '$2y$10$4W1xEs/gRXHk2hsiz5jjbuLJS6CKzdj7rI.1/X3jrpKgSjKYehmVi', '916453', 'company', NULL, NULL, '2022-10-25 14:39:30', '2022-10-25 14:39:30', 'd5071ee0-5472-11ed-8cc8-d09466a24655', NULL, NULL, NULL, NULL, 1, 0),
('d5a692f4-5472-11ed-a8e0-d09466a24655', 'Empresa 2', 'pw@2e9257', '$2y$10$9OhzYGmWsuPx1FNhedf//ecnytmUIX9BpOfU/4ITXx5yGN/6kZA5K', '734861', 'company', NULL, NULL, '2022-10-25 14:39:30', '2022-10-25 14:39:30', 'd5071ee0-5472-11ed-8cc8-d09466a24655', NULL, NULL, NULL, NULL, 1, 0),
('d5b2d05a-5472-11ed-92c6-d09466a24655', 'Empresa 3', 'pw@3e9257', '$2y$10$DKftEPRJ4jTJggqFE/B.VOr.SViSkrMMkUy2iVZDUNFU2sykIqUQm', '956720', 'company', NULL, NULL, '2022-10-25 14:39:30', '2022-10-25 14:39:30', 'd5071ee0-5472-11ed-8cc8-d09466a24655', NULL, NULL, NULL, NULL, 1, 0),
('e50d464a-39a9-11ed-b016-d09466a24655', 'Wilmar Lima da Silva', 'elasawilmar@gmail.com', '$2y$10$YgjlqqFCe1Aswo6lSmOeyubljkHv5IxWlVA8OIDruaVJ5ywCe5nSO', '4157', 'aluno', NULL, 'PrEILhrvkzoQHBQ6SOY4RqD725urpbH4pe1OHmBlD7Tk84tT7yxPkvsmKDxe', '2022-09-21 12:35:37', '2022-09-21 12:35:37', '69cf814a-126d-11ed-82e8-d09466a24655', NULL, NULL, 'a8604bc6-cb55-11ea-9341-d09466a24655', '69eb3b24-126d-11ed-8e18-d09466a24655', 1, 0),
('fca05582-4713-11ed-892e-d09466a24655', 'David Rocha', 'elasadavid@gmail.com', '$2y$10$73/anAG2XtR58kTevaUWduLk4iMplSuFd4ypgH690rijBQMxtQgEC', '8201', 'aluno', NULL, NULL, '2022-10-08 14:17:48', '2022-10-08 14:17:48', '69cf814a-126d-11ed-82e8-d09466a24655', NULL, NULL, 'a862fcf4-cb55-11ea-9fc7-d09466a24655', '69dea7ce-126d-11ed-9d4f-d09466a24655', 1, 0);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_simulation_id_foreign` (`simulation_id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_simulation_id_foreign` FOREIGN KEY (`simulation_id`) REFERENCES `simulations` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
