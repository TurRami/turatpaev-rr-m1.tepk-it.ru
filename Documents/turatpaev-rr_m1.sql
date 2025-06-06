-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Июн 06 2025 г., 12:04
-- Версия сервера: 8.0.42-0ubuntu0.24.04.1
-- Версия PHP: 8.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `turatpaev-rr_m1`
--

-- --------------------------------------------------------

--
-- Структура таблицы `material_type`
--

CREATE TABLE `material_type` (
  `id_material_type` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `percent_loss` decimal(10,4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `material_type`
--

INSERT INTO `material_type` (`id_material_type`, `name`, `percent_loss`) VALUES
(1, 'Мебельный щит из массива дерева', 0.0080),
(2, 'Ламинированное ДСП', 0.0070),
(3, 'Фанера', 0.0055),
(4, 'МДФ', 0.0030);

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `id_products` int NOT NULL,
  `product_type_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `article` int NOT NULL,
  `min_partner_price` decimal(10,2) NOT NULL,
  `material_type_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id_products`, `product_type_id`, `name`, `article`, `min_partner_price`, `material_type_id`) VALUES
(1, 1, 'Комплект мебели для гостиной Ольха горная', 1549922, 160507.00, 1),
(2, 1, 'Стенка для гостиной Вишня темная', 1018556, 216907.00, 1),
(3, 2, 'Прихожая Венге Винтаж', 3028272, 24970.00, 2),
(4, 2, 'Тумба с вешалкой Дуб натуральный', 3029272, 18206.00, 2),
(5, 2, 'Прихожая-комплект Дуб темный', 3028248, 177509.00, 1),
(6, 3, 'Диван-кровать угловой Книжка', 7118827, 85900.00, 1),
(7, 3, 'Диван модульный Телескоп', 7137981, 75900.00, 1),
(8, 3, 'Диван-кровать Соло', 7029787, 120345.00, 1),
(9, 3, 'Детский диван Выкатной', 7758953, 25990.00, 3),
(10, 4, 'Кровать с подъемным механизмом с матрасом 1600х2000 Венге', 6026662, 69500.00, 1),
(11, 4, 'Кровать с матрасом 90х2000 Венге', 6159043, 55600.00, 2),
(12, 4, 'Кровать универсальная Дуб натуральный', 6588376, 37900.00, 2),
(13, 4, 'Кровать с ящиками Ясень белый', 6758375, 46750.00, 3),
(14, 5, 'Шкаф-купе 3-х дверный Сосна белая', 2759324, 131560.00, 2),
(15, 5, 'Стеллаж Бук натуральный', 2118827, 38700.00, 1),
(16, 5, 'Шкаф 4 дверный с ящиками Ясень серый', 2559898, 160151.00, 3),
(17, 5, 'Шкаф-пенал Береза белый', 2259474, 40500.00, 3),
(18, 6, 'Комод 6 ящиков Вишня светлая', 4115947, 61235.00, 1),
(19, 6, 'Комод 4 ящика Вишня светлая', 4033136, 41200.00, 1),
(20, 6, 'Тумба под ТВ ', 4028048, 12350.00, 4);

-- --------------------------------------------------------

--
-- Структура таблицы `product_type`
--

CREATE TABLE `product_type` (
  `id_product_type` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `coefficient` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `product_type`
--

INSERT INTO `product_type` (`id_product_type`, `name`, `coefficient`) VALUES
(1, 'Гостиные', 3.50),
(2, 'Прихожие', 5.60),
(3, 'Мягкая мебель', 3.00),
(4, 'Кровати', 4.70),
(5, 'Шкафы', 1.50),
(6, 'Комоды', 2.30);

-- --------------------------------------------------------

--
-- Структура таблицы `product_workshops`
--

CREATE TABLE `product_workshops` (
  `id_product_workshops` int NOT NULL,
  `products_id` int NOT NULL,
  `workshops_id` int NOT NULL,
  `production_time` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `product_workshops`
--

INSERT INTO `product_workshops` (`id_product_workshops`, `products_id`, `workshops_id`, `production_time`) VALUES
(1, 10, 8, 2.00),
(2, 20, 8, 2.70),
(3, 6, 9, 4.20),
(4, 7, 9, 4.50),
(5, 8, 9, 4.70),
(6, 9, 9, 4.00),
(7, 11, 9, 5.50),
(8, 2, 10, 0.30),
(9, 3, 10, 0.50),
(10, 5, 10, 0.30),
(11, 10, 10, 0.50),
(12, 14, 10, 0.50),
(13, 20, 10, 1.00),
(14, 1, 4, 0.50),
(15, 2, 4, 0.30),
(16, 3, 4, 0.50),
(17, 4, 4, 0.50),
(18, 5, 4, 0.50),
(19, 6, 4, 0.50),
(20, 7, 4, 0.50),
(21, 8, 4, 0.50),
(22, 9, 4, 0.30),
(23, 10, 4, 0.60),
(24, 11, 4, 1.00),
(25, 12, 4, 0.80),
(26, 13, 4, 2.00),
(27, 14, 4, 0.50),
(28, 15, 4, 0.30),
(29, 16, 4, 1.50),
(30, 17, 4, 1.00),
(31, 18, 4, 0.50),
(32, 19, 4, 0.40),
(33, 20, 4, 0.50),
(34, 1, 6, 0.30),
(35, 2, 6, 0.40),
(36, 5, 6, 0.50),
(37, 6, 6, 0.50),
(38, 7, 6, 1.00),
(39, 8, 6, 0.50),
(40, 9, 6, 0.50),
(41, 10, 6, 0.40),
(42, 13, 6, 1.50),
(43, 15, 6, 1.00),
(44, 17, 6, 2.50),
(45, 18, 6, 1.00),
(46, 19, 6, 0.40),
(47, 20, 6, 0.50),
(48, 1, 1, 1.00),
(49, 2, 1, 1.00),
(50, 5, 1, 1.50),
(51, 8, 1, 0.50),
(52, 14, 1, 2.00),
(53, 15, 1, 1.00),
(54, 20, 1, 1.00),
(55, 1, 3, 1.00),
(56, 2, 3, 1.00),
(57, 3, 3, 1.00),
(58, 4, 3, 1.00),
(59, 5, 3, 1.00),
(60, 6, 3, 1.00),
(61, 7, 3, 1.00),
(62, 8, 3, 0.50),
(63, 9, 3, 0.70),
(64, 10, 3, 1.00),
(65, 11, 3, 1.00),
(66, 12, 3, 1.10),
(67, 13, 3, 2.00),
(68, 14, 3, 1.00),
(69, 15, 3, 1.00),
(70, 16, 3, 1.00),
(71, 17, 3, 1.00),
(72, 18, 3, 1.00),
(73, 19, 3, 1.00),
(74, 20, 3, 0.60),
(75, 1, 2, 0.40),
(76, 2, 2, 1.00),
(77, 5, 2, 0.50),
(78, 8, 2, 0.50),
(79, 14, 2, 1.00),
(80, 15, 2, 0.70),
(81, 20, 2, 0.40),
(82, 2, 11, 1.00),
(83, 3, 11, 1.00),
(84, 5, 11, 0.50),
(85, 6, 11, 0.50),
(86, 7, 11, 0.30),
(87, 12, 11, 0.80),
(88, 13, 11, 0.30),
(89, 14, 11, 1.50),
(90, 15, 11, 0.30),
(91, 16, 11, 2.00),
(92, 18, 11, 0.30),
(93, 20, 11, 1.00),
(94, 1, 7, 1.50),
(95, 2, 7, 1.00),
(96, 5, 7, 1.00),
(97, 7, 7, 0.50),
(98, 8, 7, 0.50),
(99, 9, 7, 1.00),
(100, 15, 7, 0.50),
(101, 16, 7, 1.00),
(102, 17, 7, 3.00),
(103, 18, 7, 2.00),
(104, 19, 7, 2.00),
(105, 1, 5, 2.00),
(106, 2, 5, 2.00),
(107, 5, 5, 2.00),
(108, 6, 5, 2.00),
(109, 7, 5, 2.00),
(110, 15, 5, 2.00),
(111, 18, 5, 2.00),
(112, 19, 5, 2.00),
(113, 1, 12, 0.30),
(114, 4, 12, 0.50),
(115, 5, 12, 0.20),
(116, 6, 12, 0.30),
(117, 7, 12, 0.20),
(118, 8, 12, 0.30),
(119, 9, 12, 0.50),
(120, 10, 12, 0.50),
(121, 11, 12, 0.50),
(122, 12, 12, 0.30),
(123, 13, 12, 0.20),
(124, 14, 12, 0.50),
(125, 15, 12, 0.20),
(126, 16, 12, 0.50),
(127, 17, 12, 0.50),
(128, 18, 12, 0.20),
(129, 19, 12, 0.20),
(130, 20, 12, 0.30);

-- --------------------------------------------------------

--
-- Структура таблицы `workshops`
--

CREATE TABLE `workshops` (
  `id_workshops` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `workshops_type_id` int NOT NULL,
  `count_people_production` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `workshops`
--

INSERT INTO `workshops` (`id_workshops`, `name`, `workshops_type_id`, `count_people_production`) VALUES
(1, 'Проектный', 1, 4),
(2, 'Расчетный', 1, 5),
(3, 'Раскроя', 2, 5),
(4, 'Обработки', 2, 6),
(5, 'Сушильный', 3, 3),
(6, 'Покраски', 2, 5),
(7, 'Столярный', 2, 7),
(8, 'Изготовления изделий из искусственного камня и композитных материалов', 2, 3),
(9, 'Изготовления мягкой мебели', 2, 5),
(10, 'Монтажа стеклянных, зеркальных вставок и других изделий', 4, 2),
(11, 'Сборки', 4, 6),
(12, 'Упаковки', 4, 4);

-- --------------------------------------------------------

--
-- Структура таблицы `workshops_type`
--

CREATE TABLE `workshops_type` (
  `id_workshops_type` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `workshops_type`
--

INSERT INTO `workshops_type` (`id_workshops_type`, `name`) VALUES
(1, 'Проектирование'),
(2, 'Обработка'),
(3, 'Сушка'),
(4, 'Сборка');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `material_type`
--
ALTER TABLE `material_type`
  ADD PRIMARY KEY (`id_material_type`);

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id_products`),
  ADD KEY `id_product_type` (`product_type_id`),
  ADD KEY `id_material_type` (`material_type_id`);

--
-- Индексы таблицы `product_type`
--
ALTER TABLE `product_type`
  ADD PRIMARY KEY (`id_product_type`);

--
-- Индексы таблицы `product_workshops`
--
ALTER TABLE `product_workshops`
  ADD PRIMARY KEY (`id_product_workshops`),
  ADD KEY `id_products` (`products_id`),
  ADD KEY `id_workshops` (`workshops_id`);

--
-- Индексы таблицы `workshops`
--
ALTER TABLE `workshops`
  ADD PRIMARY KEY (`id_workshops`),
  ADD KEY `id_workshops_type` (`workshops_type_id`);

--
-- Индексы таблицы `workshops_type`
--
ALTER TABLE `workshops_type`
  ADD PRIMARY KEY (`id_workshops_type`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `material_type`
--
ALTER TABLE `material_type`
  MODIFY `id_material_type` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `id_products` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT для таблицы `product_type`
--
ALTER TABLE `product_type`
  MODIFY `id_product_type` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `product_workshops`
--
ALTER TABLE `product_workshops`
  MODIFY `id_product_workshops` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT для таблицы `workshops`
--
ALTER TABLE `workshops`
  MODIFY `id_workshops` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `workshops_type`
--
ALTER TABLE `workshops_type`
  MODIFY `id_workshops_type` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`product_type_id`) REFERENCES `product_type` (`id_product_type`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`material_type_id`) REFERENCES `material_type` (`id_material_type`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `product_workshops`
--
ALTER TABLE `product_workshops`
  ADD CONSTRAINT `product_workshops_ibfk_1` FOREIGN KEY (`products_id`) REFERENCES `products` (`id_products`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_workshops_ibfk_2` FOREIGN KEY (`workshops_id`) REFERENCES `workshops` (`id_workshops`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `workshops`
--
ALTER TABLE `workshops`
  ADD CONSTRAINT `workshops_ibfk_1` FOREIGN KEY (`workshops_type_id`) REFERENCES `workshops_type` (`id_workshops_type`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
