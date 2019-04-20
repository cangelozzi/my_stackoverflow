# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: localhost (MySQL 5.7.24)
# Database: my_stackoverflow
# Generation Time: 2019-04-19 23:57:06 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table categories
# ------------------------------------------------------------

DROP TABLE IF EXISTS `categories`;

CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url_category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;

INSERT INTO `categories` (`id`, `name`, `url_category`, `created_at`, `updated_at`)
VALUES
	(1,'Javascript','js','2019-04-12 22:07:02','2019-04-12 22:07:02'),
	(2,'CSS','css','2019-04-12 22:07:02','2019-04-12 22:07:02'),
	(3,'Laravel','laravel','2019-04-12 22:07:02','2019-04-12 22:07:02'),
	(4,'Vue','vue','2019-04-12 22:07:02','2019-04-12 22:07:02'),
	(5,'Node','node','2019-04-12 22:07:02','2019-04-12 22:07:02'),
	(7,'ReactJS','reactjs','2019-04-17 18:49:12','2019-04-17 18:49:12'),
	(15,'PHP MYSQL','php-mysql','2019-04-17 21:31:12','2019-04-17 21:31:12'),
	(29,'GraphQL','graphql','2019-04-17 21:58:46','2019-04-17 22:14:14');

/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;

INSERT INTO `migrations` (`id`, `migration`, `batch`)
VALUES
	(1,'2014_10_12_000000_create_users_table',1),
	(2,'2014_10_12_100000_create_password_resets_table',1),
	(3,'2019_04_12_174808_create_questions_table',1),
	(4,'2019_04_12_175138_create_replies_table',1),
	(5,'2019_04_12_175215_create_categories_table',1),
	(6,'2019_04_12_175339_create_likes_table',1);

/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table password_resets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table questions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `questions`;

CREATE TABLE `questions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url_question` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;

INSERT INTO `questions` (`id`, `title`, `url_question`, `body`, `category_id`, `user_id`, `created_at`, `updated_at`)
VALUES
	(1,'Sort list of Array Linked Object by keys and values','array-linked-obj','Temporibus et est hic et est dolorum blanditiis. Omnis voluptas saepe in sunt enim a non dolorum. Suscipit alias ut eos ab. Non vel et repellat dolorem quos in.',1,3,'2019-04-12 22:07:02','2019-04-13 03:30:23'),
	(2,'JavaScript extending class inside constructor','js-extend-class-constructor','Voluptatem sit sit et nam. Sed cumque iste incidunt illo voluptas facere. Illum sed optio tenetur et. Aut aut ut est deserunt accusamus.',4,2,'2019-04-12 22:07:02','2019-04-12 22:07:02'),
	(3,'How do I pass a JavaScript array with radio options to an another PHP file?','js-radio-option-php','Adipisci temporibus sit et aliquam. Ea voluptatum dolorem blanditiis dignissimos. Voluptatem consequatur sunt maxime dicta autem sequi sunt aut.',1,8,'2019-04-12 22:07:02','2019-04-12 22:07:02'),
	(4,'laravel add javascript code to yield section','laravel-add-js','Quia rem dolorem rerum ea. Sint autem soluta labore ut porro totam et. Ducimus labore vel repellendus omnis incidunt.',3,6,'2019-04-12 22:07:02','2019-04-12 22:07:02'),
	(5,' How to deploy Vue app?','vue-deploy','Consequatur totam voluptatem officiis minima est. Reiciendis voluptatem debitis rerum id animi doloribus. Illo vero nihil omnis repudiandae reiciendis ipsa.',4,7,'2019-04-12 22:07:02','2019-04-12 22:07:02'),
	(6,'NPM vs. Gulp vs. Webpack','npm-gulp-webpack','Praesentium facere animi aut voluptas. Minus error blanditiis numquam eum alias assumenda voluptate. Quidem aut et atque aut et ex perferendis. Tempora modi aut doloribus perspiciatis.',5,8,'2019-04-12 22:07:02','2019-04-12 22:07:02'),
	(7,'How do I get started with Node.js','how-get-started-node','Sunt nihil vel qui rerum voluptatem aliquid aut. Dolores dicta doloribus vitae provident impedit. Molestias deserunt alias qui quaerat libero qui omnis.',5,3,'2019-04-12 22:07:02','2019-04-12 22:07:02'),
	(8,'Laravel Add new column to table','larael-add-new-col','Qui delectus eveniet aut vero. Natus quasi assumenda perspiciatis ipsum sit molestias.',3,4,'2019-04-12 22:07:02','2019-04-12 22:07:02'),
	(9,'Fixed element inside flexbox item','fix-elem-flexbox','Aut nisi laborum cum est quidem. Consequatur reprehenderit rerum consequatur id nobis vitae ad eligendi.',2,4,'2019-04-12 22:07:02','2019-04-12 22:07:02'),
	(10,'Vue display unescaped html','vue-esc-html','Iste ut iste dolores sit corporis vitae. Commodi dolores numquam repellat doloremque. Dignissimos ut et dolorum omnis expedita atque ab iusto. Autem qui in minima qui dolores.',4,2,'2019-04-12 22:07:02','2019-04-12 22:07:02'),
	(12,'Test Question','test-question','Laravel is cool...with Vue even more!!',2,12,'2019-04-17 01:17:29','2019-04-19 17:54:42');

/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table replies
# ------------------------------------------------------------

DROP TABLE IF EXISTS `replies`;

CREATE TABLE `replies` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `question_id` int(10) unsigned NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `replies_question_id_foreign` (`question_id`),
  CONSTRAINT `replies_question_id_foreign` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `replies` WRITE;
/*!40000 ALTER TABLE `replies` DISABLE KEYS */;

INSERT INTO `replies` (`id`, `body`, `question_id`, `user_id`, `created_at`, `updated_at`)
VALUES
	(1,'Et voluptatibus distinctio ipsa facilis magnam. Sit expedita tempore natus reprehenderit quidem est sit. Et voluptatem porro omnis sunt eum atque.',6,6,'2019-04-12 22:07:02','2019-04-12 22:07:02'),
	(2,'Aut dignissimos voluptas fuga nostrum reprehenderit. Rerum ad autem odit in inventore culpa suscipit. Hic et cupiditate enim hic expedita.',3,8,'2019-04-12 22:07:02','2019-04-12 22:07:02'),
	(3,'Exercitationem voluptatem vitae qui et et. Animi nihil hic et vel et pariatur et doloribus. Eum amet perspiciatis et mollitia molestiae maxime.',6,5,'2019-04-12 22:07:02','2019-04-12 22:07:02'),
	(4,'Maxime suscipit itaque ad omnis. Adipisci nemo molestias fugit iure alias nam sequi et. Et enim magni nihil officiis voluptatibus itaque nemo.',10,2,'2019-04-12 22:07:02','2019-04-12 22:07:02'),
	(5,'Necessitatibus est provident nam quia vero. Facere voluptatem laboriosam delectus ut provident ea. Architecto laboriosam quia omnis enim iure.',9,6,'2019-04-12 22:07:02','2019-04-12 22:07:02'),
	(6,'Explicabo ut perferendis autem sequi non alias eum quisquam. Eum consequuntur eum omnis nam aliquid labore quis est. Voluptatem aut consequatur omnis ratione qui.',5,10,'2019-04-12 22:07:02','2019-04-12 22:07:02'),
	(7,'Adipisci velit ea voluptas porro voluptatem. Veniam magni et aliquam sed autem.',9,1,'2019-04-12 22:07:02','2019-04-12 22:07:02'),
	(8,'Sit blanditiis nostrum est sed quibusdam. Eum vel facilis dolorem consequatur labore esse. Dolor hic reiciendis quo et. Expedita nobis voluptas est.',8,2,'2019-04-12 22:07:02','2019-04-12 22:07:02'),
	(9,'Ipsam porro rerum quos aliquam architecto. Sunt sit nisi molestias eaque nobis aut. Natus alias eaque sapiente. Excepturi iure et delectus consequatur sed vitae voluptate et.',9,4,'2019-04-12 22:07:02','2019-04-12 22:07:02'),
	(10,'Asperiores esse at velit hic accusamus repudiandae. Officiis temporibus laudantium voluptas culpa dolores quia. Necessitatibus neque asperiores qui optio. Aut quibusdam porro ut.',8,2,'2019-04-12 22:07:02','2019-04-12 22:07:02'),
	(11,'Modi aliquam voluptatum quia ut possimus. Voluptatem quisquam sed nemo ipsa qui quia quos. Quia veritatis autem inventore vel facere reiciendis non omnis. Sunt cum non enim placeat error ad tenetur.',5,2,'2019-04-12 22:07:02','2019-04-12 22:07:02'),
	(12,'Id dignissimos ipsa eius porro incidunt deleniti aut tenetur. Sit eligendi iure aut corporis. Numquam voluptas et ut libero ullam sed.',9,5,'2019-04-12 22:07:02','2019-04-12 22:07:02'),
	(13,'Nemo et possimus autem voluptatem non est. Qui aperiam voluptate quaerat eum veritatis possimus. Reiciendis eos dolor et.',5,3,'2019-04-12 22:07:02','2019-04-12 22:07:02'),
	(14,'Cum est ex odio ut alias. Natus enim soluta pariatur aut libero. Aut quia unde quaerat rerum fugit et.',4,2,'2019-04-12 22:07:02','2019-04-12 22:07:02'),
	(15,'Expedita consequatur officiis rerum sint. Quis dolore hic et dolorum recusandae. Itaque dolor qui corrupti iusto iste.',8,8,'2019-04-12 22:07:02','2019-04-12 22:07:02'),
	(16,'Ut dolor iure porro occaecati voluptas ut voluptatem. Animi odit aut aut possimus veritatis et et. Et assumenda non quia veritatis qui.',8,3,'2019-04-12 22:07:02','2019-04-12 22:07:02'),
	(17,'Possimus maiores totam deserunt mollitia animi provident sequi. Dolor enim voluptatem nisi esse. Voluptatum aliquam dolores deleniti voluptates.',6,3,'2019-04-12 22:07:02','2019-04-12 22:07:02'),
	(18,'Eveniet et qui id quis. Velit pariatur et assumenda ipsam aliquam. Et nemo ratione nemo voluptas. Dignissimos ipsum libero qui.',9,6,'2019-04-12 22:07:02','2019-04-12 22:07:02'),
	(19,'Officiis fugiat ut dignissimos illo quaerat enim accusantium. Odit qui id vel hic et. Dolor facere assumenda sint doloremque ut.',2,9,'2019-04-12 22:07:02','2019-04-12 22:07:02'),
	(20,'Unde consequuntur ducimus nobis esse. Iste qui possimus ex praesentium. Tempore excepturi rerum accusamus quo distinctio quia consequatur doloremque.',8,7,'2019-04-12 22:07:02','2019-04-12 22:07:02'),
	(21,'Quaerat vel perspiciatis laboriosam est magni consectetur sunt officiis. Molestias ut ut repellendus consequatur quaerat odit ducimus expedita. A beatae velit cumque alias et architecto.',4,3,'2019-04-12 22:07:02','2019-04-12 22:07:02'),
	(22,'Quisquam eveniet quis placeat sit odio ducimus. Quis itaque illo explicabo sed. Facilis qui dignissimos eum. Quasi quas autem assumenda.',6,8,'2019-04-12 22:07:02','2019-04-12 22:07:02'),
	(23,'Praesentium tempore magni excepturi nesciunt. Fuga perspiciatis sint omnis quas explicabo quia.',1,7,'2019-04-12 22:07:02','2019-04-12 22:07:02'),
	(24,'Animi eaque doloribus voluptatibus rerum dolorem. Molestias placeat quia voluptates itaque. Et voluptas hic doloremque non quod facere non quis. Ullam aliquid odio ut.',6,7,'2019-04-12 22:07:02','2019-04-12 22:07:02'),
	(25,'Tempore ut perspiciatis reiciendis itaque non nam. Tempora sed aspernatur voluptatem minima. Voluptas molestiae architecto beatae qui aut odit.',3,3,'2019-04-12 22:07:02','2019-04-12 22:07:02'),
	(26,'Dolore rem nihil architecto nulla perferendis cum. Totam et ut maxime minus dolorem. Aut cupiditate temporibus minus architecto voluptas.',2,7,'2019-04-12 22:07:02','2019-04-12 22:07:02'),
	(27,'Maxime numquam molestias alias sit quaerat temporibus. Enim mollitia sint et inventore totam. Et qui cum consequatur sed itaque accusantium in. Dignissimos ipsa eos unde et illo dolorum.',8,4,'2019-04-12 22:07:02','2019-04-12 22:07:02'),
	(28,'Asperiores blanditiis incidunt voluptas quia. Possimus quae veniam ex facilis quae. Eius nemo culpa pariatur voluptatum. Soluta ut architecto tenetur.',1,8,'2019-04-12 22:07:02','2019-04-12 22:07:02'),
	(29,'Quia qui adipisci sunt itaque. Labore sit possimus debitis qui fugiat ut assumenda.',6,7,'2019-04-12 22:07:02','2019-04-12 22:07:02'),
	(30,'Cupiditate dolorem aut odit tempore ipsum et. Explicabo maxime laudantium ut. Dolorem a at voluptatem ea. Et dolor repellat ut qui aut repellendus. Quae dignissimos assumenda alias atque in.',7,10,'2019-04-12 22:07:02','2019-04-12 22:07:02'),
	(31,'Mollitia recusandae aut iusto fugit eligendi sit natus. A sed iusto commodi et unde qui et. Sapiente ut aut eum cum quia accusantium. Autem in ea magnam aut eos suscipit.',4,5,'2019-04-12 22:07:02','2019-04-12 22:07:02'),
	(32,'Aut consequuntur sunt rem officiis. Magnam ex animi iste magnam rerum ab. Aut ipsam nihil voluptate veritatis quisquam suscipit.',4,1,'2019-04-12 22:07:02','2019-04-12 22:07:02'),
	(33,'Omnis occaecati quisquam mollitia eveniet eum. Enim consequatur id accusantium totam qui porro aperiam eligendi. Velit cum impedit error tempora qui.',6,9,'2019-04-12 22:07:02','2019-04-12 22:07:02'),
	(34,'Ab vel iste occaecati et dolores veniam ut. Assumenda voluptatibus laboriosam maiores asperiores architecto magnam. Nihil architecto magnam accusamus. Quaerat sunt soluta error autem a.',4,10,'2019-04-12 22:07:02','2019-04-12 22:07:02'),
	(35,'Velit porro officia ea optio in est. Unde qui qui voluptate.',9,7,'2019-04-12 22:07:02','2019-04-12 22:07:02'),
	(36,'Quisquam est sit a laudantium natus ipsam vel. Dicta mollitia accusantium illo ut dolorem maxime nostrum nisi. Aut ea soluta rerum dolorem nam. Est consequuntur dolores similique totam consectetur.',5,3,'2019-04-12 22:07:02','2019-04-12 22:07:02'),
	(37,'Laborum quos totam cumque. Earum rerum non illo sed ea libero labore. Mollitia amet minus velit minus voluptatem sunt. Et sequi aliquid molestias perspiciatis illo esse placeat.',9,3,'2019-04-12 22:07:02','2019-04-12 22:07:02'),
	(38,'Rerum quasi saepe et dolorem optio. Voluptate animi ipsum non molestiae. Quia odio eveniet explicabo in est consequatur unde. Voluptas id corrupti eum pariatur cupiditate autem molestias.',7,5,'2019-04-12 22:07:02','2019-04-12 22:07:02'),
	(39,'Voluptas mollitia explicabo repellendus fugiat in est ut. Dignissimos neque et eaque tenetur ut qui. Enim iste cupiditate porro repellendus eaque. Et et consequatur quos est earum.',5,3,'2019-04-12 22:07:02','2019-04-12 22:07:02'),
	(40,'Quia in enim harum voluptatem. Ad et corrupti at quae sapiente facere. Temporibus ad blanditiis consequatur delectus sapiente et. Aperiam doloribus et eveniet.',3,4,'2019-04-12 22:07:02','2019-04-12 22:07:02'),
	(41,'Et fuga saepe sit laudantium. Similique consequatur aut qui dolorem iste. Ipsa corrupti eligendi quibusdam unde amet. Qui quia et porro architecto.',6,9,'2019-04-12 22:07:02','2019-04-12 22:07:02'),
	(42,'Eum repellendus dolor recusandae quidem consequuntur. Eos vel similique sequi sint ex. Ipsum esse ipsam aut quis quaerat distinctio. Dolor pariatur sed dolorem sit sed.',9,6,'2019-04-12 22:07:02','2019-04-12 22:07:02'),
	(43,'Est ut ipsum voluptas. Non enim autem animi mollitia. Qui inventore consequatur eum totam.',7,2,'2019-04-12 22:07:02','2019-04-12 22:07:02'),
	(44,'Sit ipsa molestiae maxime minus ad provident eligendi. Autem est illo minus sunt qui. Veritatis soluta quasi qui et sed totam adipisci quo. Veritatis at minus aut. Eligendi rerum rerum non.',7,1,'2019-04-12 22:07:02','2019-04-12 22:07:02'),
	(45,'Enim necessitatibus repudiandae nostrum eos perspiciatis accusamus velit. Sit delectus aliquam explicabo et sit. Dolorum libero eum vitae fugit commodi.',5,7,'2019-04-12 22:07:02','2019-04-12 22:07:02'),
	(46,'Quis ducimus esse voluptatibus officiis. Cum est amet consequatur nihil sint aliquam consequatur. Doloremque dolorem eos assumenda officiis et eum saepe minus.',9,7,'2019-04-12 22:07:02','2019-04-12 22:07:02'),
	(47,'Ratione pariatur repellendus voluptatem eaque minus incidunt eligendi. Non voluptate dignissimos mollitia voluptatibus voluptatem. Ut ut aut veniam. Rerum consequuntur accusamus deleniti adipisci.',9,6,'2019-04-12 22:07:02','2019-04-12 22:07:02'),
	(48,'Quam quis est dicta eum nulla nesciunt et molestias. Mollitia recusandae velit aut. Perspiciatis illo voluptas debitis velit iste. Tempore aut omnis quaerat voluptatem rem dicta ab ipsam.',1,2,'2019-04-12 22:07:02','2019-04-12 22:07:02'),
	(49,'Doloremque rerum provident est sunt. Aspernatur quaerat praesentium modi error. Aut magni exercitationem et sed.',3,2,'2019-04-12 22:07:02','2019-04-12 22:07:02'),
	(50,'Et aliquid nam sit. Similique sunt repudiandae aspernatur delectus sit et. Ut quia architecto ipsa cupiditate assumenda optio. Aliquid quibusdam a delectus quos ut neque.',5,4,'2019-04-12 22:07:02','2019-04-12 22:07:02'),
	(55,'# Test Reply update',1,12,'2019-04-19 16:33:21','2019-04-19 17:36:05');

/*!40000 ALTER TABLE `replies` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
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

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`)
VALUES
	(1,'Anastacio Oberbrunner','hilpert.lawrence@example.com','2019-04-12 22:07:02','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','YmLxT4kqXw','2019-04-12 22:07:02','2019-04-12 22:07:02'),
	(2,'Dr. Howard Sanford DDS','thegmann@example.org','2019-04-12 22:07:02','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','JHr4hiuEdz','2019-04-12 22:07:02','2019-04-12 22:07:02'),
	(3,'Miss Emilia Stamm','dennis07@example.com','2019-04-12 22:07:02','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','zvIwMMfGI1','2019-04-12 22:07:02','2019-04-12 22:07:02'),
	(4,'Isabell Ruecker','kristofer.carroll@example.com','2019-04-12 22:07:02','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','fsymxP9Fcs','2019-04-12 22:07:02','2019-04-12 22:07:02'),
	(5,'Freddie Adams','zpacocha@example.com','2019-04-12 22:07:02','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','naxRkMUVxw','2019-04-12 22:07:02','2019-04-12 22:07:02'),
	(6,'Mozelle Fisher','qpouros@example.com','2019-04-12 22:07:02','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','TuctQxJOv2','2019-04-12 22:07:02','2019-04-12 22:07:02'),
	(7,'Dr. Clarabelle Thompson PhD','wilkinson.herman@example.net','2019-04-12 22:07:02','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','9T3YDOZegC','2019-04-12 22:07:02','2019-04-12 22:07:02'),
	(8,'Obie Stanton','hcrist@example.org','2019-04-12 22:07:02','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','2IOoiA959h','2019-04-12 22:07:02','2019-04-12 22:07:02'),
	(9,'Cassandra Macejkovic PhD','elisha45@example.net','2019-04-12 22:07:02','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','GBCi22gf6I','2019-04-12 22:07:02','2019-04-12 22:07:02'),
	(10,'Norwood Okuneva Sr.','christopher.treutel@example.com','2019-04-12 22:07:02','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','DGsKB5yVe5','2019-04-12 22:07:02','2019-04-12 22:07:02'),
	(12,'camillo_test','test@test.com',NULL,'$2y$10$mxcA7oFWOmF6GQn0ZjDiHOtdWUirUTmGRIMjfi1IUZwbKIptE8pBC',NULL,'2019-04-14 04:04:27','2019-04-14 04:04:27'),
	(15,'camillo','camillo@test.com',NULL,'$2y$10$59Oaul4ilfxmGhoSW.6uOOJLQc/CrTLJxrxoK88nYwGn0b5TfVimW',NULL,'2019-04-14 19:58:56','2019-04-14 19:58:56'),
	(16,'admin','admin@admin.com',NULL,'$2y$10$sh.DFY0iuR9Qh2mErOhxPuDU0PYrzR9jwZ06WglWc6qlOv2WTomz6',NULL,'2019-04-17 22:16:40','2019-04-17 22:16:40');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
