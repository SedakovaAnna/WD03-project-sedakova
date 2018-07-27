-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июл 25 2018 г., 14:34
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
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int(11) UNSIGNED NOT NULL,
  `cat_title` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `cat_title`) VALUES
(1, 'Авто'),
(2, 'Путешествия'),
(3, 'Мото'),
(4, 'Новое'),
(6, 'Пейзажи');

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE `posts` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `cat` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `date_time` datetime DEFAULT NULL,
  `text` text COLLATE utf8mb4_unicode_520_ci,
  `author_id` int(11) UNSIGNED DEFAULT NULL,
  `post_img` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `post_img_small` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `title`, `cat`, `date_time`, `text`, `author_id`, `post_img`, `post_img_small`) VALUES
(12, 'Сотни летающих сардин окружили рыболовецкое судно', '3', '2018-07-25 10:24:55', '<p>Необычное видео снял 20 июля 31-летний рыбак Лу Цзинвай (Lu Jingwai) в порту города Тайбэй. По его словам, рыб было так много и они двигались так хаотично, что казалось: вода кипит и бурлит, выбрасывая в воздух своих обитателей. &laquo;Мне так страшно! На меня напали рыбы! &raquo; &mdash; слышен его голос за кадром. Вместе с другими рыбаками Цзинвай подбирал выпрыгнувших на палубу сардин и отпускал их обратно в воду.</p>\r\n', 5, '-472035513.jpg', '320--472035513.jpg'),
(13, 'Ледяная ванна в жару: как порадовать выдр', '4', '2018-07-25 10:10:02', 'В Портланде, штат Орегон, сейчас жарко: термометры показывают до +36 °C. Эту жару непросто переносить обитателям местного зоопарка, привыкшим к более холодному климату. В зоопарке пытаются им помочь — например, для трёх каланов был создан ледяной бассейн. Героями съемки стали морские выдры Эдди, Джуно и Линкольн. Поделившись видеозаписью, представители зоопарка пошутили: «Поставьте свой кондиционер на выдровый режим».', 5, '195797567.jpg', '320-195797567.jpg'),
(14, 'В прошлом Андромеды обнаружили следы древней катастрофы', '6', '2018-07-25 10:10:44', 'Два миллиарда лет назад ближайшая к Млечному пути (не считая карликовых галактик-спутников) галактика Андромеды разорвала на мелкие кусочки и поглотила другую галактику, установили астрофизики из Мичиганского университета.', 5, '-418606495.jpg', '320--418606495.jpg'),
(15, 'На плато Кайпаровиц открыт новый вид динозавров', '1', '2018-07-25 10:11:34', 'Американское плато Кайпаровиц дает палеонтологам богатый материал для изучения. Его геологическая формация толщиной 850 метров относится к кампанскому ярусу и включает породы, образовавшиеся в период от 83,6 до 72,1 млн. лет назад. За годы исследований здесь было найдено множество останков ископаемых сумчатых, рептилий, динозавров и других животных. На плато был открыт новый вид рогатого динозавра космоцератопс — обладателя самого большого количества рогов в своем семействе.', 5, '631709570.jpg', '320-631709570.jpg'),
(16, 'Мясо из пробирки &mdash; уже скоро на прилавках!', '6', '2018-07-25 10:12:23', 'Несколько лет назад голландские ученые вырастили искусственное мясо. Идея получила широкую поддержку и финансирование, в результате чего «мясо из пробирки» окажется на прилавках уже в недалеком будущем.', 5, '1137120807.jpg', '320-1137120807.jpg'),
(17, 'Прорабатываем страницу с отдельным постом', '4', '2018-07-25 10:26:15', '<p>1) Выбор Категории при создании Поста в Блоге<br />\r\n2) Делаем вывод Категории и Автора на странице Поста<br />\r\n3) Редактирование поста в Блоге<br />\r\n4) Замена картинки при редактировании Поста<br />\r\n5) Подключить визуальный редактор ckEditor<br />\r\n6) Сделать удаление поста<br />\r\n7) Уровни доступа к страницам сайта. Небольшие косметические правки.</p>\r\n', 5, '-186329619.jpg', '320--186329619.jpg'),
(18, 'Прорабатываем страницу с отдельным постом', '1', '2018-07-25 10:34:29', '<p>1) Выбор Категории при создании Поста в Блоге<br />\r\n2) Делаем вывод Категории и Автора на странице Поста<br />\r\n3) Редактирование поста в Блоге<br />\r\n4) Замена картинки при редактировании Поста<br />\r\n5) Подключить визуальный редактор ckEditor<br />\r\n6) Сделать удаление поста<br />\r\n7) Уровни доступа к страницам сайта. Небольшие косметические правки.</p>\r\n', 5, '298208128.jpg', '320-298208128.jpg'),
(20, 'Прорабатываем страницу с отдельным постом', '3', '2018-07-25 14:23:10', '<p>mm.ll;lj;l</p>\r\n', 5, NULL, NULL);

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
(5, 'info@mail.com', 'admin', '$2y$10$3OKKFPK5lwy1O5EVUVmN9.HzykIKC393GqZf9NadjYPjgO5ON5Fv.', 'anna', 'sed', 'cherepovets', 'russia', '1270924622.JPG', '48-1270924622.JPG', 'JSOFghCURzs3ptl', 0),
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
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_foreignkey_posts_author` (`author_id`);

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
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
