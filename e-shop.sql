-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mar. 19 mai 2020 à 14:19
-- Version du serveur :  5.7.26
-- Version de PHP :  5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `e-shop`
--

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`id`, `name`, `alias`) VALUES
(17, 'Informatique', 'informatique'),
(18, 'Livres', 'livres'),
(19, 'High-Tech', 'hight-tech'),
(20, 'Cuisine et Maison', 'cuisine-maison');

-- --------------------------------------------------------

--
-- Structure de la table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_D34A04ADA76ED395` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `product`
--

INSERT INTO `product` (`id`, `user_id`, `name`, `description`, `alias`, `price`, `image`) VALUES
(71, 149, 'Et sed error deserunt.', 'Corporis sunt magni non quis. Est quia necessitatibus reiciendis voluptate natus. Non molestias tempore quaerat rem accusantium excepturi. Iste totam labore voluptas quaerat ab perspiciatis.', 'Et-sed-error-deserunt', 6679.49, 'https://lorempixel.com/640/480/?29698'),
(72, 149, 'Ex esse qui beatae molestias accusamus.', 'Qui aliquam itaque qui magni saepe. A quia et aperiam quis perferendis consequuntur ducimus. Voluptatem non accusamus dolor.', 'Ex-esse-qui-beatae-molestias-accusamus', 15479.49, 'https://lorempixel.com/640/480/?60469'),
(73, 149, 'Cum perspiciatis et et.', 'Provident non itaque est autem dolores nihil soluta. Non enim quis vel voluptatem veritatis molestias necessitatibus. Sint eaque incidunt magni fuga et cumque.', 'Cum-perspiciatis-et-et', 1999.29, 'https://lorempixel.com/640/480/?73889'),
(74, 149, 'Reprehenderit dolorem nulla exercitationem est eum laboriosam.', 'Non ad ut facere consequuntur omnis harum aut. Deleniti dolorem asperiores et nam. Quaerat porro rem architecto delectus et. Dolor quia odit illo eum eum.', 'Reprehenderit-dolorem-nulla-exercitationem-est-eum-laboriosam', 5459.49, 'https://lorempixel.com/640/480/?60036'),
(75, 149, 'Ut nisi at voluptatem et nobis qui.', 'Nihil amet blanditiis quidem provident fugiat blanditiis. Qui sunt ipsa in facilis. Perspiciatis in et esse voluptas. Aut quaerat sed facilis neque eum voluptates.', 'Ut-nisi-at-voluptatem-et-nobis-qui', 2869.49, 'https://lorempixel.com/640/480/?61040'),
(76, 149, 'Ex inventore excepturi beatae voluptate ut.', 'Aut nemo eum id quis voluptate qui perspiciatis. Est et consequuntur et. Non pariatur et esse et.', 'Ex-inventore-excepturi-beatae-voluptate-ut', 9049.99, 'https://lorempixel.com/640/480/?50911'),
(77, 149, 'Rerum consequuntur velit est necessitatibus porro hic.', 'Optio consequatur voluptates perspiciatis deserunt necessitatibus. Et dolorem et repudiandae quaerat.', 'Rerum-consequuntur-velit-est-necessitatibus-porro-hic', 8519.29, 'https://lorempixel.com/640/480/?39305'),
(78, 149, 'Natus consectetur necessitatibus quisquam nulla saepe fugit ullam.', 'Explicabo enim quia ea qui nesciunt. Reiciendis odio omnis perspiciatis tenetur praesentium. Possimus eos nobis incidunt est sed sit.', 'Natus-consectetur-necessitatibus-quisquam-nulla-saepe-fugit-ullam', 8229.29, 'https://lorempixel.com/640/480/?58524'),
(79, 149, 'Voluptatem vel blanditiis minus eum.', 'Autem architecto deserunt quia accusamus est dolor cum. Fuga quae sed nam assumenda aspernatur perspiciatis provident. Vel ducimus numquam et voluptatem et aut animi. Velit quia suscipit ullam.', 'Voluptatem-vel-blanditiis-minus-eum', 11419.29, 'https://lorempixel.com/640/480/?16117'),
(80, 149, 'Voluptas rem ad culpa repudiandae eveniet excepturi.', 'Et et molestiae minus quia voluptatum quia. Saepe laborum odit asperiores consequuntur molestiae quia eum.', 'Voluptas-rem-ad-culpa-repudiandae-eveniet-excepturi', 16349.99, 'https://lorempixel.com/640/480/?38443'),
(81, 149, 'Molestias nobis illum iure harum velit tenetur quod.', 'Amet corrupti qui ipsam sint quam. Qui vero fugiat earum eveniet maxime quos. Totam labore qui sed et quibusdam quam dolorem.', 'Molestias-nobis-illum-iure-harum-velit-tenetur-quod', 17169.29, 'https://lorempixel.com/640/480/?36791'),
(82, 149, 'Ullam nam et velit modi id aliquam eaque.', 'Dolore consequatur aut fuga accusamus. Repudiandae perspiciatis expedita eos voluptatum quo quia expedita. Non sit aut recusandae nisi assumenda quos. Est qui eligendi quia non.', 'Ullam-nam-et-velit-modi-id-aliquam-eaque', 19729.29, 'https://lorempixel.com/640/480/?27425'),
(83, 149, 'Dolor quaerat quas sed numquam odit.', 'A aliquid quibusdam voluptas dolorem. Mollitia unde consequatur nobis inventore consequatur omnis eius.', 'Dolor-quaerat-quas-sed-numquam-odit', 5239.29, 'https://lorempixel.com/640/480/?31744'),
(84, 149, 'Pariatur aspernatur mollitia voluptatem sed provident.', 'Sit neque in odio enim. Et beatae officiis consectetur neque facere et.', 'Pariatur-aspernatur-mollitia-voluptatem-sed-provident', 10409.49, 'https://lorempixel.com/640/480/?54732'),
(85, 149, 'Eaque qui sunt nam ipsum delectus et.', 'Voluptate soluta laboriosam esse blanditiis. Qui qui tempore iure dolor sequi eaque neque. Eius quas dolorum id nulla et ut. Qui aspernatur eum cum doloribus.', 'Eaque-qui-sunt-nam-ipsum-delectus-et', 16659.29, 'https://lorempixel.com/640/480/?16014'),
(86, 149, 'Ipsam consequatur explicabo dicta eligendi et fugiat quia.', 'Minus dolor fugiat inventore fugiat voluptatibus dolorem. Porro quia qui accusantium libero. Aut beatae fuga facilis ad. Repellat ut voluptatibus repellendus et quia labore quas.', 'Ipsam-consequatur-explicabo-dicta-eligendi-et-fugiat-quia', 3229.49, 'https://lorempixel.com/640/480/?37111'),
(87, 149, 'In deserunt qui est quidem vitae velit ut.', 'Voluptas ab qui accusamus dolores ut earum voluptas fugiat. Aliquid vel ratione et et inventore corporis. Cumque vitae ea in vero unde tempora molestiae. Consequatur non id saepe est.', 'In-deserunt-qui-est-quidem-vitae-velit-ut', 109.49, 'https://lorempixel.com/640/480/?85525'),
(88, 149, 'Adipisci praesentium officiis provident.', 'Earum ratione commodi earum harum veniam. Expedita velit itaque reiciendis perspiciatis.', 'Adipisci-praesentium-officiis-provident', 16119.29, 'https://lorempixel.com/640/480/?90985'),
(89, 149, 'Consequatur repellendus harum aliquam praesentium non quia asperiores reprehenderit.', 'Eius et est voluptas est pariatur officiis. Sunt velit est dolorem aut quos cumque et sed. Qui illo cum vel et.', 'Consequatur-repellendus-harum-aliquam-praesentium-non-quia-asperiores-reprehenderit', 15529.29, 'https://lorempixel.com/640/480/?49642'),
(90, 149, 'Id sed eligendi non voluptatibus.', 'Est fugiat occaecati est labore sed eligendi quibusdam rerum. Fuga iste minus suscipit quo. In temporibus tempora sunt beatae.', 'Id-sed-eligendi-non-voluptatibus', 18109.29, 'https://lorempixel.com/640/480/?35354'),
(91, 149, 'Non necessitatibus nulla nemo fuga sint nihil at occaecati.', 'Voluptatem non reprehenderit eveniet expedita et corrupti iure. Veniam perferendis ipsum saepe exercitationem. Aspernatur eius odit aut. Saepe aut adipisci dolorum aliquid.', 'Non-necessitatibus-nulla-nemo-fuga-sint-nihil-at-occaecati', 6729.49, 'https://lorempixel.com/640/480/?12728'),
(92, 149, 'Inventore non ratione doloribus voluptate.', 'Necessitatibus eos nulla totam quo facere pariatur. Eaque non id impedit optio aliquid fugiat hic. Optio totam cumque eum quia saepe quis reiciendis.', 'Inventore-non-ratione-doloribus-voluptate', 6769.99, 'https://lorempixel.com/640/480/?61115'),
(93, 149, 'Debitis dolorem quisquam temporibus qui sit ullam.', 'Voluptates velit natus optio hic consequuntur aspernatur aperiam. Quos dicta vel non harum a sint. Quam fugiat eligendi voluptatem odio.', 'Debitis-dolorem-quisquam-temporibus-qui-sit-ullam', 7099.49, 'https://lorempixel.com/640/480/?29366'),
(94, 149, 'Repellendus nihil autem aut quia debitis doloremque hic.', 'Animi maxime quisquam delectus autem enim. Commodi dolore accusamus officiis id dolorum ducimus assumenda. Praesentium aspernatur quasi nesciunt perspiciatis.', 'Repellendus-nihil-autem-aut-quia-debitis-doloremque-hic', 13949.49, 'https://lorempixel.com/640/480/?61225'),
(95, 149, 'Quo voluptatem eum dolore iure vero odio.', 'Sit distinctio eaque qui laboriosam tenetur. Tenetur doloremque commodi quis voluptatem. Sed mollitia rem reprehenderit explicabo. Et sunt ut velit in asperiores nam voluptas.', 'Quo-voluptatem-eum-dolore-iure-vero-odio', 799.99, 'https://lorempixel.com/640/480/?68671'),
(96, 149, 'Aut eum nemo impedit.', 'Cupiditate explicabo nihil et labore ullam id et. Cupiditate ut numquam aspernatur delectus. Distinctio quo eaque enim tempore. Pariatur repellendus rem autem voluptas maxime ratione qui.', 'Aut-eum-nemo-impedit', 18149.29, 'https://lorempixel.com/640/480/?11936'),
(97, 149, 'Culpa delectus impedit consequatur vel ex aut impedit.', 'Modi dolor harum ut aut. Voluptates ut neque eveniet consequatur sequi. Voluptatem accusantium deleniti illo sed sed tempore. Occaecati libero quibusdam voluptatibus nihil voluptas.', 'Culpa-delectus-impedit-consequatur-vel-ex-aut-impedit', 7889.29, 'https://lorempixel.com/640/480/?53116'),
(98, 149, 'Expedita repellat incidunt sed laudantium odio assumenda beatae distinctio.', 'Omnis est qui debitis enim. Optio id ut alias quibusdam quis voluptatibus est. Labore voluptas ab consequatur dolorem. Sunt est maiores et aspernatur numquam totam ullam corporis.', 'Expedita-repellat-incidunt-sed-laudantium-odio-assumenda-beatae-distinctio', 7369.49, 'https://lorempixel.com/640/480/?51227'),
(99, 149, 'Fugit cupiditate animi aut consequatur.', 'Dolores harum vitae sint at. Aut magni aliquam minus nihil optio itaque iure. Rerum assumenda excepturi est ullam aliquid et.', 'Fugit-cupiditate-animi-aut-consequatur', 9509.49, 'https://lorempixel.com/640/480/?12314'),
(100, 149, 'Sequi voluptatem fuga animi.', 'Voluptatem voluptas accusantium et sunt dolorem tempore eius. In deleniti voluptatibus ut libero aliquid. Ipsum est sit enim.', 'Sequi-voluptatem-fuga-animi', 2719.29, 'https://lorempixel.com/640/480/?97924'),
(101, 149, 'Repellat aperiam occaecati nobis cum quod.', 'Quis odio error temporibus qui. Sed labore possimus molestiae voluptatum. Sit provident quae et corporis rerum dolor dolorum. Suscipit omnis voluptatem veniam.', 'Repellat-aperiam-occaecati-nobis-cum-quod', 13139.29, 'https://lorempixel.com/640/480/?92957'),
(102, 149, 'Dolore mollitia quis assumenda natus suscipit.', 'Dolorum et saepe neque aut ea. Facilis nesciunt et nobis officia ullam maiores et. Eum at autem sit harum eos iure. Ratione facilis ducimus quia explicabo. Quia eos et eaque sed recusandae.', 'Dolore-mollitia-quis-assumenda-natus-suscipit', 11949.49, 'https://lorempixel.com/640/480/?80972'),
(103, 149, 'Perspiciatis deleniti porro autem fuga.', 'Recusandae deserunt velit pariatur mollitia in. Et aliquid facilis saepe doloribus. Debitis animi mollitia minus dolores perferendis quaerat non et. Veniam accusamus animi assumenda nulla est quia.', 'Perspiciatis-deleniti-porro-autem-fuga', 3189.29, 'https://lorempixel.com/640/480/?43375'),
(104, 149, 'Nihil voluptatem repellendus eligendi distinctio sequi sit.', 'Aut qui illum est quis deleniti reprehenderit quia. Hic quia explicabo laboriosam neque. Dicta cupiditate deserunt adipisci dolore officia animi est. Asperiores dolores aut est ea ut tenetur nihil.', 'Nihil-voluptatem-repellendus-eligendi-distinctio-sequi-sit', 15609.49, 'https://lorempixel.com/640/480/?38116'),
(105, 149, 'Laborum ut veniam odit nobis quia dolorem.', 'Magnam repellat vero ducimus quasi autem qui dolorem. Dolorem numquam repudiandae omnis ullam aliquid qui. Fugiat ad neque suscipit nihil nemo sunt.', 'Laborum-ut-veniam-odit-nobis-quia-dolorem', 17949.29, 'https://lorempixel.com/640/480/?98475'),
(106, 149, 'Velit iure iusto nam.', 'Sint harum sed beatae earum corrupti et. Cumque ut facilis est consequatur beatae quo neque. Est totam sit blanditiis accusamus omnis vitae.', 'Velit-iure-iusto-nam', 16489.49, 'https://lorempixel.com/640/480/?22285'),
(107, 149, 'Veniam dolor aperiam sunt voluptatem et adipisci quaerat.', 'Molestiae rerum in et omnis et sunt autem. Voluptatibus et quis officiis nihil. Ea et praesentium maxime et illo. Fugiat amet saepe ut doloremque sed.', 'Veniam-dolor-aperiam-sunt-voluptatem-et-adipisci-quaerat', 19649.49, 'https://lorempixel.com/640/480/?16802'),
(108, 149, 'Dolorem incidunt ducimus magni dolores voluptatum fugit laboriosam.', 'Ut iure dicta ut earum totam saepe velit eum. Aliquam quo vel qui aliquid eaque repellat ipsum. Exercitationem nam eveniet porro perspiciatis voluptatem itaque. Qui fuga nihil quae.', 'Dolorem-incidunt-ducimus-magni-dolores-voluptatum-fugit-laboriosam', 12729.49, 'https://lorempixel.com/640/480/?22047'),
(109, 149, 'Nihil et optio sed blanditiis sed.', 'Aspernatur cum cumque velit ipsam velit incidunt. Dolorum sed at est quos quo est sit. Id accusantium iure velit vitae at dolor aut. Occaecati nostrum fugiat et porro voluptas maxime.', 'Nihil-et-optio-sed-blanditiis-sed', 10359.49, 'https://lorempixel.com/640/480/?19604'),
(110, 149, 'Culpa vero vero ea itaque cumque.', 'Earum ad qui atque. Quod exercitationem est voluptate minus aut consequatur nostrum. Explicabo porro et molestiae provident.', 'Culpa-vero-vero-ea-itaque-cumque', 629.29, 'https://lorempixel.com/640/480/?40384'),
(111, 149, 'Et eligendi quia sint amet voluptatem quos at.', 'Nihil aut quasi itaque facilis fugiat aspernatur omnis facere. Porro quos nemo et doloremque. Quaerat totam ea magni earum aut et dolorem repellat.', 'Et-eligendi-quia-sint-amet-voluptatem-quos-at', 4209.29, 'https://lorempixel.com/640/480/?85731'),
(112, 149, 'Libero minus iusto aut animi maxime cumque et.', 'Quaerat aut molestiae et accusantium atque praesentium. Atque dolore sed qui ut ut. Sunt odit cumque asperiores iure optio sed. Nihil aliquid sit ut enim sed.', 'Libero-minus-iusto-aut-animi-maxime-cumque-et', 16249.29, 'https://lorempixel.com/640/480/?84869'),
(113, 149, 'Id autem deserunt quidem commodi corrupti.', 'Esse rerum aut ab exercitationem saepe ea. Iure aut sed est vel. Veritatis sed qui consequatur aperiam dolorem consequatur vel libero. Quia quia et et autem.', 'Id-autem-deserunt-quidem-commodi-corrupti', 9699.49, 'https://lorempixel.com/640/480/?72482'),
(114, 149, 'Optio doloremque minima nisi debitis.', 'Suscipit autem facere architecto cum recusandae. Porro laudantium sit quo illo voluptatem. Et possimus consequatur architecto dolores nihil minus.', 'Optio-doloremque-minima-nisi-debitis', 7579.99, 'https://lorempixel.com/640/480/?50437'),
(115, 149, 'At a omnis illum earum tempora est.', 'Impedit fugit eos animi est quaerat aut nostrum debitis. Et eaque incidunt et eaque. Culpa et optio harum molestiae hic eos.', 'At-a-omnis-illum-earum-tempora-est', 8259.99, 'https://lorempixel.com/640/480/?12459'),
(116, 149, 'Tempora aut ut facere et itaque eveniet.', 'Adipisci distinctio omnis illum veniam ullam sunt et doloremque. Quo perspiciatis eum hic. Commodi et sed quia. Et similique explicabo autem molestias.', 'Tempora-aut-ut-facere-et-itaque-eveniet', 10129.99, 'https://lorempixel.com/640/480/?36362'),
(117, 149, 'Nesciunt quis error qui facere voluptatem facilis quasi.', 'Autem consequatur voluptas odit mollitia blanditiis. Totam est unde vel quia et molestiae sint sit. Libero eveniet omnis consequuntur soluta totam sit qui.', 'Nesciunt-quis-error-qui-facere-voluptatem-facilis-quasi', 8689.49, 'https://lorempixel.com/640/480/?83527'),
(118, 149, 'Aliquam architecto pariatur error architecto.', 'Ipsa ut aut saepe. Sequi eos molestiae nulla. Vero aut sunt et.', 'Aliquam-architecto-pariatur-error-architecto', 6969.99, 'https://lorempixel.com/640/480/?33914'),
(119, 149, 'Veniam temporibus eius ut nam ut nisi.', 'Voluptatem autem asperiores enim. Ea est laboriosam perspiciatis veniam. Et temporibus harum ea illo possimus dolorem consequatur. Velit est doloremque id id quod ipsa.', 'Veniam-temporibus-eius-ut-nam-ut-nisi', 8839.29, 'https://lorempixel.com/640/480/?79526'),
(120, 149, 'Blanditiis nobis temporibus velit consequuntur provident sint.', 'Necessitatibus perspiciatis aut voluptatem fugiat. Officiis alias perspiciatis quos voluptatum tempora quae doloremque. Nisi repudiandae quae fugit ab itaque excepturi. Expedita esse non debitis est.', 'Blanditiis-nobis-temporibus-velit-consequuntur-provident-sint', 14969.29, 'https://lorempixel.com/640/480/?50820'),
(121, 167, 'Test', 'test', 'Test', 456, 'https://lorempixel.com/640/480/?29698');

-- --------------------------------------------------------

--
-- Structure de la table `product_category`
--

DROP TABLE IF EXISTS `product_category`;
CREATE TABLE IF NOT EXISTS `product_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`category_id`),
  KEY `IDX_CDFC73564584665A` (`product_id`),
  KEY `IDX_CDFC735612469DE2` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `product_category`
--

INSERT INTO `product_category` (`product_id`, `category_id`) VALUES
(121, 17),
(121, 19);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=171 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `firstname`, `lastname`, `email`, `password`, `roles`) VALUES
(149, 'Hugo', 'LIEGEARD', 'admin@eshop.com', '$argon2id$v=19$m=65536,t=4,p=1$dUw5ZEdicGlMaVZOMkphaw$J9L2FsEjKpmcuhPJwjwyUvNBEIToQASoz5M8pOrvJWM', 'a:1:{i:0;s:10:\"ROLE_ADMIN\";}'),
(150, 'Efren', 'Murray', 'mills.josefa@keeling.com', '$argon2id$v=19$m=65536,t=4,p=1$L2xGa0xoV3R1RUE3U0tyaw$5jUIZ7fJ2I8secUzHtz60chl4lZPR5ipEKA1HugOkLg', 'a:1:{i:0;s:9:\"ROLE_USER\";}'),
(151, 'Myron', 'Watsica', 'schmitt.edythe@hotmail.com', '$argon2id$v=19$m=65536,t=4,p=1$c3Jya21hQ1hteTRNRnVyTg$DYDSWQ8m2m91Vj+I3Q3XxTV4MMg7q5GwJHX8EWkNJlc', 'a:1:{i:0;s:9:\"ROLE_USER\";}'),
(152, 'Maybell', 'Waelchi', 'schmeler.rozella@hotmail.com', '$argon2id$v=19$m=65536,t=4,p=1$b09RVU1Sb0dRbE5KeUxrSw$9s9vOO3MVbGBTH7L44i05QEZie17H5ZFGD+SO9jKPKM', 'a:1:{i:0;s:9:\"ROLE_USER\";}'),
(153, 'Kiera', 'Littel', 'ortiz.mariane@yahoo.com', '$argon2id$v=19$m=65536,t=4,p=1$WGVJcDFLQ0JwT255N25Cag$T6pfXc/4/oPScppOJ0ZPcGp0mdwEFYl3jnrsk6CYPxs', 'a:1:{i:0;s:9:\"ROLE_USER\";}'),
(154, 'Elliott', 'Kunze', 'donnell08@crooks.info', '$argon2id$v=19$m=65536,t=4,p=1$Q25BeGdRVmxxQWFZc0hwZw$SEdUhYNtS0CAq2vbjkbmeMvy9n3uYfehU3dcWZXicSU', 'a:1:{i:0;s:9:\"ROLE_USER\";}'),
(155, 'Nicolette', 'Wiza', 'obechtelar@yahoo.com', '$argon2id$v=19$m=65536,t=4,p=1$eUR2VlJxUFozZ1dUTHpnNg$pIejnwv9f0QCzp2jI3WusaN9NPlsMDxXnfdUMiX97hE', 'a:1:{i:0;s:9:\"ROLE_USER\";}'),
(156, 'Eliseo', 'Ebert', 'sporer.neal@harris.biz', '$argon2id$v=19$m=65536,t=4,p=1$VU84RjN4RHRxUUhmcTFiZQ$WTQ0kpQsHV28d7yuimcTeNZUesu0N9macLpVbNCc3Eg', 'a:1:{i:0;s:9:\"ROLE_USER\";}'),
(157, 'Demetrius', 'Murray', 'herzog.grover@damore.com', '$argon2id$v=19$m=65536,t=4,p=1$RUpyMHUvM3VQdGNEUFdhdg$EVGGOLQuWgeKvSeddt3damf1XeSEi/FbDakzdNuYW3U', 'a:1:{i:0;s:9:\"ROLE_USER\";}'),
(158, 'Isai', 'Kutch', 'orland99@legros.com', '$argon2id$v=19$m=65536,t=4,p=1$b1YyMjdiOThqU242OUFFbQ$NcIq4d9C9wV0Wybdl2ISvodSHgneegHq26cxCQrUYbM', 'a:1:{i:0;s:9:\"ROLE_USER\";}'),
(159, 'Blaise', 'Hintz', 'osbaldo.koepp@koss.com', '$argon2id$v=19$m=65536,t=4,p=1$bVg0aGlSQzRJWVN6Ny4vaw$NTDNPbmnsFyVCiy16O+dwxlszkbfH1n5R7+H4Sw9f9E', 'a:1:{i:0;s:9:\"ROLE_USER\";}'),
(160, 'Ardella', 'Balistreri', 'ferry.brandi@kunde.com', '$argon2id$v=19$m=65536,t=4,p=1$Q2M2RHpjbE1yZkVDazAzQg$2d1eTCIZlplasptb/ozD0nkhpdxL/hZvQeXETMHSiLI', 'a:1:{i:0;s:9:\"ROLE_USER\";}'),
(161, 'Maybell', 'Pacocha', 'darlene94@hotmail.com', '$argon2id$v=19$m=65536,t=4,p=1$dGxFYktmMUdWWnVhaXFNYQ$WmD3CSR4MxnPo6Cs2gtXGtOP50O0WH5xRcL9saSKrGY', 'a:1:{i:0;s:9:\"ROLE_USER\";}'),
(162, 'Brenda', 'Hettinger', 'schuyler25@beahan.info', '$argon2id$v=19$m=65536,t=4,p=1$aEtpaDN6SFo2U2RsVE4wZw$G/c8HNEV/Yg2QwWjtzWSsfXBha6jdLpjFM/mwoKlPbE', 'a:1:{i:0;s:9:\"ROLE_USER\";}'),
(163, 'Camden', 'Funk', 'jaylon10@boyle.org', '$argon2id$v=19$m=65536,t=4,p=1$TDEwRTA2YWNIVkVmZGpBNg$tM6o++w7NS6x9vcH4N2Zc3wFrQfzsTUCZyc0LwIEyzM', 'a:1:{i:0;s:9:\"ROLE_USER\";}'),
(164, 'Ryley', 'Carroll', 'olson.samir@johnson.org', '$argon2id$v=19$m=65536,t=4,p=1$c0JqdmVLLk5mYVhudndhUg$Xoov307SicBfMxY6HE0toQvW/O2ToqDyvAT0vnwd5Fg', 'a:1:{i:0;s:9:\"ROLE_USER\";}'),
(165, 'Nick', 'Boehm', 'ward.madonna@kunze.com', '$argon2id$v=19$m=65536,t=4,p=1$cm1nVXpBUkp2bXI0a2sweg$2dwYoqtD/ik4LsBXCVsvsk3OWSuevFrHMauIozX8W5M', 'a:1:{i:0;s:9:\"ROLE_USER\";}'),
(166, 'Veda', 'Windler', 'stanton.kennith@gmail.com', '$argon2id$v=19$m=65536,t=4,p=1$aXlYS01aUk9lcFVGUjFsLg$wbf60LJjS2hpFG+b+6PlGn6cQgfG/DPR2Ya6XXlTaeY', 'a:1:{i:0;s:9:\"ROLE_USER\";}'),
(167, 'Clement', 'Lebsack', 'meta.bartell@hotmail.com', '$argon2id$v=19$m=65536,t=4,p=1$V0pOMFRKTmZLZnNSbnNTbg$/oC10SRk50M2yY0epKwiLdfyPH8M++obQbDiqnBf7GM', 'a:1:{i:0;s:9:\"ROLE_USER\";}'),
(168, 'Charity', 'Kuphal', 'eldred00@ullrich.com', '$argon2id$v=19$m=65536,t=4,p=1$cnkuSVNTelZqOHh3R2RFRA$vYZwKjyq3N3wsko+JqM9WzcHq3D2MRHKo9DY34Dxhdo', 'a:1:{i:0;s:9:\"ROLE_USER\";}'),
(169, 'Maureen', 'Wuckert', 'troy.damore@auer.net', '$argon2id$v=19$m=65536,t=4,p=1$TlVyU1RLWnVKcDdIWHZRNA$cfdyxTOvXEUvO47uZ3eijfkaffIpKjPkwQCt6J5HkAw', 'a:1:{i:0;s:9:\"ROLE_USER\";}'),
(170, 'Hugo', 'LIEGEARD', 'hugo_liegeard@yahoo.fr', '$argon2id$v=19$m=65536,t=4,p=1$NXoxWm1uU0lISEZyUy5hUQ$ErJO96mMPHOTkd+/kaHh8dcKo6lcfUUUhqeCfo6qYIQ', 'a:1:{i:0;s:9:\"ROLE_USER\";}');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `FK_D34A04ADA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `product_category`
--
ALTER TABLE `product_category`
  ADD CONSTRAINT `FK_CDFC735612469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_CDFC73564584665A` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
