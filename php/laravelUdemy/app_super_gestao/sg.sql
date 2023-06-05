-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           10.11.0-MariaDB-log - mariadb.org binary distribution
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              12.5.0.6677
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Copiando estrutura do banco de dados para sg
CREATE DATABASE IF NOT EXISTS `sg` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `sg`;

-- Copiando estrutura para tabela sg.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela sg.failed_jobs: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela sg.filiais
CREATE TABLE IF NOT EXISTS `filiais` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `filial` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela sg.filiais: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela sg.fornecedores
CREATE TABLE IF NOT EXISTS `fornecedores` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `uf` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela sg.fornecedores: ~3 rows (aproximadamente)
INSERT INTO `fornecedores` (`id`, `nome`, `site`, `created_at`, `updated_at`, `uf`, `email`, `deleted_at`) VALUES
	(1, 'Fornecedor100', 'fornecedor100.net', '2023-06-04 01:33:37', '2023-06-04 01:33:37', 'RS', 'contato@fornecedor100.net', NULL),
	(2, 'Fornecedor200', 'fornecedor200.com.br', '2023-06-04 01:33:37', '2023-06-04 01:33:37', 'SP', 'email@fornecedor200.com.br', NULL),
	(3, 'Fornecedor300', 'fornecedor300.com.br', NULL, NULL, 'MG', 'email@fornecedor300.com.br', NULL);

-- Copiando estrutura para tabela sg.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela sg.migrations: ~13 rows (aproximadamente)
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2019_08_19_000000_create_failed_jobs_table', 1),
	(3, '2023_01_08_234405_create_site_contatos_table', 1),
	(4, '2023_02_12_022612_create_fornecedores_table', 1),
	(5, '2023_02_12_023554_alter_fornecedores_novas_colunas', 1),
	(6, '2023_02_21_230036_create_produtos_table', 1),
	(7, '2023_02_21_232044_create_produto_detalhes_table', 1),
	(8, '2023_02_23_190440_create_unidades_table', 1),
	(9, '2023_02_23_231202_ajuste_produtos_filiais', 1),
	(10, '2023_02_23_233743_alter_fornecedores_nova_coluna_site_com_after', 1),
	(11, '2023_06_03_214054_alter_fornecedores_softdelete', 1),
	(12, '2023_06_04_223530_create_motivo_contatos_table', 2),
	(13, '2023_06_04_234150_alter_table_site_contatos_add_fk_motivo_contatos', 3);

-- Copiando estrutura para tabela sg.motivo_contatos
CREATE TABLE IF NOT EXISTS `motivo_contatos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `motivos_contato` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela sg.motivo_contatos: ~3 rows (aproximadamente)
INSERT INTO `motivo_contatos` (`id`, `motivos_contato`, `created_at`, `updated_at`) VALUES
	(1, 'Dúvida', '2023-06-05 01:52:43', '2023-06-05 01:52:43'),
	(2, 'Elogio', '2023-06-05 01:52:43', '2023-06-05 01:52:43'),
	(3, 'Reclamação', '2023-06-05 01:52:43', '2023-06-05 01:52:43');

-- Copiando estrutura para tabela sg.produtos
CREATE TABLE IF NOT EXISTS `produtos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descricao` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `peso` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `unidade_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `produtos_unidade_id_foreign` (`unidade_id`),
  CONSTRAINT `produtos_unidade_id_foreign` FOREIGN KEY (`unidade_id`) REFERENCES `unidades` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela sg.produtos: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela sg.produtos_filiais
CREATE TABLE IF NOT EXISTS `produtos_filiais` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `filial_id` bigint(20) unsigned NOT NULL,
  `produto_id` bigint(20) unsigned NOT NULL,
  `preco_venda` decimal(8,2) NOT NULL,
  `estoque_minimo` int(11) NOT NULL,
  `estoque_maximo` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `produtos_filiais_filial_id_foreign` (`filial_id`),
  KEY `produtos_filiais_produto_id_foreign` (`produto_id`),
  CONSTRAINT `produtos_filiais_filial_id_foreign` FOREIGN KEY (`filial_id`) REFERENCES `filiais` (`id`),
  CONSTRAINT `produtos_filiais_produto_id_foreign` FOREIGN KEY (`produto_id`) REFERENCES `produtos` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela sg.produtos_filiais: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela sg.produto_detalhes
CREATE TABLE IF NOT EXISTS `produto_detalhes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `produto_id` bigint(20) unsigned NOT NULL,
  `comprimento` double(8,2) NOT NULL,
  `largura` double(8,2) NOT NULL,
  `altura` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `unidade_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `produto_detalhes_produto_id_unique` (`produto_id`),
  KEY `produto_detalhes_unidade_id_foreign` (`unidade_id`),
  CONSTRAINT `produto_detalhes_produto_id_foreign` FOREIGN KEY (`produto_id`) REFERENCES `produtos` (`id`),
  CONSTRAINT `produto_detalhes_unidade_id_foreign` FOREIGN KEY (`unidade_id`) REFERENCES `unidades` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela sg.produto_detalhes: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela sg.site_contatos
CREATE TABLE IF NOT EXISTS `site_contatos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `nome` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mensagem` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `motivo_contatos_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela sg.site_contatos: ~2 rows (aproximadamente)
INSERT INTO `site_contatos` (`id`, `created_at`, `updated_at`, `nome`, `telefone`, `email`, `mensagem`, `motivo_contatos_id`) VALUES
	(1, '2023-06-05 03:31:28', '2023-06-05 03:31:28', 'treinamento10', '(35) 9 9974-5083', 'paulohbsouza@gmail.com', 'Preencha aqui a sua mensagem', 3),
	(2, '2023-06-05 03:31:43', '2023-06-05 03:31:43', 'turma externa wewewe', '(35) 9 9974-5083', 'paulohbsouza@gmail.com', 'Preencha aqui a sua mensagem', 2);

-- Copiando estrutura para tabela sg.unidades
CREATE TABLE IF NOT EXISTS `unidades` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `unidade` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descricao` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela sg.unidades: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela sg.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela sg.users: ~0 rows (aproximadamente)

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
