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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela sg.migrations: ~11 rows (aproximadamente)
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
	(11, '2023_06_03_214054_alter_fornecedores_softdelete', 1);

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
  `motivoContato` int(11) NOT NULL,
  `mensagem` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela sg.site_contatos: ~46 rows (aproximadamente)
INSERT INTO `site_contatos` (`id`, `created_at`, `updated_at`, `nome`, `telefone`, `email`, `motivoContato`, `mensagem`) VALUES
	(1, '2023-06-04 02:18:09', '2023-06-04 02:18:09', 'Lorenz Hudson', '1-888-208-5931', 'windler.delphine@yahoo.com', 1, 'Ab eveniet inventore quibusdam repudiandae sed architecto. Earum odio quam quam aut quis. Corrupti vel sequi id optio reprehenderit. Dicta consectetur deserunt sed totam magnam explicabo nisi libero.'),
	(2, '2023-06-04 02:18:09', '2023-06-04 02:18:09', 'Ms. Margie Green', '877.968.4921', 'helga47@torphy.org', 2, 'Quia et reiciendis nulla esse non aut eius. Vel repellat ut corporis accusantium architecto labore unde. Eius tenetur tempora nihil non molestiae atque. Est numquam eum reiciendis id rem.'),
	(3, '2023-06-04 02:18:09', '2023-06-04 02:18:09', 'Modesto Kirlin', '888-744-3774', 'sheathcote@feest.net', 3, 'Illo impedit molestiae facilis dolorem in accusamus. Ullam unde delectus tenetur quos sunt officia quia. Molestiae sequi impedit nostrum enim ea voluptatibus.'),
	(4, '2023-06-04 02:18:09', '2023-06-04 02:18:09', 'Amiya Bednar', '888-920-0605', 'boyer.kaci@kling.info', 3, 'Ipsum adipisci perspiciatis omnis voluptatibus. Rerum corporis alias doloribus expedita id aut. Dolor dolore iure facere ut corporis incidunt minima. Eum repellendus magni numquam soluta magni nam.'),
	(5, '2023-06-04 02:18:09', '2023-06-04 02:18:09', 'Jude Hand', '855.439.3963', 'rory.christiansen@howe.biz', 1, 'Vero velit natus harum fuga quae perferendis. In error qui cumque. Aut voluptatem sit est non ea qui deleniti nam. Culpa sed quia necessitatibus illo et in autem.'),
	(6, '2023-06-04 02:18:09', '2023-06-04 02:18:09', 'Edward Osinski', '(800) 320-0630', 'jaycee.schuster@gorczany.net', 3, 'Non ipsum aut dolore. Vel eaque vero aut et et. Non eum fuga id illum. Consequatur quas soluta ullam ullam quia exercitationem. Nesciunt ut qui ut qui. Id ullam aut velit.'),
	(7, '2023-06-04 02:18:09', '2023-06-04 02:18:09', 'Mr. Jaeden Zboncak PhD', '866.279.7739', 'leatha.schmidt@yahoo.com', 3, 'Possimus doloremque porro illo excepturi. Qui recusandae eius et veritatis quasi consequatur voluptas.'),
	(8, '2023-06-04 02:18:09', '2023-06-04 02:18:09', 'Markus Spinka', '1-844-995-2512', 'nyost@heaney.com', 3, 'Accusamus nihil et atque excepturi voluptatibus. Temporibus voluptas quia molestiae ratione. Qui qui illum sunt dolor eum voluptas recusandae. Et aspernatur laudantium earum optio.'),
	(9, '2023-06-04 02:18:09', '2023-06-04 02:18:09', 'Rod Bartoletti', '(888) 903-8557', 'nschneider@yahoo.com', 1, 'Labore odit nam voluptas iure minus. Exercitationem sit quis aperiam veniam. Nisi dolor aspernatur sunt veniam labore. Iure tempora minus error et.'),
	(10, '2023-06-04 02:18:09', '2023-06-04 02:18:09', 'Naomie Ryan', '888.308.8071', 'linwood73@rice.org', 1, 'Quas sapiente exercitationem temporibus eveniet neque est. Voluptatibus vitae quos nihil est. Voluptatem iste ullam aliquam maiores vero tempora est. Quod quia sit et harum illum.'),
	(11, '2023-06-04 02:18:09', '2023-06-04 02:18:09', 'Garnett Halvorson', '866.685.5523', 'boyer.hubert@borer.com', 2, 'Quibusdam quo et hic qui quasi debitis fugit. Minus eveniet et est veniam. Dolor nam explicabo exercitationem tempore suscipit repellendus id.'),
	(12, '2023-06-04 02:18:09', '2023-06-04 02:18:09', 'Prof. Soledad Zieme', '1-866-775-8454', 'lbernier@paucek.com', 2, 'Nisi non dolores omnis nisi ut. Cum reiciendis consequuntur quasi. Pariatur sequi numquam nesciunt totam aut. Ut sit doloribus voluptatibus veritatis voluptatem fuga nostrum.'),
	(13, '2023-06-04 02:18:09', '2023-06-04 02:18:09', 'Arely Mills Jr.', '888-817-9342', 'mckayla.green@yahoo.com', 3, 'Minima aut similique vel incidunt perferendis officiis reprehenderit. Ad est ut laborum. Labore incidunt non quasi explicabo rerum quaerat. Voluptatem voluptatem praesentium ducimus.'),
	(14, '2023-06-04 02:18:09', '2023-06-04 02:18:09', 'Prof. Kellen Moore PhD', '877.946.2145', 'vhickle@gleichner.com', 1, 'Enim corporis quis omnis quos. Est quidem sapiente et sed. Enim est libero qui beatae enim qui consequatur voluptates.'),
	(15, '2023-06-04 02:18:09', '2023-06-04 02:18:09', 'Mark Steuber', '1-855-778-8685', 'brent.schinner@bins.info', 2, 'Enim minima at eaque odit id. Dolorem assumenda voluptate saepe. Minus ratione deleniti rerum optio voluptatem natus.'),
	(16, '2023-06-04 02:18:09', '2023-06-04 02:18:09', 'Giovanny Swift', '866-493-7601', 'xcassin@gmail.com', 1, 'Sint voluptate repellendus qui voluptates totam delectus quia. Beatae mollitia beatae magni commodi aspernatur. Omnis ab non in debitis fuga occaecati.'),
	(17, '2023-06-04 02:18:09', '2023-06-04 02:18:09', 'Mrs. Carrie Dickinson PhD', '866.995.6974', 'christelle57@kreiger.com', 1, 'Ut animi tempore repudiandae est laborum. Dolor qui ab quo sed similique nulla id. Consectetur fuga perferendis aut. Qui quod doloremque at eveniet quo ut dolorem.'),
	(18, '2023-06-04 02:18:09', '2023-06-04 02:18:09', 'Hilma Ebert', '1-855-570-5046', 'pprosacco@feest.net', 3, 'Et neque dignissimos error qui. Neque id aperiam laborum soluta velit voluptatum tempora et. Magni sed officia molestiae aut debitis non.'),
	(19, '2023-06-04 02:18:09', '2023-06-04 02:18:09', 'Annabell Spinka', '800.364.3511', 'ssipes@buckridge.com', 2, 'Aut dolor doloribus quia nemo cupiditate reprehenderit officia eligendi. Qui autem aliquid et repudiandae odio. Dolorem sed placeat atque sint enim et aut.'),
	(20, '2023-06-04 02:18:09', '2023-06-04 02:18:09', 'Minerva Windler', '1-844-236-3502', 'madalyn59@yahoo.com', 3, 'Laborum rerum et voluptates. Quaerat eos accusantium sit laborum reprehenderit totam. Quidem occaecati maiores quia labore repellendus omnis. Qui magni ducimus provident quia.'),
	(21, '2023-06-04 02:18:56', '2023-06-04 02:18:56', 'Prof. Enos Pfeffer DVM', '1-888-515-0494', 'gvonrueden@ullrich.com', 3, 'Iusto consequatur maiores quisquam rerum laborum ut. Doloremque vero nemo nesciunt nesciunt. Consequatur omnis voluptas quisquam autem voluptatem. Ad et laudantium eligendi voluptate quis magni.'),
	(22, '2023-06-04 02:18:56', '2023-06-04 02:18:56', 'Amelia Lowe', '(800) 546-2740', 'jakob.walker@gmail.com', 2, 'Molestiae voluptas provident corporis qui et velit laudantium. Et aspernatur ipsam consectetur voluptas ex eum. Quisquam quisquam ratione vero fugit voluptas quia dolor.'),
	(23, '2023-06-04 02:18:56', '2023-06-04 02:18:56', 'Cole Blanda', '1-855-281-2548', 'christophe27@hotmail.com', 3, 'Asperiores eos dolorum atque provident et est. Temporibus qui amet modi minima autem. Ipsam delectus et in animi.'),
	(24, '2023-06-04 02:18:56', '2023-06-04 02:18:56', 'Kariane Wiegand', '877.926.5518', 'bryce.glover@schinner.net', 2, 'Error quo dolorum et. Fugit ipsa ut nihil molestias perspiciatis est. Rerum dolores cumque nam neque. Est omnis ut voluptate sit.'),
	(25, '2023-06-04 02:18:56', '2023-06-04 02:18:56', 'Maria Zemlak', '855-343-7296', 'slittel@mraz.com', 1, 'Facilis illum ad laborum sint consequuntur ducimus. Libero minus molestiae repudiandae debitis qui. Enim adipisci suscipit voluptates sed nihil distinctio.'),
	(26, '2023-06-04 02:18:56', '2023-06-04 02:18:56', 'Jane Boehm', '866-909-8854', 'ilueilwitz@yahoo.com', 3, 'Sint sit et doloribus eum eligendi doloribus eos. Sit amet illo sed voluptatum. Quia sunt voluptatibus incidunt ut aut est vel. Et ipsum mollitia enim occaecati porro et veritatis.'),
	(27, '2023-06-04 02:18:56', '2023-06-04 02:18:56', 'Dr. Eladio Orn', '844.203.0736', 'itzel.ohara@miller.com', 1, 'Aliquid molestiae sit explicabo id. Quis iusto voluptatum ut veniam quia eveniet fuga. Dicta quia quod nulla perspiciatis qui.'),
	(28, '2023-06-04 02:18:56', '2023-06-04 02:18:56', 'Ms. Mozelle Bernier', '1-844-726-7788', 'kian70@yahoo.com', 2, 'Omnis blanditiis ab ut incidunt illum voluptas et vitae. Ea ullam quia voluptatibus ipsam est. Qui sunt illum est provident sunt laborum deleniti. Eveniet maxime earum dicta et.'),
	(29, '2023-06-04 02:18:56', '2023-06-04 02:18:56', 'Jerrell Gutkowski Jr.', '844-741-3857', 'mstoltenberg@oconnell.com', 2, 'Expedita amet id nobis et. Inventore suscipit exercitationem quod minima repellat. Alias accusamus voluptas soluta eligendi perspiciatis. Maxime occaecati inventore eaque similique est.'),
	(30, '2023-06-04 02:18:56', '2023-06-04 02:18:56', 'Lenny Lubowitz', '(888) 848-8899', 'msenger@hudson.org', 1, 'Quo laboriosam quod mollitia consequatur. Dolorum fugiat nostrum exercitationem aut dolorem. Reiciendis qui aut distinctio ut possimus.'),
	(31, '2023-06-04 02:18:56', '2023-06-04 02:18:56', 'Brain Mraz V', '855-581-3373', 'frolfson@yahoo.com', 2, 'Earum accusantium et eveniet nemo. Quod officiis repellendus eos iste eum labore omnis. Et occaecati id et quam et minus. Debitis nisi aut quidem.'),
	(32, '2023-06-04 02:18:56', '2023-06-04 02:18:56', 'Magdalena Pfannerstill PhD', '(877) 726-9880', 'kdaugherty@yahoo.com', 2, 'Alias ut non amet quidem et sunt eius nesciunt. Neque aliquam natus deserunt qui. Culpa consequatur eius enim qui corporis id ea provident. Corrupti ab rerum quasi rerum voluptatum porro.'),
	(33, '2023-06-04 02:18:56', '2023-06-04 02:18:56', 'Margaret Okuneva PhD', '1-800-559-9405', 'prohaska.alexandre@hotmail.com', 1, 'Dolor earum ipsam eius atque molestiae est aspernatur. Et sit beatae in. Alias delectus enim repellendus numquam tempora optio.'),
	(34, '2023-06-04 02:18:56', '2023-06-04 02:18:56', 'Shemar Pacocha', '(800) 612-6257', 'pkerluke@abernathy.com', 2, 'Accusantium nisi ut totam et temporibus blanditiis iusto. Illo aut nostrum beatae qui et numquam ut. Incidunt facere numquam dolorem.'),
	(35, '2023-06-04 02:18:56', '2023-06-04 02:18:56', 'Ms. Hattie Connelly', '(877) 835-4445', 'susana.ebert@simonis.net', 2, 'Dicta sequi assumenda sunt ut. Ab nesciunt aut iure perferendis ratione in. Pariatur eligendi laboriosam distinctio est pariatur ex. Dignissimos corrupti eveniet eum odio dolorem nesciunt labore.'),
	(36, '2023-06-04 02:18:56', '2023-06-04 02:18:56', 'Mrs. Lempi Beier', '(866) 779-9099', 'gromaguera@johnson.com', 1, 'Recusandae exercitationem voluptatem consequatur dolorem impedit. Ad voluptatem iusto ipsum aperiam tenetur inventore. Corporis voluptate maxime recusandae eos.'),
	(37, '2023-06-04 02:18:56', '2023-06-04 02:18:56', 'Destany Frami', '855-941-3581', 'ernser.lorna@yahoo.com', 3, 'Libero ut qui aperiam rerum officiis. Dolore ex dolores officia inventore debitis ipsum id. Similique ut laboriosam perferendis. Id voluptas rem qui perspiciatis officia et sunt.'),
	(38, '2023-06-04 02:18:56', '2023-06-04 02:18:56', 'Polly Hilpert', '(866) 656-0286', 'dlangosh@gmail.com', 2, 'Velit nihil totam vero nobis inventore cumque eos. Sit vel fuga veritatis earum ut inventore et. Molestias aut eaque quia est enim voluptatem. Voluptatem alias provident eos.'),
	(39, '2023-06-04 02:18:56', '2023-06-04 02:18:56', 'Karson Oberbrunner', '(855) 445-2289', 'hhudson@gmail.com', 2, 'Sit eveniet sint fuga adipisci dolore dicta eos repellendus. Eligendi quos accusantium eius. Officiis nemo id reiciendis qui.'),
	(40, '2023-06-04 02:18:56', '2023-06-04 02:18:56', 'Leland Lang', '855-359-4046', 'kali50@bartoletti.com', 1, 'Minima eaque sed et excepturi unde neque totam recusandae. Distinctio consectetur et dolor consequatur reprehenderit. Temporibus id quo vero.'),
	(41, '2023-06-04 02:18:56', '2023-06-04 02:18:56', 'Mr. Durward Pfeffer DDS', '800.671.0353', 'sadye09@schuppe.com', 3, 'Autem reiciendis recusandae vel corrupti voluptatem consequatur sit. Cum est aliquam cum. Dolorem id incidunt id nihil nostrum ut fugit voluptatem.'),
	(42, '2023-06-04 02:18:56', '2023-06-04 02:18:56', 'Mr. Rylan D\'Amore', '855.774.7438', 'greenfelder.evert@gmail.com', 1, 'Velit cupiditate corrupti illum voluptas exercitationem. Aut et rem dignissimos unde qui aliquid. Et saepe vero et. Id ea voluptatem corporis distinctio non adipisci blanditiis.'),
	(43, '2023-06-04 02:18:56', '2023-06-04 02:18:56', 'Ervin Wolf', '1-844-364-7617', 'colten.crooks@schowalter.com', 3, 'Modi et repudiandae qui dolorem aperiam inventore qui. Voluptatem error magnam quidem qui sequi amet. Consectetur ipsam quibusdam corporis et et deserunt numquam accusamus.'),
	(44, '2023-06-04 02:18:56', '2023-06-04 02:18:56', 'Kaia Daniel', '1-800-205-1170', 'jenkins.brain@gmail.com', 1, 'Quae corrupti optio quo et. Eaque voluptatem dolore sint incidunt ipsam quia. Voluptate omnis voluptas quasi. Nostrum blanditiis corrupti ratione rem sed. Molestias iste ab cumque officia.'),
	(45, '2023-06-04 02:18:56', '2023-06-04 02:18:56', 'Earlene Brown', '1-888-246-0453', 'schoen.ida@yahoo.com', 2, 'Est blanditiis aut nemo ut. Est est eius consectetur amet et veritatis. Reiciendis saepe eius distinctio deserunt. Alias similique officiis vero voluptatem.'),
	(46, '2023-06-04 02:18:56', '2023-06-04 02:18:56', 'Jeanne Davis', '(866) 230-1520', 'collin.gutmann@feil.com', 1, 'Similique ipsam cupiditate omnis consequatur modi qui. Accusamus architecto tempore sed qui eaque molestias. Exercitationem eius expedita possimus nobis cupiditate veniam iusto.');

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
