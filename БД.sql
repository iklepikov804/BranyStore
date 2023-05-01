-- --------------------------------------------------------
-- Хост:                         127.0.0.1
-- Версия сервера:               5.6.43 - MySQL Community Server (GPL)
-- Операционная система:         Win32
-- HeidiSQL Версия:              10.1.0.5464
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Дамп структуры базы данных site
CREATE DATABASE IF NOT EXISTS `site` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `site`;

-- Дамп структуры для таблица site.console_access
CREATE TABLE IF NOT EXISTS `console_access` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` int(11) NOT NULL,
  `nick` varchar(255) NOT NULL,
  `access` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1773 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы site.console_access: ~2 rows (приблизительно)
/*!40000 ALTER TABLE `console_access` DISABLE KEYS */;
INSERT INTO `console_access` (`id`, `user`, `nick`, `access`) VALUES
	(1, 0, 'nick', '*'),
	(2, 0, 'nick', 'console');
/*!40000 ALTER TABLE `console_access` ENABLE KEYS */;

-- Дамп структуры для таблица site.console_block
CREATE TABLE IF NOT EXISTS `console_block` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nick` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы site.console_block: ~2 rows (приблизительно)
/*!40000 ALTER TABLE `console_block` DISABLE KEYS */;
INSERT INTO `console_block` (`id`, `nick`) VALUES
	(1, 'ggg'),
	(4, '*');
/*!40000 ALTER TABLE `console_block` ENABLE KEYS */;

-- Дамп структуры для таблица site.console_chat
CREATE TABLE IF NOT EXISTS `console_chat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fio` varchar(255) NOT NULL,
  `nick` varchar(255) NOT NULL,
  `time` datetime NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы site.console_chat: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `console_chat` DISABLE KEYS */;
/*!40000 ALTER TABLE `console_chat` ENABLE KEYS */;

-- Дамп структуры для таблица site.console_cmd
CREATE TABLE IF NOT EXISTS `console_cmd` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Уник. индиф',
  `cmd` varchar(255) NOT NULL COMMENT 'Первое слово команды (ban user - ban)',
  `query` varchar(255) NOT NULL COMMENT '[argument] - строгий аргумент команды, [text] - свободный текст в команде',
  `use` varchar(11) NOT NULL DEFAULT '-1' COMMENT 'Кол-во использований в сутки (-1 бесконечно)',
  `example` text NOT NULL COMMENT 'Пример команды',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы site.console_cmd: ~1 rows (приблизительно)
/*!40000 ALTER TABLE `console_cmd` DISABLE KEYS */;
INSERT INTO `console_cmd` (`id`, `cmd`, `query`, `use`, `example`) VALUES
	(2, '', 'kit [argument] [argument]', '3', 'kit (название кита) (ник) [Выдать кит игроку]');
/*!40000 ALTER TABLE `console_cmd` ENABLE KEYS */;

-- Дамп структуры для таблица site.console_log
CREATE TABLE IF NOT EXISTS `console_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fio` varchar(255) NOT NULL,
  `nick` varchar(255) NOT NULL,
  `time` datetime NOT NULL,
  `cmd` text NOT NULL,
  `reply` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы site.console_log: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `console_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `console_log` ENABLE KEYS */;

-- Дамп структуры для таблица site.console_timeout
CREATE TABLE IF NOT EXISTS `console_timeout` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `command` varchar(255) NOT NULL,
  `user` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы site.console_timeout: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `console_timeout` DISABLE KEYS */;
/*!40000 ALTER TABLE `console_timeout` ENABLE KEYS */;

-- Дамп структуры для таблица site.console_users
CREATE TABLE IF NOT EXISTS `console_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `hash` varchar(255) NOT NULL,
  `uid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы site.console_users: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `console_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `console_users` ENABLE KEYS */;

-- Дамп структуры для таблица site.extradition
CREATE TABLE IF NOT EXISTS `extradition` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(255) NOT NULL,
  `port` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `name` varchar(225) NOT NULL,
  `server` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы site.extradition: ~1 rows (приблизительно)
/*!40000 ALTER TABLE `extradition` DISABLE KEYS */;
INSERT INTO `extradition` (`id`, `ip`, `port`, `pass`, `name`, `server`) VALUES
	(1, 'localhost', '1111', 'asdas', 'Surv', 1);
/*!40000 ALTER TABLE `extradition` ENABLE KEYS */;

-- Дамп структуры для таблица site.groups
CREATE TABLE IF NOT EXISTS `groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL DEFAULT '0',
  `cmd` text NOT NULL,
  `category` varchar(255) NOT NULL,
  `surcharge` int(1) NOT NULL DEFAULT '0',
  `server` int(11) NOT NULL,
  `console` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы site.groups: ~1 rows (приблизительно)
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
INSERT INTO `groups` (`id`, `name`, `price`, `cmd`, `category`, `surcharge`, `server`, `console`) VALUES
	(1, 'admin', 5, 'command', 'Привилегии', 0, 1, 0);
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;

-- Дамп структуры для таблица site.log
CREATE TABLE IF NOT EXISTS `log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nick` varchar(255) NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы site.log: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `log` DISABLE KEYS */;
/*!40000 ALTER TABLE `log` ENABLE KEYS */;

-- Дамп структуры для таблица site.orders
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupid` int(11) NOT NULL,
  `group` varchar(255) NOT NULL,
  `price` int(11) NOT NULL DEFAULT '0',
  `nick` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `date` date NOT NULL,
  `time` time NOT NULL,
  `profit` int(11) NOT NULL DEFAULT '0',
  `month` int(11) NOT NULL,
  `server` int(11) NOT NULL,
  `vk_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы site.orders: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;

-- Дамп структуры для таблица site.promo
CREATE TABLE IF NOT EXISTS `promo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `disc` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы site.promo: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `promo` DISABLE KEYS */;
/*!40000 ALTER TABLE `promo` ENABLE KEYS */;

-- Дамп структуры для таблица site.servers
CREATE TABLE IF NOT EXISTS `servers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(225) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы site.servers: ~5 rows (приблизительно)
/*!40000 ALTER TABLE `servers` DISABLE KEYS */;
INSERT INTO `servers` (`id`, `name`, `status`) VALUES
	(1, 'Выживание', 1);
/*!40000 ALTER TABLE `servers` ENABLE KEYS */;

-- Дамп структуры для таблица site.surcharge
CREATE TABLE IF NOT EXISTS `surcharge` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nick` varchar(255) NOT NULL,
  `price` int(11) NOT NULL DEFAULT '0',
  `server` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы site.surcharge: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `surcharge` DISABLE KEYS */;
/*!40000 ALTER TABLE `surcharge` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
