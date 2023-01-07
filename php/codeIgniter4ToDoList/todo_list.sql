-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           10.4.21-MariaDB - mariadb.org binary distribution
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              12.0.0.6468
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Copiando estrutura do banco de dados para todo_list
CREATE DATABASE IF NOT EXISTS `todo_list` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `todo_list`;

-- Copiando estrutura para tabela todo_list.jobs
CREATE TABLE IF NOT EXISTS `jobs` (
  `id_job` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `job` varchar(200) NOT NULL,
  `datetime_created` datetime NOT NULL,
  `datetime_updated` datetime NOT NULL,
  `datetime_finished` datetime DEFAULT NULL,
  `teste` time NOT NULL,
  PRIMARY KEY (`id_job`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela todo_list.jobs: ~4 rows (aproximadamente)
INSERT INTO `jobs` (`id_job`, `job`, `datetime_created`, `datetime_updated`, `datetime_finished`, `teste`) VALUES
	(1, 'teste Um', '2022-03-02 21:43:50', '2022-05-17 22:11:32', NULL, '00:00:00'),
	(2, 'yes, deu certo!', '2022-03-02 21:44:22', '2022-05-17 22:46:04', '2022-05-17 22:46:04', '00:00:00'),
	(4, 'Teste 3!!', '2022-05-17 22:45:55', '2022-05-17 22:46:01', NULL, '00:00:00');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
