-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:3306
-- Время создания: Апр 01 2021 г., 08:52
-- Версия сервера: 5.7.24
-- Версия PHP: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `uslugi`
--

-- --------------------------------------------------------

--
-- Структура таблицы `customers`
--

CREATE TABLE `customers` (
  `NAME` varchar(255) NOT NULL,
  `Date of birth` int(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `Phone number` int(255) NOT NULL,
  `Employee` varchar(255) NOT NULL,
  `Ready Date` int(255) NOT NULL,
  `Order code` int(255) NOT NULL,
  `ID` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `employees`
--

CREATE TABLE `employees` (
  `Amount` int(11) NOT NULL,
  `Shooting date` int(11) NOT NULL,
  `Address` int(11) NOT NULL,
  `Service code` int(11) NOT NULL,
  `ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `ordering number`
--

CREATE TABLE `ordering number` (
  `ID Code` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `priobritenie uslug`
--

CREATE TABLE `priobritenie uslug` (
  `Customers` varchar(25) NOT NULL,
  `Services` varchar(150) NOT NULL,
  `product` varchar(20) NOT NULL,
  `ID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `product id`
--

CREATE TABLE `product id` (
  `Product ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `tovar`
--

CREATE TABLE `tovar` (
  `Amount` int(11) NOT NULL,
  `ID` int(11) NOT NULL,
  `Date of shooting` int(11) NOT NULL,
  `Address` int(11) NOT NULL,
  `Discount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `ordering number`
--
ALTER TABLE `ordering number`
  ADD PRIMARY KEY (`ID Code`);

--
-- Индексы таблицы `priobritenie uslug`
--
ALTER TABLE `priobritenie uslug`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `product id`
--
ALTER TABLE `product id`
  ADD KEY `Product ID` (`Product ID`);

--
-- Индексы таблицы `tovar`
--
ALTER TABLE `tovar`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `customers`
--
ALTER TABLE `customers`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `employees`
--
ALTER TABLE `employees`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `ordering number`
--
ALTER TABLE `ordering number`
  MODIFY `ID Code` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `priobritenie uslug`
--
ALTER TABLE `priobritenie uslug`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `tovar`
--
ALTER TABLE `tovar`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `customers`
--
ALTER TABLE `customers`
  ADD CONSTRAINT `customers_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `priobritenie uslug` (`ID`);

--
-- Ограничения внешнего ключа таблицы `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `customers` (`ID`);

--
-- Ограничения внешнего ключа таблицы `ordering number`
--
ALTER TABLE `ordering number`
  ADD CONSTRAINT `ordering number_ibfk_1` FOREIGN KEY (`ID Code`) REFERENCES `customers` (`ID`);

--
-- Ограничения внешнего ключа таблицы `product id`
--
ALTER TABLE `product id`
  ADD CONSTRAINT `product id_ibfk_1` FOREIGN KEY (`Product ID`) REFERENCES `tovar` (`ID`);

--
-- Ограничения внешнего ключа таблицы `tovar`
--
ALTER TABLE `tovar`
  ADD CONSTRAINT `tovar_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `priobritenie uslug` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
