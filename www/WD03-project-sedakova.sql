-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июл 23 2018 г., 11:15
-- Версия сервера: 5.6.37
-- Версия PHP: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `WD03-project-sedakova`
--

-- --------------------------------------------------------

--
-- Структура таблицы `about`
--

CREATE TABLE `about` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `about`
--

INSERT INTO `about` (`id`, `name`, `description`) VALUES
(1, 'Егор Казаков', 'Я веб-разработчик');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `secondname` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `avatar_small` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `recovery_code` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `recovery_code_times` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `email`, `role`, `password`, `name`, `secondname`, `city`, `country`, `avatar`, `avatar_small`, `recovery_code`, `recovery_code_times`) VALUES
(1, '214@lksd.ru', 'user', '$2y$10$FCwCtiwZQ8C1fm/THfMVK.5mSf6Yy.0KEMvHYZ8NUHkDVAoge.JgS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'info@mail.co', 'user', '$2y$10$.urvGEd2oqR50nY5zFWp7OAUHS2/Ki8ZfOnubqWQeTSZiv5WA2wJK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, '214@lkssd.ru', 'user', '$2y$10$1RU6fCKDoyJd9IozuZtKiO.i7HrfdLMnD2SkxIRapgfYUHxjQzZce', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'jk@5.ru', 'user', '$2y$10$1Ybk8NarIDCUIXWo8C0UJedp31UjlAeszyNpxrMaGkuDu3NB9fMUK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'info@mail.com', 'admin', '$2y$10$3OKKFPK5lwy1O5EVUVmN9.HzykIKC393GqZf9NadjYPjgO5ON5Fv.', 'jhg', 'kj', 'popopo', 'iu', '1270924622.JPG', '48-1270924622.JPG', 'JSOFghCURzs3ptl', 0),
(6, 'jk@5.r', 'user', '$2y$10$nujadtPzSAjRSn1dqYndm.FeTCFxynUbtQJdx8MUII8srUR3g.ynG', 'fyyf', 'ctlfrjdf', 'xthtghjdtew', 'hjccbz', '1349389968.jpg', '48-1349389968.jpg', NULL, NULL),
(7, 'as@w.h', 'user', '$2y$10$nLjAZ/bTzIRXMlnUbPJ3NeMWhDwfa.Vk6oOtbfk8WEmc3LD6FR0oS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `about`
--
ALTER TABLE `about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
