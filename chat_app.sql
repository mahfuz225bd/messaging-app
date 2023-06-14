-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 14, 2023 at 07:44 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chat_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `chat_users`
--

CREATE TABLE `chat_users` (
  `user_id` int(11) NOT NULL,
  `uuid` text NOT NULL,
  `name` varchar(500) NOT NULL,
  `username` varchar(500) NOT NULL,
  `email` varchar(255) NOT NULL,
  `company` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT 'Current chat status for admin (only)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `chat_users`
--

INSERT INTO `chat_users` (`user_id`, `uuid`, `name`, `username`, `email`, `company`, `created_at`, `active`, `status`) VALUES
(1, 'fb3aa994-c5c4-11ed-a51b-705a0f3abf87', 'et hye', 'et-hye', 'corwin.johnny@example.org', 'Kuhic LLC', '2023-03-18 20:32:43', 1, 2),
(2, '5cce02fd-c5c5-11ed-a51b-705a0f3abf87', 'sed', 'sed', 'abby14@example.com', 'Klocko-Hermiston', '2023-03-18 20:32:43', 0, 2),
(3, '49a2d941-c5c5-11ed-a51b-705a0f3abf87', 'inventore', 'invertore', 'melody78@example.com', 'Bergstrom-Connelly', '2023-03-18 20:32:43', 1, 3),
(4, '6ea52aa0-c5c5-11ed-a51b-705a0f3abf87', 'dolo uryr', 'dolo-uryr', 'clemke@example.com', 'Graham LLC', '2023-03-18 20:32:43', 1, 2),
(5, '73d7cf88-c5c5-11ed-a51b-705a0f3abf87', 'ut our', 'ut-our', 'pacocha.louie@example.net', 'Murazik, Langworth and Quitzon', '2023-03-18 20:32:43', 1, 3),
(6, '7768d1a3-c5c5-11ed-a51b-705a0f3abf87', 'distinctio', '', 'gus.cartwright@example.org', 'Kutch-Runolfsdottir', '2023-03-18 20:32:43', 0, 2),
(7, '7caace99-c5c5-11ed-a51b-705a0f3abf87', 'eos sae', '', 'allene82@example.org', 'Kreiger, Daniel and Keebler', '2023-03-18 20:32:43', 1, 3),
(8, '80abf8cc-c5c5-11ed-a51b-705a0f3abf87', 'cupiditate', '', 'casper.sarina@example.com', 'Rippin, Deckow and Lubowitz', '2023-03-18 20:32:43', 1, 3),
(9, '844bdf71-c5c5-11ed-a51b-705a0f3abf87', 'omnis', '', 'berta57@example.org', 'Hessel Inc', '2023-03-18 20:32:43', 1, 1),
(10, '871fa40c-c5c5-11ed-a51b-705a0f3abf87', 'hic ync', '', 'emmett.hyatt@example.com', 'Beatty Group', '2023-03-18 20:32:43', 1, 2),
(89, '4a9afa96-c5d0-11ed-a51b-705a0f3abf87', 'someting', '', 'someting@example', '', '2023-03-18 21:03:10', 1, 1),
(90, '8417de15-c5d1-11ed-a51b-705a0f3abf87', 'someting', '', 'someting@example', '', '2023-03-18 21:11:56', 1, 1),
(91, '0eb92958-c699-11ed-af63-705a0f3abf87', 'someting', '', 'someting@example', '', '2023-03-19 21:00:19', 1, 1),
(92, '3eb0e52b-c699-11ed-af63-705a0f3abf87', 'someting', '', 'someting@example', '', '2023-03-19 21:01:40', 1, 1),
(93, '6426fcc7-c699-11ed-af63-705a0f3abf87', 'someting', '', 'someting@example', '', '2023-03-19 21:02:43', 1, 1),
(94, '7d473f30-c699-11ed-af63-705a0f3abf87', 'someting', '', 'someting@example', '', '2023-03-19 21:03:25', 1, 1),
(95, '86eeefe9-c699-11ed-af63-705a0f3abf87', 'someting', '', 'someting@example', '', '2023-03-19 21:03:41', 1, 1),
(96, '887d6543-c699-11ed-af63-705a0f3abf87', 'someting', '', 'someting@example', '', '2023-03-19 21:03:44', 1, 1),
(97, '89830029-c699-11ed-af63-705a0f3abf87', 'someting', '', 'someting@example', '', '2023-03-19 21:03:45', 1, 1),
(98, 'fd291d0f-c699-11ed-af63-705a0f3abf87', 'someting', '', 'someting@example', '', '2023-03-19 21:06:59', 1, 1),
(99, '1dc441da-c69a-11ed-af63-705a0f3abf87', 'someting', '', 'someting@example', '', '2023-03-19 21:07:54', 1, 1),
(100, '3636b754-c69a-11ed-af63-705a0f3abf87', 'someting', '', 'someting@example', '', '2023-03-19 21:08:35', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `message_id` int(11) NOT NULL,
  `text` longtext NOT NULL,
  `textOrLike` tinyint(1) NOT NULL COMMENT 'text=0, like=1',
  `from` int(11) NOT NULL COMMENT '0=represents as admin',
  `to` int(11) NOT NULL COMMENT '0=represents as admin',
  `datetime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`message_id`, `text`, `textOrLike`, `from`, `to`, `datetime`) VALUES
(1, 'text', 0, 0, 0, '2023-03-17 14:36:59'),
(2, 'Quisquam perferendis labore et. Cupiditate excepturi consequatur enim tempora eius harum. Voluptatem voluptatibus quae qui. Quae debitis atque possimus laborum quo necessitatibus omnis.', 0, 7, 0, '2023-03-17 14:36:59'),
(3, 'Cumque est aut hic accusantium. Et rerum suscipit numquam omnis qui animi alias. Adipisci nulla ullam excepturi esse in consequatur error quis.', 0, 6, 0, '2023-03-17 14:36:59'),
(4, 'Ex exercitationem aut at error deserunt aliquam et. Soluta harum fugit ipsum corrupti itaque. Animi rerum ut blanditiis ut modi id qui unde.', 0, 9, 0, '2023-03-17 14:36:59'),
(5, 'Nihil nobis quasi accusamus corrupti. Voluptas nemo quidem modi aperiam doloribus dolorem ad. Quas qui consectetur sapiente consequuntur aperiam.', 0, 6, 0, '2023-03-17 14:36:59'),
(6, 'In eligendi sint sed repellendus saepe sint. Et saepe eius facilis. Numquam dolor aut voluptatibus officiis dolor. Dolorum saepe nihil voluptas dolores amet.', 0, 4, 0, '2023-03-17 14:36:59'),
(7, 'Blanditiis maiores ratione expedita minus esse. Atque ut aut perspiciatis iusto iste ipsam. Dolorem repellendus ut assumenda repellat.', 0, 3, 0, '2023-03-17 14:36:59'),
(8, 'Magnam aut et non velit consequuntur. Quaerat quasi omnis voluptas ut voluptatem et. Eum dicta dolore omnis quaerat iusto.', 0, 6, 0, '2023-03-17 14:36:59'),
(9, 'Occaecati consectetur unde veniam consectetur magni. Dolor omnis expedita id ducimus tempora error. Error aut fugiat autem dicta ducimus voluptate optio reiciendis.', 0, 8, 0, '2023-03-17 14:36:59'),
(10, '<b>Molestiae</b> culpa est quia distinctio. Ut sunt repudiandae tenetur qui ipsam aperiam. Doloribus consectetur inventore autem architecto.', 0, 1, 0, '2023-03-17 14:36:59'),
(11, 'Unde et voluptas consequatur exercitationem numquam optio doloremque. Eum debitis magnam eius tempore aut earum rem minima. Ut non voluptatibus iure rerum. Porro id sit omnis.', 0, 6, 0, '2023-03-17 14:36:59'),
(12, 'Eos et nulla corrupti autem ducimus soluta. Aut deserunt eum quo fugit mollitia. Non tenetur consequatur commodi qui vero eaque. Quas fuga quo eos reiciendis voluptatem necessitatibus voluptate.', 0, 6, 0, '2023-03-17 14:36:59'),
(13, 'Aspernatur assumenda rem dolore possimus autem magnam. Perspiciatis quisquam quibusdam est. Voluptates omnis dolor beatae doloribus.', 0, 5, 0, '2023-03-17 14:36:59'),
(14, 'Architecto dignissimos corporis et suscipit dolore non. Voluptatem vitae officiis voluptatum. Esse atque laboriosam distinctio.', 0, 9, 0, '2023-03-17 14:36:59'),
(15, 'Qui sed in ut eum. Quasi quos autem ut temporibus rerum amet. Consequatur eos voluptatem sunt numquam esse quos assumenda ea. Voluptas velit aut molestias sit autem occaecati ducimus.', 0, 9, 0, '2023-03-17 14:36:59'),
(16, 'Consectetur dolorem at dolorem provident. Aut tenetur magnam atque provident animi aut fugit iste. Consequatur fugit ipsa amet id dignissimos sit eveniet qui.', 0, 1, 0, '2023-03-17 14:36:59'),
(17, 'At quam inventore numquam. Dolor at dignissimos doloribus eos. Quo aut atque eligendi.', 0, 6, 0, '2023-03-17 14:36:59'),
(18, 'Consectetur corrupti sapiente quae voluptates. Molestiae cum laboriosam illo fugit unde. Velit iste nesciunt saepe.', 0, 7, 0, '2023-03-17 14:36:59'),
(19, 'Eum debitis eos et iste. Quod fugit laudantium quis et. Odit magni porro quibusdam magni.', 0, 9, 0, '2023-03-17 14:36:59'),
(20, 'Eligendi dolorum asperiores et. Eligendi impedit molestiae modi omnis eos qui inventore. Quidem sunt incidunt ratione delectus.', 0, 7, 0, '2023-03-17 14:36:59'),
(21, 'Explicabo iste autem minus ipsum voluptatum eum totam. Repellendus animi reiciendis animi sequi. Quod dolores perferendis soluta ea et at error.', 0, 4, 0, '2023-03-17 14:36:59'),
(22, 'Enim necessitatibus placeat veritatis dolores hic soluta. Est eligendi voluptas alias consequatur sint consequuntur. Iste odit porro accusantium minima est vitae eaque.', 0, 8, 0, '2023-03-17 14:36:59'),
(23, 'Quia sit velit qui et. Impedit rerum dolores qui voluptates quod nulla veritatis in. Nostrum dolorem aut quis dolorum fuga ex enim. Non accusantium provident consequatur.', 0, 8, 0, '2023-03-17 14:36:59'),
(24, 'Nihil asperiores ut beatae. Assumenda eius cum voluptatem facilis illo. Dolore laudantium aliquam non.', 0, 2, 0, '2023-03-17 14:36:59'),
(25, 'Facere et ut nisi sed sint vero. Repellat labore tempora at voluptatem eveniet et dolores. Aliquid deleniti distinctio cum. Rerum recusandae facere est aut.', 0, 1, 0, '2023-03-17 14:36:59'),
(26, 'Labore ut quia occaecati sunt vitae sunt odit reprehenderit. Voluptatem odit magnam beatae dolores et iste eum. Earum itaque illum incidunt quia placeat minima odio.', 0, 0, 3, '2023-03-17 14:36:59'),
(27, 'Voluptatem eligendi quaerat qui temporibus cum saepe quidem. Voluptate reprehenderit minima harum perferendis numquam fuga deleniti. Magni quod corrupti voluptas.', 0, 0, 9, '2023-03-17 14:36:59'),
(28, 'Omnis et dicta quia enim. Laudantium reprehenderit ut nobis. Dolor accusantium cupiditate beatae adipisci nobis vero. Non sit deleniti maiores est. A molestias alias ut beatae omnis.', 0, 0, 3, '2023-03-17 14:36:59'),
(29, 'Aut voluptas sunt nihil optio tenetur velit vel repellendus. Sit maxime at ipsum accusamus earum delectus ut. Facere similique deleniti molestiae.', 0, 0, 1, '2023-03-17 14:36:59'),
(30, 'Quae libero consequatur velit unde quibusdam quod non. Inventore nobis consequuntur neque corporis. Quas autem quaerat veritatis id officia praesentium. Dolorum repellat autem sunt nisi.', 0, 0, 6, '2023-03-17 14:36:59'),
(31, 'Quod qui nisi quo quo accusantium inventore. Et consequatur sed natus qui. Natus doloribus in molestias autem.', 0, 0, 7, '2023-03-17 14:36:59'),
(32, 'Dolor rerum deleniti ut nihil saepe quae delectus vel. Adipisci aliquam optio nobis aut sapiente et.', 0, 0, 8, '2023-03-17 14:36:59'),
(33, 'Numquam aliquam eum quisquam esse excepturi voluptas repellat. Aspernatur velit sint facilis sunt sit voluptates placeat et. Aut amet et voluptatem soluta blanditiis ex cupiditate in.', 0, 0, 5, '2023-03-17 14:36:59'),
(34, 'Consequatur atque autem nostrum. Quia ex explicabo accusamus adipisci est totam. Ut non illo eos earum dolorem consequatur.\nDolorem eum tempora quidem laboriosam. Amet iusto corrupti dolor.', 0, 0, 4, '2023-03-17 14:36:59'),
(35, 'Sunt odit molestiae dolor eos. Explicabo sed dolor nesciunt et aut aliquam velit laudantium. Magni molestiae sapiente sint. Deleniti quas rerum quisquam sint eligendi aut libero.', 0, 0, 9, '2023-03-17 14:36:59'),
(36, 'Nobis aliquid reiciendis esse perspiciatis voluptatem quis. Ut fugiat inventore dolorem earum error labore dolor velit. Earum pariatur sit non sit eaque ipsam dolor.', 0, 0, 1, '2023-03-17 14:36:59'),
(37, 'Qui sed et id ullam. Minima impedit et rerum modi.', 0, 0, 8, '2023-03-17 14:36:59'),
(38, 'Optio et ducimus sunt quibusdam. Non eveniet facere odio dolorem. Accusantium ullam aliquam assumenda fugit aliquid voluptas corporis. Reiciendis beatae et ducimus architecto.', 0, 0, 5, '2023-03-17 14:36:59'),
(39, 'Consectetur voluptas suscipit facilis quo. Asperiores laudantium placeat nam non aut at eius quos.', 0, 0, 3, '2023-03-17 14:36:59'),
(40, 'Possimus magnam omnis voluptatibus ut vel maxime. Eius ullam consequatur nemo temporibus quidem. Est quod et architecto nam.', 0, 0, 1, '2023-03-17 14:36:59'),
(41, 'Omnis et fuga quaerat. Aut minima et sit eos vel error. Vel voluptatum provident libero et amet omnis ex. Sint et doloremque inventore harum hic temporibus. Illo ducimus labore totam dolorum.', 0, 0, 3, '2023-03-17 14:36:59'),
(42, 'Voluptates voluptatem excepturi magni porro id. Omnis sapiente adipisci ipsa qui saepe. Fuga porro incidunt est eveniet esse ipsa deserunt.', 0, 0, 5, '2023-03-17 14:36:59'),
(43, 'Tempora perferendis sint cum quae nesciunt. Et quam temporibus consequatur incidunt sint non. Amet non ipsam quaerat culpa. Veritatis quisquam alias sunt veritatis nemo nostrum veritatis vel.', 0, 0, 7, '2023-03-17 14:36:59'),
(44, 'Nesciunt ut eveniet dolores iure dolor sed. Praesentium nesciunt veritatis et ab ea nostrum laboriosam. Natus dolore voluptate dolorum officiis et voluptate.', 0, 4, 0, '2023-03-17 14:36:59'),
(45, 'Quia molestias consequatur eius ipsum accusantium. Nulla similique omnis et explicabo qui illo. Cumque blanditiis rerum sit veniam iure et dicta enim.', 0, 5, 0, '2023-03-17 14:36:59'),
(46, 'Nam amet quidem aut et vero. Maiores quos blanditiis animi expedita sit voluptatibus enim asperiores.', 0, 1, 0, '2023-03-17 14:36:59'),
(47, 'Quaerat ullam consequatur suscipit doloribus eum. Omnis sunt ut perferendis porro et quia voluptatem. Iusto odit cum vero illo tempore. Dolores sunt voluptates cum ea sapiente dignissimos.', 0, 1, 0, '2023-03-17 14:36:59'),
(48, 'Perspiciatis et animi voluptas voluptatem. Enim culpa dolorem praesentium eos temporibus. Voluptas ut quam est deserunt ullam nisi. Ad est aut nesciunt deserunt accusamus.', 0, 3, 0, '2023-03-17 14:36:59'),
(49, 'Veniam praesentium soluta nostrum nostrum. Sit blanditiis aut voluptatum quo. Sunt natus ut vero esse doloremque.', 0, 1, 0, '2023-03-17 14:36:59'),
(50, 'Eum suscipit enim qui aliquid culpa corporis. Qui fugiat ut at. At sed quaerat vel ut voluptatem et unde consequatur.', 0, 9, 0, '2023-03-17 14:36:59'),
(51, 'Nobis enim quis nemo eius accusantium. Vel facilis ut veniam qui sed rem. In ad quo est molestiae.', 0, 1, 0, '2023-03-17 14:36:59'),
(52, 'Sed nesciunt et est molestiae eveniet dolorem. Enim deserunt deserunt similique.', 0, 1, 0, '2023-03-17 14:36:59'),
(53, 'Vero eum quaerat ullam tempore. Aut quo eum nihil et vel perferendis dolore.', 0, 2, 0, '2023-03-17 14:36:59'),
(54, 'Accusantium aspernatur voluptatum nihil rem dolorum nihil et possimus. Eos consequuntur rem illo iusto officiis est.\nMolestiae dicta quis aut molestias. Ducimus eius aliquam non sed illum.', 0, 4, 0, '2023-03-17 14:36:59'),
(55, 'Reprehenderit aut adipisci aliquid aliquid. Repellendus consequatur porro quaerat neque atque libero. Modi laudantium sapiente et illo vitae minima ex. Delectus ut esse et odit.', 0, 3, 0, '2023-03-17 14:36:59'),
(56, 'Quia et earum ducimus rerum voluptatem quae. Alias assumenda ratione accusantium dolor ipsum. In mollitia vel adipisci reiciendis animi.', 0, 1, 0, '2023-03-17 14:36:59'),
(57, 'Reprehenderit omnis et nemo. Atque doloremque nihil ad architecto maiores. Architecto velit molestiae ullam suscipit laudantium.', 0, 8, 0, '2023-03-17 14:36:59'),
(58, 'Repellendus id cupiditate corrupti. Ut distinctio ut consequatur. Aliquam laborum saepe voluptates ad accusantium assumenda.', 0, 8, 0, '2023-03-17 14:36:59'),
(59, 'Dolor incidunt earum harum eligendi. Sint est officiis et iure quaerat quo nihil. Quis voluptatem qui assumenda non velit. Ut dolorem minus officiis sit eveniet magnam reprehenderit.', 0, 1, 0, '2023-03-17 14:36:59'),
(60, 'Ipsum ut ipsum laboriosam eum vitae. Dolore eos est non pariatur laborum optio. Molestias quo dolor et voluptas. Nesciunt et quo laborum quidem saepe.', 0, 6, 0, '2023-03-17 14:36:59'),
(61, 'Cum quia placeat impedit voluptatem at veritatis vel. Id qui quo est ut assumenda. Corporis deserunt ut et corrupti et ducimus totam.', 0, 4, 0, '2023-03-17 14:36:59'),
(62, 'Non earum et cum molestiae repellat dolor. Voluptatibus neque voluptas aliquam natus dolor accusantium eos. Similique est ut vel omnis voluptatem non occaecati. Quas sit rerum debitis.', 0, 2, 0, '2023-03-17 14:36:59'),
(63, 'Aspernatur minus quo reprehenderit qui exercitationem autem unde et. Voluptatibus suscipit et ut id alias aut. Ut dolorem saepe in eum amet nesciunt maxime. Maxime eos est iste quis rerum.', 0, 8, 0, '2023-03-17 14:36:59'),
(64, 'Adipisci ut in sapiente sequi quam aut placeat. Nihil laboriosam qui est repudiandae qui occaecati harum praesentium. Repudiandae culpa quaerat fugiat rem voluptatibus.', 0, 4, 0, '2023-03-17 14:36:59'),
(65, 'Suscipit molestias porro quis non accusamus voluptas reprehenderit. Occaecati dolorum omnis amet et ipsum quis quisquam. Qui fugit eaque cupiditate minima quisquam at natus.', 0, 1, 0, '2023-03-17 14:36:59'),
(66, 'Doloremque eius at qui sint architecto voluptatibus cupiditate. Nam laboriosam dignissimos qui.', 0, 3, 0, '2023-03-17 14:36:59'),
(67, 'Non repellat aliquid adipisci minima nobis minima repudiandae. Reprehenderit sed sit at molestiae. Unde magni consequuntur ab ut eum. Quod nostrum autem distinctio dolor tempore cum.', 0, 4, 0, '2023-03-17 14:36:59'),
(68, 'Ut itaque ex debitis eaque consequuntur. Dolores reprehenderit et est aliquam eum. Delectus inventore rerum quam labore rerum placeat iusto. Omnis quaerat atque mollitia et rerum.', 0, 4, 0, '2023-03-17 14:36:59'),
(69, 'Sint sunt iure ut assumenda. Expedita asperiores ut praesentium quia. Corporis facilis doloribus tempore consequuntur dolores.', 0, 7, 0, '2023-03-17 14:36:59'),
(70, 'Quidem aut eius eum rerum aliquam. Ut qui blanditiis aut. Ab voluptate illo dolor in.', 0, 8, 0, '2023-03-17 14:36:59'),
(71, 'Qui aut harum impedit et omnis optio deleniti. Cumque quisquam voluptate quis similique autem quia tempore rerum.', 0, 9, 0, '2023-03-17 14:36:59'),
(72, 'Officiis sit molestiae sunt vel. Est quidem ut rerum animi. Cum consequuntur est et cum debitis. Et dolorem perspiciatis expedita non est.', 0, 5, 0, '2023-03-17 14:36:59'),
(73, 'Et vero dolorem nobis labore. Et rerum provident tempora id vero deserunt et. Ipsa ullam et et facilis incidunt doloremque quidem.', 0, 5, 0, '2023-03-17 14:36:59'),
(74, 'Placeat culpa veniam aut amet amet sapiente quas. Nemo et aut qui enim ipsum. Ut rerum dolorem praesentium in alias qui. Qui voluptas dicta deserunt aspernatur corrupti placeat sit.', 0, 0, 1, '2023-03-17 14:36:59'),
(75, 'Consectetur consectetur odio quos qui. Autem ea omnis qui et animi. Neque ducimus fugiat nesciunt doloribus. In sit odio sapiente sed est beatae.', 0, 0, 1, '2023-03-17 14:36:59'),
(76, 'Ut explicabo aut laudantium aliquid ab. Laudantium alias expedita quia.', 0, 0, 9, '2023-03-17 14:36:59'),
(77, 'Omnis ea hic veniam temporibus qui. Et et sed ut rem. Et quidem omnis quisquam voluptatem nam molestiae. Officia quos eveniet ab ratione.', 0, 0, 8, '2023-03-17 14:36:59'),
(78, 'Illum aliquam sit veritatis explicabo hic dicta commodi. Totam ut illum itaque beatae labore totam. Assumenda autem est et eaque. Dolores ex mollitia officia.', 0, 0, 3, '2023-03-17 14:36:59'),
(79, 'Maxime porro perferendis ab ut. Tenetur dignissimos qui aut occaecati. Voluptatibus vel repellat ullam maxime. In quo molestias dolores quisquam autem commodi odio quia.', 0, 0, 5, '2023-03-17 14:36:59'),
(80, 'Rem commodi est itaque numquam et illo exercitationem. Sed assumenda ea beatae ab voluptas. Quia provident sit facilis quas suscipit sint sit dolores. Aut unde fuga labore aspernatur.', 0, 0, 7, '2023-03-17 14:36:59'),
(81, 'Officiis ex ex placeat exercitationem est. Eum voluptas facilis earum omnis molestias dolores amet.', 0, 0, 9, '2023-03-17 14:36:59'),
(82, 'Non nisi recusandae natus. Illo delectus et eum deserunt. Sed esse eum in et.\nFuga exercitationem expedita molestiae numquam et. Est mollitia ab earum. Illum velit eos ducimus.', 0, 0, 4, '2023-03-17 14:36:59'),
(83, 'Laudantium repellendus at animi quisquam minima incidunt. Vel officiis minus numquam dolores. Consequatur voluptas occaecati atque ipsa.', 0, 0, 9, '2023-03-17 14:36:59'),
(84, 'Est ab quod sint odit doloremque dolores doloribus. Voluptatem voluptatem quidem voluptate accusantium.', 0, 0, 3, '2023-03-17 14:36:59'),
(85, 'Dignissimos nihil vero laudantium ea. Sequi harum amet voluptas ut. In est non molestias vel pariatur ad. Autem culpa aperiam soluta consequatur.', 0, 0, 9, '2023-03-17 14:36:59'),
(86, 'Vel culpa possimus et id ipsa est. Atque et ut omnis perferendis officia modi. Voluptatem est totam aut nesciunt nam placeat nulla.', 0, 0, 1, '2023-03-17 14:36:59'),
(87, 'Cum quidem placeat ducimus numquam dolore est harum magnam. Culpa qui rerum laborum rerum.', 0, 0, 8, '2023-03-17 14:36:59'),
(88, 'Delectus ipsa magnam et id sapiente. Laudantium vero molestiae officia numquam esse. Nemo sit itaque doloremque ut.\nTempore dignissimos voluptatem omnis quisquam quibusdam. Ut quia tempora amet.', 0, 0, 4, '2023-03-17 14:36:59'),
(89, 'Et dolor sint non ab est eum. Voluptas commodi commodi magni magni recusandae consequatur. Quod ratione tempora ut reiciendis non magni. Sed accusamus accusantium sit et culpa nulla.', 0, 0, 1, '2023-03-17 14:36:59'),
(90, 'Est aut aliquid et porro veritatis facilis. Dolor dolorum est consequatur. Unde nihil ut dolores veritatis culpa error. Dolorum quas ex minus sed error.', 0, 0, 5, '2023-03-17 14:36:59'),
(91, 'Voluptatum debitis quos accusamus perspiciatis cupiditate asperiores. Est sed aspernatur quia perspiciatis fugiat amet. Consequatur in aliquid dolores corrupti consectetur quas delectus sapiente.', 0, 0, 5, '2023-03-17 14:36:59'),
(92, 'Placeat harum impedit necessitatibus aut quas. Numquam neque laudantium expedita. Amet repellendus excepturi suscipit et ut odit rerum.', 0, 0, 2, '2023-03-17 14:36:59'),
(93, 'Nesciunt veritatis cum vero corporis unde. Odit consequuntur earum sequi. Quia ab odio aut quia eligendi voluptatum optio. Nemo voluptatem porro quaerat quas et.', 0, 0, 5, '2023-03-17 14:36:59'),
(94, 'Alias non voluptas animi rerum. Repudiandae nisi modi dolor sunt laboriosam et ex. Dolore unde fugit fuga consectetur ipsa et vel. Soluta laborum et sint voluptatem.', 0, 0, 6, '2023-03-17 14:36:59'),
(95, 'Corporis porro modi rerum non similique aut inventore aut. Aut perspiciatis at corporis mollitia eligendi et quod. Aliquam vero quisquam fuga. Saepe in eum aliquam.', 0, 0, 1, '2023-03-17 14:36:59'),
(96, 'Recusandae exercitationem et porro nemo velit sint. Ratione hic veritatis asperiores neque consequatur cum. Laboriosam in voluptate est.', 0, 0, 2, '2023-03-17 14:36:59'),
(97, 'Molestiae in aut sint temporibus incidunt. At atque molestiae ducimus est. Eos impedit a dolores consequatur consectetur asperiores.', 0, 6, 0, '2023-03-17 14:36:59'),
(98, 'Laboriosam numquam soluta quaerat qui facilis itaque. Est maxime voluptatem et voluptatem tenetur recusandae neque. Dolorem quis commodi aspernatur laborum.', 0, 4, 0, '2023-03-17 14:36:59'),
(99, 'Praesentium harum officia et quasi aliquid. Ea cupiditate tempora molestiae. Totam maiores et id deserunt blanditiis provident. Omnis illo et quia voluptatibus dolore a voluptas.', 0, 1, 0, '2023-03-17 14:36:59'),
(185, 'Name: someting <br> Email: someting@example <br>  <br>  value=\"someting\"', 0, 0, 0, '2023-03-18 16:03:10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chat_users`
--
ALTER TABLE `chat_users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`message_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chat_users`
--
ALTER TABLE `chat_users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=186;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
