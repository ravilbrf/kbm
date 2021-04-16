-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:3306
-- Время создания: Апр 16 2021 г., 13:46
-- Версия сервера: 10.1.47-MariaDB-0ubuntu0.18.04.1
-- Версия PHP: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `kbm`
--

-- --------------------------------------------------------

--
-- Структура таблицы `children`
--

CREATE TABLE `children` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `dob` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `j_shift_tasks`
--

CREATE TABLE `j_shift_tasks` (
  `id` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `worker_id` int(11) DEFAULT NULL,
  `shift_id` int(2) DEFAULT NULL COMMENT 'Смена,номер',
  `product_id` int(11) DEFAULT NULL,
  `operation_id` int(11) NOT NULL COMMENT 'Номер операции'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Журнал сменного задания';

-- --------------------------------------------------------

--
-- Структура таблицы `machine_tools`
--

CREATE TABLE `machine_tools` (
  `id` int(11) NOT NULL,
  `alias_name` varchar(250) DEFAULT NULL,
  `full_name` varchar(250) DEFAULT NULL,
  `inventory_number` varchar(200) DEFAULT NULL,
  `serial_number` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Станки';

--
-- Дамп данных таблицы `machine_tools`
--

INSERT INTO `machine_tools` (`id`, `alias_name`, `full_name`, `inventory_number`, `serial_number`) VALUES
(1, 'ЧПУ Воткинск №1', NULL, NULL, NULL),
(2, 'ЧПУ Воткинск №2', NULL, NULL, NULL),
(3, 'ЧПУ Пенза №1', NULL, NULL, NULL),
(4, 'ЧПУ Пенза №2', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2021_04_16_082603_create_sessions_table', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `operations`
--

CREATE TABLE `operations` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `number` int(5) NOT NULL,
  `manual` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Операции';

--
-- Дамп данных таблицы `operations`
--

INSERT INTO `operations` (`id`, `name`, `number`, `manual`) VALUES
(1, '10 операция ток. ЧПУ', 10, 'ТП 010 операция Сердечник КМ160 Ф140 ЧПУ'),
(2, '20 операция ток. ЧПУ', 20, 'ТП 020 операция Сердечник КМ160 Ф140 ЧПУ');

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `personal`
--

CREATE TABLE `personal` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `surname` varchar(100) DEFAULT NULL,
  `middleame` varchar(100) DEFAULT NULL,
  `dob` date DEFAULT NULL COMMENT 'Дата рождения',
  `gender` tinyint(1) NOT NULL,
  `professions_id` int(11) DEFAULT NULL,
  `passport` int(10) DEFAULT NULL,
  `snils` int(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Рабочие';

--
-- Дамп данных таблицы `personal`
--

INSERT INTO `personal` (`id`, `name`, `surname`, `middleame`, `dob`, `gender`, `professions_id`, `passport`, `snils`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Бузмаков Дмитрий Олегович', NULL, NULL, NULL, 0, NULL, NULL, NULL, '2021-04-14 05:38:52', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Васильев Евгений Дмитриевич', NULL, NULL, NULL, 0, NULL, NULL, NULL, '2021-04-14 05:38:52', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Бездомников Павел Викторович', NULL, NULL, NULL, 0, NULL, NULL, NULL, '2021-04-14 05:38:52', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Структура таблицы `personal-children`
--

CREATE TABLE `personal-children` (
  `personal_id` int(11) NOT NULL,
  `children_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `code` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Продукты изделия';

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `name`, `code`) VALUES
(1, 'Сердечник КМ160 Ф140', 'КМ....'),
(2, 'Гайка КМ170', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `products_operations`
--

CREATE TABLE `products_operations` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `operations_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `products_operations`
--

INSERT INTO `products_operations` (`id`, `product_id`, `operations_id`) VALUES
(1, 1, 1),
(2, 1, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `professions`
--

CREATE TABLE `professions` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `rank` int(5) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='професии';

--
-- Дамп данных таблицы `professions`
--

INSERT INTO `professions` (`id`, `name`, `rank`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Оператор станков с ЧПУ', 4, '2021-04-14 05:34:11', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Структура таблицы `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('hlXUYUyMeAZ38h9JoC6gFF4IevkZP5GU0L2YrBfd', 1, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiSDdhNDU4VHVFYjlRT1NYRldXMTVOZ1FGY0E4WmhsYkM4TVE3RjZ4ZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjQ6Imh0dHA6Ly9rYm0uYnJmL2Rhc2hib2FyZCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMCRrN3E2Y0lGZFVSekI4dmhMZjVLSlZlZHEwTVdtMy4yTmxmSXNrVkQuM20xNDhkdGlSSHcvZSI7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTAkazdxNmNJRmRVUnpCOHZoTGY1S0pWZWRxME1XbTMuMk5sZklza1ZELjNtMTQ4ZHRpUkh3L2UiO30=', 1618566327);

-- --------------------------------------------------------

--
-- Структура таблицы `shifts`
--

CREATE TABLE `shifts` (
  `id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL COMMENT 'название',
  `minutes` int(11) DEFAULT NULL COMMENT 'количество минут в смене',
  `comments` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Рабочие смены';

--
-- Дамп данных таблицы `shifts`
--

INSERT INTO `shifts` (`id`, `name`, `minutes`, `comments`) VALUES
(1, '1 смена 8ч.', 420, '2 перерыва по 15 мин., 30 мин на уборку'),
(2, '2 смена 8ч', 420, '2 перерыва по 15 мин., 30 мин на уборку'),
(3, '3 смена 6ч.', 315, '15мин перерыв, 30 мин на уборку'),
(4, '10 часов', 525, '420мин / 2 + 420мин.'),
(5, '12 часов', 630, '420мин / 4 + 420мин.'),
(6, '7 часов', 360, 'сокращенная 1,2 смена или работа в выходные, 420мин - 60мин.'),
(7, '5 часов', 255, 'сокращенная 3 см. 315мин - 60мин. ');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'ravil', 'adminravil@kbm.ru', NULL, '$2y$10$k7q6cIFdURzB8vhLf5KJVedq0MWm3.2NlfIskVD.3m148dtiRHw/e', NULL, NULL, NULL, NULL, NULL, '2021-04-16 05:43:40', '2021-04-16 05:43:40');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `children`
--
ALTER TABLE `children`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Индексы таблицы `j_shift_tasks`
--
ALTER TABLE `j_shift_tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `worker_id` (`worker_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `operation_id` (`operation_id`),
  ADD KEY `shift_id` (`shift_id`);

--
-- Индексы таблицы `machine_tools`
--
ALTER TABLE `machine_tools`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `operations`
--
ALTER TABLE `operations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `personal`
--
ALTER TABLE `personal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `professions_id` (`professions_id`);

--
-- Индексы таблицы `personal-children`
--
ALTER TABLE `personal-children`
  ADD KEY `personal_id` (`personal_id`),
  ADD KEY `children_id` (`children_id`);

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `products_operations`
--
ALTER TABLE `products_operations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `operations_id` (`operations_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Индексы таблицы `professions`
--
ALTER TABLE `professions`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Индексы таблицы `shifts`
--
ALTER TABLE `shifts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `children`
--
ALTER TABLE `children`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `j_shift_tasks`
--
ALTER TABLE `j_shift_tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `machine_tools`
--
ALTER TABLE `machine_tools`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `operations`
--
ALTER TABLE `operations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `personal`
--
ALTER TABLE `personal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `products_operations`
--
ALTER TABLE `products_operations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `professions`
--
ALTER TABLE `professions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `shifts`
--
ALTER TABLE `shifts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `j_shift_tasks`
--
ALTER TABLE `j_shift_tasks`
  ADD CONSTRAINT `j_shift_tasks_ibfk_1` FOREIGN KEY (`worker_id`) REFERENCES `personal` (`id`),
  ADD CONSTRAINT `j_shift_tasks_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `j_shift_tasks_ibfk_3` FOREIGN KEY (`operation_id`) REFERENCES `operations` (`id`),
  ADD CONSTRAINT `j_shift_tasks_ibfk_4` FOREIGN KEY (`shift_id`) REFERENCES `shifts` (`id`);

--
-- Ограничения внешнего ключа таблицы `personal`
--
ALTER TABLE `personal`
  ADD CONSTRAINT `personal_ibfk_1` FOREIGN KEY (`professions_id`) REFERENCES `professions` (`id`);

--
-- Ограничения внешнего ключа таблицы `personal-children`
--
ALTER TABLE `personal-children`
  ADD CONSTRAINT `personal-children_ibfk_1` FOREIGN KEY (`personal_id`) REFERENCES `personal` (`id`),
  ADD CONSTRAINT `personal-children_ibfk_2` FOREIGN KEY (`children_id`) REFERENCES `children` (`id`);

--
-- Ограничения внешнего ключа таблицы `products_operations`
--
ALTER TABLE `products_operations`
  ADD CONSTRAINT `products_operations_ibfk_1` FOREIGN KEY (`operations_id`) REFERENCES `operations` (`id`),
  ADD CONSTRAINT `products_operations_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
