-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 28, 2018 at 08:11 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.0.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `BookLibraryManagement`
--

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE `author` (
  `AuthorId` int(11) NOT NULL,
  `AuthorNames` varchar(70) NOT NULL,
  `AuthorDetails` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`AuthorId`, `AuthorNames`, `AuthorDetails`) VALUES
(1, 'Vivianne Durgan', 'Sunt ad reiciendis maiores. Accusantium dolorem repellendus expedita ab voluptates. Natus ut nulla minus nesciunt sunt. Saepe qui impedit placeat occaecati esse exercitationem facere totam.'),
(2, 'Trác Ngôn', 'Totam exercitationem quaerat unde maiores fugit sit. Non voluptatem sed et voluptatem dolorem ea. Aut alias praesentium aut neque nostrum. Dolorem recusandae aut consequatur repellat inventore.'),
(3, 'Gayle Altenwerth', 'Sapiente est voluptatum ad. Voluptas recusandae magnam voluptates officia molestiae. Illo architecto quia quasi quo non sunt est.'),
(4, 'Triệu Gia Lộc', 'Eum quia consequatur qui nihil id non praesentium. Non at et libero quod et. Odio rerum voluptatem recusandae dolorum perferendis ipsa.'),
(5, 'Landen Johnson', 'Et est impedit rerum quaerat. Quas repellendus sed sed sapiente. Quod doloribus quia doloremque dignissimos necessitatibus corrupti fuga nihil. Ut vitae ut ipsam quam consectetur et dolor et.'),
(6, 'Dã Thư', 'Et reiciendis nostrum totam rem. Laboriosam sed deleniti repellat consequuntur assumenda deleniti.'),
(7, 'Ernestine Carter DVM', 'Esse pariatur velit optio dolorum quidem ea. A autem quibusdam quia eligendi. Aliquid velit officiis error iure enim occaecati.'),
(8, 'Thôi Hoài Hân', 'Quia accusamus voluptatibus officia dolorem. Recusandae iusto possimus nihil. Distinctio officia accusamus eligendi odio blanditiis harum nihil.'),
(9, 'Daryl Kovacek', 'Et est est neque adipisci hic vel. Doloribus id et in rerum asperiores laboriosam rem dolores. Nesciunt eius delectus ea. Nihil porro excepturi aperiam quisquam placeat dolore quia quas.'),
(10, 'Bà. Chử Vũ Phong', 'Et dignissimos sed ex et. Saepe corrupti voluptas totam est tempora et quos. Et aut inventore magni sed et.'),
(11, 'Aurelio Zboncak', 'Consequatur molestiae culpa et. Dolorem aperiam atque expedita. Ea numquam amet consequuntur sequi.'),
(12, 'Bác. Ấu Yên', 'Sequi culpa sint facilis. Et laudantium consequatur natus doloremque explicabo quo deleniti maxime. Nihil beatae maiores voluptas.'),
(13, 'Curtis Howe Sr.', 'Beatae optio pariatur temporibus error. Est labore et libero quod odit veniam ipsam.'),
(14, 'Đàm Vĩnh', 'Minima maiores dolores ipsa ut quaerat. Magnam et rerum numquam blanditiis sunt unde. Perspiciatis dolorem est aut provident non aliquam. Explicabo nobis fugiat quibusdam.'),
(15, 'Sigrid Mante', 'Dignissimos explicabo quo itaque eius velit voluptas. Quidem dolores temporibus labore et sapiente. Et blanditiis earum omnis consequatur voluptas.'),
(16, 'Chú. Uông Đông Tú', 'Ex tempore ad incidunt cupiditate ea sit. Dolores aut eligendi tempora repellat eos voluptas. Sequi ut molestiae quaerat sint.'),
(17, 'Angus Bayer', 'Temporibus saepe consequatur laborum. Amet beatae facere pariatur. Aliquid nam qui eveniet aliquam.'),
(18, 'Lô Vu', 'Veritatis dolorem consequatur nesciunt eum nemo magnam. Sapiente id officiis est tempore consequatur quo dolor. Blanditiis dolore laudantium eaque iure aliquam optio libero.'),
(19, 'Dr. Owen Deckow MD', 'Rem consequuntur et ea ex adipisci occaecati rerum. Nihil unde quae amet enim eaque. Qui quis et eaque quisquam nihil sit.'),
(20, 'Cự Việt', 'Rerum rerum molestiae aliquam et. Natus placeat atque consequatur velit molestias modi consectetur quidem. Alias quidem qui est cupiditate iusto nihil.'),
(21, 'Trudie Skiles', 'Earum rerum est et consectetur. Culpa quis numquam omnis. Pariatur in non aspernatur.'),
(22, 'Chị. Hà Nhã Phong', 'Dolor voluptas vitae voluptas. Repellat eos architecto odit molestiae. Quae aliquam qui asperiores et animi.'),
(23, 'Hollis Bashirian', 'Tempore minus impedit aliquid provident. Sit qui debitis molestias error rerum maiores. Ea aliquam maiores omnis voluptate.'),
(24, 'Bồ Yến', 'Distinctio impedit error et non eius architecto laborum. Ratione similique earum fuga. Ea exercitationem exercitationem sint.'),
(25, 'Mr. Orville Streich', 'Dolor officiis itaque delectus consequatur dolor dolorum. Dolores culpa sit vel assumenda suscipit fuga. Sunt qui voluptas repellat consequatur eum. Numquam placeat itaque eum qui deserunt impedit.'),
(26, 'Nông Vi', 'Cum in hic nesciunt nostrum exercitationem. Nemo doloribus consequatur id enim. Ipsum minima dolor repudiandae quibusdam.'),
(27, 'Prof. Mariane Deckow II', 'Libero et ducimus ipsam sed eius magnam. Voluptas maxime rem dolor magni. Soluta sint sequi consectetur vel nam.'),
(28, 'Em. Phương Hồ Anh', 'Voluptatem ratione suscipit sint porro deserunt ratione voluptatum. Nostrum cum ullam et.'),
(29, 'Prof. Gavin Anderson DDS', 'Illo culpa excepturi architecto quidem in. Ut aut iusto architecto corrupti quia vel. Rerum vel ducimus et nihil. Adipisci nemo enim minima quis voluptate explicabo praesentium.'),
(30, 'Yên Quốc', 'Doloribus ad assumenda voluptatem ullam officia sunt et. Porro qui suscipit laudantium qui rem repellat eaque. Consequatur aliquam aliquam impedit omnis eum.'),
(31, 'Laron Lowe', 'Dolorem quia quos ad eos nulla. Quia voluptates consequatur ducimus. Nihil pariatur et at non.'),
(32, 'Cụ. Bành Thương Lam', 'Voluptatibus asperiores tempora ut sunt ipsa recusandae sit. Et ducimus temporibus eveniet et repellat iure soluta saepe. Libero sunt perferendis pariatur amet.'),
(33, 'Kameron Rolfson', 'Dolor eos nesciunt ipsa quasi totam et eaque. Ut aut quo et quaerat. Et fuga totam vitae sunt accusantium animi.'),
(34, 'Diệp Nguyệt Thu', 'Non rerum iusto itaque est quis autem. Totam voluptate aspernatur aut non doloremque recusandae repellendus. Temporibus in rem et atque ullam quo et expedita. Sint atque accusantium ad soluta.'),
(35, 'Prof. Lance VonRueden V', 'Qui libero ex qui ipsa nihil temporibus. Ea aperiam quis ut omnis in quia voluptates. Voluptas tempora possimus sit esse magnam molestias quidem. Et consequatur autem cum impedit occaecati labore.'),
(36, 'Bửu Mộc Bạch', 'Voluptatem quasi sequi ab alias. Sit et quasi at tempore. Non qui esse aut nemo commodi explicabo porro aut.'),
(37, 'Shanelle Cummerata', 'Ut rerum vero omnis sed tempore ut quia quia. Maxime et sint nemo excepturi. Ea iusto explicabo esse deleniti. Unde aut eveniet et non voluptatum tempora autem. Cumque consequatur rerum et tempora.'),
(38, 'Diệp Ân Kha', 'Atque qui officia est velit provident. Laboriosam dignissimos labore et illum quis ad delectus. Quo illo delectus corporis similique illo. Nostrum ipsam tempora eaque aut.'),
(39, 'Maiya Rowe', 'A deleniti ut fugit. Rerum labore omnis perferendis voluptates nam tempore. Officiis commodi quia nisi est omnis.'),
(40, 'Ông. Bành Kiến Tú', 'Rem dolor inventore et et aut perspiciatis. Iure ipsum et impedit ea. Quo natus dolorem repellendus similique maiores non qui.'),
(41, 'Breanne Trantow', 'Ut iure deserunt amet debitis nisi cupiditate. Et eos ratione nihil et libero. Architecto aut velit cupiditate. Repellendus rerum earum ut aspernatur blanditiis.'),
(42, 'Chị. Đàm Thư', 'Hic odit sunt eos et. Qui at aliquid maxime expedita nihil dolores ut repellat. Vel laudantium sapiente consequatur ut sunt quis molestias et.'),
(43, 'Dr. Wyatt Lemke MD', 'Quis odit in ut adipisci. Qui nemo est sunt pariatur suscipit.'),
(44, 'Bồ Thanh', 'Sit sed non iure. Reiciendis omnis ut sit repellendus quia accusantium voluptatibus aliquam. Culpa aliquid sed facere reprehenderit quam exercitationem laborum. Recusandae provident in labore velit.'),
(45, 'Amaya Muller', 'Et quo saepe error animi. Officia odio fugiat et doloribus et itaque sunt voluptas. Rerum optio nisi aut esse fugiat enim. Iusto maiores rerum perspiciatis blanditiis in voluptatibus rerum.'),
(46, 'Chú. Lâm Khải Cường', 'Reprehenderit dolores totam exercitationem ut accusamus animi id sint. Quis vero non sed est hic. Harum iste enim tempore deserunt aut.'),
(47, 'Prof. Vladimir Bailey', 'Ullam magni culpa fuga omnis molestiae a. Aut quae deleniti eum fuga. Nemo similique culpa dolorem dolore sit nesciunt unde sequi. Numquam quisquam asperiores enim.'),
(48, 'Bạch Đạo', 'Dolorem voluptate dignissimos deleniti ipsa nesciunt. Hic et voluptatem totam sint. Temporibus quis atque quo reprehenderit rem blanditiis culpa.'),
(49, 'Ms. Corene Beatty', 'Error vel ratione et adipisci et sint facere. Provident corporis voluptatem ut id nihil et. Beatae assumenda quidem ut necessitatibus iure. Quo rerum dolorem adipisci aut voluptates deleniti.'),
(50, 'Đái Xuân Phụng', 'Qui quibusdam reprehenderit magnam consequatur ut rerum. Temporibus nesciunt ut recusandae corporis. Vel corporis earum odio expedita ducimus dolorem.'),
(51, 'Jean Runolfsdottir', 'Repudiandae voluptas dolorum ullam voluptatibus enim. Delectus saepe sed adipisci autem odit quidem. Quos laudantium ut adipisci. Autem reiciendis vel architecto laboriosam omnis inventore.'),
(52, 'Chị. Hy Cúc', 'Adipisci alias iure beatae aut placeat sed mollitia et. Et nostrum veniam voluptatem commodi eos. Laborum libero recusandae mollitia quia ullam doloribus minima.'),
(53, 'Electa Raynor', 'Illo laudantium aut nam. Quidem placeat mollitia et alias qui ab labore. Architecto ratione voluptate voluptatem.'),
(54, 'Bà. Giáp Hoài Băng', 'Est est est est non quam. Porro minus praesentium ut occaecati odio velit et. Voluptatem sunt architecto omnis sunt autem veniam. Nisi nulla in quam dolorem placeat iste ut.'),
(55, 'Prof. Pietro Pacocha IV', 'Sunt voluptatem eaque unde molestias consequatur. Aut velit consequuntur dolor laboriosam consequatur. Dolor reiciendis alias in placeat soluta laborum.'),
(56, 'Nghị Phong Hợp', 'Hic vel qui est impedit vitae sunt ut. Est et non dolorum occaecati eos ut. Et omnis harum voluptatem dolores architecto perspiciatis quos. Qui aut aut enim eum et quos.'),
(57, 'Dr. Vida Rath', 'Ducimus ut est velit aspernatur. Error totam omnis iusto doloremque magni doloribus est. Aut sed cumque facere culpa autem facere. Facere qui accusamus aspernatur ut possimus excepturi.'),
(58, 'Anh. Phi Cao Huynh', 'Ea velit tempora deserunt quam ad iusto. Rerum voluptatem dicta et. Eaque officiis sint aut doloremque. Eius ea corrupti velit id repellendus aut.'),
(59, 'Dr. Christ Fritsch Jr.', 'Deserunt et numquam autem dolorem ut velit. Consectetur sapiente ut hic voluptate. Magnam odit et repellendus. Consectetur aut ut quidem ea quasi amet corrupti labore.'),
(60, 'Bành Trường', 'Odio praesentium sint ut rem. Nesciunt impedit architecto nesciunt doloremque quo eaque asperiores et. Quibusdam soluta quia et ad est qui quis. Occaecati architecto illum voluptas expedita magni.'),
(61, 'Piper Zulauf', 'Ut ad tempora et magnam vel odio doloremque. Qui et et aut et laboriosam natus qui. Aliquid iusto quas dolor deleniti accusamus harum quaerat perspiciatis. Est consequatur ut delectus non et est.'),
(62, 'Nhâm Loan Nguyệt', 'Est atque non error aspernatur. Sint quo eum quis veritatis velit. Corrupti fugiat atque sint sed ea aut sed.'),
(63, 'Dr. Dangelo Metz', 'Est sit provident veritatis rerum quas fugit. Incidunt vel voluptatem quo dicta et beatae.'),
(64, 'Cụ. Phí Lai', 'Et ullam ut reprehenderit et molestiae. Impedit rerum maxime est autem voluptatem voluptatem. Quidem necessitatibus et praesentium nihil. Dignissimos et id totam at exercitationem eveniet.'),
(65, 'Kiera Treutel', 'Inventore atque tempore optio in. In aut id sint dolor aut quo. Vel maxime commodi et rerum aut dolorem iusto.'),
(66, 'Bác. Bạch Giang', 'Autem dolorem soluta provident consequatur. Tenetur qui ab voluptate consequuntur aut rerum. Tempora vero ratione nulla sint vel ducimus adipisci.'),
(67, 'Lance Brakus', 'Voluptate hic voluptatem et labore. Temporibus assumenda quam veniam dolorem et. Ipsam minima accusantium unde aliquam eos ut nobis nulla. Officia et aut beatae laudantium.'),
(68, 'Thịnh Phụng Dương', 'Reprehenderit esse quia reprehenderit molestiae. Distinctio in voluptates ea quis est. Animi amet fuga officia asperiores dolores voluptatem.'),
(69, 'Mattie Waters', 'Quisquam quia aut tempora sed molestiae dolore fuga. Id fugit ut optio non tenetur aut et. Saepe qui dolores accusantium deleniti ullam iste. Sunt blanditiis omnis id accusamus.'),
(70, 'Ông Bữu Kiện', 'Quaerat eius beatae necessitatibus deserunt. Occaecati saepe ipsa aut a recusandae. Nisi voluptatem esse labore dicta. Qui aspernatur et aspernatur magnam dolor recusandae ipsam. Est quis ut aut.'),
(71, 'Dr. Itzel Swift', 'Sit officia unde deleniti ullam sequi. Vitae nihil odit fugit vero eos rem. Doloremque nihil voluptates eveniet rerum beatae. Sint unde ducimus ducimus iure repellat.'),
(72, 'Bành Hồ Hải', 'Velit explicabo officia aliquid earum illo aut. Culpa tempora facilis veritatis earum aut qui. Laborum aperiam molestiae autem doloribus et amet illum. Illo voluptatem voluptas et accusamus incidunt.'),
(73, 'Aliyah Jenkins', 'Sit quam voluptas perspiciatis asperiores quia laborum molestias. Sunt dicta dolor cumque atque. Natus tempora tenetur rem distinctio laborum nostrum consectetur.'),
(74, 'Anh. Cổ Ân Tiển', 'Et totam nesciunt debitis nulla occaecati temporibus odit neque. Qui officia praesentium excepturi quaerat vitae.'),
(75, 'Melvin Spencer', 'Deleniti pariatur sed error eum repellendus ab. Tempora voluptatum natus sit consequatur tenetur nesciunt quis eos. Commodi veniam et repellendus provident. Adipisci mollitia rerum ipsam.'),
(76, 'Cô. Trang Lưu Du', 'Delectus autem voluptatem quas velit corrupti. Ipsum optio vero consectetur maxime. Et illo qui quis aut placeat praesentium rerum. Odio voluptatem dolorum sed non quia quidem.'),
(77, 'Miss Camylle Brekke', 'Veniam optio praesentium occaecati. Nesciunt perferendis sit ratione ducimus sed tempore ut. Cupiditate commodi nihil doloribus est.'),
(78, 'Tống Oanh', 'In ullam omnis ut optio aliquid. Sint consequatur nesciunt molestiae. Nihil qui et iusto nihil laboriosam exercitationem incidunt. Qui ut vel quos. Sed commodi sit asperiores natus hic sunt.'),
(79, 'Dr. Isabelle Crona DVM', 'Commodi rerum ut et quae error sit qui. Repudiandae voluptates autem quis rerum. Laborum exercitationem ut omnis suscipit possimus non autem voluptas.'),
(80, 'Nghị Cương', 'Non aut facilis veniam aspernatur est sint. Atque velit autem adipisci sit. Et nam nemo porro molestiae.'),
(81, 'Mr. Darryl Boehm Jr.', 'Voluptatum consequatur molestiae eligendi nam. Id neque officiis sunt sed omnis consequuntur natus culpa. Voluptatum reprehenderit sint quia expedita sit aut.'),
(82, 'Anh. Dương Hiển', 'Eligendi ratione ratione occaecati quo qui ipsam ut. Ex qui possimus atque fuga vero magni qui. Est maiores deleniti minus sequi illo ut. Cupiditate ducimus dolore neque quasi.'),
(83, 'Prof. Cade Cummings Sr.', 'Sint quaerat dolores esse cupiditate est at voluptates. Voluptas porro eaque exercitationem facilis. Quia laudantium incidunt velit rerum saepe sit. Rerum nisi et eveniet soluta molestias numquam.'),
(84, 'Thịnh Lộc', 'Voluptatem ut suscipit quis eos. Est sint et nihil eum impedit recusandae. Expedita ipsam saepe dolor soluta sed nihil quod.'),
(85, 'Bernadette Schmeler', 'Reiciendis rerum nostrum nesciunt pariatur dolores est aut. Qui voluptates praesentium error totam illum quod. Atque praesentium quaerat in.'),
(86, 'Cụ. Dã Quý', 'Ut iusto illum ut saepe non nesciunt sed. Ut libero et perspiciatis. Omnis dolor rem consequatur voluptas. Quia molestiae in omnis velit quia. Iste eos velit itaque iusto tenetur vitae ducimus.'),
(87, 'Prof. Candido Schumm PhD', 'Sint nobis ut quia mollitia quis blanditiis. Debitis illo occaecati quia sed labore. Nesciunt totam tempora assumenda est debitis.'),
(88, 'Nghị Nhất Ty', 'Neque autem deserunt nisi consequatur deleniti quisquam saepe. Nobis voluptatem animi non quis sed. Sint quia asperiores ut natus. Numquam sed pariatur aperiam nostrum.'),
(89, 'Prof. Jameson Adams', 'Excepturi veniam quidem qui harum ea. Enim minus praesentium iure dolor. Voluptatem quas nemo est doloribus tempore libero. Atque placeat itaque perferendis laudantium deleniti placeat fuga.'),
(90, 'Cụ. Trần Kiên Thiện', 'Eligendi dolor quia eum hic temporibus beatae quasi aperiam. Facere magnam quis sit aut. Blanditiis voluptates sint iusto.'),
(91, 'Jovan Kuvalis', 'Rerum ullam ut assumenda saepe ducimus enim. Sed commodi eaque voluptatem cumque dolor quia aperiam. Vel velit sequi ut sequi dolorem enim. Reiciendis id voluptatem nihil quam explicabo neque et.'),
(92, 'Em. Trưng Huyền', 'Consequatur molestias doloribus corporis aut. Sint quis reprehenderit optio quibusdam sit iure ducimus corrupti. Praesentium nesciunt qui non et eum.'),
(93, 'Prof. Roy Ortiz IV', 'Sunt libero non et rerum autem quia aliquid. Consectetur a ducimus nisi quasi dolores necessitatibus. Eos perspiciatis optio et sit placeat. Sequi quas ipsam hic reiciendis. Et officia omnis quos ut.'),
(94, 'Em. Đái Minh Huỳnh', 'Ipsa aut totam corrupti impedit deleniti est reprehenderit. Tenetur deleniti vel blanditiis nostrum quo at rerum perspiciatis. Non nemo consectetur architecto odit.'),
(95, 'Garrett Vandervort', 'Sit excepturi non assumenda nulla asperiores nihil. Optio repudiandae omnis sint.'),
(96, 'Lữ Thảo', 'Ut maiores velit porro nisi. Doloremque ea odit sapiente. Repellendus mollitia veniam ea fuga et voluptate deserunt.'),
(97, 'Wilford Huels II', 'Culpa sit qui laborum velit eos illum adipisci. Amet necessitatibus porro aliquam occaecati. Non sunt aut ducimus voluptatum et sed.'),
(98, 'Bà. Hồng Khúc Trinh', 'Quis vel a occaecati aspernatur exercitationem. Qui est sequi inventore debitis pariatur. Harum labore dignissimos quo distinctio iste. Sunt nesciunt culpa cumque sapiente quod amet.'),
(99, 'Jesse Ondricka', 'Et sed eum autem incidunt asperiores. Sunt aut labore accusamus dolor ea omnis quos. Eaque esse libero dignissimos iure. Consectetur fuga quam consequuntur iusto deleniti.'),
(100, 'Chị. Cầm Quế Khánh', 'Animi perferendis consequatur porro quia suscipit pariatur voluptas. Similique qui non enim distinctio ut aspernatur deserunt. Minus eum dolor rerum aliquid.'),
(101, 'Freeda Hane', 'Non nisi fugiat eos in eveniet mollitia reiciendis consequatur. Et iste consequatur rerum saepe vitae non. Et ut dolorum nam et iusto veritatis alias qui. Fugit cum ut accusamus tempore perferendis.'),
(102, 'An Tú', 'Eius quasi eum labore alias. Quasi consequatur omnis qui illum sunt. Sit cumque ullam ullam excepturi et.'),
(103, 'Santino Beer', 'Qui nihil quam nisi non. Earum sapiente ducimus eaque minima amet quam iure. Quas ipsa eveniet sit mollitia eum ea assumenda at. Laboriosam exercitationem modi quas qui dolorum repellat.'),
(104, 'Em. Bảo Phong Hào', 'Facere voluptas provident voluptatibus consectetur ducimus quasi accusantium. Nulla magnam velit quo adipisci dolorum doloremque dolore itaque. Suscipit tenetur eveniet reprehenderit est maxime et.'),
(105, 'Floyd Williamson', 'Tempore aut impedit alias. Neque asperiores mollitia aut. Magnam consequatur minima quod est quis. Accusamus earum ut vero voluptas placeat dolore quia dicta.'),
(106, 'Chử Lộc', 'Voluptatem aliquid autem velit doloribus sunt magnam vitae. Doloremque deserunt quis similique cum porro ea nemo. Molestiae laborum aliquid sed est repudiandae molestiae et.'),
(107, 'Hermann Batz', 'Aut ipsam quidem a minus dolorum porro molestiae. Necessitatibus mollitia autem delectus dolor iure sunt dolor. Ea ut eius quidem aut ad voluptas dignissimos.'),
(108, 'Trà Trâm', 'Unde deserunt enim qui perspiciatis soluta. Sapiente quas aut quod eaque perspiciatis minima. Eos repellendus ducimus rerum autem. Ab eaque ratione dolor animi.'),
(109, 'Leonel Hoeger', 'Aliquam exercitationem quos minus temporibus et et. Illo quisquam accusamus facilis.'),
(110, 'Em. Lê Quang', 'Optio reprehenderit labore exercitationem non veritatis sint labore nesciunt. Earum necessitatibus ex et aut ex. In praesentium eius animi quae tenetur.'),
(111, 'Prof. Osborne Wiegand', 'Ab odio aperiam odit impedit facilis. Vel deserunt nemo corrupti ullam in eos. Dolorem nulla et sit voluptatem voluptatem et ut.'),
(112, 'Anh. Tiếp Hoàng Toàn', 'Iste mollitia delectus nam delectus. Optio modi ea maxime ducimus qui maiores sint. Magni consequatur eligendi numquam nostrum sit eius atque.'),
(113, 'Mr. Andre Prohaska', 'Commodi architecto vitae et nam vel voluptatibus et. Aut aut non beatae qui. Consequatur et totam et nemo. Reprehenderit eum enim incidunt ut.'),
(114, 'Hà Thiện Thủy', 'Iure aliquam reiciendis dolores. Recusandae provident quaerat in sed veniam rerum. Aut et tempora accusantium. Iusto aut exercitationem excepturi.'),
(115, 'Mr. Malcolm Hansen II', 'Et ipsum debitis ut quibusdam odio sit consectetur. Tempora dignissimos quibusdam non error perspiciatis. Quo et est eius qui. Asperiores fuga ut est dolorum quia qui.'),
(116, 'Cụ. Hà Khởi Trác', 'Enim excepturi sit aliquam. Pariatur minus laboriosam ut dolor. Optio eos a sit aut esse. Reprehenderit ipsam quidem aut rerum.'),
(117, 'Prof. Ludwig Legros DDS', 'Saepe quaerat repellendus non at laboriosam ut alias. Blanditiis veniam et qui odio neque aliquid dolor. Error enim optio voluptatem saepe autem.'),
(118, 'Giả Thục', 'A saepe consectetur consequatur quia sint. Quia laboriosam sunt autem non corrupti et et. Debitis sint sed minima non harum quos rerum et.'),
(119, 'Otha Baumbach', 'Nostrum vel numquam natus maiores quibusdam aut iure. Excepturi ut sit voluptatum nihil ab cumque. Ipsam et sint autem nostrum libero esse.'),
(120, 'Bác. Điền Ân Thủy', 'Amet ratione modi et temporibus. Reprehenderit explicabo ab est et. Vitae amet vel rerum perferendis. Facilis omnis quia iure reprehenderit.'),
(121, 'Alexandrine Rolfson MD', 'Atque dolor esse suscipit enim autem. Dolorum laudantium quia et enim ut et totam ad. Explicabo non illum doloremque quisquam ut.'),
(122, 'Cấn Quang Phúc', 'Sed labore mollitia iure est qui et. Accusamus nostrum autem aliquid enim. Soluta ipsum incidunt iure sint facere quo adipisci nam. Id minima corporis cum est.'),
(123, 'Braulio Kassulke', 'Architecto nemo nesciunt voluptas. Nulla rerum tempora cum. Ea facere voluptate perspiciatis quidem minus qui.'),
(124, 'Anh. Mạc Quốc Dân', 'Rerum delectus debitis consectetur ex. Dolores voluptatibus vero nulla quisquam. Harum maiores eius est quasi est. Perferendis eius et fugit consequatur ut.'),
(125, 'Mr. Ayden Wintheiser', 'Quod qui vel exercitationem rerum. Placeat non autem necessitatibus perferendis. Ipsum tenetur officiis occaecati quia aut.'),
(126, 'Cụ. Lư Di', 'Facere id voluptatum dicta dolorum. Repellat ratione in ea illum esse quas est. Modi aut et laboriosam. Omnis eligendi ab qui commodi. Et aut asperiores eius veritatis laboriosam in.'),
(127, 'Hassie Spencer', 'Sit aut fuga eos tempora assumenda rerum illo. Consequatur voluptatem et illum reprehenderit ut eum quo nihil. Sit accusamus numquam pariatur est ducimus excepturi non. Iure est quod nemo aut ullam.'),
(128, 'Nhữ Yên', 'Architecto veniam voluptas sed quo dignissimos quia. Ipsam debitis porro nobis ab earum eos ullam. Et optio quia vitae quia sequi qui saepe. Error quasi et est dolorum.'),
(129, 'Della Gislason', 'Quam magni vel ipsum quia autem voluptas quae consequatur. Eaque ad vero dignissimos qui veniam. Ipsum rerum quas quia optio. Molestiae vel qui aspernatur magni doloribus commodi et.'),
(130, 'Ông. Nông Bình Duy', 'Non et doloribus rerum. Impedit vitae aut culpa illum. Temporibus ex ipsam quam totam incidunt sed.'),
(131, 'Rudy Grimes', 'Odio consequatur ullam aut laboriosam voluptatem sed. Aliquam eum est eius maxime accusamus. Qui est nostrum sed. Ut rerum architecto officia velit velit.'),
(132, 'Ca Đồng Lân', 'Doloribus dolorem rerum repellendus voluptatibus et. Ut facilis earum excepturi ut. Ut voluptatem veritatis totam sit sequi incidunt quo. Voluptas enim rerum dolore culpa omnis sunt in.'),
(133, 'Mrs. Janelle Schowalter', 'Rerum omnis quia iure quis consectetur ullam. Nisi voluptas sed minus vel. Aut et id id voluptatem. Qui eum perspiciatis doloremque blanditiis et reiciendis vitae.'),
(134, 'Ông. Mã Huy', 'Debitis maiores rem saepe saepe. Corrupti facere in officia fuga. Voluptatibus error quis consequatur eaque animi harum qui.'),
(135, 'Dr. Alexis Gulgowski Sr.', 'Repellat fugit ut officiis facere nihil commodi repudiandae. Deserunt est autem rerum. Dolore praesentium voluptas tempora blanditiis ex repudiandae.'),
(136, 'Bạc Phong Dung', 'Corporis molestias ex quod. Sunt deleniti et et aspernatur odio amet. Esse aut id exercitationem doloribus. Pariatur nemo est perspiciatis facilis ipsa facilis. Et aut ut nihil facere beatae.'),
(137, 'Rowan Weimann', 'Quo delectus provident officiis non qui. Voluptas sit provident veniam commodi totam non. Sunt perspiciatis accusamus impedit dolorum dolor molestiae molestias.'),
(138, 'Cô. Cung Đoan', 'In sint deleniti vero explicabo esse. Aut dolorem quis minus culpa consequatur enim aut eligendi. Quia nemo voluptates veniam architecto et quis accusantium. Consequatur consequatur ipsa porro atque.'),
(139, 'Abdul Moore', 'Quas quaerat inventore aut quo suscipit facilis. Qui voluptatem id debitis. Repellendus odio maiores possimus ab sed fugiat repudiandae. Est consequuntur et dolore vel cupiditate qui omnis.'),
(140, 'Xa Bắc', 'Assumenda quas modi cupiditate unde corporis. Laborum odio illum sed debitis nihil sunt fugiat. Quas odio voluptas ea voluptatum. Deserunt nesciunt veritatis veritatis.'),
(141, 'Mrs. Ayla Swaniawski', 'Eveniet voluptatibus aut a aut ut nihil. Molestiae at dolore qui consectetur accusantium. Molestiae libero corporis architecto sit saepe nobis. Facilis vitae debitis voluptatem quisquam qui.'),
(142, 'Em. Khoa Nhất Giang', 'Autem eius facere aperiam quam quos. Tempore a omnis et sit id. Aut non sed tempore exercitationem blanditiis qui exercitationem. Exercitationem dolores quia eos.'),
(143, 'Toy Upton', 'Ut delectus ut accusantium omnis vitae optio eligendi. Cupiditate vel rerum nam doloribus. Aperiam ducimus ab voluptatum dolores perferendis.'),
(144, 'Bá Xuân Hòa', 'Aliquam sapiente consequatur voluptas soluta qui. Non quod beatae vero tenetur. Aut vel molestiae velit consectetur doloribus.'),
(145, 'Prof. Moises Altenwerth Sr.', 'Ea dolorem quam consequuntur quia sint recusandae nihil. Quis tempore expedita quis nam qui. Eveniet iusto omnis dolor aliquam est. Ut repellat qui dolores adipisci officiis culpa assumenda.'),
(146, 'Bác. Thân Tuyền', 'Alias nemo ipsum est facere. Sequi in provident et molestias debitis quod adipisci. Earum magni et aperiam voluptatem. Reiciendis quisquam laudantium inventore.'),
(147, 'Prof. Okey Corkery PhD', 'Ut occaecati ducimus quo repellendus doloremque quis. Est expedita nisi deserunt quam quo. Dolores dolor eum maxime ut quo. Culpa ducimus facilis sint aliquid autem cum.'),
(148, 'Bà. Liễu Cúc', 'Quos maxime enim iste voluptates quia enim. Eligendi fuga quasi consequatur voluptate tenetur veritatis sapiente est. Voluptas quo beatae fugiat tenetur laborum. Neque qui alias aut ea.'),
(149, 'Maryam Larson', 'Repellendus est qui qui sit praesentium. Numquam eum vel adipisci molestiae et omnis quos. Ipsa alias numquam incidunt ut. Eos est sint magnam sit.'),
(150, 'Ông. Cái Định', 'Id est laboriosam qui ut in nihil. Suscipit distinctio sunt in perferendis voluptas quia ex. Perspiciatis esse et dicta omnis. Eveniet quod dolorem nihil soluta sed eligendi et.'),
(151, 'Prof. Sigurd Sanford Jr.', 'Debitis et quam omnis quos accusamus incidunt consequatur. Quia illo nostrum tempore est id quo vel. Qui ut ipsa impedit quia et qui quia possimus. Error quae tempore voluptas vel.'),
(152, 'Đào Thủy', 'Rerum et itaque officiis eveniet et. Itaque eos dolore consectetur dolore minus consequatur vitae. Deserunt dolor est suscipit sapiente saepe. Eligendi nobis ut ratione eveniet repellat qui dolorem.'),
(153, 'Velva Walter', 'Non magni et tenetur dolor voluptate at quod. Consequuntur qui cupiditate quidem rerum. Ab iusto vero libero sit. Est ea non labore eos itaque eos.'),
(154, 'Ông Hằng', 'Perspiciatis excepturi adipisci ut et expedita iusto. Dolorem non eos blanditiis et maxime quia animi. Cum et fugiat consequatur doloribus.'),
(155, 'Dr. Arno Halvorson MD', 'Voluptas modi et porro blanditiis ut rerum facere perferendis. Ea laudantium at id sit non qui aut. Ipsam eligendi eius autem nobis cupiditate omnis nesciunt. Quia est dolorem aut doloribus.'),
(156, 'An Trang', 'Maiores culpa aperiam dolorem accusamus aspernatur iure. Laborum non rerum dolor. Pariatur modi et modi voluptatem. Voluptatem deleniti laboriosam velit hic quidem aut nihil.'),
(157, 'Jeanne Goldner', 'Sed optio nihil inventore laboriosam quia quidem et. Repellendus at et sit quidem. Corrupti dolorem sint et ad ratione accusantium adipisci. Laboriosam et ratione illo id ad quidem.'),
(158, 'Bà. Cái Phi', 'Quisquam quo laboriosam accusamus. Officia fugiat unde nihil sed rerum dolorum. Quia voluptas est est hic itaque.'),
(159, 'Mr. Keyshawn Sawayn', 'Aliquam ut autem repudiandae iure. Quae ullam harum eum ut. Repudiandae iure excepturi sed illo. Quia alias iusto ab unde.'),
(160, 'Em. Ong Sĩ', 'Dicta ut nemo sit quia quibusdam facere. Sint voluptas eligendi aut impedit. Dolor cumque praesentium dolor quas sit omnis. Laboriosam alias eveniet ipsa non suscipit est.'),
(161, 'Kristofer Lesch', 'Laboriosam itaque eum mollitia aperiam non enim recusandae incidunt. Praesentium voluptatem quam doloremque qui in. Optio et sit reprehenderit dicta labore.'),
(162, 'Mã Tấn', 'Placeat ab eum voluptatem tempore id. Quia tenetur porro impedit hic. Necessitatibus sed eius sit eum doloribus fuga. Temporibus ut animi eveniet veniam ut.'),
(163, 'Ava Haag', 'Numquam neque voluptatum dolores quibusdam. Suscipit qui illo laudantium. Necessitatibus ut rerum dolor non deserunt sit aut qui.'),
(164, 'Anh. Khâu Lĩnh', 'Dolorem occaecati eum corporis delectus amet. Mollitia non quasi sed reprehenderit quibusdam. Quas cumque deleniti quod excepturi sed veniam.'),
(165, 'Carter Dare', 'Ipsum totam quod incidunt et dolorum rerum expedita mollitia. Voluptas accusamus architecto repellat optio. Officia ea animi natus corporis. Voluptatem deleniti vel debitis voluptatem praesentium.'),
(166, 'Khúc Nhan Thường', 'Debitis aliquid libero aut non id sit. Placeat iure laboriosam ad omnis. Aliquid molestias eum veniam reprehenderit ab beatae ut. Perferendis aperiam earum dignissimos rem quod dolorum sint.'),
(167, 'Madonna Larson', 'Ex ducimus unde consequatur reprehenderit. Quis et ut tempore expedita.'),
(168, 'Bạch San', 'Et qui totam in et necessitatibus aut. Et et quis fugiat similique voluptates. Nisi quo inventore qui ut est. Architecto enim qui suscipit dolore debitis.'),
(169, 'Mandy Huels', 'Illum voluptatem enim enim sit sunt. Blanditiis repellendus ea accusamus quasi. Soluta quae qui corrupti non velit. Ea itaque et nemo.'),
(170, 'Em. Vương Mậu Diệu', 'Cupiditate tenetur omnis iure dolorem deleniti natus. Quo distinctio est quis incidunt necessitatibus est. Quod illum id explicabo modi cupiditate. Quibusdam aut dolores rerum dolorem id.'),
(171, 'Abdullah Johnson', 'Labore consequuntur voluptas qui delectus minus perspiciatis. Odio sapiente enim deserunt sit vero et aliquam. Labore modi qui illum nemo ab est.'),
(172, 'Bác. Tôn Quỳnh', 'Non et in sequi. Voluptas ab et dolorum explicabo maiores quae. Sed fugiat illum id doloremque libero.'),
(173, 'Mr. Immanuel Hodkiewicz DDS', 'Reiciendis quisquam ipsa quisquam. Dolores dolorum qui id molestiae. Mollitia est quidem omnis culpa beatae sint unde. Enim et fugit vel dignissimos quia asperiores. Aut magnam fugit dolore quo.'),
(174, 'Bà. Nhậm Huyền Hoan', 'Eveniet ullam voluptatibus facilis porro quasi voluptatem mollitia quidem. Magni error qui laboriosam cum. Ea dolores maiores unde quis. Occaecati quaerat voluptatem et numquam sapiente.'),
(175, 'Lucinda Schmidt', 'Harum perferendis qui amet. Provident similique modi animi dolores. Ullam id nihil aperiam omnis. Dolores doloribus dignissimos aut molestias.'),
(176, 'Ung Triết', 'Facere ab mollitia quod voluptatem explicabo vero placeat. A optio similique et architecto et dignissimos.'),
(177, 'Jakayla Gutkowski PhD', 'Reiciendis eligendi aut unde. Quas nemo aperiam qui unde voluptatibus rerum ut. Voluptate vitae architecto molestiae sed nihil nostrum dolorem. Repellat ipsum nihil eligendi aut iste sit.'),
(178, 'Đồng Khắc Lai', 'Aut dicta sit inventore quis voluptatem. Est rerum iusto ipsum quia non qui in possimus. Suscipit dolor quia doloribus corrupti ad. Non et non cupiditate qui cumque.'),
(179, 'Brandi Weimann', 'Et eos sit sed enim fuga. Asperiores ipsum in qui quaerat inventore aut. Impedit error et ad iste.'),
(180, 'Cô. Cao Trâm Mi', 'Ex quibusdam officiis non. Dolorem veniam nisi harum dolor atque atque et. Ducimus ut est necessitatibus vel aut enim voluptas. Amet id illo aut officia ea minus.'),
(181, 'Enos Turcotte', 'Repudiandae ea laudantium blanditiis impedit at sunt nobis aliquam. Hic qui totam vel repellendus et quaerat. Ipsa voluptatem repudiandae pariatur reprehenderit porro maxime.'),
(182, 'Lữ Học', 'Aut magnam porro cum vel laudantium. Veritatis adipisci qui hic ut facere nesciunt modi. Nemo eaque eaque facilis consequatur et atque eos.'),
(183, 'Alena Kiehn', 'Quas enim atque id sed quae est eveniet. Commodi recusandae est commodi harum. Quae enim voluptate quia.'),
(184, 'Đôn Vũ Ngân', 'Dolor non commodi consectetur ut cum maxime autem. Aut sint ducimus delectus molestiae. Rerum eos illum nemo earum ipsam in magni optio.'),
(185, 'Shania Homenick', 'Voluptatem ut quam rerum numquam. Odit eligendi quasi sequi ea dolorem voluptatem provident. Pariatur cumque quas nisi animi quibusdam vitae.'),
(186, 'Anh. Ca Vũ', 'Sed quis pariatur qui magni. Qui tenetur ipsum ea voluptatem omnis. Voluptas ad quo ut id.'),
(187, 'Solon Lubowitz', 'Adipisci aut magni dicta veritatis. Itaque ipsum facilis sint commodi. Est officiis eligendi quidem impedit ut quae et. Eos consequatur totam autem.'),
(188, 'Chị. Tôn Trà Uyển', 'Voluptates omnis minus deleniti autem hic. Maiores facilis dignissimos sit aut enim vel iusto.'),
(189, 'Janessa Hansen', 'Ut libero ducimus itaque officia. Nihil odio suscipit sint eius odio ea velit. Earum nam corrupti impedit id necessitatibus.'),
(190, 'Cụ. Ánh Mẫn', 'Voluptate necessitatibus animi dolor voluptas. Voluptatem sint pariatur quis perferendis voluptatum. Esse est tempore alias mollitia earum dolor nulla. Ea rem et aliquam laudantium.'),
(191, 'Jaquan Pagac', 'Ad dolores eveniet eos in velit qui sapiente. Sed aut inventore cupiditate enim aut sint sed. Exercitationem quasi tenetur et voluptatem. Officia omnis qui nobis vitae aperiam consequuntur commodi.'),
(192, 'Lâm Lưu Thu', 'Illum illo perferendis et at. Ut sapiente laboriosam dolorem nihil. Est id sequi est. Odit qui error cumque incidunt.'),
(193, 'Anastasia Cormier', 'Id sint unde error porro corporis tempore necessitatibus. Non beatae sunt doloribus sunt optio. Perferendis dolor atque sed illum inventore quia.'),
(194, 'Tạ Bửu An', 'Enim tempora voluptas laboriosam magni sed. Vero aut non minima quia totam adipisci. Necessitatibus accusamus nobis asperiores quod tempora nemo. Distinctio ea laudantium tempore et et.'),
(195, 'Dr. Sylvia Kuhic DDS', 'Est vel veniam nesciunt mollitia quod. Exercitationem maxime commodi aut sit sed. Et provident error ipsam dolor. Accusamus sed ut et.'),
(196, 'Cô. Khưu Hằng', 'Voluptatibus dolorum nam voluptas placeat. Quia aut odit sit et. Ducimus aut ducimus perspiciatis recusandae molestiae.'),
(197, 'Hipolito Wisozk', 'Harum quos incidunt perspiciatis quod delectus nemo. Et magnam quas quaerat voluptas. Autem architecto aliquam aut voluptas voluptatibus nemo quidem dicta.'),
(198, 'Mâu Hiền Lực', 'Aliquid dolor repellendus in veniam at. Sit sint et eos impedit nemo. Molestias dolorem sequi nostrum optio.'),
(199, 'Prof. Derick Walter Jr.', 'Veritatis dolorum pariatur aspernatur maxime totam debitis excepturi. Qui sunt optio veritatis quia consequuntur et voluptates.'),
(200, 'Cụ. Bế Quảng', 'Quidem qui voluptatem ut voluptatem. Maxime est a magnam. Vitae rem tempore voluptatum qui.');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `BookId` int(11) NOT NULL,
  `BookNames` varchar(100) NOT NULL,
  `BookPrices` decimal(12,2) UNSIGNED NOT NULL,
  `BookDescription` varchar(255) NOT NULL,
  `BookQuantity` int(11) NOT NULL,
  `BookUpdateDate` date DEFAULT NULL,
  `BookLentTimes` int(11) DEFAULT NULL,
  `CategoryId` int(11) DEFAULT NULL,
  `PublisherId` int(11) DEFAULT NULL,
  `LanguageId` int(11) DEFAULT NULL,
  `LentCostId` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`BookId`, `BookNames`, `BookPrices`, `BookDescription`, `BookQuantity`, `BookUpdateDate`, `BookLentTimes`, `CategoryId`, `PublisherId`, `LanguageId`, `LentCostId`) VALUES
(1, 'Excepturi.', '48416.00', 'Necessitatibus itaque veniam quis itaque dolorem.', 13, '2017-11-23', 34, 4, 78, 8, 3),
(2, 'Quia in.', '56581.00', 'Sed mollitia aliquam id voluptas quasi ullam quae.', 15, '2017-08-10', 99, 13, 91, 8, 2),
(3, 'Similique.', '72163.00', 'Culpa inventore enim est minima nihil. Dolorem sint dolor rem rerum assumenda.', 46, '2017-08-13', 231, 26, 41, 11, 2),
(4, 'In sed.', '57912.00', 'Tenetur sed placeat quia exercitationem sint. Cumque et consequatur id quo.', 45, '2017-09-01', 228, 5, 42, 9, 1),
(5, 'Hic.', '39218.00', 'Molestias maiores quae dolorem. Eius enim dolore vel illum dolor.', 30, '2017-10-01', 40, 26, 96, 5, 1),
(6, 'Qui sed.', '568748.00', 'Et id asperiores sit et corporis accusamus. Dolores commodi ut voluptatem iure necessitatibus.', 22, '2017-08-09', 125, 10, 39, 2, 1),
(7, 'Aliquam.', '60320.00', 'Neque occaecati quae iure qui est quia.', 16, '2017-06-04', 130, 24, 22, 7, 3),
(8, 'Ullam eum.', '41856.00', 'Facere eaque harum autem officia.', 49, '2017-12-25', 280, 10, 8, 5, 3),
(9, 'Nihil.', '22199.00', 'Alias omnis est dignissimos vero et et. Magnam et tempora qui et autem.', 17, '2017-09-26', 236, 22, 80, 2, 1),
(10, 'Voluptas.', '716950.00', 'Repellat quae molestiae omnis tempora exercitationem eum.', 19, '2017-07-07', 280, 10, 92, 10, 2),
(11, 'Sunt rem.', '881187.00', 'Dolores adipisci in velit debitis ducimus molestias.', 25, '2017-07-30', 38, 9, 12, 11, 1),
(12, 'Expedita.', '3032.00', 'Eos molestias eveniet soluta odio necessitatibus labore.', 12, '2017-07-02', 98, 11, 79, 4, 2),
(13, 'Id qui.', '376064.00', 'Et vel aut doloremque consequatur odio repudiandae. Error officia adipisci voluptatem.', 34, '2018-01-07', 232, 17, 77, 6, 3),
(14, 'Quis.', '69785.00', 'Iusto ut inventore dolorem eaque sint iusto architecto.', 39, '2017-04-08', 86, 7, 18, 7, 2),
(15, 'Illum.', '516109.00', 'Quaerat sint ipsum voluptatem voluptas. Atque et incidunt voluptatum exercitationem.', 21, '2017-10-24', 50, 8, 68, 11, 1),
(16, 'Quibusdam.', '606219.00', 'Dolore quia tempore nihil. Eos reiciendis est eum ut. Dolor eos ea voluptates delectus.', 10, '2017-06-29', 103, 4, 95, 12, 3),
(17, 'Et.', '98960.00', 'Est incidunt vitae omnis deleniti eos.', 40, '2017-11-01', 188, 12, 52, 3, 1),
(18, 'Cumque.', '30783.00', 'Accusantium sapiente corporis qui sed nihil quos.', 42, '2018-01-29', 175, 22, 75, 8, 1),
(19, 'Officia.', '67456.00', 'Est sunt dicta harum a itaque vitae debitis.', 47, '2017-02-20', 131, 4, 51, 6, 1),
(20, 'Unde fuga.', '868357.00', 'Et quas quos quo error omnis. Sint ut ex dolorem ut accusantium autem. Rerum quas enim odio.', 44, '2017-08-19', 67, 6, 46, 9, 3),
(21, 'Ea.', '61430.00', 'Labore sint reprehenderit ad dolorem saepe blanditiis nostrum.', 13, '2017-12-04', 249, 11, 45, 8, 1),
(22, 'Ipsum.', '73413.00', 'Ipsa aliquid et ut repellat voluptas id.', 11, '2017-11-03', 257, 18, 77, 10, 2),
(23, 'Et et.', '840625.00', 'Ut praesentium maiores accusamus itaque voluptatem harum animi fuga.', 18, '2017-08-27', 144, 28, 20, 6, 3),
(24, 'Sed odio.', '147616.00', 'Sequi necessitatibus aut molestias molestiae repellendus quam voluptate.', 26, '2017-04-22', 297, 14, 53, 7, 2),
(25, 'Ut vero.', '63347.00', 'Sit officiis minus et dolorem aspernatur. Et illum nostrum voluptatem odio.', 25, '2017-07-23', 246, 8, 68, 11, 1),
(26, 'Accusamus.', '46987.00', 'Aut ullam beatae quod et ut. Dicta sint nihil quae animi aut.', 32, '2017-11-17', 29, 25, 91, 9, 1),
(27, 'Corporis.', '94281.00', 'Est libero perferendis impedit id. Ut nostrum qui natus ea. Quia nesciunt et rerum aut.', 26, '2018-02-05', 138, 18, 84, 3, 1),
(28, 'Dolores.', '86333.00', 'Ut sapiente laboriosam molestias ab. Quos ipsam vitae tenetur dolores.', 45, '2017-05-22', 23, 17, 14, 11, 3),
(29, 'Et non.', '590149.00', 'Reiciendis cumque aut et quidem laboriosam magnam consequuntur ea.', 49, '2017-05-04', 283, 18, 55, 7, 1),
(30, 'Nostrum a.', '28470.00', 'Cupiditate id eum exercitationem eos sed ipsam ratione.', 35, '2017-09-26', 203, 17, 9, 7, 1),
(31, 'Aut harum.', '73407.00', 'Et qui est est exercitationem sed ad. Aut ullam eos aperiam modi qui velit.', 31, '2017-06-15', 292, 24, 61, 3, 3),
(32, 'Est nemo.', '2625.00', 'Provident et ipsum et. Eaque eligendi quaerat asperiores quae magni unde.', 37, '2018-01-10', 252, 28, 88, 3, 3),
(33, 'Nostrum.', '72826.00', 'Voluptatum error placeat vero sit dolor. Sed animi est et est blanditiis et veniam.', 45, '2017-05-04', 270, 13, 69, 9, 1),
(34, 'Est rerum.', '695001.00', 'Quia maxime dolore odit sit esse rerum velit qui. Deserunt minus ullam beatae quam autem.', 25, '2017-08-23', 24, 4, 15, 1, 3),
(35, 'Autem.', '286342.00', 'Labore doloremque neque autem sed nam nulla error. Est atque et pariatur odio commodi.', 14, '2017-07-10', 127, 1, 6, 9, 3),
(36, 'Qui.', '930272.00', 'Explicabo distinctio dolorem libero exercitationem alias ea.', 46, '2018-01-21', 215, 18, 18, 10, 2),
(37, 'Ipsam.', '713474.00', 'Sed et et nostrum et saepe. Voluptatum repellendus at vel qui ea qui.', 13, '2017-11-26', 289, 20, 63, 8, 1),
(38, 'Esse et.', '11597.00', 'Ad eius qui ut aperiam unde maxime et omnis.', 38, '2018-01-27', 71, 11, 6, 7, 2),
(39, 'Est et.', '10229.00', 'Eum ex voluptatibus non. Nobis perferendis deleniti vel fuga animi.', 28, '2017-10-19', 114, 12, 12, 3, 1),
(40, 'Nostrum.', '10478.00', 'Est ipsam mollitia a nostrum sit. Ullam aliquam sed libero error.', 43, '2017-09-27', 58, 10, 94, 12, 2),
(41, 'Ipsa.', '604244.00', 'Eveniet magni quia blanditiis a. Reiciendis et sed quisquam dolores nisi sapiente.', 48, '2017-03-06', 267, 15, 56, 9, 1),
(42, 'Quidem.', '52491.00', 'Eligendi ut error nostrum itaque nemo aut.', 42, '2018-01-04', 225, 23, 56, 8, 1),
(43, 'Vitae.', '424244.00', 'Excepturi beatae ullam consectetur qui molestiae.', 48, '2017-12-06', 32, 6, 92, 9, 1),
(44, 'Inventore.', '30534.00', 'Aut laboriosam quidem veritatis alias numquam earum quam.', 14, '2017-05-16', 256, 24, 37, 11, 3),
(45, 'Impedit.', '1735.00', 'Qui beatae dolorem laudantium dolores fuga fugiat.', 20, '2017-03-12', 254, 12, 7, 1, 1),
(46, 'Aut quis.', '34672.00', 'Dolorem sint sit totam eum nostrum. Ab sit laborum et.', 43, '2017-05-20', 37, 19, 96, 11, 2),
(47, 'Natus.', '496787.00', 'Labore id quia molestias quod.', 12, '2017-05-26', 192, 17, 62, 4, 3),
(48, 'Est culpa.', '66620.00', 'Blanditiis maxime minima porro quo quam repudiandae hic.', 29, '2017-06-08', 227, 4, 6, 1, 2),
(49, 'Sapiente.', '45571.00', 'Pariatur non in mollitia architecto velit.', 46, '2018-01-14', 145, 15, 21, 7, 2),
(50, 'Rerum.', '73478.00', 'Consequatur maiores et optio perferendis ratione provident. Tempore minus vel omnis.', 22, '2017-05-18', 265, 25, 80, 8, 3),
(51, 'Rerum.', '28941.00', 'Quis nihil perspiciatis tempora excepturi.', 28, '2017-07-22', 176, 6, 48, 9, 3),
(52, 'Voluptate.', '98132.00', 'Sapiente hic ipsam nam qui. Saepe pariatur quos id inventore quia officia dolorem.', 19, '2017-05-25', 273, 27, 9, 10, 3),
(53, 'Eum est.', '99011.00', 'Temporibus quo distinctio in ut magni.', 32, '2017-08-12', 286, 5, 66, 6, 2),
(54, 'Eum velit.', '41049.00', 'Eum incidunt nulla praesentium dolor.', 32, '2017-05-29', 123, 7, 7, 5, 3),
(55, 'Et quis.', '263844.00', 'Ex ut nihil facilis earum aut animi cupiditate.', 36, '2017-11-18', 178, 3, 43, 7, 1),
(56, 'Sed.', '451993.00', 'Rerum pariatur libero id nemo. Sed sed ea exercitationem soluta et et esse.', 24, '2017-09-12', 173, 19, 43, 2, 1),
(57, 'Neque.', '48822.00', 'Adipisci rerum sed esse a. Dicta unde aut repellat eos architecto est et placeat.', 26, '2018-02-01', 100, 28, 70, 1, 2),
(58, 'Nobis in.', '345485.00', 'Et aspernatur eaque repellendus laudantium quia et.', 14, '2017-04-17', 161, 17, 34, 1, 1),
(59, 'Quos.', '34811.00', 'Sint sit et omnis accusantium. Est accusantium numquam rem labore optio non.', 48, '2017-03-10', 216, 5, 62, 4, 2),
(60, 'A error.', '784146.00', 'Laudantium necessitatibus cupiditate beatae vitae quas id rerum ipsa.', 18, '2017-06-02', 10, 13, 91, 1, 3),
(61, 'Corporis.', '23667.00', 'Ipsam repudiandae nobis voluptatibus aliquid.', 20, '2017-10-07', 112, 3, 45, 10, 1),
(62, 'Et rem.', '197542.00', 'Saepe quaerat voluptas aspernatur rerum quidem repudiandae unde et.', 50, '2017-07-03', 236, 4, 52, 10, 1),
(63, 'Maiores.', '44325.00', 'Ut sed suscipit aliquam quibusdam. Voluptas est nobis reprehenderit nulla eos.', 20, '2017-06-03', 273, 16, 37, 11, 3),
(64, 'Pariatur.', '315854.00', 'Qui ut soluta voluptatem ducimus non. Sed culpa molestias ad ut natus aut aut.', 25, '2017-10-07', 209, 18, 63, 9, 3),
(65, 'In unde.', '69152.00', 'Et repellendus facere aut veritatis consequatur.', 10, '2017-12-24', 38, 16, 90, 4, 2),
(66, 'Ut quo.', '76395.00', 'Cupiditate voluptatem officia laudantium repudiandae quod sed vel.', 39, '2018-01-12', 248, 11, 92, 11, 2),
(67, 'Sed vel.', '33635.00', 'Ut voluptas laboriosam blanditiis et qui. Repudiandae rerum enim nisi eius vel aut.', 45, '2017-08-16', 287, 10, 87, 2, 3),
(68, 'Ut nisi.', '285664.00', 'Ut optio omnis enim rerum earum facere quam. Quas quia distinctio reiciendis vel.', 33, '2017-08-20', 227, 12, 22, 2, 2),
(69, 'Itaque.', '7590.00', 'Similique tempore pariatur quia sint minus aspernatur optio.', 23, '2017-09-02', 79, 5, 75, 6, 3),
(70, 'Autem cum.', '543936.00', 'Consequatur ratione at consectetur voluptatem libero. Enim est reiciendis non eum delectus quia.', 34, '2017-10-03', 179, 15, 59, 7, 2),
(71, 'Et.', '73610.00', 'Repudiandae quisquam ex qui repellendus ut laboriosam.', 33, '2017-03-04', 178, 14, 91, 8, 1),
(72, 'Sed omnis.', '1468.00', 'Consequuntur qui repellendus et accusamus aspernatur est asperiores voluptates.', 38, '2018-02-05', 55, 11, 37, 7, 3),
(73, 'Earum.', '921410.00', 'Ipsam facere nobis voluptas sit et. Dolor perspiciatis id deserunt ex.', 35, '2017-05-13', 299, 22, 5, 8, 2),
(74, 'Nesciunt.', '93980.00', 'Culpa voluptatum enim porro accusantium quod molestias ullam.', 35, '2017-06-29', 119, 28, 88, 7, 2),
(75, 'Aut.', '55075.00', 'Sed at nemo ipsa et. Officiis nesciunt a nam aspernatur ut.', 30, '2017-12-01', 112, 9, 6, 1, 3),
(76, 'Officiis.', '89100.00', 'Cum exercitationem eligendi fugiat beatae modi quidem. Dolore asperiores expedita rerum.', 18, '2017-09-28', 96, 19, 56, 4, 1),
(77, 'Non.', '30125.00', 'Vel odio voluptates possimus possimus et est.', 33, '2017-11-27', 272, 27, 70, 9, 2),
(78, 'Nam a.', '480325.00', 'Maxime eligendi quidem dolor sit ea magnam.', 14, '2017-05-14', 29, 28, 28, 8, 2),
(79, 'Aut odit.', '17714.00', 'Mollitia ad id ex laborum vitae et harum.', 36, '2017-05-04', 34, 5, 44, 12, 2),
(80, 'Officiis.', '837085.00', 'Nihil odio quis minus cupiditate et corrupti ratione corporis.', 40, '2018-02-14', 11, 17, 26, 9, 1),
(81, 'Enim.', '843035.00', 'Quo voluptas qui earum. Dolorem ea est natus et reiciendis accusamus et quia.', 16, '2017-08-13', 237, 15, 24, 9, 2),
(82, 'Harum ex.', '426877.00', 'Dolorum placeat dolores velit omnis voluptatem.', 22, '2017-12-10', 128, 20, 33, 10, 1),
(83, 'Assumenda.', '97234.00', 'Sint optio veniam id consequatur voluptatem. Ut aliquam nostrum unde reiciendis et.', 27, '2017-03-20', 64, 19, 18, 12, 2),
(84, 'Odio.', '647232.00', 'Illo iusto quibusdam aperiam velit voluptate recusandae.', 17, '2017-07-25', 267, 5, 53, 12, 1),
(85, 'Nesciunt.', '8172.00', 'Et rerum corporis aut blanditiis. Animi suscipit omnis atque minima.', 23, '2017-09-23', 142, 20, 9, 6, 1),
(86, 'Magnam.', '57138.00', 'Mollitia adipisci omnis expedita incidunt magni.', 30, '2017-06-02', 55, 14, 6, 7, 3),
(87, 'Aperiam.', '14910.00', 'Aut aliquam molestiae eos ea. Repellat consequatur voluptate et quia sint eos ea.', 19, '2018-01-09', 238, 28, 41, 4, 1),
(88, 'Quasi.', '296001.00', 'Modi illum quidem est aut odio voluptatem qui similique.', 22, '2017-08-17', 43, 19, 85, 10, 3),
(89, 'Ut ut.', '261003.00', 'Id est nihil et cum accusamus numquam. Nam hic aliquam sed.', 23, '2017-06-09', 62, 8, 27, 1, 3),
(90, 'Sit iusto.', '368582.00', 'Officiis et qui ut est omnis. Eum et odit odio ex eius et doloribus.', 27, '2017-06-03', 110, 12, 47, 11, 2),
(91, 'Aut saepe.', '506354.00', 'Voluptatem qui ut ratione ut. In et inventore inventore.', 20, '2017-08-10', 112, 22, 79, 5, 1),
(92, 'Totam cum.', '114455.00', 'Iure id consequatur et non fugit. Eos repellat unde voluptatem.', 48, '2017-09-03', 105, 6, 30, 7, 2),
(93, 'Dolorem.', '736166.00', 'Reprehenderit possimus eveniet temporibus dignissimos. In sunt fugit ea sit libero quo eum.', 29, '2017-03-20', 129, 20, 60, 7, 1),
(94, 'Incidunt.', '72540.00', 'Omnis quae quasi dolor ipsa ut eos ut. Aspernatur assumenda dignissimos aut ea.', 49, '2017-12-11', 153, 28, 89, 1, 1),
(95, 'Quaerat.', '42526.00', 'Reprehenderit reiciendis in molestiae dignissimos.', 21, '2018-02-12', 164, 10, 84, 2, 1),
(96, 'Vel.', '960277.00', 'Ea repellat laudantium omnis nesciunt sit quae aperiam.', 18, '2017-11-08', 208, 28, 45, 12, 2),
(97, 'Quis.', '96031.00', 'Quibusdam voluptatem non iste quia. Earum omnis rerum voluptatem nemo.', 45, '2017-02-24', 159, 4, 74, 9, 1),
(98, 'Fugit.', '51547.00', 'Eius molestias et commodi aliquid quibusdam molestiae totam.', 20, '2017-03-29', 229, 20, 44, 6, 3),
(99, 'Officia.', '65486.00', 'Consequatur optio non incidunt. Esse et amet quasi autem.', 50, '2017-11-19', 287, 24, 16, 8, 1),
(100, 'Beatae.', '9565.00', 'At eum accusantium et consequatur sit quia.', 44, '2017-05-03', 154, 27, 38, 4, 3),
(101, 'Quas ex.', '81679.00', 'Repudiandae assumenda omnis assumenda eveniet ex non ullam sint.', 47, '2017-11-18', 168, 9, 8, 2, 2),
(102, 'Iusto.', '638606.00', 'Explicabo commodi sit voluptate doloremque non exercitationem.', 44, '2017-12-13', 176, 1, 26, 6, 1),
(103, 'Non autem.', '65308.00', 'Quae dolorem aspernatur suscipit sunt nostrum tempore explicabo.', 19, '2017-03-05', 153, 19, 93, 1, 2),
(104, 'Facilis.', '26553.00', 'Ut et molestiae ipsam et consequatur tenetur odit.', 28, '2017-03-22', 162, 26, 62, 3, 3),
(105, 'Modi.', '13109.00', 'Esse aut quibusdam rem doloribus dolores possimus.', 17, '2017-08-09', 194, 20, 94, 1, 2),
(106, 'Optio.', '56998.00', 'Qui rerum unde eaque quidem. Omnis sit velit amet cumque inventore dolores.', 32, '2017-08-10', 255, 4, 53, 7, 1),
(107, 'Aliquam.', '16371.00', 'Tenetur in odit eveniet animi nostrum rerum sunt soluta.', 11, '2017-09-14', 278, 25, 45, 3, 2),
(108, 'Eum.', '835350.00', 'Rem id similique et accusantium modi provident ea. Sunt vero est quia sapiente.', 50, '2017-03-21', 160, 5, 1, 9, 2),
(109, 'Et cum.', '731162.00', 'Aspernatur vero praesentium mollitia asperiores maiores et voluptas.', 36, '2018-02-12', 173, 15, 85, 11, 1),
(110, 'Dolores.', '48006.00', 'Repellat dolores ut necessitatibus illum perspiciatis.', 39, '2017-10-13', 293, 15, 22, 2, 2),
(111, 'Enim.', '71187.00', 'Aut labore enim et. Nemo voluptas veniam in et debitis.', 15, '2017-08-10', 167, 1, 42, 5, 3),
(112, 'Amet.', '706099.00', 'Labore temporibus mollitia modi est maiores saepe laudantium.', 48, '2017-02-22', 51, 5, 59, 6, 3),
(113, 'Et.', '64576.00', 'Quia ut consequuntur laborum et. Officia impedit rem excepturi consequatur.', 17, '2018-01-20', 87, 5, 6, 10, 3),
(114, 'Qui.', '499243.00', 'Vel dolorem fugit nihil laborum enim quidem molestiae.', 11, '2018-01-24', 133, 19, 83, 2, 3),
(115, 'Quia vel.', '771332.00', 'Vitae quas ducimus ad est qui. Voluptatum modi aliquid cupiditate tempora qui.', 26, '2017-11-12', 111, 22, 20, 5, 3),
(116, 'Libero.', '899273.00', 'Beatae consequatur soluta ut est officiis. Iusto dolorem quia consequatur esse ad.', 23, '2017-05-19', 96, 26, 27, 4, 1),
(117, 'Eligendi.', '328966.00', 'Qui enim quam et fuga non praesentium sint. Est ut voluptas voluptatem et dolor.', 32, '2017-10-27', 139, 15, 55, 7, 2),
(118, 'Et.', '73840.00', 'Dolores maxime nobis consequatur beatae est voluptatem.', 50, '2017-03-23', 81, 3, 19, 6, 2),
(119, 'Maiores.', '973750.00', 'Molestiae nisi enim sed est aut magni. Ipsa ea veniam culpa voluptas.', 32, '2017-05-05', 81, 13, 30, 1, 3),
(120, 'Dolor.', '60470.00', 'Voluptatum quis quos ab quia sit error tenetur.', 34, '2017-11-19', 270, 5, 55, 8, 3),
(121, 'Alias rem.', '17308.00', 'Consequuntur quisquam et et facilis.', 10, '2017-04-08', 119, 27, 93, 1, 3),
(122, 'Nobis.', '631387.00', 'Dolores in placeat quos unde eaque illum. Quia numquam quo porro aliquam harum quo.', 18, '2017-05-10', 55, 10, 96, 10, 3),
(123, 'Explicabo.', '17637.00', 'Et qui fugiat qui. Mollitia sed fugit est et eveniet ut dolor.', 20, '2017-11-05', 215, 1, 28, 6, 2),
(124, 'Est fugit.', '44311.00', 'Reprehenderit beatae ex sed facere libero ipsum nulla.', 17, '2017-06-28', 230, 10, 68, 1, 2),
(125, 'Incidunt.', '140230.00', 'Est aut minima fugiat sint velit ut.', 13, '2017-07-18', 151, 13, 90, 12, 2),
(126, 'Quae.', '331990.00', 'Temporibus in cumque et sed soluta sit. Saepe autem ipsum sequi maiores aspernatur.', 13, '2017-11-16', 163, 15, 73, 5, 3),
(127, 'Sunt.', '30290.00', 'Ullam error dignissimos voluptatum quam.', 28, '2017-09-25', 173, 24, 91, 1, 1),
(128, 'Ut.', '41822.00', 'Fugiat enim voluptas ut. Natus quia aliquid voluptas et placeat vel deserunt.', 38, '2017-08-15', 66, 26, 45, 5, 3),
(129, 'Ut velit.', '57049.00', 'Consequuntur recusandae repudiandae qui nihil.', 48, '2017-02-19', 77, 5, 93, 1, 1),
(130, 'Dolorem.', '838599.00', 'Sed consequatur ad odit ipsum. Necessitatibus quos non et itaque quidem.', 30, '2017-10-28', 298, 21, 2, 10, 1),
(131, 'Cumque.', '527205.00', 'Maxime vitae cumque qui sequi quas quae dolor eos.', 33, '2017-02-22', 82, 6, 72, 6, 3),
(132, 'Et.', '432110.00', 'Vero quo voluptatem et et. Tenetur laborum excepturi aut voluptatibus.', 48, '2018-01-11', 254, 9, 26, 10, 1),
(133, 'Beatae.', '422363.00', 'Cupiditate minima eligendi aliquid ut at. Iste voluptas nisi id quis accusantium.', 30, '2017-02-24', 249, 22, 66, 11, 1),
(134, 'Unde.', '85788.00', 'Repellat dolor officia nostrum doloribus. Qui quidem culpa illum suscipit culpa.', 37, '2018-01-08', 182, 18, 8, 8, 1),
(135, 'Ut error.', '838731.00', 'Dolores ut aut quis ut a.', 23, '2017-11-09', 92, 1, 8, 5, 3),
(136, 'Vitae.', '373398.00', 'Libero vero voluptatum cupiditate sint minima in.', 47, '2017-11-24', 94, 16, 60, 6, 1),
(137, 'Magni.', '398713.00', 'Incidunt dolorem soluta aut ea voluptas ut non.', 28, '2017-02-26', 40, 22, 60, 7, 2),
(138, 'Et unde.', '496258.00', 'Non qui eum veritatis blanditiis. Esse ab autem aut. Quam totam sunt ipsum nemo aspernatur.', 18, '2018-02-11', 241, 25, 46, 1, 1),
(139, 'Ut vitae.', '616549.00', 'Accusamus est rerum odit est. Voluptatem facere perferendis eveniet animi qui quia.', 41, '2017-02-15', 194, 20, 9, 9, 2),
(140, 'Aliquam.', '865427.00', 'Et aspernatur et quisquam aut est quia iste. Provident nobis ut ex maxime ipsa laudantium esse ut.', 25, '2017-08-20', 171, 5, 29, 12, 2),
(141, 'Nulla qui.', '399812.00', 'Deserunt ipsam neque nemo quo et et.', 26, '2017-03-09', 216, 10, 34, 8, 2),
(142, 'Dicta est.', '58551.00', 'Velit maxime aut reprehenderit nemo tempore voluptates.', 16, '2017-12-06', 155, 28, 37, 3, 3),
(143, 'Sequi.', '237145.00', 'Ipsa praesentium dolor eos illum ut et commodi. Et neque dolor ut distinctio.', 10, '2017-12-18', 276, 1, 26, 5, 2),
(144, 'Deserunt.', '67222.00', 'Odit animi quod sed rerum minima sed iure aut. Porro est a perspiciatis.', 43, '2017-06-28', 62, 14, 32, 8, 3),
(145, 'Sint et.', '64591.00', 'Ea qui quasi ratione voluptate.', 11, '2017-09-07', 145, 23, 69, 11, 3),
(146, 'Odit aut.', '395107.00', 'Eligendi possimus aliquid molestiae laborum.', 18, '2017-08-27', 88, 19, 19, 12, 2),
(147, 'Numquam.', '5510.00', 'Et in tempora ea facilis at doloremque voluptatum.', 14, '2018-02-01', 139, 20, 71, 7, 2),
(148, 'Magni.', '576582.00', 'Earum voluptas sed perferendis in.', 47, '2017-12-17', 259, 6, 14, 4, 1),
(149, 'Ut magni.', '625350.00', 'Odit impedit consectetur pariatur architecto qui saepe optio.', 35, '2017-12-19', 112, 2, 48, 5, 1),
(150, 'Tempora.', '73457.00', 'Et molestiae magnam laudantium odit optio.', 41, '2017-03-19', 121, 17, 39, 1, 3),
(151, 'Error ut.', '133173.00', 'Nihil quia et et voluptas. Hic sequi illo et et.', 44, '2017-05-28', 145, 6, 33, 2, 1),
(152, 'Autem.', '36674.00', 'Tempore sint necessitatibus minus laboriosam voluptatem.', 18, '2017-11-26', 189, 22, 75, 8, 2),
(153, 'At aut et.', '128520.00', 'Omnis ipsa repellat et in. Vitae sit quia adipisci commodi et.', 15, '2017-11-07', 67, 20, 20, 6, 2),
(154, 'Quo et.', '362324.00', 'Vel nesciunt ab asperiores numquam vel assumenda nihil.', 33, '2017-05-10', 285, 10, 93, 11, 1),
(155, 'Ut enim.', '208414.00', 'Dolor qui illo ut atque error et. Corrupti atque alias eos ullam.', 27, '2017-02-23', 207, 1, 80, 9, 1),
(156, 'Eius aut.', '528360.00', 'Nulla non adipisci laudantium omnis ex harum iure.', 28, '2017-04-19', 74, 28, 20, 7, 1),
(157, 'Omnis.', '97667.00', 'Iure tempore porro vero voluptatibus assumenda cumque nihil.', 26, '2017-04-02', 121, 17, 75, 7, 1),
(158, 'Dolor nam.', '80007.00', 'Nemo vel id dolores repudiandae. Adipisci ea et voluptates velit velit.', 39, '2017-12-07', 139, 12, 19, 4, 3),
(159, 'Porro.', '78457.00', 'Sunt itaque alias fugiat et possimus voluptatem. Ullam velit enim commodi et dicta odit.', 45, '2017-07-27', 10, 24, 18, 2, 1),
(160, 'Quas.', '8473.00', 'Magnam voluptates voluptas rerum esse dolor et.', 26, '2017-11-28', 214, 26, 8, 7, 1),
(161, 'Nulla.', '42480.00', 'Voluptatem tempora et dolor similique. Ut ut ea aperiam sed.', 28, '2017-08-26', 249, 17, 95, 3, 1),
(162, 'Iusto.', '72610.00', 'Numquam quo et suscipit et voluptas. Exercitationem vel omnis expedita quis soluta dolorem.', 27, '2017-11-11', 167, 21, 63, 8, 2),
(163, 'Enim.', '87891.00', 'Maxime esse autem esse nihil qui at.', 37, '2017-02-23', 43, 9, 57, 10, 3),
(164, 'Eum.', '64514.00', 'Sed et minima et sint dolorem quae in quis. At veniam et quia sed sequi omnis.', 21, '2018-01-04', 88, 10, 59, 7, 3),
(165, 'Ab qui.', '616589.00', 'Dolorum totam ut eligendi in architecto asperiores et.', 27, '2017-09-26', 281, 26, 6, 5, 2),
(166, 'Optio.', '69902.00', 'Quia odit et veritatis est.', 34, '2017-09-21', 232, 12, 80, 12, 1),
(167, 'Autem.', '153231.00', 'Aut modi qui ratione fugit minima.', 48, '2017-10-02', 130, 1, 34, 12, 1),
(168, 'Dolores.', '94239.00', 'Enim et ullam libero dignissimos. Eos et qui et illum.', 35, '2017-05-21', 19, 19, 1, 10, 1),
(169, 'Aliquid.', '68968.00', 'Molestias quibusdam soluta repellat possimus ut sed occaecati.', 48, '2017-11-11', 189, 19, 48, 3, 1),
(170, 'Laborum.', '318270.00', 'Necessitatibus delectus eius veniam tenetur similique ipsam.', 20, '2017-03-29', 112, 6, 52, 10, 1),
(171, 'Quas.', '88613.00', 'Id omnis harum modi voluptatem. Aspernatur fuga porro eaque pariatur labore unde doloremque.', 49, '2017-10-20', 107, 20, 28, 3, 1),
(172, 'Non.', '27867.00', 'Sint in ut soluta doloremque. Nobis soluta sint aut.', 23, '2017-12-13', 225, 21, 5, 1, 3),
(173, 'Placeat.', '583015.00', 'Unde consequuntur reprehenderit corporis aut nam molestiae nihil.', 37, '2017-09-05', 61, 19, 70, 8, 3),
(174, 'Et vel.', '456570.00', 'Aut debitis officia porro et ut sit adipisci. Nulla modi corrupti et est.', 13, '2017-03-22', 73, 22, 37, 5, 3),
(175, 'Dolore.', '300906.00', 'Ex incidunt est necessitatibus possimus quia perspiciatis voluptas.', 39, '2017-05-29', 223, 1, 88, 9, 2),
(176, 'Eum.', '14973.00', 'Odio nisi corrupti vitae aliquid.', 36, '2017-08-14', 296, 1, 36, 2, 3),
(177, 'Est.', '31976.00', 'Eveniet iste distinctio autem dignissimos dolorum voluptatem.', 32, '2017-11-18', 191, 10, 62, 2, 2),
(178, 'Unde.', '105179.00', 'Facere error ea nihil praesentium ut. Tempora porro ipsum et quo error.', 45, '2017-11-08', 233, 4, 7, 4, 3),
(179, 'A fuga.', '24125.00', 'Officia cum aut blanditiis numquam. Officia aut iusto id voluptatem.', 42, '2017-07-08', 297, 26, 92, 3, 2),
(180, 'Atque.', '662881.00', 'Fuga error sit ut. Et ab fugit sunt optio consectetur voluptate dolores cum.', 48, '2017-10-31', 152, 24, 4, 9, 2),
(181, 'Sed ipsa.', '911297.00', 'Illo voluptate quod qui nesciunt libero voluptatem eos id.', 37, '2017-05-03', 213, 10, 75, 6, 1),
(182, 'Eum qui.', '370448.00', 'Molestiae qui ducimus doloremque eveniet. Optio ut ducimus numquam.', 32, '2017-11-10', 46, 6, 15, 7, 3),
(183, 'Aut.', '817596.00', 'Temporibus possimus in deleniti atque. Porro voluptatem placeat laborum.', 15, '2017-03-04', 237, 21, 95, 8, 3),
(184, 'Possimus.', '814137.00', 'Est rerum nihil dolorem asperiores soluta.', 29, '2018-02-13', 167, 17, 31, 9, 1),
(185, 'Qui.', '51320.00', 'Facilis ullam officiis praesentium.', 10, '2017-07-21', 113, 4, 66, 7, 3),
(186, 'Iusto et.', '46570.00', 'Deleniti quam sit nihil. Numquam voluptas eveniet ipsa ipsam nobis provident.', 43, '2018-01-18', 123, 16, 85, 12, 3),
(187, 'Nam unde.', '150016.00', 'Magni dolores voluptas iste molestias esse blanditiis qui illo.', 37, '2017-04-18', 244, 23, 31, 1, 1),
(188, 'Occaecati.', '659829.00', 'Accusantium dolore nostrum numquam. Molestiae odit ipsam doloremque porro in.', 45, '2017-10-28', 223, 2, 33, 9, 1),
(189, 'Dolore.', '36871.00', 'Minima quos officiis deleniti. Iste ad nihil est voluptatem et beatae.', 38, '2018-01-17', 278, 18, 96, 6, 2),
(190, 'Ex.', '93280.00', 'Modi rerum sed quo est nihil. Consectetur soluta sequi omnis eligendi quibusdam.', 25, '2017-07-10', 254, 21, 40, 8, 2),
(191, 'Sequi.', '889047.00', 'Temporibus ad beatae tenetur libero nisi ipsum.', 18, '2017-10-12', 108, 19, 84, 4, 2),
(192, 'Autem eum.', '130449.00', 'Sit ullam necessitatibus officiis iste sunt natus et.', 34, '2017-08-12', 266, 7, 60, 9, 3),
(193, 'Numquam.', '908646.00', 'Quam enim eligendi fugit non similique.', 32, '2017-06-03', 56, 5, 22, 7, 2),
(194, 'Sit odio.', '64667.00', 'Optio ad error officia. Enim voluptas rerum blanditiis sed culpa commodi laudantium.', 12, '2017-08-28', 296, 11, 9, 3, 2),
(195, 'Iste vero.', '309857.00', 'Ipsum non perferendis sint alias omnis aut alias.', 27, '2017-03-03', 289, 24, 86, 8, 2),
(196, 'Dolor.', '35215.00', 'Rerum sunt aspernatur vel aut. Doloribus sapiente molestiae officiis et ut dicta consequatur.', 41, '2017-02-27', 165, 5, 80, 11, 3),
(197, 'Deleniti.', '749287.00', 'Voluptas expedita repudiandae ex soluta natus.', 50, '2017-02-25', 192, 24, 40, 9, 3),
(198, 'Aliquam.', '766209.00', 'Ullam qui natus laborum error exercitationem suscipit aliquam.', 26, '2017-05-12', 58, 8, 84, 5, 3),
(199, 'Qui.', '153246.00', 'Animi nobis a sequi fuga occaecati. Atque rerum dolores enim cupiditate.', 43, '2017-08-23', 11, 25, 35, 2, 2),
(200, 'Eos enim.', '816400.00', 'Delectus ad omnis saepe accusantium culpa. Voluptatem ut sed possimus rem aut.', 46, '2017-06-13', 67, 1, 52, 9, 1);

-- --------------------------------------------------------

--
-- Table structure for table `book_author`
--

CREATE TABLE `book_author` (
  `BookId` int(11) NOT NULL DEFAULT '0',
  `AuthorId` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `book_author`
--

INSERT INTO `book_author` (`BookId`, `AuthorId`) VALUES
(2, 172),
(3, 10),
(3, 22),
(3, 195),
(4, 36),
(4, 48),
(7, 20),
(9, 96),
(9, 118),
(10, 44),
(12, 114),
(12, 167),
(12, 191),
(13, 2),
(13, 37),
(13, 88),
(14, 93),
(14, 171),
(15, 99),
(15, 143),
(16, 30),
(17, 36),
(19, 36),
(19, 119),
(20, 141),
(21, 66),
(22, 95),
(22, 147),
(22, 148),
(23, 60),
(23, 99),
(23, 109),
(24, 22),
(24, 48),
(24, 61),
(24, 63),
(24, 86),
(24, 120),
(25, 15),
(25, 69),
(25, 109),
(26, 52),
(26, 139),
(27, 31),
(27, 39),
(27, 77),
(28, 53),
(28, 193),
(30, 14),
(31, 174),
(32, 5),
(33, 137),
(34, 170),
(35, 8),
(36, 97),
(36, 151),
(37, 121),
(39, 7),
(39, 148),
(40, 55),
(41, 160),
(43, 48),
(43, 160),
(45, 139),
(45, 166),
(45, 178),
(46, 128),
(47, 76),
(47, 135),
(48, 87),
(48, 127),
(49, 144),
(50, 11),
(50, 27),
(52, 30),
(52, 46),
(52, 158),
(54, 30),
(54, 198),
(55, 31),
(55, 64),
(56, 17),
(56, 79),
(56, 163),
(58, 194),
(59, 54),
(59, 120),
(59, 146),
(59, 196),
(60, 48),
(60, 100),
(61, 15),
(61, 73),
(61, 86),
(62, 109),
(63, 173),
(63, 184),
(64, 26),
(64, 28),
(65, 2),
(65, 40),
(65, 153),
(65, 194),
(66, 60),
(67, 12),
(68, 138),
(69, 33),
(69, 123),
(70, 168),
(71, 11),
(71, 51),
(72, 177),
(74, 169),
(75, 31),
(76, 65),
(76, 84),
(77, 127),
(79, 65),
(79, 82),
(79, 176),
(80, 59),
(80, 187),
(81, 46),
(83, 191),
(84, 11),
(84, 101),
(84, 125),
(86, 11),
(88, 21),
(88, 116),
(89, 45),
(89, 176),
(90, 96),
(90, 129),
(90, 156),
(91, 12),
(91, 38),
(91, 165),
(91, 189),
(93, 194),
(94, 60),
(94, 97),
(95, 152),
(96, 197),
(97, 15),
(97, 60),
(97, 160),
(98, 98),
(98, 146),
(99, 43),
(99, 69),
(100, 61),
(100, 62),
(101, 24),
(101, 142),
(101, 191),
(103, 43),
(103, 100),
(103, 168),
(105, 61),
(105, 71),
(106, 47),
(106, 178),
(107, 73),
(107, 117),
(107, 180),
(108, 59),
(108, 107),
(108, 175),
(109, 91),
(109, 120),
(109, 168),
(111, 134),
(111, 148),
(111, 160),
(112, 75),
(112, 90),
(113, 82),
(113, 168),
(114, 21),
(114, 38),
(114, 61),
(114, 100),
(115, 151),
(118, 22),
(118, 56),
(118, 151),
(119, 174),
(120, 96),
(120, 104),
(120, 200),
(121, 3),
(121, 67),
(121, 154),
(124, 139),
(126, 90),
(127, 62),
(128, 194),
(128, 198),
(129, 35),
(129, 198),
(131, 102),
(131, 140),
(131, 166),
(132, 57),
(132, 140),
(133, 158),
(134, 19),
(134, 91),
(134, 93),
(135, 3),
(135, 59),
(137, 117),
(140, 2),
(140, 79),
(140, 136),
(140, 198),
(141, 74),
(142, 122),
(143, 62),
(144, 98),
(144, 184),
(145, 56),
(146, 41),
(147, 62),
(149, 11),
(149, 74),
(150, 40),
(150, 67),
(151, 162),
(152, 6),
(152, 9),
(152, 20),
(152, 73),
(154, 18),
(154, 71),
(154, 111),
(155, 98),
(156, 91),
(156, 110),
(156, 121),
(161, 95),
(161, 144),
(162, 46),
(162, 101),
(163, 178),
(164, 133),
(165, 196),
(166, 81),
(168, 188),
(169, 44),
(170, 146),
(170, 199),
(171, 52),
(171, 59),
(171, 106),
(171, 123),
(173, 95),
(174, 24),
(174, 72),
(174, 104),
(174, 161),
(175, 138),
(177, 76),
(178, 3),
(178, 68),
(179, 59),
(179, 93),
(179, 113),
(180, 16),
(180, 34),
(180, 168),
(180, 184),
(181, 20),
(182, 14),
(182, 48),
(182, 142),
(183, 27),
(185, 126),
(186, 6),
(186, 66),
(186, 107),
(187, 24),
(187, 57),
(187, 62),
(187, 120),
(189, 11),
(189, 176),
(190, 93),
(191, 165),
(192, 181),
(193, 55),
(193, 149),
(197, 2),
(197, 84),
(197, 111),
(198, 40),
(198, 84),
(198, 95),
(200, 158);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `CategoryId` int(11) NOT NULL,
  `CategoryNames` varchar(40) NOT NULL,
  `CategoryDescription` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`CategoryId`, `CategoryNames`, `CategoryDescription`) VALUES
(1, 'Sách Tiếng Anh', 'Cupiditate similique cupiditate dolor minus id at ipsum. Ad neque omnis nihil molestiae.'),
(2, 'Sách ăn học', 'Impedit soluta alias ipsam ea. Iure delectus repudiandae rerum animi ipsum. Accusantium facilis cupiditate eaque totam. Alias quasi ullam repellat ea.'),
(3, 'Sách kinh tế', 'Repudiandae quisquam at exercitationem velit sequi ad aliquid. Quo alias saepe qui necessitatibus magnam natus sunt. Debitis culpa omnis suscipit doloribus tempora eum.'),
(4, 'Sách Văn Học', 'Voluptas deleniti iure cum iusto doloremque. Velit assumenda quia tempore suscipit voluptas. Accusamus omnis qui adipisci vel unde voluptas enim. Enim quam totam et nam quia corrupti.'),
(5, 'Sách thiếu nhi', 'Facilis impedit voluptatem dolor excepturi hic. Commodi dolor et dolor neque doloremque praesentium. Et recusandae recusandae consequatur ducimus. Nesciunt sunt voluptatem officiis aliquid.'),
(6, 'Sách kỹ năng - Sống đẹp', 'Aspernatur delectus porro et nulla. Et quisquam temporibus quae rem. Molestiae sit dicta ut nobis.'),
(7, 'Sách Bà mẹ - Em bé', 'Voluptatum fuga perspiciatis autem quas et. Repudiandae iste ut eum minima nisi consectetur quis dolores. Itaque qui quia laborum dignissimos aut. Eaque ipsam consequatur dolorem dolores nulla.'),
(8, 'Sách Tham Khảo', 'Qui id a suscipit delectus accusantium qui. Harum ipsam officiis autem sit fuga aperiam iusto. Omnis sint qui quasi ipsa.'),
(9, 'Sách Học Ngoại Ngữ', 'Molestiae et velit debitis libero quisquam. Quas iste ipsam ipsam praesentium id doloremque. Sint earum iste id ex atque officia rerum iure. Nam excepturi sapiente consectetur repudiandae tenetur ex.'),
(10, 'Từ Điển', 'Rem consectetur praesentium eaque a. At ut amet ea illo aliquid. Quos ea animi minus recusandae dicta culpa. Sunt nesciunt aut eos saepe. Rerum debitis ab commodi enim.'),
(11, 'Truyện Tranh, Manga, Comic', 'Qui est cupiditate eos voluptatem libero omnis qui. Aliquid placeat porro ipsam asperiores ab maxime aliquid. Velit et velit repudiandae velit. Itaque et perferendis dolorem vero maxime.'),
(12, 'Giáo Trình Đại Học - Cao Đẳng', 'Suscipit architecto aut ad quia qui tenetur voluptatem. Est sunt dolores magni autem. Et ea sapiente et consectetur odio at est.'),
(13, 'Sách Kiến Thức Tổng Hợp', 'Odit architecto et mollitia voluptatem est ex. Natus autem sit optio. Omnis dolores accusamus nesciunt fugiat temporibus quae. Harum excepturi eveniet est rerum rerum fugiat.'),
(14, 'Sách Lịch sử', 'Dignissimos earum deserunt praesentium consequatur earum. Beatae non et quis ea occaecati qui excepturi autem. Pariatur dicta aliquid vel. Quia nulla provident sed quia alias ut molestiae qui.'),
(15, 'Sách Khoa Học - Kỹ Thuật', 'Accusantium sit pariatur consequatur velit laudantium. Esse animi qui iure ut. Quibusdam mollitia tempore ratione vel vel enim non dolore.'),
(16, 'Điện Ảnh - Nhạc - Họa', 'Dicta aut cum beatae non sint magni est. Consequatur sint quas unde in. Pariatur quod aut repudiandae et.'),
(17, 'Sách Tôn Giáo - Tâm Linh', 'Ea necessitatibus laborum vel illo enim. Eveniet cum et harum laboriosam ducimus modi. Optio eum incidunt qui sint. Deserunt quod eligendi voluptas.'),
(18, 'Sách Văn Hoá - Du Lịch', 'Nemo quisquam cupiditate natus odit est unde voluptatem. Minima sapiente laborum qui ut ipsum.'),
(19, 'Sách Chính Trị', 'Officia nesciunt sint accusantium dolores soluta laboriosam blanditiis. Ea vero quas et laborum enim tenetur quaerat.'),
(20, 'Sách Pháp Lý', 'Provident cumque asperiores cumque alias vel et quis. Sed officiis eaque accusamus facere asperiores sunt. Quod quis quia sed delectus eaque.'),
(21, 'Sách Nông Nghiệp', 'Fuga veritatis nulla dolor omnis. Mollitia voluptatem temporibus aut. Sunt asperiores et maxime modi repudiandae sint sunt. Praesentium accusantium corporis laudantium id quia.'),
(22, 'Sách Lâm Nghiệp', 'Labore ut est ipsum aspernatur. Maiores eligendi delectus nostrum quisquam. Quo minima soluta maiores ut. Autem ut qui a est magnam.'),
(23, 'Sách Ngư Nghiệp', 'Aliquam soluta sequi sit id asperiores qui ea voluptatem. Et pariatur quo et doloremque enim nulla quis consequatur. Nulla at neque velit omnis quis quae.'),
(24, 'Sách Công Nghệ Thông Tin', 'Possimus eos nisi consequuntur laudantium corporis qui. Quas et non consequatur sequi. Harum sequi similique aliquid iste. Ut dolorum et eveniet sapiente et architecto.'),
(25, 'Sách Y Học', 'Enim fugiat nesciunt mollitia quis eaque. Omnis similique autem blanditiis fugit architecto id. Ipsam nisi iusto dolorem praesentium nemo. Voluptatem ut eos est est incidunt.'),
(26, 'Tạp Chí', 'Dolorem nihil non vero odio et natus. Quasi et ut nisi aliquam nihil ratione in eos. Et architecto dolor dolor ipsam alias. Tenetur mollitia reiciendis id vero quae.'),
(27, 'Sách Tâm lý - Giới tính', 'Eaque accusamus maiores similique recusandae. Eum blanditiis voluptates et explicabo incidunt nulla. Voluptatem animi quis doloribus rem enim voluptate.'),
(28, 'Sách Thường Thức - Đời Sống', 'Consectetur natus itaque veniam quam sed qui aperiam. Numquam et labore est amet. Assumenda eaque eum quia debitis et molestias.');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `FeedBackId` int(12) NOT NULL,
  `FeedBackTitle` varchar(100) NOT NULL,
  `FeedBackDate` datetime NOT NULL,
  `FeedBackContent` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`FeedBackId`, `FeedBackTitle`, `FeedBackDate`, `FeedBackContent`) VALUES
(1, 'Distinctio repellendus blanditiis possimus.', '2017-04-25 03:26:49', 'Molestiae laborum eveniet id doloremque. Aperiam numquam aut qui cum. Eos quo dicta mollitia atque illo labore impedit.'),
(2, 'Ex debitis quam unde dolorum labore.', '2017-09-21 20:39:46', 'Optio blanditiis voluptatum et eaque possimus. Fugit aut cum unde ratione dolorum. Cupiditate sed ut quo cum magnam.'),
(3, 'Amet omnis illum libero.', '2017-12-30 06:59:23', 'Illo dolores sapiente reiciendis sit non et cumque doloremque. Dolore corrupti aliquid et eos et commodi. Velit enim eos et sint modi itaque omnis.'),
(4, 'Saepe iure voluptas ratione.', '2017-08-14 00:48:20', 'Voluptatum molestias laboriosam esse eius. Facere cum velit corporis ut. Voluptatum non et esse maiores doloribus dolorem. Aut eum voluptatibus cum temporibus.'),
(5, 'In minus numquam ut temporibus est sequi.', '2017-07-14 10:43:10', 'Voluptatibus magni ut asperiores. Alias veritatis et quasi quia.'),
(6, 'Dolorem sit repudiandae nesciunt.', '2017-04-16 06:30:42', 'Dicta itaque cumque ratione quam. Eaque alias quis asperiores amet. Reprehenderit rem ut ea et voluptatem totam dolore.'),
(7, 'Voluptatem perferendis praesentium dignissimos ea beatae et voluptatibus.', '2017-10-20 00:29:18', 'Magnam libero qui consectetur consequuntur ea. Quibusdam nulla inventore quo suscipit qui dolorem similique. Accusamus perferendis itaque sunt voluptate ipsa.'),
(8, 'Nihil dignissimos tenetur esse in suscipit.', '2017-03-31 23:55:34', 'Velit itaque odit delectus. Distinctio odit aut eos perferendis sit architecto. Quas tempore dolores voluptate ab voluptatum dolores similique. At et soluta totam quam ab excepturi saepe ipsa.'),
(9, 'Omnis nesciunt et provident et.', '2017-07-26 01:29:37', 'Sunt esse temporibus qui labore. Fuga similique nesciunt dolor voluptatem vel impedit ut. Magni ipsum voluptates non dolores at voluptate.'),
(10, 'Et quibusdam asperiores est placeat dignissimos.', '2017-04-10 01:30:43', 'Quasi quis quo et ab. Autem eos culpa et qui amet aut asperiores. Porro dolorem rerum cumque dicta sunt nihil. Debitis ut expedita sequi.'),
(11, 'Dolorum eveniet voluptas et libero corrupti ut ducimus.', '2018-01-28 15:07:15', 'Ut totam beatae fugiat. Autem similique esse quibusdam repellat laborum.'),
(12, 'Vel earum reprehenderit nesciunt.', '2017-06-06 00:48:36', 'Vel optio harum sed ipsum qui nulla. Mollitia ut quidem esse asperiores blanditiis. Sed corporis quidem hic illo facilis sint saepe. Nihil omnis qui inventore neque ea.'),
(13, 'Aspernatur totam quo et perferendis est libero.', '2017-11-25 17:31:31', 'Neque dignissimos velit in aut quisquam. Sit totam dolorem dolorum odit quia inventore ex. Dolorem velit ut sit quia minima. Labore et dignissimos at accusantium enim. Odit quasi temporibus ea est.'),
(14, 'Laboriosam consequatur quia ut et repudiandae porro libero omnis.', '2017-02-24 10:02:34', 'A aut est expedita. Ex commodi quam ex laboriosam dolore asperiores mollitia porro. Ea cum molestias aspernatur. Error eos tempore aut voluptatem asperiores. Illum aut inventore et corporis aut.'),
(15, 'Eius est corporis neque quia maiores.', '2017-10-21 19:26:11', 'Repellendus ad vel qui. Distinctio doloribus sequi sit et qui vitae sapiente. Sint dolores reprehenderit error excepturi.'),
(16, 'Perferendis exercitationem iusto accusamus sapiente.', '2017-12-07 07:58:07', 'Doloribus quibusdam incidunt eum itaque. Nisi suscipit ex autem facilis ea. Dolor impedit consequatur nisi.'),
(17, 'Quae molestiae eveniet sit accusamus.', '2017-12-30 10:06:25', 'Vel vel qui non deleniti. Dolorum expedita excepturi possimus autem cumque sed alias dicta. Assumenda magnam inventore iure blanditiis totam enim soluta enim. Quia fuga voluptas ut ipsum.'),
(18, 'Et sint ut nam voluptatum nihil.', '2017-08-02 06:48:15', 'Placeat molestias sapiente sit quam aut quis sed. Laboriosam accusantium aut facere doloremque. Voluptatem cum voluptatem ducimus asperiores suscipit.'),
(19, 'Est facilis quaerat vel quia culpa id.', '2017-05-15 01:11:24', 'Repellat id sit minus quo ut. Eum excepturi voluptatem et qui recusandae. Provident qui labore quos culpa. Ut ullam ut quis inventore.'),
(20, 'Eum nihil sit molestiae enim qui aspernatur.', '2017-11-13 22:37:24', 'Impedit sed perferendis quasi nesciunt qui natus dolorem. Placeat omnis facilis debitis voluptate. Eos sunt id eaque aliquam qui enim similique.'),
(21, 'Impedit qui quia consequatur minus omnis eveniet.', '2017-07-27 10:35:54', 'Commodi assumenda dolore eum sapiente. Pariatur corrupti veniam magni. Harum id sequi blanditiis cumque esse alias sapiente deserunt.'),
(22, 'Eum ipsa at maiores fugiat.', '2017-04-06 22:18:27', 'Sed dolorem sequi sapiente voluptatem dignissimos. Et vitae tempora odit dolorem perferendis. Illum aut voluptatem iusto dicta ut nihil. Corporis nemo sit veniam quas molestias expedita.'),
(23, 'Aut ratione ut molestiae minus eveniet ea eveniet.', '2017-10-10 22:19:19', 'Quis ea est dolorem quos. Dolore ut eum suscipit quaerat voluptatem labore vitae. Voluptatem ad at architecto.'),
(24, 'Debitis est facere dolorem dolorem aliquid ut ipsum.', '2017-07-18 20:25:31', 'Aut aut non aut nihil ab consequuntur veritatis perspiciatis. Quos ratione nihil voluptas voluptatem sit. Fugiat at iste voluptates quo tempora fuga ut molestiae.'),
(25, 'Quisquam autem repudiandae aspernatur.', '2017-06-25 06:13:52', 'Ut deleniti impedit cumque dolorem sequi nam qui illo. Ut reprehenderit earum accusamus numquam commodi sit et. Praesentium velit est voluptatibus. Officia nesciunt et eveniet.'),
(26, 'Occaecati vero aut dolores.', '2017-04-08 11:26:41', 'Totam voluptatem neque a. Cupiditate aperiam impedit iste tenetur. Nihil magni libero aut temporibus et.'),
(27, 'Omnis ipsam ut deleniti suscipit autem maiores enim.', '2017-10-26 14:04:06', 'At impedit consequatur sequi sit accusantium. Distinctio porro sed et blanditiis praesentium incidunt facere. Et sunt non vel.'),
(28, 'Doloribus repellendus quia consequatur et beatae reprehenderit.', '2018-02-09 13:53:35', 'Ut quibusdam perferendis earum harum assumenda. Natus sed reiciendis illo eum. Voluptatum reiciendis explicabo quia sint. Itaque ut beatae aut dolorem.'),
(29, 'Et ut distinctio et tempore doloribus praesentium saepe.', '2017-09-16 04:03:10', 'Iusto vero molestiae ut atque explicabo praesentium sit. Vel aut eum blanditiis quia aliquid modi impedit. Aut unde sint velit aut error numquam.'),
(30, 'Officiis nulla earum est.', '2017-04-27 08:23:41', 'Dignissimos quia consequuntur qui minima. Consectetur quis amet cum et architecto hic iste voluptates. Et molestias porro vel maiores adipisci aliquam suscipit. Ratione earum commodi et aut.'),
(31, 'Atque atque reprehenderit autem deleniti assumenda numquam nulla.', '2017-05-08 20:46:49', 'Vitae deleniti quia excepturi fugiat. Vel nihil eos veniam magni. Eum et id nemo odio dolorem sit. Veritatis error qui nisi et alias. Repellendus enim dolor qui quaerat quis vel et nesciunt.'),
(32, 'Ab similique totam voluptas itaque et.', '2017-05-27 14:48:49', 'Maxime aut id in optio omnis. Neque ipsum consequatur qui repudiandae vero omnis sed. Inventore nemo voluptatibus natus dolor amet.'),
(33, 'Iure possimus nostrum earum esse veniam velit voluptatem.', '2017-07-05 15:50:12', 'Aliquid nemo cupiditate harum voluptas sit repudiandae et. Sint distinctio ut quam ut modi quia. Adipisci fuga at officiis amet aut dolores molestiae.'),
(34, 'Corrupti laboriosam maxime nulla.', '2017-03-25 01:09:01', 'Officia fuga quas odit aut consequuntur aut. Atque exercitationem laudantium sed repellat necessitatibus expedita. Qui nostrum officia voluptatem neque. Maxime ut modi non ut asperiores et.'),
(35, 'Atque eligendi quis nihil voluptatum.', '2017-08-07 12:07:48', 'Quos et quos qui est impedit culpa est. Vero non blanditiis illo officia soluta iure assumenda dolor.'),
(36, 'Et et sunt voluptatem magni velit labore.', '2017-06-04 19:24:11', 'A molestias necessitatibus molestias ad. Dignissimos sapiente explicabo earum et fugit incidunt. Est voluptatem excepturi ex et voluptatem sit nihil.'),
(37, 'Assumenda hic aut ea.', '2017-08-12 14:29:50', 'Iusto accusantium fuga est enim repellendus in. Fuga in dicta et harum est. Consequatur nisi quo est ut.'),
(38, 'Ab nisi enim aspernatur non.', '2017-05-15 17:30:37', 'Dignissimos dicta tempora fuga beatae magni est dolor. Nulla veritatis est atque harum dolor incidunt. Quia debitis rerum placeat aliquam magnam ab optio ut. Unde aut qui unde.'),
(39, 'Magnam voluptates et tenetur non blanditiis id animi.', '2017-03-28 15:15:35', 'Ullam qui qui est quas id fuga et. Qui maxime cumque fugit quos aut. Consectetur error ut laboriosam ut voluptate. Ex non adipisci sint qui qui ratione tenetur et. Sit dolor quis sint.'),
(40, 'Dolorum magni voluptatem qui cum sunt.', '2017-11-12 11:09:48', 'Sint labore voluptatum ex eligendi doloremque dolor. Et sed est sapiente omnis illum quasi nisi. Corrupti consequatur quo voluptas accusantium. Nostrum veniam eum voluptatum sint.'),
(41, 'Placeat sit qui illum dolorem beatae.', '2017-03-21 11:27:15', 'Ipsum et velit et voluptatem tempora dolor aperiam sint. Odit qui eius voluptas at non blanditiis incidunt veritatis. Beatae sit aspernatur odit cumque vel voluptas.'),
(42, 'Ratione sit ex quidem aspernatur animi porro tenetur.', '2017-03-21 12:35:11', 'Dolores eos exercitationem ratione modi ut ea. Et qui qui est. In cumque omnis voluptates et.'),
(43, 'Consequatur ut magnam quae.', '2017-03-23 17:17:30', 'Soluta voluptas numquam repellendus omnis. Ut est sit suscipit consequatur autem quae veritatis quibusdam. Asperiores ex aut vel sit veniam quo.'),
(44, 'Expedita doloremque vitae nisi dolor.', '2017-11-06 04:54:14', 'Cumque omnis quaerat omnis et maxime recusandae non natus. Ullam minus maiores natus minima. Sequi quidem rem eum quia. Expedita accusamus labore alias ex enim est ducimus.'),
(45, 'Sed dolor aut temporibus voluptatem sit.', '2017-04-18 03:47:42', 'Voluptatem ipsam corporis itaque et ut veniam animi. Et sint fugiat quia consequatur. Sed laboriosam et debitis.'),
(46, 'Explicabo natus numquam laboriosam omnis.', '2017-05-23 21:58:01', 'Dolores quia non fugiat non. Ut tenetur accusamus mollitia ducimus. Porro assumenda optio maxime aut quo dolorum.'),
(47, 'Voluptatum saepe aut dolorem optio occaecati cum consequatur.', '2017-11-12 20:00:37', 'Et qui quisquam incidunt odio quidem numquam. Iusto voluptas minus et. Et fuga eos placeat nihil. Asperiores aut saepe nesciunt nulla.'),
(48, 'Incidunt consequuntur eos enim.', '2017-06-08 13:22:32', 'In dolorum iure dolor dicta. Quae corporis voluptatem ipsam rerum. Blanditiis cum commodi illum omnis rerum qui tempore. Fugit consequuntur exercitationem deleniti explicabo perferendis officiis.'),
(49, 'Minima similique qui corporis odio corporis rerum nobis.', '2017-08-20 01:11:15', 'Id modi dolorem sit. Aliquid ipsa quod qui et. Beatae amet autem sed ut impedit nam libero.'),
(50, 'Impedit laborum corrupti ullam porro accusamus eligendi.', '2017-08-27 09:16:52', 'Vero quia sunt asperiores ad magnam libero. Commodi autem minus est omnis aut illo voluptates rem. Laborum quia ea ipsa. Dolorem delectus non suscipit accusantium optio eius enim.'),
(51, 'Non porro voluptas nemo eos eum sint.', '2017-08-02 17:52:11', 'Aperiam amet at culpa ea. Ut maxime ullam error quia et rerum incidunt. Dolores sunt aut voluptatum rerum sequi eos reiciendis. Non non sint non perferendis aut harum quaerat fugiat.'),
(52, 'Sapiente et eum est rem dolorem cumque quia.', '2017-06-14 14:00:24', 'Eius iusto architecto aut perferendis. Et consequuntur corrupti placeat non. Mollitia occaecati odio non ducimus enim illum eum. Sed facilis nihil et asperiores sunt cupiditate.'),
(53, 'Et et quia ut aut.', '2017-11-05 19:04:46', 'A quo eligendi voluptas consequatur quia quibusdam esse. Minima illo sed laboriosam rerum velit. Saepe quidem ut aut odit perspiciatis nisi voluptates. Id non eos qui voluptatem nulla.'),
(54, 'Culpa ex nostrum facilis suscipit rem.', '2017-03-26 07:24:15', 'Aliquam possimus dolores accusamus at tempore ex. Omnis accusantium totam enim officiis.'),
(55, 'At saepe eum excepturi optio accusamus.', '2017-05-28 04:42:39', 'Neque laborum fugiat exercitationem maiores deserunt odio totam. Voluptate nihil ut id eos quo. Temporibus sed sed iure eius magnam enim. Nobis ex dolor ut nam ipsam.'),
(56, 'Et non temporibus voluptas vel enim qui nobis.', '2017-06-08 07:17:07', 'Et ratione dolorem quaerat dicta et sit maiores. Ipsam facilis autem dolorum dolores unde iure qui. Facere odit saepe non culpa aperiam.'),
(57, 'Id aspernatur expedita est reiciendis unde recusandae ullam.', '2018-01-20 20:54:31', 'Asperiores dolores nihil qui voluptatum. Voluptas qui tempora veniam ea soluta quaerat fugiat dolor. Ab voluptatibus doloribus quasi omnis. Doloribus sed et omnis et adipisci eos sed velit.'),
(58, 'Explicabo incidunt reiciendis quisquam cumque eos suscipit.', '2017-11-08 19:35:39', 'Quos facilis blanditiis ut voluptatum. Quia animi ut aut similique alias. Aspernatur esse delectus dolores veritatis vel. Quo deleniti dignissimos nisi sed sint.'),
(59, 'Veritatis ullam dolore tempore praesentium soluta et.', '2017-07-16 07:40:11', 'Labore sequi beatae veritatis eos. Ipsam voluptatem ea reiciendis ea cupiditate libero in. Ipsa rem et soluta et omnis. Nemo officiis voluptatem praesentium commodi minima. Amet rerum ut voluptas.'),
(60, 'Enim quas ipsam et sit blanditiis.', '2017-02-18 07:18:07', 'Sunt quo ut sit eveniet et mollitia nesciunt. Facere fugit adipisci saepe. Esse tenetur sint quo.'),
(61, 'Facere dicta corporis cum earum nostrum.', '2017-12-24 05:16:07', 'Et adipisci hic quibusdam illo eos ut. Illum beatae molestias aspernatur nihil impedit. Hic cupiditate eum eaque et suscipit est et.'),
(62, 'Officiis voluptas perferendis quod consequuntur velit dolor vitae.', '2017-09-27 02:51:21', 'Ipsa similique facilis assumenda recusandae. Velit et voluptatem animi sit. Sint ad dolorum dolores. Laudantium eum quis harum.'),
(63, 'Vel veritatis sit totam et eos accusamus qui.', '2017-12-21 09:58:26', 'Eos optio nostrum tempora sed eligendi. Placeat odio facere aut et saepe deleniti. Quibusdam corporis dolorum sequi. Et molestiae totam itaque a perspiciatis architecto accusamus.'),
(64, 'In delectus veniam enim consectetur ut.', '2017-05-12 20:07:30', 'Similique magni voluptates magni officiis. Ad voluptatem et sit commodi dolorem. Vero consequatur soluta ex qui.'),
(65, 'Cum in optio in.', '2017-05-22 11:35:19', 'Dignissimos omnis sequi blanditiis omnis non at. Enim voluptatum id cum illo.'),
(66, 'Praesentium quam dolorum maxime recusandae officiis fuga qui.', '2017-04-06 00:13:19', 'Et ut eos quo est cum. Nobis aut quae enim eos similique expedita. Dolore iusto atque aut et. Impedit consequuntur veritatis mollitia culpa.'),
(67, 'Aut dignissimos libero odio enim distinctio voluptatem.', '2018-01-02 22:39:56', 'Repudiandae sapiente possimus et voluptas qui qui occaecati. Quia libero aperiam voluptatum sunt. Fugit voluptatem sed voluptatum qui odio neque. Qui ea nam qui in iusto.'),
(68, 'Placeat similique explicabo quis assumenda dicta repellendus voluptatem.', '2017-05-29 00:18:11', 'Maiores possimus omnis reprehenderit consequatur ea itaque quibusdam. Aliquam autem et ullam dolores eaque aut deleniti sit. Delectus iusto ut qui exercitationem.'),
(69, 'Consectetur sint hic ut.', '2018-02-03 11:46:46', 'Voluptas modi quae quam aut. Repellendus rerum quos sed necessitatibus. Ex id esse nulla est sint. Omnis fuga est corporis assumenda omnis consectetur nam.'),
(70, 'Debitis ut inventore officiis.', '2017-09-16 22:42:32', 'Quia illum repudiandae nihil rerum placeat dolor voluptatem. Illum sed excepturi veniam qui. Odit cum est qui deserunt. Quaerat quos reprehenderit nam consequatur ratione.'),
(71, 'Animi amet nemo deserunt culpa laudantium.', '2017-08-16 21:19:59', 'Ipsa earum saepe placeat quia architecto vitae quia. Fuga aut ea cum et. Voluptatum ipsa asperiores eius natus.'),
(72, 'Iusto id nulla et dolorem expedita vel.', '2017-03-04 16:17:53', 'Quibusdam quo aliquid occaecati velit nisi perspiciatis dolorum. Ducimus cumque est aliquid. Qui alias quia qui in qui.'),
(73, 'Non consequatur vel rerum et minima illo quam.', '2017-07-16 00:11:10', 'Natus error praesentium magnam pariatur vitae sequi rerum quis. Est deserunt ducimus qui ut et. Quo sapiente asperiores similique.'),
(74, 'Numquam voluptate dolorem eos expedita quis quis ratione.', '2017-03-07 06:06:58', 'Soluta autem sed quis ut voluptas. Occaecati deserunt velit quas sapiente. Est explicabo dolores aut natus. Sed iusto ipsam deleniti non officiis commodi voluptatum dolores.'),
(75, 'Animi amet veniam optio quia fugiat.', '2017-12-26 03:35:14', 'Saepe quis quidem sed quo iure voluptas voluptas. Quos velit dolorem asperiores vel. Sint sed qui dolore voluptas omnis aut illum tempora.'),
(76, 'Labore commodi a minus sed nostrum maiores.', '2017-12-12 19:46:54', 'Fugit impedit corporis aliquid cum velit aut. Consectetur a consequatur dolore sapiente. Laborum sed dolores ea sed adipisci. Qui expedita fugiat magnam numquam nobis quam.'),
(77, 'Cum fugit quam quis aut fugit repudiandae impedit.', '2017-10-11 13:05:30', 'Molestiae vero voluptates praesentium necessitatibus nemo voluptatibus ex. Necessitatibus reiciendis nobis unde quia dignissimos veritatis. Quasi dolores asperiores iure dolorum.'),
(78, 'Adipisci qui quaerat sapiente sunt facilis voluptatem ea.', '2017-10-12 18:31:42', 'Vitae nisi commodi eius et ut. Nulla dolores aut voluptatem voluptate consectetur. Dolore aut officia occaecati illo et qui velit. Sit assumenda fugiat vitae enim non et id.'),
(79, 'Magnam natus inventore incidunt inventore vitae corporis maiores expedita.', '2017-11-21 15:04:05', 'Dicta hic dignissimos eius tenetur consequatur aliquid ducimus. Eum sapiente culpa similique assumenda. Pariatur minima omnis incidunt vero alias et veritatis.'),
(80, 'Perspiciatis modi consectetur quo dolor est eum voluptas.', '2017-11-04 12:43:38', 'Ipsam non molestiae exercitationem. Sit aut nihil nostrum veniam necessitatibus. Suscipit ab laborum consequuntur suscipit et. Debitis fuga voluptas deserunt id vel ea dolor.'),
(81, 'Minus quia est deserunt et voluptates culpa molestiae sint.', '2017-04-09 08:18:44', 'Praesentium odit ex neque excepturi autem esse molestias. Placeat accusantium consequatur ex deleniti laudantium.'),
(82, 'Tenetur ea quod atque dolorem.', '2017-09-25 14:57:43', 'Ducimus impedit dignissimos ut maiores distinctio beatae. Quisquam sequi qui et qui. Ea illo nisi dolorem eos sed sed ut nihil.'),
(83, 'Atque tenetur et saepe natus itaque explicabo explicabo eos.', '2017-05-15 15:39:55', 'Beatae quis adipisci enim omnis mollitia. Voluptas ab nisi quisquam qui rem minus qui error. Sint animi illo cumque voluptatem illo.'),
(84, 'Et qui quia et nemo neque qui.', '2017-04-27 22:30:17', 'Ab sed deleniti et aut suscipit totam labore. Quibusdam veritatis odit voluptas et amet. Iusto modi aut consequatur porro eveniet nemo provident.'),
(85, 'Cum quisquam laudantium rerum.', '2017-03-29 13:47:00', 'Id veniam excepturi at maiores nulla. Sint harum assumenda ullam pariatur dolore.'),
(86, 'Aperiam quia soluta rerum ullam ut et.', '2018-01-16 12:02:06', 'Facilis earum id temporibus quia blanditiis. Fugit quia alias consequuntur voluptatum. Aspernatur neque vel consequuntur.'),
(87, 'Aut animi quas ut accusamus corrupti quas.', '2017-10-16 22:54:02', 'Ipsam incidunt illum voluptatem blanditiis veniam. Eos voluptas et expedita. Qui eos at dicta occaecati sint explicabo.'),
(88, 'Iure autem ab et dolores earum.', '2017-09-13 21:33:27', 'Non voluptatem quae ut asperiores voluptates. Occaecati quod voluptas sit voluptas consectetur libero quibusdam. Odio et modi molestias voluptates maxime id ut fugit.'),
(89, 'Nisi quia expedita aperiam qui.', '2017-10-08 19:41:31', 'Eos voluptas consequatur at sed nisi maxime eum. Soluta necessitatibus doloremque sed. Voluptas aut molestias perferendis sapiente architecto. Magnam ullam ut illum voluptatem.'),
(90, 'Eius rem numquam voluptatem omnis repudiandae itaque porro.', '2017-05-18 14:38:12', 'Voluptatem eum necessitatibus ratione sapiente sit aliquam ut. Mollitia non et omnis sequi. Id omnis veritatis magni facilis. Aut est sapiente impedit illo.'),
(91, 'Perferendis ut eaque placeat sint dicta.', '2017-02-23 09:22:58', 'Maxime error aut debitis eius. Et in qui aspernatur animi. Labore exercitationem doloremque voluptate illum est officia. Qui aut inventore quia perferendis ab minus.'),
(92, 'Ipsum ut praesentium aut omnis.', '2017-07-12 03:30:52', 'Animi ut excepturi labore eum voluptates. Dolorem iusto odit dicta unde at incidunt omnis voluptas. Amet mollitia ad debitis neque qui impedit.'),
(93, 'Rerum cupiditate id sunt est eius placeat.', '2017-05-18 00:19:51', 'Nihil libero voluptatem ipsa et provident magni at illum. Consequatur suscipit sint magni ut nihil ut. Doloribus soluta saepe id commodi. Dolores repellendus et molestiae repudiandae.'),
(94, 'Vel accusantium beatae est voluptatem ullam temporibus quasi.', '2017-12-01 17:31:31', 'Labore nihil quibusdam est autem et libero dolorem ut. Vel beatae voluptatum eum ut amet dolor ex. Nihil aut consequatur iusto unde voluptatibus doloribus doloribus.'),
(95, 'Consequatur animi error quis beatae.', '2017-07-25 19:44:24', 'Et consequuntur ipsam culpa nihil cupiditate repellendus. A a ab pariatur et tempora quia temporibus. Sint minima autem natus voluptatem ratione. Velit illum quia deleniti nisi rerum odio.'),
(96, 'Deserunt corrupti repellendus repellat et voluptatibus.', '2017-03-06 06:09:24', 'Et fugiat illum dolore corrupti ea ea aut. Minima laboriosam quasi odio alias sint. A doloremque quis et excepturi. Et saepe et molestiae.'),
(97, 'Repellendus iste occaecati blanditiis soluta.', '2017-02-26 04:20:23', 'Eligendi dolorum eos modi. Sunt qui voluptas error provident at reprehenderit. Voluptate temporibus ut quia quidem. Ut modi non rem facilis libero dicta adipisci.'),
(98, 'In omnis reiciendis debitis esse qui et.', '2017-12-01 22:17:38', 'Dolor et dolorem et esse sit. Repellat asperiores est magnam id perspiciatis hic ipsa nemo.'),
(99, 'Enim laudantium molestias delectus sequi earum ab ipsum.', '2017-10-24 06:40:52', 'Quo itaque illum ea fugit sapiente provident et assumenda. Itaque ut dolores ratione rerum inventore qui rerum. Atque libero et rerum error corporis doloribus et ut.'),
(100, 'Quas non molestiae non consequuntur ipsa consequatur eum.', '2017-07-01 11:07:27', 'Esse magni qui ducimus rerum et sequi. Numquam consequatur amet aperiam aut necessitatibus. Qui culpa unde ut soluta soluta. Nobis doloribus vel rerum et.');

-- --------------------------------------------------------

--
-- Table structure for table `imgbook`
--

CREATE TABLE `imgbook` (
  `ImgBookId` int(11) NOT NULL,
  `ImgBook` varchar(300) DEFAULT NULL,
  `BookId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `imgbook`
--

INSERT INTO `imgbook` (`ImgBookId`, `ImgBook`, `BookId`) VALUES
(1, 'resources/books/13.jpg', 196),
(2, 'resources/books/10.jpg', 93),
(3, 'resources/books/17.jpg', 30),
(4, 'resources/books/18.jpg', 122),
(5, 'resources/books/5.jpg', 197),
(6, 'resources/books/1.jpg', 123),
(7, 'resources/books/6.jpg', 153),
(8, 'resources/books/17.jpg', 143),
(9, 'resources/books/13.jpg', 59),
(10, 'resources/books/3.jpg', 175),
(11, 'resources/books/17.jpg', 200),
(12, 'resources/books/11.jpg', 118),
(13, 'resources/books/7.jpg', 68),
(14, 'resources/books/7.jpg', 177),
(15, 'resources/books/7.jpg', 12),
(16, 'resources/books/12.jpg', 174),
(17, 'resources/books/11.jpg', 160),
(18, 'resources/books/10.jpg', 149),
(19, 'resources/books/8.jpg', 6),
(20, 'resources/books/4.jpg', 154),
(21, 'resources/books/8.jpg', 29),
(22, 'resources/books/7.jpg', 43),
(23, 'resources/books/5.jpg', 189),
(24, 'resources/books/16.jpg', 129),
(25, 'resources/books/5.jpg', 99),
(26, 'resources/books/18.jpg', 5),
(27, 'resources/books/20.jpg', 176),
(28, 'resources/books/10.jpg', 17),
(29, 'resources/books/16.jpg', 163),
(30, 'resources/books/14.jpg', 73),
(31, 'resources/books/12.jpg', 118),
(32, 'resources/books/20.jpg', 182),
(33, 'resources/books/6.jpg', 1),
(34, 'resources/books/8.jpg', 24),
(35, 'resources/books/17.jpg', 82),
(36, 'resources/books/6.jpg', 58),
(37, 'resources/books/16.jpg', 140),
(38, 'resources/books/17.jpg', 46),
(39, 'resources/books/17.jpg', 102),
(40, 'resources/books/17.jpg', 150),
(41, 'resources/books/10.jpg', 155),
(42, 'resources/books/2.jpg', 171),
(43, 'resources/books/3.jpg', 60),
(44, 'resources/books/15.jpg', 13),
(45, 'resources/books/7.jpg', 5),
(46, 'resources/books/20.jpg', 90),
(47, 'resources/books/14.jpg', 3),
(48, 'resources/books/20.jpg', 78),
(49, 'resources/books/9.jpg', 57),
(50, 'resources/books/14.jpg', 12),
(51, 'resources/books/19.jpg', 192),
(52, 'resources/books/9.jpg', 23),
(53, 'resources/books/12.jpg', 98),
(54, 'resources/books/15.jpg', 54),
(55, 'resources/books/17.jpg', 72),
(56, 'resources/books/9.jpg', 58),
(57, 'resources/books/6.jpg', 132),
(58, 'resources/books/15.jpg', 110),
(59, 'resources/books/2.jpg', 158),
(60, 'resources/books/7.jpg', 70),
(61, 'resources/books/19.jpg', 181),
(62, 'resources/books/6.jpg', 163),
(63, 'resources/books/6.jpg', 157),
(64, 'resources/books/11.jpg', 182),
(65, 'resources/books/13.jpg', 105),
(66, 'resources/books/20.jpg', 196),
(67, 'resources/books/4.jpg', 28),
(68, 'resources/books/6.jpg', 45),
(69, 'resources/books/14.jpg', 130),
(70, 'resources/books/3.jpg', 78),
(71, 'resources/books/11.jpg', 49),
(72, 'resources/books/16.jpg', 58),
(73, 'resources/books/2.jpg', 7),
(74, 'resources/books/6.jpg', 65),
(75, 'resources/books/1.jpg', 178),
(76, 'resources/books/10.jpg', 150),
(77, 'resources/books/18.jpg', 52),
(78, 'resources/books/11.jpg', 183),
(79, 'resources/books/20.jpg', 79),
(80, 'resources/books/18.jpg', 200),
(81, 'resources/books/5.jpg', 36),
(82, 'resources/books/4.jpg', 99),
(83, 'resources/books/5.jpg', 17),
(84, 'resources/books/3.jpg', 39),
(85, 'resources/books/8.jpg', 128),
(86, 'resources/books/8.jpg', 89),
(87, 'resources/books/17.jpg', 116),
(88, 'resources/books/15.jpg', 129),
(89, 'resources/books/15.jpg', 104),
(90, 'resources/books/1.jpg', 94),
(91, 'resources/books/12.jpg', 171),
(92, 'resources/books/14.jpg', 126),
(93, 'resources/books/6.jpg', 2),
(94, 'resources/books/12.jpg', 120),
(95, 'resources/books/5.jpg', 15),
(96, 'resources/books/18.jpg', 125),
(97, 'resources/books/6.jpg', 144),
(98, 'resources/books/18.jpg', 135),
(99, 'resources/books/9.jpg', 13),
(100, 'resources/books/10.jpg', 135);

-- --------------------------------------------------------

--
-- Table structure for table `imgnews`
--

CREATE TABLE `imgnews` (
  `ImgNewId` int(11) NOT NULL,
  `ImgNew` varchar(400) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `NewsId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language` (
  `LanguageId` int(11) NOT NULL,
  `LaguageName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`LanguageId`, `LaguageName`) VALUES
(1, 'Tiếng Trung'),
(2, 'Tiếng Anh'),
(3, 'Tiếng Hindi'),
(4, 'Tiếng Tây Ban Nha'),
(5, 'Tiếng Nga'),
(6, 'Tiếng Ả Rập'),
(7, 'Tiếng Bồ Đào Nha'),
(8, 'Tiếng Ý'),
(9, 'Tiếng Pháp'),
(10, 'Tiếng Nhật'),
(11, 'Tiếng Việt'),
(12, 'Tiếng Đức');

-- --------------------------------------------------------

--
-- Table structure for table `lend`
--

CREATE TABLE `lend` (
  `LendId` int(11) NOT NULL,
  `LendCreateDate` datetime NOT NULL,
  `LendExpDate` date DEFAULT NULL,
  `LendStatus` int(11) NOT NULL,
  `PaymentMethodId` int(11) NOT NULL,
  `Username` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lend`
--

INSERT INTO `lend` (`LendId`, `LendCreateDate`, `LendExpDate`, `LendStatus`, `PaymentMethodId`, `Username`) VALUES
(1, '2017-06-26 08:06:33', '2017-07-10', 0, 3, 'sthiel'),
(2, '2017-05-20 09:05:55', '2017-06-03', 0, 5, 'priscilla.kirlin'),
(3, '2017-12-10 08:12:06', '2017-12-24', 0, 1, 'ikovacek'),
(4, '2017-08-31 04:08:36', '2017-09-14', 0, 5, 'buddy.hudson'),
(5, '2018-02-01 07:02:42', '2018-02-15', 0, 2, 'frieda71'),
(6, '2017-12-27 09:12:33', '2018-01-10', 0, 5, 'tstracke'),
(7, '2017-08-24 10:08:03', '2017-09-07', 1, 2, 'lavon36'),
(8, '2017-09-06 07:09:31', '2017-09-20', 0, 5, 'priscilla.kirlin'),
(9, '2017-04-05 01:04:03', '2017-04-18', 0, 2, 'corene34'),
(10, '2017-10-10 03:10:46', '2017-10-24', 0, 5, 'trever73'),
(11, '2017-05-31 04:05:25', '2017-06-14', 0, 5, 'kebert'),
(12, '2017-05-30 04:05:02', '2017-06-13', 1, 5, 'neil25'),
(13, '2017-03-08 10:03:34', '2017-03-22', 0, 1, 'corene34'),
(14, '2017-10-05 04:10:10', '2017-10-19', 1, 3, 'jbuckridge'),
(15, '2017-10-12 03:10:34', '2017-10-26', 0, 1, 'adeckow'),
(16, '2017-12-07 08:12:40', '2017-12-21', 1, 2, 'bo55'),
(17, '2017-06-12 12:06:23', '2017-06-26', 1, 1, 'kole.swaniawski'),
(18, '2017-03-18 09:03:09', '2017-04-01', 1, 1, 'kasandra.goodwin'),
(19, '2017-02-19 02:02:20', '2017-03-05', 0, 2, 'alison.bashirian'),
(20, '2017-09-17 02:09:26', '2017-10-01', 1, 4, 'lockman.darien'),
(21, '2017-10-14 09:10:42', '2017-10-28', 0, 1, 'sosinski'),
(22, '2017-07-23 11:07:20', '2017-08-06', 1, 5, 'nicola.schaden'),
(23, '2018-01-13 02:01:16', '2018-01-27', 0, 2, 'misty23'),
(24, '2017-04-29 07:04:57', '2017-05-13', 0, 2, 'tess25'),
(25, '2017-03-22 02:03:06', '2017-04-05', 1, 4, 'jbuckridge'),
(26, '2017-04-04 10:04:06', '2017-04-18', 0, 4, 'kole.swaniawski'),
(27, '2017-06-12 01:06:18', '2017-06-25', 0, 1, 'lavon36'),
(28, '2017-07-08 12:07:21', '2017-07-22', 0, 1, 'lavon36'),
(29, '2017-04-07 08:04:49', '2017-04-21', 1, 2, 'rigoberto78'),
(30, '2017-08-10 11:08:35', '2017-08-24', 0, 5, 'fheaney'),
(31, '2017-03-23 10:03:13', '2017-04-06', 0, 2, 'hoppe.quentin'),
(32, '2018-01-26 10:01:54', '2018-02-09', 1, 2, 'carter.litzy'),
(33, '2017-11-26 11:11:13', '2017-12-10', 1, 2, 'xschulist'),
(34, '2017-09-28 12:09:33', '2017-10-12', 0, 4, 'june.reynolds'),
(35, '2017-10-06 12:10:33', '2017-10-20', 1, 2, 'ihudson'),
(36, '2017-03-26 02:03:19', '2017-04-09', 0, 3, 'hmertz'),
(37, '2017-09-10 04:09:32', '2017-09-24', 1, 5, 'owen.schoen'),
(38, '2017-03-20 09:03:26', '2017-04-03', 0, 1, 'lenora34'),
(39, '2017-12-30 07:12:04', '2018-01-13', 0, 4, 'emilie22'),
(40, '2017-11-08 04:11:47', '2017-11-22', 0, 1, 'emilie.jaskolski'),
(41, '2017-09-30 01:09:07', '2017-10-13', 1, 2, 'agustin16'),
(42, '2017-07-20 07:07:10', '2017-08-03', 0, 2, 'lera.veum'),
(43, '2017-08-16 07:08:24', '2017-08-30', 1, 5, 'tvonrueden'),
(44, '2018-01-06 03:01:01', '2018-01-20', 0, 2, 'bart93'),
(45, '2017-03-29 04:03:29', '2017-04-12', 1, 5, 'granville96'),
(46, '2017-12-28 10:12:34', '2018-01-11', 0, 5, 'layne89'),
(47, '2017-09-03 09:09:31', '2017-09-17', 0, 4, 'qdamore'),
(48, '2017-08-08 06:08:46', '2017-08-22', 0, 5, 'lakin.zechariah'),
(49, '2018-01-10 02:01:41', '2018-01-24', 1, 1, 'schneider.hermann'),
(50, '2017-12-27 12:12:36', '2018-01-10', 0, 1, 'walsh.breanne'),
(51, '2017-06-06 03:06:57', '2017-06-20', 1, 1, 'klockman'),
(52, '2018-02-13 12:02:56', '2018-02-27', 0, 1, 'carolanne.okon'),
(53, '2017-09-27 04:09:10', '2017-10-11', 1, 1, 'tstracke'),
(54, '2017-05-06 03:05:23', '2017-05-20', 0, 3, 'harold.roberts'),
(55, '2017-03-20 11:03:36', '2017-04-03', 0, 3, 'aiden.lesch'),
(56, '2018-01-19 10:01:51', '2018-02-02', 0, 4, 'oma.macejkovic'),
(57, '2017-08-12 07:08:26', '2017-08-26', 0, 4, 'keebler.mozell'),
(58, '2017-05-24 11:05:11', '2017-06-07', 0, 1, 'alanis36'),
(59, '2017-08-10 05:08:12', '2017-08-24', 0, 3, 'zulauf.bud'),
(60, '2017-07-05 12:07:22', '2017-07-19', 0, 4, 'elenor.hayes'),
(61, '2017-03-10 05:03:40', '2017-03-24', 0, 1, 'deven.stark'),
(62, '2017-04-01 04:04:27', '2017-04-15', 0, 4, 'neil25'),
(63, '2017-07-22 03:07:15', '2017-08-05', 1, 2, 'elisabeth.raynor'),
(64, '2017-07-04 12:07:42', '2017-07-18', 1, 2, 'osbaldo.maggio'),
(65, '2017-05-10 04:05:24', '2017-05-24', 0, 4, 'armand.balistreri'),
(66, '2017-12-28 04:12:16', '2018-01-11', 1, 4, 'ikovacek'),
(67, '2018-02-12 10:02:49', '2018-02-26', 0, 5, 'celestine.brakus'),
(68, '2017-08-24 08:08:36', '2017-09-07', 0, 1, 'vicky.johnston'),
(69, '2017-06-18 06:06:44', '2017-07-02', 0, 3, 'zulauf.bud'),
(70, '2017-10-02 02:10:28', '2017-10-16', 0, 4, 'darrin45'),
(71, '2017-11-06 10:11:57', '2017-11-20', 0, 5, 'tvonrueden'),
(72, '2017-09-26 12:09:17', '2017-10-10', 1, 1, 'jbuckridge'),
(73, '2017-04-07 05:04:10', '2017-04-21', 0, 4, 'vicky.johnston'),
(74, '2017-05-28 08:05:29', '2017-06-11', 0, 4, 'clotilde.stracke'),
(75, '2017-09-23 01:09:42', '2017-10-06', 0, 1, 'eloisa.stamm'),
(76, '2018-01-16 05:01:29', '2018-01-30', 1, 1, 'grover.gerlach'),
(77, '2017-07-18 09:07:08', '2017-08-01', 0, 2, 'eladio.steuber'),
(78, '2018-02-14 12:02:15', '2018-02-28', 0, 3, 'tomasa57'),
(79, '2017-09-24 12:09:41', '2017-10-08', 0, 4, 'thiel.marjorie'),
(80, '2017-08-08 05:08:05', '2017-08-22', 1, 5, 'rodriguez.alek'),
(81, '2017-06-03 03:06:27', '2017-06-17', 1, 2, 'agustin16'),
(82, '2018-01-20 06:01:02', '2018-02-03', 0, 2, 'grover.gerlach'),
(83, '2017-04-13 04:04:16', '2017-04-27', 0, 4, 'jalen.koepp'),
(84, '2017-12-07 09:12:28', '2017-12-21', 0, 5, 'fheaney'),
(85, '2017-03-29 02:03:45', '2017-04-12', 1, 1, 'abergstrom'),
(86, '2017-11-04 02:11:16', '2017-11-18', 0, 1, 'tomasa57'),
(87, '2017-11-13 08:11:17', '2017-11-27', 0, 1, 'alanis36'),
(88, '2018-02-12 04:02:09', '2018-02-26', 0, 2, 'eledner'),
(89, '2017-06-29 04:06:05', '2017-07-13', 0, 2, 'nicola.schaden'),
(90, '2018-02-08 10:02:04', '2018-02-22', 0, 5, 'laverna.luettgen'),
(91, '2017-07-17 01:07:00', '2017-07-30', 0, 4, 'ferry.yvonne'),
(92, '2017-12-24 07:12:10', '2018-01-07', 1, 4, 'malvina.kuhlman'),
(93, '2017-09-06 11:09:30', '2017-09-20', 0, 5, 'reichel.loraine'),
(94, '2017-12-20 11:12:28', '2018-01-03', 0, 1, 'kerluke.elnora'),
(95, '2017-08-09 08:08:32', '2017-08-23', 1, 5, 'sanford92'),
(96, '2017-03-19 01:03:19', '2017-04-01', 1, 1, 'eloisa.stamm'),
(97, '2017-06-01 05:06:00', '2017-06-15', 1, 2, 'gregory86'),
(98, '2017-10-01 11:10:50', '2017-10-15', 0, 3, 'ray05'),
(99, '2017-04-28 09:04:41', '2017-05-12', 1, 4, 'shad58'),
(100, '2017-03-24 06:03:14', '2017-04-07', 0, 4, 'eden.senger');

-- --------------------------------------------------------

--
-- Table structure for table `lendcost`
--

CREATE TABLE `lendcost` (
  `LentCostId` int(11) NOT NULL,
  `LentDetails` varchar(100) NOT NULL,
  `LentCost` decimal(12,2) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lendcost`
--

INSERT INTO `lendcost` (`LentCostId`, `LentDetails`, `LentCost`) VALUES
(1, 'Theo Tháng', '70000.00'),
(2, 'Theo Quý', '60000.00'),
(3, 'Theo Năm', '50000.00');

-- --------------------------------------------------------

--
-- Table structure for table `lenditem`
--

CREATE TABLE `lenditem` (
  `LendId` int(11) NOT NULL,
  `BookId` int(11) NOT NULL,
  `LendCreateDate` datetime NOT NULL,
  `LendStatus` int(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lenditem`
--

INSERT INTO `lenditem` (`LendId`, `BookId`, `LendCreateDate`, `LendStatus`) VALUES
(1, 3, '2017-06-26 08:06:33', 1),
(1, 138, '2017-06-26 08:06:33', 1),
(1, 164, '2017-06-26 08:06:33', 1),
(1, 175, '2017-06-26 08:06:33', 1),
(1, 197, '2017-06-26 08:06:33', 1),
(2, 64, '2017-05-20 09:05:55', 1),
(2, 143, '2017-05-20 09:05:55', 1),
(3, 139, '2017-12-10 08:12:06', 1),
(3, 180, '2017-12-10 08:12:06', 1),
(4, 18, '2017-08-31 04:08:36', 0),
(4, 65, '2017-08-31 04:08:36', 0),
(4, 85, '2017-08-31 04:08:36', 0),
(4, 129, '2017-08-31 04:08:36', 0),
(5, 30, '2018-02-01 07:02:42', 0),
(5, 117, '2018-02-01 07:02:42', 0),
(6, 85, '2017-12-27 09:12:33', 1),
(6, 110, '2017-12-27 09:12:33', 1),
(6, 126, '2017-12-27 09:12:33', 1),
(6, 156, '2017-12-27 09:12:33', 1),
(7, 40, '2017-08-24 10:08:03', 1),
(7, 46, '2017-08-24 10:08:03', 1),
(7, 94, '2017-08-24 10:08:03', 1),
(7, 128, '2017-08-24 10:08:03', 1),
(7, 166, '2017-08-24 10:08:03', 1),
(8, 35, '2017-09-06 07:09:31', 1),
(8, 51, '2017-09-06 07:09:31', 1),
(9, 3, '2017-04-05 01:04:03', 0),
(9, 90, '2017-04-05 01:04:03', 0),
(9, 133, '2017-04-05 01:04:03', 0),
(10, 57, '2017-10-10 03:10:46', 1),
(10, 139, '2017-10-10 03:10:46', 1),
(10, 159, '2017-10-10 03:10:46', 1),
(11, 22, '2017-05-31 04:05:25', 1),
(11, 65, '2017-05-31 04:05:25', 1),
(11, 115, '2017-05-31 04:05:25', 1),
(11, 161, '2017-05-31 04:05:25', 1),
(12, 18, '2017-05-30 04:05:02', 0),
(12, 47, '2017-05-30 04:05:02', 0),
(12, 112, '2017-05-30 04:05:02', 0),
(12, 136, '2017-05-30 04:05:02', 0),
(12, 149, '2017-05-30 04:05:02', 0),
(13, 119, '2017-03-08 10:03:34', 0),
(14, 71, '2017-10-05 04:10:10', 0),
(15, 2, '2017-10-12 03:10:34', 0),
(15, 144, '2017-10-12 03:10:34', 0),
(15, 149, '2017-10-12 03:10:34', 0),
(15, 156, '2017-10-12 03:10:34', 0),
(16, 41, '2017-12-07 08:12:40', 0),
(16, 114, '2017-12-07 08:12:40', 0),
(16, 189, '2017-12-07 08:12:40', 0),
(17, 166, '2017-06-12 12:06:23', 1),
(18, 48, '2017-03-18 09:03:09', 1),
(18, 135, '2017-03-18 09:03:09', 1),
(19, 199, '2017-02-19 02:02:20', 1),
(20, 140, '2017-09-17 02:09:26', 0),
(20, 179, '2017-09-17 02:09:26', 0),
(21, 18, '2017-10-14 09:10:42', 1),
(21, 78, '2017-10-14 09:10:42', 1),
(21, 155, '2017-10-14 09:10:42', 1),
(22, 151, '2017-07-23 11:07:20', 1),
(22, 163, '2017-07-23 11:07:20', 1),
(23, 15, '2018-01-13 02:01:16', 1),
(23, 70, '2018-01-13 02:01:16', 1),
(24, 7, '2017-04-29 07:04:57', 1),
(25, 144, '2017-03-22 02:03:06', 1),
(25, 187, '2017-03-22 02:03:06', 1),
(25, 198, '2017-03-22 02:03:06', 1),
(26, 28, '2017-04-04 10:04:06', 1),
(26, 104, '2017-04-04 10:04:06', 1),
(26, 121, '2017-04-04 10:04:06', 1),
(26, 145, '2017-04-04 10:04:06', 1),
(27, 8, '2017-06-12 01:06:18', 1),
(27, 9, '2017-06-12 01:06:18', 1),
(27, 77, '2017-06-12 01:06:18', 1),
(27, 90, '2017-06-12 01:06:18', 1),
(27, 148, '2017-06-12 01:06:18', 1),
(28, 88, '2017-07-08 12:07:21', 0),
(28, 121, '2017-07-08 12:07:21', 0),
(28, 177, '2017-07-08 12:07:21', 0),
(28, 194, '2017-07-08 12:07:21', 0),
(29, 47, '2017-04-07 08:04:49', 0),
(29, 74, '2017-04-07 08:04:49', 0),
(29, 95, '2017-04-07 08:04:49', 0),
(30, 7, '2017-08-10 11:08:35', 0),
(30, 60, '2017-08-10 11:08:35', 0),
(30, 132, '2017-08-10 11:08:35', 0),
(30, 186, '2017-08-10 11:08:35', 0),
(31, 3, '2017-03-23 10:03:13', 0),
(31, 101, '2017-03-23 10:03:13', 0),
(31, 104, '2017-03-23 10:03:13', 0),
(32, 149, '2018-01-26 10:01:54', 0),
(32, 177, '2018-01-26 10:01:54', 0),
(33, 28, '2017-11-26 11:11:13', 1),
(33, 92, '2017-11-26 11:11:13', 1),
(34, 15, '2017-09-28 12:09:33', 0),
(34, 37, '2017-09-28 12:09:33', 0),
(34, 73, '2017-09-28 12:09:33', 0),
(34, 74, '2017-09-28 12:09:33', 0),
(34, 197, '2017-09-28 12:09:33', 0),
(35, 93, '2017-10-06 12:10:33', 1),
(36, 5, '2017-03-26 02:03:19', 0),
(36, 43, '2017-03-26 02:03:19', 0),
(36, 113, '2017-03-26 02:03:19', 0),
(36, 131, '2017-03-26 02:03:19', 0),
(37, 7, '2017-09-10 04:09:32', 1),
(37, 112, '2017-09-10 04:09:32', 1),
(37, 133, '2017-09-10 04:09:32', 1),
(37, 169, '2017-09-10 04:09:32', 1),
(38, 44, '2017-03-20 09:03:26', 0),
(38, 125, '2017-03-20 09:03:26', 0),
(39, 52, '2017-12-30 07:12:04', 1),
(39, 71, '2017-12-30 07:12:04', 1),
(39, 100, '2017-12-30 07:12:04', 1),
(39, 103, '2017-12-30 07:12:04', 1),
(39, 191, '2017-12-30 07:12:04', 1),
(40, 15, '2017-11-08 04:11:47', 1),
(40, 50, '2017-11-08 04:11:47', 1),
(40, 135, '2017-11-08 04:11:47', 1),
(40, 141, '2017-11-08 04:11:47', 1),
(40, 143, '2017-11-08 04:11:47', 1),
(41, 184, '2017-09-30 01:09:07', 1),
(42, 129, '2017-07-20 07:07:10', 0),
(42, 150, '2017-07-20 07:07:10', 0),
(42, 159, '2017-07-20 07:07:10', 0),
(43, 8, '2017-08-16 07:08:24', 1),
(43, 104, '2017-08-16 07:08:24', 1),
(43, 134, '2017-08-16 07:08:24', 1),
(43, 146, '2017-08-16 07:08:24', 1),
(43, 196, '2017-08-16 07:08:24', 1),
(44, 2, '2018-01-06 03:01:01', 1),
(44, 129, '2018-01-06 03:01:01', 1),
(45, 9, '2017-03-29 04:03:29', 0),
(45, 172, '2017-03-29 04:03:29', 0),
(46, 3, '2017-12-28 10:12:34', 0),
(46, 15, '2017-12-28 10:12:34', 0),
(46, 17, '2017-12-28 10:12:34', 0),
(46, 114, '2017-12-28 10:12:34', 0),
(46, 128, '2017-12-28 10:12:34', 0),
(47, 39, '2017-09-03 09:09:31', 0),
(47, 71, '2017-09-03 09:09:31', 0),
(48, 35, '2017-08-08 06:08:46', 1),
(48, 76, '2017-08-08 06:08:46', 1),
(49, 5, '2018-01-10 02:01:41', 0),
(49, 52, '2018-01-10 02:01:41', 0),
(49, 65, '2018-01-10 02:01:41', 0),
(49, 121, '2018-01-10 02:01:41', 0),
(49, 190, '2018-01-10 02:01:41', 0),
(50, 22, '2017-12-27 12:12:36', 1),
(50, 29, '2017-12-27 12:12:36', 1),
(50, 127, '2017-12-27 12:12:36', 1),
(50, 133, '2017-12-27 12:12:36', 1),
(50, 177, '2017-12-27 12:12:36', 1),
(51, 66, '2017-06-06 03:06:57', 0),
(51, 186, '2017-06-06 03:06:57', 0),
(52, 15, '2018-02-13 12:02:56', 1),
(52, 18, '2018-02-13 12:02:56', 1),
(52, 53, '2018-02-13 12:02:56', 1),
(52, 133, '2018-02-13 12:02:56', 1),
(52, 182, '2018-02-13 12:02:56', 1),
(53, 84, '2017-09-27 04:09:10', 1),
(53, 195, '2017-09-27 04:09:10', 1),
(54, 46, '2017-05-06 03:05:23', 1),
(55, 1, '2017-03-20 11:03:36', 0),
(55, 15, '2017-03-20 11:03:36', 0),
(55, 33, '2017-03-20 11:03:36', 0),
(55, 148, '2017-03-20 11:03:36', 0),
(55, 196, '2017-03-20 11:03:36', 0),
(56, 78, '2018-01-19 10:01:51', 0),
(56, 98, '2018-01-19 10:01:51', 0),
(56, 107, '2018-01-19 10:01:51', 0),
(57, 22, '2017-08-12 07:08:26', 0),
(57, 158, '2017-08-12 07:08:26', 0),
(57, 185, '2017-08-12 07:08:26', 0),
(58, 17, '2017-05-24 11:05:11', 0),
(58, 59, '2017-05-24 11:05:11', 0),
(58, 106, '2017-05-24 11:05:11', 0),
(59, 10, '2017-08-10 05:08:12', 0),
(59, 61, '2017-08-10 05:08:12', 0),
(59, 68, '2017-08-10 05:08:12', 0),
(59, 90, '2017-08-10 05:08:12', 0),
(60, 29, '2017-07-05 12:07:22', 1),
(60, 31, '2017-07-05 12:07:22', 1),
(60, 87, '2017-07-05 12:07:22', 1),
(60, 100, '2017-07-05 12:07:22', 1),
(60, 128, '2017-07-05 12:07:22', 1),
(61, 122, '2017-03-10 05:03:40', 1),
(62, 24, '2017-04-01 04:04:27', 1),
(62, 163, '2017-04-01 04:04:27', 1),
(63, 39, '2017-07-22 03:07:15', 1),
(63, 43, '2017-07-22 03:07:15', 1),
(63, 85, '2017-07-22 03:07:15', 1),
(63, 96, '2017-07-22 03:07:15', 1),
(64, 78, '2017-07-04 12:07:42', 1),
(65, 91, '2017-05-10 04:05:24', 0),
(65, 94, '2017-05-10 04:05:24', 0),
(66, 3, '2017-12-28 04:12:16', 1),
(66, 19, '2017-12-28 04:12:16', 1),
(66, 122, '2017-12-28 04:12:16', 1),
(66, 164, '2017-12-28 04:12:16', 1),
(66, 182, '2017-12-28 04:12:16', 1),
(67, 7, '2018-02-12 10:02:49', 1),
(68, 140, '2017-08-24 08:08:36', 0),
(69, 120, '2017-06-18 06:06:44', 1),
(69, 179, '2017-06-18 06:06:44', 1),
(70, 23, '2017-10-02 02:10:28', 1),
(70, 145, '2017-10-02 02:10:28', 1),
(71, 2, '2017-11-06 10:11:57', 1),
(71, 10, '2017-11-06 10:11:57', 1),
(71, 88, '2017-11-06 10:11:57', 1),
(71, 128, '2017-11-06 10:11:57', 1),
(72, 50, '2017-09-26 12:09:17', 0),
(72, 87, '2017-09-26 12:09:17', 0),
(73, 39, '2017-04-07 05:04:10', 1),
(73, 116, '2017-04-07 05:04:10', 1),
(73, 128, '2017-04-07 05:04:10', 1),
(74, 31, '2017-05-28 08:05:29', 1),
(74, 71, '2017-05-28 08:05:29', 1),
(74, 138, '2017-05-28 08:05:29', 1),
(74, 191, '2017-05-28 08:05:29', 1),
(74, 197, '2017-05-28 08:05:29', 1),
(75, 19, '2017-09-23 01:09:42', 1),
(76, 2, '2018-01-16 05:01:29', 1),
(76, 32, '2018-01-16 05:01:29', 1),
(77, 102, '2017-07-18 09:07:08', 0),
(77, 143, '2017-07-18 09:07:08', 0),
(77, 153, '2017-07-18 09:07:08', 0),
(78, 94, '2018-02-14 12:02:15', 1),
(79, 52, '2017-09-24 12:09:41', 0),
(80, 14, '2017-08-08 05:08:05', 1),
(80, 79, '2017-08-08 05:08:05', 1),
(80, 125, '2017-08-08 05:08:05', 1),
(80, 200, '2017-08-08 05:08:05', 1),
(81, 83, '2017-06-03 03:06:27', 1),
(81, 183, '2017-06-03 03:06:27', 1),
(82, 23, '2018-01-20 06:01:02', 1),
(83, 67, '2017-04-13 04:04:16', 1),
(84, 29, '2017-12-07 09:12:28', 0),
(84, 153, '2017-12-07 09:12:28', 0),
(84, 187, '2017-12-07 09:12:28', 0),
(84, 194, '2017-12-07 09:12:28', 0),
(85, 43, '2017-03-29 02:03:45', 0),
(85, 90, '2017-03-29 02:03:45', 0),
(86, 63, '2017-11-04 02:11:16', 0),
(86, 82, '2017-11-04 02:11:16', 0),
(86, 99, '2017-11-04 02:11:16', 0),
(86, 143, '2017-11-04 02:11:16', 0),
(86, 146, '2017-11-04 02:11:16', 0),
(87, 4, '2017-11-13 08:11:17', 1),
(87, 18, '2017-11-13 08:11:17', 1),
(87, 93, '2017-11-13 08:11:17', 1),
(87, 143, '2017-11-13 08:11:17', 1),
(87, 166, '2017-11-13 08:11:17', 1),
(88, 125, '2018-02-12 04:02:09', 1),
(88, 181, '2018-02-12 04:02:09', 1),
(89, 7, '2017-06-29 04:06:05', 1),
(89, 92, '2017-06-29 04:06:05', 1),
(89, 133, '2017-06-29 04:06:05', 1),
(89, 154, '2017-06-29 04:06:05', 1),
(90, 38, '2018-02-08 10:02:04', 1),
(90, 175, '2018-02-08 10:02:04', 1),
(91, 7, '2017-07-17 01:07:00', 1),
(91, 11, '2017-07-17 01:07:00', 1),
(91, 44, '2017-07-17 01:07:00', 1),
(91, 81, '2017-07-17 01:07:00', 1),
(91, 193, '2017-07-17 01:07:00', 1),
(92, 18, '2017-12-24 07:12:10', 0),
(92, 117, '2017-12-24 07:12:10', 0),
(92, 144, '2017-12-24 07:12:10', 0),
(93, 26, '2017-09-06 11:09:30', 1),
(93, 172, '2017-09-06 11:09:30', 1),
(94, 12, '2017-12-20 11:12:28', 0),
(94, 17, '2017-12-20 11:12:28', 0),
(94, 39, '2017-12-20 11:12:28', 0),
(94, 77, '2017-12-20 11:12:28', 0),
(94, 198, '2017-12-20 11:12:28', 0),
(95, 35, '2017-08-09 08:08:32', 1),
(95, 82, '2017-08-09 08:08:32', 1),
(95, 122, '2017-08-09 08:08:32', 1),
(95, 150, '2017-08-09 08:08:32', 1),
(96, 95, '2017-03-19 01:03:19', 1),
(96, 107, '2017-03-19 01:03:19', 1),
(97, 52, '2017-06-01 05:06:00', 1),
(97, 73, '2017-06-01 05:06:00', 1),
(97, 193, '2017-06-01 05:06:00', 1),
(98, 15, '2017-10-01 11:10:50', 1),
(98, 24, '2017-10-01 11:10:50', 1),
(98, 190, '2017-10-01 11:10:50', 1),
(99, 32, '2017-04-28 09:04:41', 1),
(99, 96, '2017-04-28 09:04:41', 1),
(100, 77, '2017-03-24 06:03:14', 0),
(100, 172, '2017-03-24 06:03:14', 0),
(100, 174, '2017-03-24 06:03:14', 0),
(100, 183, '2017-03-24 06:03:14', 0),
(100, 188, '2017-03-24 06:03:14', 0);

-- --------------------------------------------------------

--
-- Table structure for table `lend_receive`
--

CREATE TABLE `lend_receive` (
  `LendId` int(11) NOT NULL,
  `ReceiveId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lend_receive`
--

INSERT INTO `lend_receive` (`LendId`, `ReceiveId`) VALUES
(1, 64),
(2, 27),
(7, 6),
(10, 58),
(10, 76),
(11, 41),
(11, 89),
(12, 9),
(12, 10),
(12, 99),
(14, 54),
(14, 86),
(16, 45),
(18, 61),
(18, 77),
(20, 50),
(23, 85),
(24, 62),
(26, 11),
(26, 97),
(29, 71),
(30, 48),
(30, 78),
(30, 92),
(31, 39),
(32, 20),
(33, 51),
(34, 75),
(35, 23),
(35, 35),
(35, 55),
(35, 70),
(36, 82),
(37, 72),
(38, 42),
(39, 14),
(40, 21),
(43, 26),
(43, 28),
(43, 53),
(44, 17),
(45, 24),
(45, 63),
(46, 94),
(47, 31),
(47, 38),
(47, 47),
(49, 32),
(50, 43),
(50, 73),
(52, 16),
(52, 25),
(52, 40),
(52, 95),
(53, 34),
(53, 74),
(55, 98),
(56, 44),
(56, 52),
(56, 56),
(56, 91),
(57, 2),
(57, 30),
(57, 90),
(57, 93),
(58, 37),
(58, 69),
(59, 68),
(59, 96),
(60, 7),
(63, 87),
(67, 8),
(67, 29),
(69, 5),
(69, 81),
(70, 3),
(70, 33),
(72, 15),
(72, 84),
(73, 13),
(75, 67),
(76, 49),
(76, 57),
(76, 79),
(79, 100),
(80, 4),
(80, 19),
(80, 36),
(82, 59),
(86, 1),
(86, 65),
(89, 66),
(90, 60),
(92, 83),
(94, 18),
(94, 46),
(94, 80),
(96, 12),
(96, 88),
(97, 22);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `NewsId` int(11) NOT NULL,
  `Title` varchar(40) NOT NULL,
  `NewsDate` datetime DEFAULT NULL,
  `NewsNames` varchar(60) NOT NULL,
  `NewsContent` text NOT NULL,
  `ImgNews` varchar(400) DEFAULT NULL,
  `Username` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`NewsId`, `Title`, `NewsDate`, `NewsNames`, `NewsContent`, `ImgNews`, `Username`) VALUES
(1, 'Ex quod architecto ex suscipit doloribus', '2017-02-27 07:29:03', 'Eum minus consectetur asperiores reprehenderit possimus cum ', 'Rem quos consequatur sit accusamus. Officiis ut repellendus dolor doloremque nobis molestiae officia. Harum et sunt eos aspernatur eos beatae. Est quia deleniti beatae deserunt.', 'resources/news/8.jpg', 'lakin.zechariah'),
(2, 'Dolor est suscipit sint vel.', '2015-07-07 20:05:55', 'Eveniet debitis ipsam nostrum ut omnis molestiae minus amet ', 'Id dolor aperiam adipisci aliquam adipisci. Sint harum aliquam architecto dolorum consequatur. Amet impedit in ducimus error.', 'resources/news/11.jpg', 'liliane52'),
(3, 'Qui incidunt dolorem doloribus dolor.', '2016-12-20 03:52:16', 'Consequuntur porro qui et excepturi culpa esse omnis archite', 'Ut velit ipsum temporibus dolorem sequi sunt quis ullam. Voluptatem autem qui ut et. Assumenda molestias sint et suscipit odit. Reprehenderit minus et at eius rem fugit laborum.', 'resources/news/20.jpg', 'ekovacek'),
(4, 'Sed molestiae minima quia autem autem et', '2016-02-27 18:47:01', 'Et et eveniet modi dicta delectus voluptas consequatur at et', 'Facere quis voluptatem nulla voluptas quia quia modi. In dolor aliquid quaerat dolores error. Doloremque dolores et labore labore ut qui odio. Maxime eveniet qui quia ut laudantium id dignissimos.', 'resources/news/13.jpg', 'fabian65'),
(5, 'Porro repellendus vitae quasi minima mai', '2015-12-03 18:48:43', 'Dicta omnis quaerat sapiente iusto eveniet quae maiores quae', 'Nihil consequatur veritatis expedita sint hic hic rerum. At pariatur sit laboriosam omnis. Sequi cum vitae aut est earum facilis. Earum unde id vel qui maiores doloribus et.', 'resources/news/13.jpg', 'zhowell'),
(6, 'Quisquam libero praesentium quibusdam.', '2016-06-24 09:11:24', 'Et eos veritatis placeat eos minus dolorem et omnis enim ape', 'Fuga magni quaerat magnam adipisci rerum officia ut ut. Officiis vel similique repudiandae quo corporis maxime. Voluptatem sequi possimus ipsam et eligendi.', 'resources/news/1.jpg', 'eloisa.stamm'),
(7, 'Earum sint sit nihil earum expedita.', '2016-02-23 16:40:47', 'Facilis natus rerum molestiae necessitatibus maiores cum ips', 'Aut numquam adipisci ratione. Enim repellat ut unde nobis. Quaerat ut consequuntur illum sint.', 'resources/news/14.jpg', 'ramiro77'),
(8, 'Voluptatibus nisi et adipisci ut incidun', '2016-02-16 02:09:59', 'Maiores accusamus iste neque aspernatur quos praesentium quo', 'Nostrum sequi officiis soluta id. Non unde dolor quo amet. Ipsam ut reprehenderit qui repellendus quo.', 'resources/news/11.jpg', 'rachelle85'),
(9, 'Et est molestiae ratione repudiandae.', '2018-02-02 20:40:31', 'Sapiente impedit voluptatum optio quo cupiditate rerum ullam', 'Repudiandae corporis ut in enim voluptatum est. Aut non quam consectetur delectus. Molestias quo impedit sunt velit dolorem.', 'resources/news/6.jpg', 'lucinda.welch'),
(10, 'Magnam sit doloremque veniam voluptas se', '2015-11-12 21:10:34', 'Omnis ut laborum officiis natus voluptatem ab ullam voluptat', 'Quas magni eaque id enim aut. Est mollitia rerum sunt quia ut nesciunt et. Provident qui et aut esse. Maiores quis veniam incidunt dolor.', 'resources/news/12.jpg', 'tess25'),
(11, 'Quam eaque dolorem.', '2017-03-20 02:17:08', 'Quos repudiandae est esse explicabo aliquid aut quia praesen', 'Maxime ad rem nam reiciendis. Non debitis rem odio neque animi. Facere laboriosam incidunt ea. Nam quaerat vel consequatur placeat.', 'resources/news/3.jpg', 'eloisa.stamm'),
(12, 'Inventore quidem rerum repellat pariatur', '2015-06-30 08:24:50', 'Dolorum quo consequatur eos voluptatem odit pariatur odio of', 'Ut ut commodi et. Sit sint sunt impedit ipsa dolorem rerum. Et dolor quaerat unde officia cumque praesentium. Qui quas assumenda similique enim quia deleniti maxime.', 'resources/news/2.jpg', 'rigoberto78'),
(13, 'Suscipit voluptas consequatur nemo qui s', '2015-03-20 02:36:12', 'Qui adipisci culpa veritatis et voluptas tempore iste eligen', 'Odio sapiente qui nam delectus minima. Rerum repudiandae aspernatur quia quae nisi. Cum iusto nobis possimus libero enim repudiandae sed corrupti.', 'resources/news/5.jpg', 'mprosacco'),
(14, 'Nobis deleniti est sit tempora tempore a', '2015-12-04 04:18:07', 'Quia doloribus sequi facere nisi quia dolor fuga voluptate c', 'Tempore saepe soluta aut corporis nobis. Dolor eaque animi ipsum voluptas molestias. Reiciendis esse natus alias sint et autem iusto nulla.', 'resources/news/13.jpg', 'grover.gerlach'),
(15, 'Consequatur unde nobis molestias aut sun', '2015-12-26 22:52:52', 'Culpa numquam nihil quod ad ea voluptatem corrupti perferend', 'Consequuntur tenetur dolores et magni praesentium. Est quas ducimus minus aut aut.', 'resources/news/7.jpg', 'granville96'),
(16, 'Magni in nisi possimus dolor.', '2016-05-21 04:47:01', 'Perferendis qui dignissimos perferendis nisi dolor et provid', 'Earum vero quisquam illum corporis. Sit omnis quae quod debitis labore delectus. Voluptate voluptatem aliquam consequatur provident quas voluptatem consequatur repudiandae.', 'resources/news/13.jpg', 'hoppe.quentin'),
(17, 'Delectus ad eius temporibus est est repe', '2016-01-13 22:26:40', 'Corrupti commodi eum odio consectetur at et possimus quasi o', 'Dolor dolorem corrupti illo accusantium. Culpa ut nostrum porro repudiandae similique cupiditate. Quam ut vero non velit. Maxime iusto aperiam ex cum quidem dolorem odit.', 'resources/news/5.jpg', 'jessyca78'),
(18, 'Sint et error sed nobis dolorum ea.', '2015-09-21 10:03:54', 'Vel consectetur reiciendis ea velit quisquam magni animi dol', 'Sequi ut dicta magni nemo atque nostrum nesciunt. Enim saepe rem dicta sunt. Et praesentium aut in doloremque ut voluptas quis explicabo.', 'resources/news/2.jpg', 'davis.kendrick'),
(19, 'Tenetur recusandae non optio est aut sim', '2016-02-18 22:43:51', 'Fugiat ad dolorem est vel rerum laboriosam itaque magnam vel', 'Iste numquam exercitationem voluptates sed et excepturi. Dolorem dolor aut ab dolor sequi alias. Et dolores aut ex perferendis itaque quia impedit.', 'resources/news/17.jpg', 'carolanne.okon'),
(20, 'Sunt ipsum minima commodi quo est sed pl', '2017-11-12 01:39:22', 'Expedita omnis voluptates error vero error beatae et tempora', 'Qui eos sunt non inventore. In consequatur rerum quisquam porro non similique voluptatem nemo. Quia rerum dolore quam sit. Ut quae officia quam dolorem saepe.', 'resources/news/5.jpg', 'lucinda.welch'),
(21, 'Quos consequatur animi dignissimos fugia', '2017-10-30 11:34:21', 'Rerum eos aut aliquid eos est voluptatum in voluptates eos s', 'Molestiae nostrum tenetur quod molestias maxime non pariatur. Est et suscipit recusandae repudiandae fugit enim. Velit facere ut sed molestias quia nihil ducimus earum. Dolorum quia ut quo ut.', 'resources/news/2.jpg', 'agustin16'),
(22, 'Molestiae eius possimus aut molestias.', '2017-04-01 03:21:18', 'Qui eos qui officiis facilis deserunt sed quae quaerat enim ', 'Aperiam inventore ex ab perferendis ut atque. Et porro omnis velit rerum autem.', 'resources/news/13.jpg', 'martine75'),
(23, 'Similique tenetur culpa necessitatibus q', '2016-01-02 04:32:57', 'Illum voluptas enim odio quaerat quasi aut et inventore quae', 'Beatae consequuntur mollitia assumenda. Aut nihil odit eius ipsam ducimus occaecati. Atque corrupti voluptatibus qui ipsam a enim ut. Ex corporis quo in ut voluptatum quaerat nihil.', 'resources/news/5.jpg', 'reichel.loraine'),
(24, 'Molestiae et est ut enim aut voluptatem ', '2015-08-10 12:43:24', 'Quaerat dolorem nihil similique ea et distinctio sit autem a', 'Quaerat doloribus et aperiam qui temporibus tempora non dicta. Quo minima quos et labore eos cumque nulla quia. Non dolores ex quia odit ea qui reprehenderit. Ea architecto ullam molestias.', 'resources/news/17.jpg', 'ivory89'),
(25, 'Ea alias iure qui dolores.', '2015-02-16 04:27:32', 'Magnam reiciendis ducimus sed illum ut vel eum aut eos ex id', 'Minus enim similique amet non ducimus dolor. Labore iusto nihil itaque quisquam. Quam placeat ratione et nulla numquam excepturi deleniti.', 'resources/news/17.jpg', 'dewayne82'),
(26, 'Quis doloremque consequatur ut tempora.', '2016-02-16 00:32:25', 'Est rem odio ullam consequatur tenetur eos alias animi dolor', 'Quas id a nobis distinctio. Pariatur aut qui atque aut veniam quaerat architecto. Ut nostrum quasi accusamus quasi accusamus voluptatibus dignissimos. Qui sint officia dolorum omnis et cumque facere.', 'resources/news/20.jpg', 'matilda.hagenes'),
(27, 'Nemo animi corporis.', '2016-02-09 23:14:57', 'Sint et esse id velit dignissimos ipsa id expedita minima qu', 'Voluptas dolores qui iusto quas harum blanditiis. Nemo eligendi dolores aut est. Cumque consequuntur necessitatibus dignissimos.', 'resources/news/4.jpg', 'adams.cedrick'),
(28, 'Est aperiam quae deleniti.', '2015-06-17 15:07:23', 'Quo expedita aut alias sint pariatur at sunt beatae fuga atq', 'Exercitationem nostrum quos quia quia fugiat. Hic ut voluptatem eos quaerat tempore. Laudantium nobis non beatae accusamus enim harum expedita.', 'resources/news/18.jpg', 'quinten.monahan'),
(29, 'Corporis facilis qui saepe ex blanditiis', '2017-12-28 04:16:19', 'Totam sed et dicta aut et beatae a quasi consectetur qui nem', 'Porro id deleniti aut voluptas. Modi quod ut ullam. Occaecati excepturi aut iste consequatur quidem dicta.', 'resources/news/3.jpg', 'neffertz'),
(30, 'Et voluptatum odit saepe quibusdam dolor', '2017-12-14 10:49:30', 'Nulla rem voluptatibus fuga sit veniam est quia ipsam eum re', 'In harum corporis occaecati sequi impedit et veniam. Autem velit non assumenda tempore facere architecto modi. Delectus aut quo unde numquam. Optio autem ea id soluta molestiae rerum.', 'resources/news/3.jpg', 'sosinski'),
(31, 'Natus vel quia tempore ea temporibus tot', '2017-03-08 16:29:07', 'Consequuntur officia quidem vel ut officiis unde aut officii', 'Ut voluptas ex sit quia dicta aspernatur. Saepe earum qui sed aut voluptatem magni et porro. Ducimus iste dolores alias possimus iure et.', 'resources/news/4.jpg', 'mathew82'),
(32, 'Error sunt non eum quis tempore et magni', '2015-07-28 15:06:09', 'Sit voluptatem assumenda non et perferendis quidem assumenda', 'Ab corporis pariatur culpa dolorem accusamus. Placeat necessitatibus perspiciatis qui ea dignissimos qui fuga. Similique qui asperiores eum voluptatibus. Alias iusto ratione dignissimos magnam.', 'resources/news/20.jpg', 'vhilpert'),
(33, 'Nobis dolores quas non voluptas sed dele', '2017-01-31 15:54:47', 'Velit iure tempora quidem ut cupiditate labore praesentium a', 'Vero tenetur qui fugiat deserunt. Architecto laudantium eaque tempora ipsa sunt maiores rem sapiente. Porro quia aspernatur quidem possimus earum odio quam. Beatae voluptatem tempora vel aut dolores.', 'resources/news/6.jpg', 'dubuque.lionel'),
(34, 'Facere cumque soluta qui quisquam sit.', '2015-05-08 03:14:29', 'Consequatur at assumenda adipisci ducimus est totam sed.', 'Sed consectetur veniam maiores architecto. Et provident aut nemo velit sed mollitia expedita et. Nihil aliquid consequatur in reiciendis neque. Dolor placeat ullam culpa saepe tenetur ducimus culpa.', 'resources/news/1.jpg', 'eden.senger'),
(35, 'Pariatur quam temporibus quis dolores co', '2015-11-21 12:54:33', 'Iure itaque sit nostrum consequatur molestiae illum qui veli', 'Voluptatum qui quas voluptatum. Est debitis id dolor quasi voluptatum ab.', 'resources/news/18.jpg', 'zhowell'),
(36, 'Quo esse minus nostrum.', '2015-09-04 20:31:25', 'Porro est repellat in ullam omnis culpa ab aut possimus inve', 'Cum est at saepe provident delectus aut. Ut qui recusandae blanditiis est in eos asperiores. Vitae quis nostrum dolor sit vitae labore reiciendis. Tenetur facere voluptatem ducimus incidunt ut omnis.', 'resources/news/20.jpg', 'tamara91'),
(37, 'Veritatis amet asperiores quibusdam.', '2017-10-21 10:44:14', 'Sit eos molestias eum labore nisi eos ratione numquam tenetu', 'Quasi iste quaerat vel dolore rerum facilis expedita. Quis eius molestiae mollitia velit impedit culpa similique ducimus. Est voluptatem aut quae ipsa.', 'resources/news/3.jpg', 'kozey.addie'),
(38, 'Sed error eius nulla.', '2016-12-12 07:42:11', 'Aut facere qui dolore ut in dolore a reprehenderit eos aut.', 'Laudantium accusamus rerum voluptatem eius minus commodi. Sed omnis aperiam est beatae nam. Temporibus sint quidem libero ut qui repellendus nihil. Qui facere deleniti debitis et consequuntur et.', 'resources/news/16.jpg', 'estel01'),
(39, 'Tempore odio sed explicabo ipsa qui cons', '2017-11-30 15:57:39', 'Libero eum modi rerum et natus aut qui aut quos quam molesti', 'Error voluptatum id et officia eaque ab rem. Sed sed quas enim culpa. Consectetur nisi et quam reiciendis. Enim rerum fugit eos consectetur dolor.', 'resources/news/20.jpg', 'tiara.upton'),
(40, 'Quasi at cum qui tenetur repellat.', '2017-07-15 18:33:03', 'Sint aut excepturi repudiandae occaecati ut sunt dolorem mod', 'Pariatur sit possimus quas eaque unde. Atque excepturi pariatur ea asperiores doloremque aut nam non. Sint consequatur ipsa id minus qui quae. Amet eum amet quis quibusdam.', 'resources/news/16.jpg', 'tomasa57'),
(41, 'Unde ducimus vel doloremque repellat off', '2016-01-28 06:48:53', 'Est laborum esse qui molestias sequi aliquam recusandae ab d', 'Nemo quos quaerat libero autem. Aut assumenda sapiente aperiam consequatur voluptas qui molestiae.', 'resources/news/16.jpg', 'fabian65'),
(42, 'Dolorem consequatur ut eius et.', '2015-07-19 12:19:54', 'Amet quasi ut reprehenderit quaerat nihil eos quia culpa har', 'Rerum perspiciatis rerum quod delectus et voluptatum. Natus temporibus sunt animi. Optio laudantium qui neque voluptas cum. Laborum omnis adipisci eos porro earum laboriosam cupiditate.', 'resources/news/7.jpg', 'walsh.breanne'),
(43, 'Exercitationem ad dolorem reiciendis ali', '2016-09-12 02:18:45', 'Explicabo et assumenda eveniet repellendus saepe voluptate o', 'Ducimus est architecto in consequatur. Aut repellendus enim consequuntur autem magnam totam. Id ratione nostrum voluptatem.', 'resources/news/1.jpg', 'deon.mckenzie'),
(44, 'Vel debitis fuga blanditiis rerum rerum ', '2016-09-07 07:30:38', 'Fugiat deleniti voluptatem animi nemo impedit repellendus te', 'A est porro corrupti ut aliquam tempora eveniet. Voluptates et reiciendis praesentium ab.', 'resources/news/20.jpg', 'xhauck'),
(45, 'Eligendi commodi iusto fuga at ab molest', '2016-10-08 02:52:00', 'Molestias odit nesciunt architecto totam minus unde non a qu', 'Veniam odit expedita adipisci quod quod deleniti. Minus ut et vel est accusamus. Et quia temporibus itaque qui aliquam et non.', 'resources/news/19.jpg', 'maryse.nicolas'),
(46, 'Eum explicabo sit facere et maiores.', '2016-10-06 20:02:11', 'Quia id facilis beatae similique enim similique blanditiis e', 'Dolores praesentium consectetur accusantium culpa. Sed vitae exercitationem minima incidunt repellat reiciendis qui quam. Dignissimos aspernatur et tempora eveniet.', 'resources/news/9.jpg', 'qabshire'),
(47, 'Adipisci qui consectetur perspiciatis do', '2015-03-22 00:58:05', 'Et dolor nihil similique repellat cumque impedit et dolor id', 'Nihil dolor et ea cum. Provident a adipisci et dolorem earum atque. Et omnis non voluptate quae. Est recusandae harum id excepturi provident voluptas mollitia.', 'resources/news/18.jpg', 'rachelle85'),
(48, 'Quidem voluptate illo.', '2016-08-28 12:39:11', 'Aut sed facilis facere voluptas fugiat rem odit perspiciatis', 'Voluptatum voluptates ipsam quibusdam eveniet minus qui odit. Blanditiis in hic labore ratione. Voluptatum et eveniet repellat.', 'resources/news/11.jpg', 'lesly.reichert'),
(49, 'Voluptatibus et voluptate.', '2017-09-17 08:08:11', 'Et et soluta ea consectetur eius occaecati dolore deleniti.', 'Eveniet hic praesentium corrupti accusamus nam esse. Sunt voluptas dicta voluptatem voluptatum qui eum. Deserunt in ratione ut aut. Doloribus exercitationem repellat beatae error at non.', 'resources/news/13.jpg', 'estel01'),
(50, 'Autem doloribus dolore beatae repellendu', '2015-09-19 11:31:51', 'Ad voluptatem amet est non architecto delectus itaque sunt u', 'Vel et corporis at fuga. Officia laborum eos quisquam qui minus suscipit. Et sit atque est eos. Qui ut qui eum nam quos nihil veritatis deleniti.', 'resources/news/7.jpg', 'xhauck'),
(51, 'Labore non esse et.', '2016-11-11 01:54:03', 'Sapiente itaque esse aut quam dolorum tempora et qui modi co', 'Totam velit repellendus inventore assumenda animi. Dolores distinctio laborum qui laborum provident. Omnis nobis at sit aperiam soluta. Commodi quasi nostrum fugit officia.', 'resources/news/10.jpg', 'iokon'),
(52, 'Sunt repudiandae rerum cum.', '2015-08-19 21:10:21', 'Consequuntur illo doloremque cupiditate cum reiciendis nihil', 'Necessitatibus quasi voluptate velit error magni repellat ab. Nostrum libero reiciendis ipsa dolor iste magnam.', 'resources/news/17.jpg', 'agustin16'),
(53, 'Molestias omnis molestiae suscipit labor', '2016-07-14 22:19:30', 'Blanditiis sed nemo et est modi aspernatur aut et vitae dese', 'Ut adipisci illo eum corrupti. Libero nisi qui omnis omnis voluptatibus porro. Deserunt atque in aliquam sunt dolores. Ut qui error vel dolores deserunt.', 'resources/news/7.jpg', 'sosinski'),
(54, 'Sed deleniti molestiae qui eveniet.', '2017-11-22 07:57:52', 'Qui fugiat fuga autem consequatur autem non in nemo quibusda', 'Nisi mollitia dolorem aspernatur qui ipsa repudiandae totam. Qui officiis aut sint dolor ab voluptates dolorum.', 'resources/news/20.jpg', 'sawayn.ocie'),
(55, 'Omnis voluptatem sint in.', '2015-03-15 22:58:49', 'Distinctio velit sint omnis accusamus consequatur pariatur v', 'Reiciendis consectetur doloremque dolor quod. Non ex deserunt quod quod dolor voluptatem iure sunt. Cumque non placeat voluptates voluptatem quia odit.', 'resources/news/15.jpg', 'hoppe.quentin'),
(56, 'Libero voluptate impedit tempora ea aut.', '2017-08-31 04:25:01', 'Molestias modi repudiandae architecto sit consequuntur quo o', 'Rerum voluptatem eligendi possimus aut at aut aut ipsa. Quae quaerat atque quod optio. Dolore hic eum eos.', 'resources/news/14.jpg', 'corene34'),
(57, 'Dignissimos harum aliquid est rerum.', '2015-03-23 12:23:53', 'Quaerat nihil quo dicta eos deleniti incidunt distinctio eum', 'Quod quae quis expedita quis illum. Unde aperiam cum id modi rerum rerum ut. Amet pariatur illum libero molestiae sequi sit ad. In et in est excepturi nostrum.', 'resources/news/5.jpg', 'iboyle'),
(58, 'Voluptates reiciendis impedit sint asper', '2016-10-29 02:59:50', 'Cum perspiciatis facilis harum veritatis enim quia ea offici', 'Quia alias est tempore culpa est. Dicta voluptas voluptatum ut ab eum et enim.', 'resources/news/10.jpg', 'buddy.hudson'),
(59, 'Perferendis quia tempore enim cumque.', '2016-12-20 09:05:04', 'Alias iure commodi qui enim inventore nesciunt et fuga sit e', 'Incidunt architecto aut at eius fuga. Veritatis quas cumque soluta ipsum vel totam. Excepturi sit saepe aliquid nihil. Deserunt incidunt aut officiis.', 'resources/news/14.jpg', 'xhauck'),
(60, 'Accusamus qui earum repudiandae voluptas', '2016-04-13 17:49:16', 'Possimus ipsa cum nihil consequatur eius doloribus libero se', 'Facilis omnis praesentium et consequatur ea. Saepe alias neque qui explicabo eum. Corporis ut eum soluta perferendis eum.', 'resources/news/11.jpg', 'bo55'),
(61, 'Cumque dolor aliquid et molestiae ipsum ', '2017-09-05 04:44:14', 'Aut at molestias laboriosam distinctio hic voluptate ut est ', 'Temporibus deleniti quia inventore deleniti. In cum quibusdam ad praesentium. Ut voluptas cupiditate consectetur voluptatem. Praesentium est et accusamus numquam nulla mollitia est.', 'resources/news/2.jpg', 'gturcotte'),
(62, 'Alias quam incidunt beatae distinctio fu', '2017-05-08 18:01:36', 'Sunt inventore dolores ex eligendi provident omnis hic minim', 'Autem quidem ullam quia mollitia amet. Ut saepe cum ex quidem qui molestiae. Maxime enim fuga sed commodi dolores saepe voluptatem. Veritatis dolorem at nemo distinctio.', 'resources/news/17.jpg', 'eladio.steuber'),
(63, 'Veritatis quisquam aut est sed laborum p', '2015-11-21 21:57:07', 'Aut aperiam blanditiis blanditiis quia vero veritatis delect', 'Vitae rerum magni repellat architecto laboriosam maiores vel. Maxime et facere facere. Architecto quas ad cumque. Maxime sed debitis dicta ex nihil ab odit.', 'resources/news/5.jpg', 'elisabeth.raynor'),
(64, 'Deserunt unde et eveniet.', '2017-12-25 09:38:12', 'Non dolorem quam maiores distinctio amet molestiae corrupti ', 'Sint rem recusandae labore est. Repudiandae reiciendis temporibus dolor eius non nihil exercitationem fugiat. Delectus magnam veniam vel aperiam provident.', 'resources/news/12.jpg', 'matilda.hagenes'),
(65, 'Nam illum facilis error laudantium eius ', '2017-01-20 13:50:20', 'Praesentium neque soluta sunt id quis id a dolor exercitatio', 'Totam officia est id doloribus ipsum quia aliquam est. Ullam quo alias accusantium molestiae. Iusto repudiandae quae praesentium aut adipisci.', 'resources/news/16.jpg', 'dickens.micheal'),
(66, 'In id esse.', '2016-12-06 08:29:26', 'Dolor ducimus nihil sapiente eum quasi voluptas earum offici', 'Quis in dignissimos deleniti facere. A expedita et earum qui perferendis. Nemo voluptatem facere modi atque ut excepturi. Possimus excepturi id nobis.', 'resources/news/1.jpg', 'eledner'),
(67, 'Veritatis aut ducimus qui nobis qui volu', '2017-02-25 14:46:50', 'In et voluptatem blanditiis impedit voluptate consequuntur e', 'Ad dolorem ea facere voluptate est eaque ducimus eum. Optio voluptas ut esse. Porro nihil deleniti eius ut sit. Ullam nobis dignissimos excepturi non.', 'resources/news/7.jpg', 'ray05'),
(68, 'Omnis nostrum beatae nihil voluptatem ip', '2016-01-03 11:54:05', 'Saepe aut consequuntur omnis et pariatur atque qui eveniet s', 'Dolorem error repudiandae neque iure. Labore voluptatem nisi modi sit veniam. Rerum aut architecto repellat quod.', 'resources/news/16.jpg', 'kenny.heaney'),
(69, 'Aut maiores rem at perferendis.', '2016-08-03 06:07:36', 'Quidem adipisci sapiente ut excepturi molestiae non et nisi ', 'In et sint modi beatae. Consequatur dignissimos non repudiandae quo et. Dolor officiis accusamus voluptas sed in. Corporis inventore alias quia.', 'resources/news/5.jpg', 'eupton'),
(70, 'Et ullam consequatur qui porro.', '2015-09-30 01:58:10', 'Alias consequatur facilis explicabo accusamus impedit velit ', 'Dolorem illum repudiandae aliquam consequatur iste. Et id dolor facere natus. Aut in mollitia enim omnis. Repellat voluptatem in quod optio aut.', 'resources/news/1.jpg', 'eladio.steuber'),
(71, 'Quaerat omnis exercitationem eaque accus', '2015-07-16 08:23:55', 'Rerum explicabo occaecati unde quos laudantium laborum liber', 'Nesciunt deleniti ullam natus eius. Repellendus assumenda officiis quis commodi rerum. Error quasi non quod debitis. Sit ea ullam voluptatibus dolorem nisi aliquid perspiciatis.', 'resources/news/3.jpg', 'estel01'),
(72, 'Inventore quaerat sunt ut odit.', '2017-09-16 10:14:19', 'Voluptas non quo ad ut nemo aliquam veritatis officia corpor', 'Maxime eum reprehenderit dolores eaque non qui. Sit quia dolorum ullam et laborum. Quis recusandae molestiae quisquam eos consequatur. Quod aut saepe totam eius architecto repellat.', 'resources/news/13.jpg', 'schowalter.cecilia'),
(73, 'Autem dolorem dolorem qui nam sed conseq', '2017-05-13 04:45:34', 'Reiciendis perferendis recusandae quisquam atque voluptate f', 'Molestiae consequatur officia voluptate eos ea atque. Maxime ex nostrum animi sed quod. Architecto odit minus modi. Qui modi repellendus error consequatur ea. Ad ea sit voluptas omnis repellat aut.', 'resources/news/19.jpg', 'mathew82'),
(74, 'Aliquid omnis est autem ut atque facere ', '2016-08-23 19:24:57', 'Architecto delectus dolorem nihil perferendis ut sunt dolore', 'Ut esse quia assumenda rerum. Aut et dignissimos velit omnis velit. Incidunt non aut atque.', 'resources/news/1.jpg', 'tiara.upton'),
(75, 'Praesentium dolor porro minus ipsa verit', '2015-06-10 04:07:13', 'Quo sunt quod optio nam est atque sint.', 'Quaerat est sapiente incidunt iste ut dolorem cumque. Expedita sed corporis impedit in nisi ratione nam praesentium. Ipsam dolores sapiente nam molestias.', 'resources/news/12.jpg', 'mathew82'),
(76, 'Voluptatibus et eos accusamus aut provid', '2017-04-15 19:14:45', 'Dolorem rerum accusamus aut unde perferendis porro qui aut n', 'Consequatur deserunt non delectus natus amet quis magnam ut. Nulla et ut placeat. Voluptatem odio consequuntur perferendis quibusdam ad.', 'resources/news/8.jpg', 'jalen.koepp'),
(77, 'Sed neque dignissimos est soluta.', '2015-06-08 20:56:23', 'Rerum quibusdam ut minima veritatis enim vel tenetur officii', 'Quaerat nostrum et eum aut quia. Labore optio nam molestias illo tenetur omnis praesentium. Autem quia est numquam illum vel amet atque.', 'resources/news/6.jpg', 'joannie88'),
(78, 'Repellendus eos dolores quod.', '2015-12-22 07:52:07', 'Sed ut reprehenderit harum quos sed et reiciendis ut impedit', 'Corrupti odit rerum eveniet. Cupiditate fugit sit iusto ut. Labore repudiandae ea quia ea cupiditate delectus veniam.', 'resources/news/16.jpg', 'everardo80'),
(79, 'Optio rerum deserunt vel molestiae.', '2016-03-29 09:38:47', 'Aut qui omnis exercitationem aut quia debitis maiores omnis ', 'Nisi saepe odio id numquam numquam iste id autem. Et optio molestiae ad voluptatum voluptatem voluptatum. Veritatis magni amet ut ea nobis mollitia. Quae est aut expedita qui aut magnam.', 'resources/news/13.jpg', 'reichel.loraine'),
(80, 'Autem et eius qui odio non.', '2017-09-02 22:05:47', 'Error aut error ut sit voluptas ducimus est consectetur qui ', 'Et voluptates provident at eos ut in a suscipit. Et nihil est odit dignissimos eveniet eius. Aliquid est aut architecto qui. Rerum ut accusantium id animi cum.', 'resources/news/2.jpg', 'corene34'),
(81, 'Nobis est mollitia dolorem.', '2016-06-30 10:25:53', 'Quia voluptatem nemo consequatur aliquam ipsum aliquid volup', 'Repudiandae quo quo hic et tenetur quibusdam. Officiis neque quam ut possimus. Natus et harum exercitationem fuga qui nam delectus. Eos aut veniam velit iure atque repellendus commodi.', 'resources/news/2.jpg', 'botsford.pattie'),
(82, 'Voluptatem a debitis occaecati soluta ve', '2015-09-16 06:52:59', 'Est dolor quo nostrum et consequuntur molestiae et dolorem d', 'Consequatur accusamus quia nostrum cupiditate quia. Dolorum distinctio quis placeat itaque minima. Nisi consequuntur iure voluptas nemo quam. Officia esse dignissimos neque illum est qui.', 'resources/news/2.jpg', 'schneider.hermann'),
(83, 'Alias repellat qui doloribus mollitia do', '2017-01-17 03:40:41', 'Aliquid id voluptatem a earum reprehenderit enim sunt in con', 'Non tempore molestiae fugit nobis nesciunt. Corrupti soluta et autem aut voluptas alias. Sit corrupti laborum nobis quaerat fugiat eligendi. Dolor aut enim numquam.', 'resources/news/11.jpg', 'kerluke.elnora'),
(84, 'Velit quo voluptatem quae labore.', '2017-10-11 20:56:25', 'Exercitationem dolor ut velit ex sit ex ea labore quod.', 'Quos libero tenetur rem alias. Ut nostrum ut quod. Rerum eos inventore voluptatum ex sapiente. Est qui vero aut quia quasi.', 'resources/news/15.jpg', 'reichel.loraine'),
(85, 'Molestias nulla possimus debitis.', '2017-08-17 03:58:17', 'Et quis modi officiis illum aut debitis aut.', 'Voluptatibus ipsum qui assumenda incidunt ad et quia. Ratione consequatur vel sequi quam minima voluptatibus. Iusto non quia placeat placeat explicabo aperiam.', 'resources/news/3.jpg', 'wgislason'),
(86, 'Cupiditate et dolor non aut.', '2016-10-24 20:08:21', 'Veniam mollitia sit iste molestias eum quaerat est rem eum m', 'Eius delectus harum itaque iure tenetur eos vero. Vel ad sed sequi assumenda quia ab. Asperiores cupiditate non nihil placeat. Facere dolorem doloremque sint repellendus.', 'resources/news/9.jpg', 'neffertz'),
(87, 'Et voluptatum earum id in eos cumque aut', '2015-10-12 10:30:17', 'Non vel veritatis vero voluptas est at et voluptas voluptatu', 'Fuga asperiores ullam voluptas sequi repellendus sunt. Modi dolores et enim praesentium voluptatem quam. Et nemo non et hic. Qui et deserunt nesciunt aspernatur. Nisi ex aut voluptate libero.', 'resources/news/9.jpg', 'amie76'),
(88, 'Facilis quaerat cum voluptatem aut qui d', '2018-01-18 11:30:03', 'Dolor qui exercitationem quia ipsa fuga nobis quasi vel dele', 'Maxime inventore cumque voluptas quis harum et et in. Nemo consequuntur quis consequuntur autem eos eligendi explicabo. Quia officia molestias dolorem iure illum reiciendis. Illum dolores facere quo.', 'resources/news/15.jpg', 'cjacobson'),
(89, 'Iste ut ut quia alias ducimus at.', '2018-01-07 01:07:22', 'Dignissimos explicabo qui debitis perspiciatis consequatur c', 'Qui necessitatibus inventore et. Ab eligendi perferendis nihil adipisci minus id. Libero quam assumenda esse officiis. Tenetur expedita a eveniet.', 'resources/news/1.jpg', 'gturcotte'),
(90, 'Aut reiciendis rerum eligendi necessitat', '2017-10-16 08:55:01', 'Totam soluta sapiente perspiciatis praesentium aut illum ius', 'Assumenda neque praesentium iusto sunt. Qui est ratione sed et rem id. Quibusdam autem et natus soluta.', 'resources/news/4.jpg', 'lamont50'),
(91, 'Sapiente nostrum a ipsa id est voluptate', '2016-10-13 13:52:18', 'Aspernatur harum odit qui eligendi eos qui sunt consequatur ', 'Amet officiis qui veritatis rerum. Et maxime quasi quam similique. Sunt odit quo sed veniam dolores. Id error eius quod et quas. Illo consequatur at debitis non.', 'resources/news/6.jpg', 'nicola.schaden'),
(92, 'Qui error id nostrum corporis.', '2016-01-13 14:30:38', 'A omnis aspernatur quod minima officiis sequi numquam ipsum ', 'Sed similique asperiores nam sit voluptatem. Repellendus qui voluptatem dolores voluptatem excepturi. Quia ab voluptatem sed. Et eos nesciunt vitae. Voluptatem placeat iste velit.', 'resources/news/16.jpg', 'alanis36'),
(93, 'Est et labore iste fugiat corporis.', '2017-03-24 10:16:05', 'Id porro vel dolores nisi adipisci qui nemo omnis eos asperi', 'Modi modi distinctio voluptatum. Dolorem quia aperiam modi iure eum. Rem voluptatem vitae doloremque.', 'resources/news/7.jpg', 'matilda.hagenes'),
(94, 'Nihil iste provident blanditiis dolorem ', '2015-05-03 11:45:54', 'Enim sit accusamus ea rem optio temporibus nulla nesciunt in', 'Quod eveniet voluptatum ipsam neque. Laudantium voluptatibus voluptas consequatur ab. Nulla ducimus architecto ut.', 'resources/news/20.jpg', 'sosinski'),
(95, 'Nobis laboriosam et tenetur sit omnis om', '2016-06-20 08:19:12', 'Omnis aut est et neque eligendi laborum porro aut error et m', 'Nesciunt sunt quia vitae architecto qui porro. Et necessitatibus labore quod repudiandae fugit aut. Aliquid facilis omnis iure id et. Nam rerum rem sit doloremque autem iusto.', 'resources/news/5.jpg', 'sanford92'),
(96, 'Quas sint fugiat officiis vero.', '2015-08-02 19:29:27', 'Ab est vel hic aspernatur magni debitis fuga voluptatem omni', 'Eum voluptas eos labore et iste quaerat eum mollitia. Repellat aut corporis vel. Omnis qui dolor inventore magnam. Odit voluptates enim explicabo.', 'resources/news/17.jpg', 'tomasa57'),
(97, 'Officia numquam provident vitae veniam q', '2016-02-14 14:48:23', 'In ut cumque modi ipsam ut quibusdam consequatur non odio il', 'Eaque vel sint aut nostrum aliquam est. Officia ut et molestiae labore itaque debitis sed. Autem sit voluptatem reiciendis voluptas adipisci cupiditate qui. Molestiae at perferendis inventore.', 'resources/news/1.jpg', 'ezekiel43'),
(98, 'Aut in ab corporis non asperiores explic', '2017-02-12 09:20:56', 'Fugit necessitatibus voluptas hic asperiores voluptate moles', 'Placeat reiciendis cupiditate eum nihil. Voluptate omnis qui velit. Sed aut non rerum qui impedit earum consectetur minima. Voluptatum voluptate qui ut ut unde.', 'resources/news/6.jpg', 'adelle.stamm'),
(99, 'Tempore maiores nihil sit aliquid aut a.', '2015-05-01 07:04:44', 'Et assumenda sunt id pariatur assumenda qui architecto esse ', 'Nostrum ducimus voluptatem voluptas et occaecati. Et fuga consequuntur vero sint dolorum aut ipsam. Id id quod omnis.', 'resources/news/7.jpg', 'gregory.frami'),
(100, 'Consectetur aut omnis nihil et.', '2015-12-26 15:59:22', 'Vel accusantium quis vel ipsum sunt ut assumenda sit enim vo', 'Qui voluptas minima natus et. Fuga illum nesciunt consequatur enim harum quae earum.', 'resources/news/14.jpg', 'lenora34');

-- --------------------------------------------------------

--
-- Table structure for table `publisher`
--

CREATE TABLE `publisher` (
  `PublisherId` int(11) NOT NULL,
  `PublisherName` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `publisher`
--

INSERT INTO `publisher` (`PublisherId`, `PublisherName`) VALUES
(1, 'Wintheiser-McCullough'),
(2, 'Christiansen-Johnson'),
(3, 'McClure, Batz and Conroy'),
(4, 'Anderson, Ortiz and Hammes'),
(5, 'Waelchi, Little and Rowe'),
(6, 'Welch, Doyle and Bartoletti'),
(7, 'Leffler Ltd'),
(8, 'Gleichner-Sipes'),
(9, 'Swift and Sons'),
(10, 'Schimmel, Beer and Zieme'),
(11, 'Bauch-Mertz'),
(12, 'Grant Inc'),
(13, 'Marks-Abbott'),
(14, 'Doyle, Conn and Rogahn'),
(15, 'Metz-Rath'),
(16, 'Halvorson and Sons'),
(17, 'Von-Grant'),
(18, 'Ratke, Hansen and Quitzon'),
(19, 'Hamill Inc'),
(20, 'Rippin and Sons'),
(21, 'Corwin LLC'),
(22, 'Mueller Group'),
(23, 'Koss PLC'),
(24, 'Schmidt PLC'),
(25, 'Luettgen Ltd'),
(26, 'Denesik-Hettinger'),
(27, 'Mitchell, Waters and Frami'),
(28, 'Trantow, Zulauf and Abbott'),
(29, 'Schumm Ltd'),
(30, 'Collins Inc'),
(31, 'Carter, Wuckert and Kunze'),
(32, 'Halvorson PLC'),
(33, 'Mraz, Keeling and Windler'),
(34, 'Stark-Wuckert'),
(35, 'Braun-Friesen'),
(36, 'Leffler, Pouros and Waelchi'),
(37, 'Davis LLC'),
(38, 'Pfeffer, Johnson and Reilly'),
(39, 'Kiehn Group'),
(40, 'Dickens-Robel'),
(41, 'Smitham Group'),
(42, 'Aufderhar, Daniel and Bednar'),
(43, 'Sanford, Stoltenberg and Huels'),
(44, 'Goldner-Cormier'),
(45, 'Zemlak-Cremin'),
(46, 'Smith-Beahan'),
(47, 'Windler, Satterfield and McGlynn'),
(48, 'Wisoky, Eichmann and Will'),
(49, 'Casper-Durgan'),
(50, 'Kessler, Dietrich and Abshire'),
(51, 'Koch, Nolan and Schamberger'),
(52, 'Deckow and Sons'),
(53, 'McLaughlin, Tillman and Dach'),
(54, 'Gaylord-Schinner'),
(55, 'Lynch, Schuppe and Muller'),
(56, 'Erdman, Franecki and Schroeder'),
(57, 'Langosh PLC'),
(58, 'Bednar LLC'),
(59, 'Connelly, Zemlak and Balistreri'),
(60, 'Macejkovic Inc'),
(61, 'Boyle-Trantow'),
(62, 'Hudson-Price'),
(63, 'McDermott PLC'),
(64, 'Tremblay and Sons'),
(65, 'Gleichner-Fadel'),
(66, 'Dicki, Kunze and Bogisich'),
(67, 'Russel Ltd'),
(68, 'Rau, Hilll and Auer'),
(69, 'Roberts and Sons'),
(70, 'Gislason-Emmerich'),
(71, 'Considine, McCullough and Keebler'),
(72, 'Parker, Marquardt and Rolfson'),
(73, 'Jast-Kshlerin'),
(74, 'Dickens and Sons'),
(75, 'Heaney-Crist'),
(76, 'Sanford, McLaughlin and Medhurst'),
(77, 'Kessler, Jacobi and Altenwerth'),
(78, 'Williamson-Roob'),
(79, 'Abshire-Schroeder'),
(80, 'Beatty-Rolfson'),
(81, 'Konopelski and Sons'),
(82, 'Mayer LLC'),
(83, 'Leffler, Yost and Cruickshank'),
(84, 'Pfeffer and Sons'),
(85, 'Becker Ltd'),
(86, 'Bergnaum-Witting'),
(87, 'Dickinson, Rath and Larkin'),
(88, 'Lesch PLC'),
(89, 'Swaniawski LLC'),
(90, 'Lind Inc'),
(91, 'Botsford Group'),
(92, 'Prohaska-Pouros'),
(93, 'Greenfelder-McGlynn'),
(94, 'Hoppe-Blick'),
(95, 'Reilly Inc'),
(96, 'Schuppe PLC');

-- --------------------------------------------------------

--
-- Table structure for table `receive`
--

CREATE TABLE `receive` (
  `ReceiveId` int(11) NOT NULL,
  `ReceiveDate` date NOT NULL,
  `Username` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `receive`
--

INSERT INTO `receive` (`ReceiveId`, `ReceiveDate`, `Username`) VALUES
(1, '2017-11-09', 'sosinski'),
(2, '2017-08-17', 'liliane52'),
(3, '2017-10-07', 'turcotte.lamont'),
(4, '2017-08-14', 'marjorie72'),
(5, '2017-06-23', 'emilie.jaskolski'),
(6, '2017-08-28', 'tiara.upton'),
(7, '2017-07-09', 'everardo80'),
(8, '2018-02-18', 'gturcotte'),
(9, '2017-06-05', 'osbaldo.maggio'),
(10, '2017-06-03', 'priscilla.kirlin'),
(11, '2017-04-09', 'sawayn.ocie'),
(12, '2017-03-23', 'oma.macejkovic'),
(13, '2017-04-13', 'lera.veum'),
(14, '2018-01-05', 'cjacobson'),
(15, '2017-10-01', 'eden.senger'),
(16, '2018-02-18', 'tamara91'),
(17, '2018-01-10', 'maggio.aiyana'),
(18, '2017-12-24', 'lakin.zechariah'),
(19, '2017-08-12', 'dewayne82'),
(20, '2018-02-01', 'rigoberto78'),
(21, '2017-11-13', 'xhauck'),
(22, '2017-06-07', 'veffertz'),
(23, '2017-10-11', 'joannie88'),
(24, '2017-04-02', 'trever73'),
(25, '2018-02-17', 'deven.stark'),
(26, '2017-08-21', 'gregory86'),
(27, '2017-05-26', 'carolanne.okon'),
(28, '2017-08-20', 'agustin16'),
(29, '2018-02-16', 'osbaldo.maggio'),
(30, '2017-08-17', 'abergstrom'),
(31, '2017-09-08', 'qabshire'),
(32, '2018-01-16', 'ekovacek'),
(33, '2017-10-07', 'collier.erick'),
(34, '2017-10-01', 'chagenes'),
(35, '2017-10-11', 'layne89'),
(36, '2017-08-12', 'sthiel'),
(37, '2017-05-28', 'oma.macejkovic'),
(38, '2017-09-09', 'eden.senger'),
(39, '2017-03-29', 'jalen.koepp'),
(40, '2018-02-18', 'morar.hazle'),
(41, '2017-06-04', 'abergstrom'),
(42, '2017-03-24', 'granville96'),
(43, '2017-12-31', 'estel01'),
(44, '2018-01-23', 'kasandra.goodwin'),
(45, '2017-12-12', 'kenny.heaney'),
(46, '2017-12-25', 'everardo80'),
(47, '2017-09-08', 'eloisa.stamm'),
(48, '2017-08-14', 'ladarius63'),
(49, '2018-01-21', 'kasandra.goodwin'),
(50, '2017-09-23', 'buddy.hudson'),
(51, '2017-12-01', 'jayda77'),
(52, '2018-01-25', 'granville96'),
(53, '2017-08-22', 'gregory86'),
(54, '2017-10-10', 'ihudson'),
(55, '2017-10-12', 'rodriguez.alek'),
(56, '2018-01-25', 'emilie22'),
(57, '2018-01-21', 'rigoberto78'),
(58, '2017-10-15', 'kathryn.friesen'),
(59, '2018-01-26', 'june06'),
(60, '2018-02-12', 'corene34'),
(61, '2017-03-23', 'tomasa57'),
(62, '2017-05-03', 'elisabeth.raynor'),
(63, '2017-04-02', 'deven.stark'),
(64, '2017-07-02', 'carter.litzy'),
(65, '2017-11-08', 'yundt.marisa'),
(66, '2017-07-05', 'corene34'),
(67, '2017-09-28', 'celestine.brakus'),
(68, '2017-08-16', 'ezekiel43'),
(69, '2017-05-28', 'jbuckridge'),
(70, '2017-10-10', 'collier.erick'),
(71, '2017-04-11', 'iboyle'),
(72, '2017-09-15', 'tomasa57'),
(73, '2018-01-01', 'eledner'),
(74, '2017-10-03', 'sanford92'),
(75, '2017-10-02', 'maryse.nicolas'),
(76, '2017-10-15', 'bridie47'),
(77, '2017-03-24', 'matilda.hagenes'),
(78, '2017-08-15', 'ezekiel43'),
(79, '2018-01-21', 'joannie88'),
(80, '2017-12-26', 'dickens.micheal'),
(81, '2017-06-22', 'xschulist'),
(82, '2017-03-30', 'deon.mckenzie'),
(83, '2017-12-28', 'adams.cedrick'),
(84, '2017-10-01', 'estel01'),
(85, '2018-01-17', 'corene34'),
(86, '2017-10-11', 'quinten.monahan'),
(87, '2017-07-28', 'fheaney'),
(88, '2017-03-25', 'owen.schoen'),
(89, '2017-06-06', 'iokon'),
(90, '2017-08-16', 'klockman'),
(91, '2018-01-25', 'davis.kendrick'),
(92, '2017-08-14', 'esteban.mckenzie'),
(93, '2017-08-16', 'bridie47'),
(94, '2018-01-01', 'tstracke'),
(95, '2018-02-18', 'hoppe.quentin'),
(96, '2017-08-14', 'jessyca78'),
(97, '2017-04-09', 'qabshire'),
(98, '2017-03-26', 'johnston.destini'),
(99, '2017-06-04', 'mathew82'),
(100, '2017-09-28', 'kole.swaniawski');

-- --------------------------------------------------------

--
-- Table structure for table `receiveitem`
--

CREATE TABLE `receiveitem` (
  `ReceiveId` int(11) NOT NULL,
  `BookId` int(11) NOT NULL,
  `ReceiveDate` datetime DEFAULT NULL,
  `ReceiveStatus` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `receiveitem`
--

INSERT INTO `receiveitem` (`ReceiveId`, `BookId`, `ReceiveDate`, `ReceiveStatus`) VALUES
(1, 46, '2017-11-09 01:11:16', 0),
(1, 133, '2017-11-09 01:11:16', 0),
(1, 144, '2017-11-09 01:11:16', 0),
(1, 182, '2017-11-09 01:11:16', 0),
(2, 27, '2017-08-17 05:08:26', 1),
(2, 90, '2017-08-17 05:08:26', 1),
(2, 122, '2017-08-17 05:08:26', 1),
(3, 2, '2017-10-07 00:10:28', 1),
(3, 167, '2017-10-07 00:10:28', 1),
(4, 25, '2017-08-14 03:08:05', 0),
(4, 63, '2017-08-14 03:08:05', 0),
(4, 117, '2017-08-14 03:08:05', 0),
(4, 128, '2017-08-14 03:08:05', 0),
(5, 41, '2017-06-23 04:06:44', 0),
(6, 13, '2017-08-28 08:08:03', 1),
(6, 43, '2017-08-28 08:08:03', 1),
(6, 59, '2017-08-28 08:08:03', 1),
(6, 71, '2017-08-28 08:08:03', 1),
(6, 170, '2017-08-28 08:08:03', 1),
(7, 47, '2017-07-09 10:07:22', 0),
(7, 119, '2017-07-09 10:07:22', 0),
(7, 166, '2017-07-09 10:07:22', 0),
(7, 198, '2017-07-09 10:07:22', 0),
(8, 103, '2018-02-18 09:02:49', 1),
(9, 17, '2017-06-05 02:05:02', 0),
(9, 142, '2017-06-05 02:05:02', 0),
(9, 168, '2017-06-05 02:05:02', 0),
(9, 181, '2017-06-05 02:05:02', 0),
(10, 33, '2017-06-03 02:05:02', 0),
(11, 10, '2017-04-09 08:04:06', 0),
(11, 40, '2017-04-09 08:04:06', 0),
(11, 47, '2017-04-09 08:04:06', 0),
(11, 192, '2017-04-09 08:04:06', 0),
(12, 15, '2017-03-23 00:03:19', 0),
(12, 96, '2017-03-23 00:03:19', 0),
(13, 54, '2017-04-13 03:04:10', 0),
(13, 125, '2017-04-13 03:04:10', 0),
(13, 161, '2017-04-13 03:04:10', 0),
(15, 161, '2017-10-01 10:09:17', 0),
(16, 2, '2018-02-18 11:02:56', 1),
(16, 29, '2018-02-18 11:02:56', 1),
(16, 36, '2018-02-18 11:02:56', 1),
(16, 138, '2018-02-18 11:02:56', 1),
(16, 182, '2018-02-18 11:02:56', 1),
(17, 44, '2018-01-10 02:01:01', 1),
(17, 98, '2018-01-10 02:01:01', 1),
(18, 66, '2017-12-24 10:12:28', 1),
(18, 155, '2017-12-24 10:12:28', 1),
(19, 86, '2017-08-12 03:08:05', 1),
(19, 167, '2017-08-12 03:08:05', 1),
(20, 9, '2018-02-01 09:01:54', 1),
(20, 102, '2018-02-01 09:01:54', 1),
(21, 139, '2017-11-13 03:11:47', 1),
(22, 23, '2017-06-07 03:06:00', 0),
(22, 144, '2017-06-07 03:06:00', 0),
(22, 191, '2017-06-07 03:06:00', 0),
(23, 125, '2017-10-11 10:10:33', 1),
(24, 29, '2017-04-02 02:03:29', 1),
(24, 76, '2017-04-02 02:03:29', 1),
(25, 35, '2018-02-17 11:02:56', 1),
(25, 55, '2018-02-17 11:02:56', 1),
(25, 99, '2018-02-17 11:02:56', 1),
(25, 145, '2018-02-17 11:02:56', 1),
(26, 55, '2017-08-21 05:08:24', 1),
(26, 99, '2017-08-21 05:08:24', 1),
(26, 144, '2017-08-21 05:08:24', 1),
(27, 21, '2017-05-26 07:05:55', 0),
(27, 190, '2017-05-26 07:05:55', 0),
(28, 1, '2017-08-20 05:08:24', 1),
(28, 91, '2017-08-20 05:08:24', 1),
(28, 124, '2017-08-20 05:08:24', 1),
(28, 143, '2017-08-20 05:08:24', 1),
(28, 191, '2017-08-20 05:08:24', 1),
(29, 133, '2018-02-16 09:02:49', 0),
(30, 135, '2017-08-17 05:08:26', 0),
(30, 174, '2017-08-17 05:08:26', 0),
(31, 6, '2017-09-08 07:09:31', 1),
(31, 164, '2017-09-08 07:09:31', 1),
(32, 67, '2018-01-16 01:01:41', 0),
(32, 94, '2018-01-16 01:01:41', 0),
(32, 111, '2018-01-16 01:01:41', 0),
(32, 195, '2018-01-16 01:01:41', 0),
(33, 43, '2017-10-07 00:10:28', 1),
(33, 66, '2017-10-07 00:10:28', 1),
(34, 95, '2017-10-01 02:09:10', 1),
(34, 135, '2017-10-01 02:09:10', 1),
(35, 130, '2017-10-11 10:10:33', 0),
(36, 46, '2017-08-12 03:08:05', 0),
(36, 56, '2017-08-12 03:08:05', 0),
(36, 148, '2017-08-12 03:08:05', 0),
(37, 5, '2017-05-28 09:05:11', 0),
(37, 139, '2017-05-28 09:05:11', 0),
(38, 117, '2017-09-09 07:09:31', 0),
(39, 14, '2017-03-29 08:03:13', 1),
(39, 177, '2017-03-29 08:03:13', 1),
(40, 4, '2018-02-18 11:02:56', 1),
(40, 8, '2018-02-18 11:02:56', 1),
(40, 117, '2018-02-18 11:02:56', 1),
(40, 121, '2018-02-18 11:02:56', 1),
(40, 180, '2018-02-18 11:02:56', 1),
(41, 30, '2017-06-04 02:05:25', 1),
(41, 60, '2017-06-04 02:05:25', 1),
(41, 95, '2017-06-04 02:05:25', 1),
(41, 99, '2017-06-04 02:05:25', 1),
(42, 185, '2017-03-24 08:03:26', 0),
(43, 3, '2017-12-31 11:12:36', 1),
(43, 163, '2017-12-31 11:12:36', 1),
(43, 181, '2017-12-31 11:12:36', 1),
(43, 187, '2017-12-31 11:12:36', 1),
(44, 14, '2018-01-23 09:01:51', 1),
(45, 72, '2017-12-12 07:12:40', 1),
(45, 196, '2017-12-12 07:12:40', 1),
(46, 150, '2017-12-25 10:12:28', 1),
(46, 158, '2017-12-25 10:12:28', 1),
(46, 185, '2017-12-25 10:12:28', 1),
(47, 23, '2017-09-08 07:09:31', 0),
(48, 71, '2017-08-14 09:08:35', 0),
(48, 113, '2017-08-14 09:08:35', 0),
(48, 150, '2017-08-14 09:08:35', 0),
(48, 180, '2017-08-14 09:08:35', 0),
(49, 70, '2018-01-21 04:01:29', 0),
(49, 139, '2018-01-21 04:01:29', 0),
(50, 23, '2017-09-23 00:09:26', 1),
(50, 114, '2017-09-23 00:09:26', 1),
(51, 46, '2017-12-01 10:11:13', 0),
(52, 17, '2018-01-25 09:01:51', 0),
(54, 156, '2017-10-10 02:10:10', 1),
(55, 191, '2017-10-12 10:10:33', 1),
(56, 32, '2018-01-25 09:01:51', 1),
(57, 173, '2018-01-21 04:01:29', 1),
(58, 98, '2017-10-15 01:10:46', 1),
(58, 141, '2017-10-15 01:10:46', 1),
(58, 190, '2017-10-15 01:10:46', 1),
(59, 80, '2018-01-26 05:01:02', 1),
(60, 80, '2018-02-12 09:02:04', 0),
(61, 26, '2017-03-23 08:03:09', 1),
(62, 142, '2017-05-03 05:04:57', 0),
(63, 20, '2017-04-02 02:03:29', 0),
(63, 92, '2017-04-02 02:03:29', 0),
(64, 31, '2017-07-02 06:06:33', 0),
(64, 91, '2017-07-02 06:06:33', 0),
(65, 139, '2017-11-08 01:11:16', 1),
(66, 59, '2017-07-05 02:06:05', 0),
(66, 65, '2017-07-05 02:06:05', 0),
(66, 73, '2017-07-05 02:06:05', 0),
(66, 121, '2017-07-05 02:06:05', 0),
(67, 103, '2017-09-28 23:09:42', 0),
(68, 141, '2017-08-16 03:08:12', 0),
(68, 159, '2017-08-16 03:08:12', 0),
(68, 197, '2017-08-16 03:08:12', 0),
(69, 33, '2017-05-28 09:05:11', 1),
(69, 52, '2017-05-28 09:05:11', 1),
(69, 89, '2017-05-28 09:05:11', 1),
(70, 178, '2017-10-10 10:10:33', 1),
(71, 189, '2017-04-11 06:04:49', 1),
(72, 84, '2017-09-15 02:09:32', 0),
(72, 129, '2017-09-15 02:09:32', 0),
(72, 184, '2017-09-15 02:09:32', 0),
(73, 79, '2018-01-01 11:12:36', 1),
(73, 100, '2018-01-01 11:12:36', 1),
(74, 163, '2017-10-03 02:09:10', 0),
(75, 37, '2017-10-02 10:09:33', 1),
(75, 67, '2017-10-02 10:09:33', 1),
(75, 74, '2017-10-02 10:09:33', 1),
(75, 163, '2017-10-02 10:09:33', 1),
(76, 169, '2017-10-15 01:10:46', 0),
(77, 23, '2017-03-24 08:03:09', 0),
(77, 87, '2017-03-24 08:03:09', 0),
(78, 77, '2017-08-15 09:08:35', 0),
(78, 103, '2017-08-15 09:08:35', 0),
(78, 135, '2017-08-15 09:08:35', 0),
(78, 146, '2017-08-15 09:08:35', 0),
(79, 134, '2018-01-21 04:01:29', 0),
(80, 14, '2017-12-26 10:12:28', 1),
(81, 24, '2017-06-22 04:06:44', 1),
(81, 192, '2017-06-22 04:06:44', 1),
(82, 6, '2017-03-30 01:03:19', 0),
(82, 141, '2017-03-30 01:03:19', 0),
(82, 154, '2017-03-30 01:03:19', 0),
(82, 168, '2017-03-30 01:03:19', 0),
(83, 12, '2017-12-28 06:12:10', 1),
(83, 135, '2017-12-28 06:12:10', 1),
(83, 136, '2017-12-28 06:12:10', 1),
(84, 183, '2017-10-01 10:09:17', 0),
(85, 122, '2018-01-17 01:01:16', 0),
(86, 176, '2017-10-11 02:10:10', 0),
(87, 12, '2017-07-28 01:07:15', 1),
(87, 41, '2017-07-28 01:07:15', 1),
(87, 78, '2017-07-28 01:07:15', 1),
(87, 97, '2017-07-28 01:07:15', 1),
(88, 49, '2017-03-25 00:03:19', 1),
(89, 55, '2017-06-06 02:05:25', 1),
(89, 178, '2017-06-06 02:05:25', 1),
(89, 191, '2017-06-06 02:05:25', 1),
(90, 81, '2017-08-16 05:08:26', 0),
(91, 75, '2018-01-25 09:01:51', 1),
(91, 94, '2018-01-25 09:01:51', 1),
(91, 179, '2018-01-25 09:01:51', 1),
(92, 20, '2017-08-14 09:08:35', 1),
(92, 153, '2017-08-14 09:08:35', 1),
(93, 155, '2017-08-16 05:08:26', 0),
(94, 108, '2018-01-01 09:12:34', 1),
(94, 148, '2018-01-01 09:12:34', 1),
(95, 53, '2018-02-18 11:02:56', 0),
(95, 154, '2018-02-18 11:02:56', 0),
(95, 163, '2018-02-18 11:02:56', 0),
(96, 19, '2017-08-14 03:08:12', 1),
(96, 48, '2017-08-14 03:08:12', 1),
(97, 1, '2017-04-09 08:04:06', 1),
(97, 84, '2017-04-09 08:04:06', 1),
(97, 127, '2017-04-09 08:04:06', 1),
(97, 197, '2017-04-09 08:04:06', 1),
(98, 3, '2017-03-26 09:03:36', 1),
(99, 68, '2017-06-04 02:05:02', 0),
(99, 93, '2017-06-04 02:05:02', 0),
(99, 119, '2017-06-04 02:05:02', 0),
(99, 189, '2017-06-04 02:05:02', 0),
(100, 23, '2017-09-28 10:09:41', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `Username` varchar(32) NOT NULL,
  `Passwords` varchar(128) NOT NULL,
  `DisplayName` varchar(120) NOT NULL,
  `UserImg` varchar(300) DEFAULT NULL,
  `Birthday` date NOT NULL,
  `Gender` int(1) DEFAULT '0',
  `Address` varchar(140) NOT NULL,
  `Phone` int(14) NOT NULL,
  `Email` varchar(90) NOT NULL,
  `ExpriredDate` date DEFAULT NULL,
  `Active` varchar(40) DEFAULT NULL,
  `Status` int(1) DEFAULT '0',
  `Role` int(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`Username`, `Passwords`, `DisplayName`, `UserImg`, `Birthday`, `Gender`, `Address`, `Phone`, `Email`, `ExpriredDate`, `Active`, `Status`, `Role`) VALUES
('abergstrom', '>F$\"`!\"$Spmi3{6.p[+', 'Nhữ Hằng', 'resources/users/16.jpg', '1995-02-03', 1, '7911 Lueilwitz Tunnel\nRaeport, MI 15696', 0, 'bstrosin@halvorson.com', '2017-06-20', '0', 0, 4),
('adams.cedrick', 'i3@gS=T9*P%n(Pse[kJG', 'Chú. Giả Triều', 'resources/users/9.jpg', '1997-11-10', 0, '95981 Collins Estate\nSouth Julianne, OH 07163', 1, 'nathan90@yahoo.com', '2018-01-03', '0', 0, 4),
('adeckow', ')viu}4ILGak{|xJs_UH', 'Bà. Khúc Hậu', 'resources/users/4.jpg', '1996-09-20', 1, '2329 Dortha Ferry\nEast Michalemouth, AR 31075-7107', 761878, 'eli17@yahoo.com', '2017-12-08', '1', 0, 2),
('adelle.stamm', 'MdamZ9V_!:UcZ@Lh', 'Cung Cao Hảo', 'resources/users/16.jpg', '1994-07-05', 1, '5661 Electa Pine\nFramiland, NJ 94372-2414', 1, 'cristal.walker@hermiston.info', '2017-11-09', '0', 1, 2),
('agustin16', '(e<!wy;#kc#Va+_fxtL:', 'Bác. Hàn Tiên', 'resources/users/14.jpg', '1994-01-18', 1, '255 Wehner Extensions Suite 173\nAbernathyhaven, DC 28664-8897', 475532, 'ariel53@gleichner.com', '2017-03-05', '0', 0, 3),
('aiden.lesch', '~>qYK3]8IH', 'Hình Huỳnh Mẫn', 'resources/users/18.jpg', '1997-11-23', 0, '77283 Morar Route\nMuellerville, CA 90093-8848', 0, 'willms.chaya@jacobi.com', '2017-04-05', '1', 0, 3),
('alanis36', '.ZQ%`YwbU', 'Cụ. Lục Khôi', 'resources/users/19.jpg', '1993-10-03', 0, '656 Faye Coves\nEast Norwoodbury, GA 37758-6841', 729, 'mose55@hotmail.com', '2017-09-21', '0', 1, 1),
('alison.bashirian', '#3`kiPAg/A', 'Em. Uông Yến Thương', 'resources/users/20.jpg', '1994-07-06', 0, '578 Jeanette Heights Suite 194\nEast Zenaland, OH 73708-5080', 752840, 'yryan@littel.com', '2017-08-11', '1', 1, 3),
('amie76', 'px}tdj#ppI0P~Br!oT', 'Cụ. Ty Đoàn', 'resources/users/13.jpg', '1997-11-10', 1, '424 Feest Flats Suite 872\nLake Giuseppeport, AR 05047', 0, 'ruth67@daniel.com', '2017-05-21', '1', 0, 1),
('armand.balistreri', 'uV9}s(\"34', 'Thào Lộc Ngôn', 'resources/users/4.jpg', '1996-01-24', 1, '5422 Noah Unions Suite 181\nLake Orenbury, HI 41340', 1, 'katherine24@gmail.com', '2017-07-02', '0', 0, 2),
('bart93', 'r;X-c|ju!zNXK:;WA^', 'Ân Phương', 'resources/users/20.jpg', '1997-03-19', 0, '1250 Shaina Turnpike\nNew Zella, WY 43278', 1, 'jaida.stokes@hotmail.com', '2017-10-17', '0', 0, 3),
('bhegmann', 'Kl<8H]w', 'Bác. Đàm Nhã', 'resources/users/9.jpg', '1993-11-29', 0, '66859 Hansen Falls\nNorth Marjolaineport, NY 27019', 0, 'beer.magnus@yahoo.com', '2017-10-27', '0', 1, 3),
('bo55', 'Oht7>P=+@Rp', 'Em. Lã Giao', 'resources/users/17.jpg', '1993-11-27', 0, '40841 Moen Camp\nPort Brandon, CT 88109-8864', 870, 'okuneva.kathlyn@koch.net', '2017-03-29', '1', 1, 3),
('botsford.pattie', 'e(>5j4l_.g2HUt', 'Ngô Vi', 'resources/users/17.jpg', '1993-09-20', 1, '25643 Nora Pike Suite 527\nNew Jaeden, MS 47686-4264', 657, 'misael16@yahoo.com', '2017-07-23', '0', 0, 1),
('braulio.reichel', '#KB,u{7~', 'Ma Khải', 'resources/users/13.jpg', '1996-10-18', 0, '95083 Astrid Manor Apt. 331\nSouth Luigiville, MN 97230', 1, 'pthompson@ruecker.com', '2017-07-29', '1', 1, 1),
('bridie47', '6>\"qro9%=a4FU6a8', 'Bạch Tú', 'resources/users/6.jpg', '1993-07-21', 0, '4295 Harber Curve\nWest Jamarcus, TX 27550-9883', 1, 'macejkovic.winifred@gmail.com', '2017-05-02', '0', 1, 2),
('buddy.hudson', 'f}~U^unJ#(Lf', 'Nhậm Tường', 'resources/users/4.jpg', '1996-05-27', 0, '7250 Dooley Ville Suite 698\nSouth Iliana, AR 00372-1941', 1256, 'jarrod35@hotmail.com', '2017-07-03', '1', 1, 3),
('carolanne.okon', 'sCX{pG5~h.T^', 'Em. Đậu Sĩ Quyết', 'resources/users/12.jpg', '1996-08-16', 0, '1120 Dicki Mountain Apt. 693\nSaigefort, WY 51486-8397', 1674, 'mprosacco@hotmail.com', '2017-09-13', '0', 0, 2),
('carter.litzy', '.X3y9-^9G4[Oy5_o', 'Em. Bạch Dương Hùng', 'resources/users/17.jpg', '1995-10-12', 0, '79160 Taya Rapids Suite 758\nDemetrismouth, AR 52561', 1, 'nels54@gmail.com', '2017-11-12', '1', 1, 1),
('celestine.brakus', '.I6H!tuu', 'Ân Kỷ', 'resources/users/10.jpg', '1996-03-03', 0, '9498 Darien Vista\nGloverchester, CA 20288', 794364, 'rey16@boyle.com', '2017-12-12', '1', 1, 2),
('chagenes', '\".U<e2^T2r+V', 'Bàng Hoàn', 'resources/users/15.jpg', '1994-05-19', 1, '433 Selena Square Suite 493\nLangoshmouth, VT 56254-7028', 826, 'tom.stehr@beahan.com', '2017-07-31', '1', 1, 3),
('cjacobson', ';<sHFvoG%r', 'Cụ. Phó Kiều Khuê', 'resources/users/6.jpg', '1997-12-11', 1, '200 Gladys Road Suite 195\nBogisichview, WV 46220', 1, 'jillian22@block.biz', '2017-05-08', '1', 0, 3),
('clotilde.stracke', 'YD=O=k;gN', 'Thái Tâm', 'resources/users/6.jpg', '1995-03-13', 0, '485 Brenna Locks\nErynmouth, SC 68796-4610', 971266, 'mclaughlin.buck@hotmail.com', '2017-03-17', '1', 1, 2),
('collier.erick', '.GrZ7;zBDOT{H_', 'Đái Dụng', 'resources/users/5.jpg', '1996-11-24', 0, '5650 Kamren Cove Suite 208\nLake Angelofurt, HI 09755-5032', 993, 'dorris.nolan@rolfson.com', '2017-07-28', '1', 0, 1),
('corene34', 'Nbf>00y}KH&u', 'Hà Thùy Hồng', 'resources/users/8.jpg', '1993-09-03', 1, '126 Eunice Forest Apt. 217\nSouth Paulashire, VA 93135', 947275, 'rolfson.nels@gmail.com', '2017-04-10', '0', 0, 2),
('croberts', '~0uu\"N-|', 'Lư Vịnh', 'resources/users/2.jpg', '1996-02-19', 1, '3782 Nienow Plaza\nMathildeburgh, LA 00184', 0, 'hettinger.iliana@hotmail.com', '2017-06-22', '0', 0, 4),
('darrin45', 'x,mmt8SrxV-re', 'Nhiệm Khang Phong', 'resources/users/8.jpg', '1997-01-23', 0, '6140 Rogelio Trail\nDeckowfort, SD 52868-7808', 623, 'xpredovic@yahoo.com', '2017-06-13', '0', 0, 3),
('davis.kendrick', 'YL|\"L{Z', 'Bác. Diêm Dụng', 'resources/users/15.jpg', '1994-04-17', 1, '4914 Zaria Squares Suite 107\nLouburgh, VA 13635-5834', 0, 'sandra.osinski@hotmail.com', '2017-12-28', '0', 1, 4),
('deon.mckenzie', 'xq-b%!<5/s@GGonFcY', 'Cụ. Tống Đường', 'resources/users/9.jpg', '1998-02-06', 0, '1798 Blick Ports\nModestoport, KS 33197', 1, 'sarina.gottlieb@hotmail.com', '2017-08-18', '0', 1, 2),
('deven.stark', 'D~_)U<', 'Cái Nguyệt', 'resources/users/3.jpg', '1997-12-18', 0, '9732 Parisian Keys Apt. 514\nPort Pansy, GA 76866', 0, 'alicia.mraz@schuppe.com', '2017-05-23', '1', 0, 2),
('dewayne82', '0kr+-F', 'Anh. Sơn Hải Quỳnh', 'resources/users/7.jpg', '1994-05-31', 0, '74061 Beatty Walk\nRosemariehaven, LA 40376-9499', 1, 'hubert.kreiger@gmail.com', '2017-02-21', '0', 1, 1),
('dickens.micheal', 'dAUk+7^+zZ`9!', 'Bá Phục Toản', 'resources/users/1.jpg', '1994-11-23', 0, '9189 Mireille Plaza Apt. 575\nNew Lamar, WY 88981', 718959, 'marty14@yahoo.com', '2017-02-28', '0', 1, 4),
('dtoy', 'I7Sv#&<', 'Phi Hạnh', 'resources/users/19.jpg', '1997-12-29', 0, '617 Feil Inlet Apt. 215\nNorth Belle, TX 51627', 1, 'halvorson.akeem@hotmail.com', '2017-10-13', '0', 0, 3),
('dubuque.lionel', 'V@bujl8O1jH#d1', 'Đậu Nhân', 'resources/users/11.jpg', '1994-11-21', 1, '971 McClure Locks\nLake Shanonport, KY 06857-8568', 458, 'hermiston.shakira@gmail.com', '2017-12-09', '1', 1, 4),
('eden.senger', ']V[^:xC.Fgw', 'Cô. Đỗ Thy Thảo', 'resources/users/16.jpg', '1997-03-06', 0, '60086 Reinger Crossroad Suite 107\nSouth Stanfordtown, PA 74729', 321407, 'wilton.casper@gmail.com', '2017-11-14', '0', 0, 2),
('eferry', 'Xs.CHY/x', 'Phùng Thư Thoại', 'resources/users/10.jpg', '1994-02-17', 1, '1252 Friesen Mall Apt. 865\nQuentinbury, AK 72136-0555', 790, 'bogan.larry@hotmail.com', '2017-07-21', '1', 0, 4),
('ekovacek', 'fWEhtLb8Pw', 'Bác. Giả Hạ Huệ', 'resources/users/16.jpg', '1994-11-01', 0, '717 Farrell Forge Apt. 096\nNorth Queeniemouth, NJ 99183-8341', 0, 'buckridge.jeff@yahoo.com', '2017-10-15', '1', 0, 2),
('eladio.steuber', '4c+p0V^f>|+Q', 'Chị. Cù Sương Dương', 'resources/users/17.jpg', '1995-12-25', 1, '218 Mills Ports Apt. 766\nKareemfurt, NE 25937', 1, 'ebauch@hermann.info', '2017-06-12', '1', 1, 1),
('eledner', '5#|ne`|0,-jWwjgiA', 'Cụ. Giáp Nhiên', 'resources/users/1.jpg', '1995-04-30', 0, '5021 Dach Run Suite 431\nRoslynberg, AR 86452', 257, 'georgiana08@schinner.com', '2017-11-27', '0', 0, 2),
('elenor.hayes', '0gWwyA!tKoIvz', 'Hoa Giang', 'resources/users/5.jpg', '1995-07-20', 0, '95972 Adams Prairie Apt. 166\nWuckertchester, WV 88446', 1, 'dietrich.angelina@schuster.com', '2017-03-17', '0', 0, 1),
('elisabeth.raynor', '#XG4M_RLn', 'Bạch Chiểu', 'resources/users/17.jpg', '1997-10-06', 0, '327 Thiel View Apt. 974\nMcClureside, TX 79780', 832, 'ferne.lind@hotmail.com', '2017-05-12', '1', 1, 3),
('eliza09', '?jCJs(', 'Chú. Trưng Đồng Viên', 'resources/users/14.jpg', '1995-12-17', 1, '86165 Kellie Road Apt. 595\nLavinashire, CO 30884-6804', 1, 'gschmeler@larson.com', '2017-12-14', '1', 1, 4),
('eloisa.stamm', 'x;?P6>gGBkhm3X^s', 'Cổ San', 'resources/users/9.jpg', '1997-11-20', 0, '64124 Jovani Plains\nNew Hellenview, OH 45753-9484', 0, 'dana71@mcdermott.com', '2018-01-28', '1', 0, 3),
('emilie.jaskolski', '<Lydjns%!A[d', 'Trang Mộng Thiên', 'resources/users/15.jpg', '1998-01-31', 0, '530 Herman Curve Suite 177\nWest Mark, ID 64568-7364', 1, 'keara93@fritsch.com', '2018-01-02', '1', 0, 3),
('emilie22', 'xc8M6%x.x)Aby<yZ>h', 'Bùi Kỳ', 'resources/users/8.jpg', '1993-10-03', 0, '88967 Ledner Club\nMadieberg, LA 85189-4018', 349, 'justen24@kemmer.info', '2018-02-05', '1', 1, 2),
('esteban.mckenzie', '37emvBt07-x]SY', 'Điền Vượng', 'resources/users/17.jpg', '1995-02-07', 1, '548 Sylvan Shoal\nEbertland, TN 86896', 0, 'kling.geoffrey@hotmail.com', '2018-01-12', '0', 1, 1),
('estel01', '?M7^2o@7@f0)I>_MFJC', 'Kha Lễ', 'resources/users/20.jpg', '1993-10-24', 0, '7006 Aniya Groves\nNorth Gayle, TX 93250', 0, 'xavier.morar@hotmail.com', '2017-04-27', '1', 0, 2),
('eupton', 'oN6ZGcl[.+_kwsOQ', 'Lều Tùng', 'resources/users/6.jpg', '1997-12-23', 0, '681 Chasity Cape\nKayceeside, MO 07807-0802', 1814, 'mortimer.becker@rutherford.info', '2017-12-23', '0', 1, 4),
('everardo80', '+n7G>{?>o', 'Anh. Thôi Huấn', 'resources/users/18.jpg', '1997-12-23', 0, '2266 Herman Villages Suite 067\nNorth Tyreekshire, CA 02022-8387', 667, 'thaddeus96@trantow.com', '2017-09-12', '1', 0, 2),
('ezekiel43', 'k/(eT%+&2.', 'Anh. Cái Thuận', 'resources/users/18.jpg', '1995-11-21', 0, '763 Hirthe Grove\nRatkeberg, ID 78419-6050', 941454, 'timothy16@yahoo.com', '2017-07-09', '0', 0, 4),
('fabian65', 'x;dO=f7A?LZHSq*', 'Em. Trưng Nam', 'resources/users/1.jpg', '1995-12-01', 0, '6534 Cartwright Burgs Suite 622\nLake Jessy, TX 71354', 0, 'windler.donny@nienow.com', '2017-10-14', '1', 1, 1),
('ferry.yvonne', 'KFZ![W#6L;0', 'Cụ. Bửu Ninh', 'resources/users/14.jpg', '1994-07-10', 1, '650 Nienow Shores\nPort Keagan, AK 95315', 1, 'steve.wisoky@schumm.net', '2017-08-12', '1', 0, 2),
('fheaney', '<DFBM6-', 'Bác. Nguyễn Khanh', 'resources/users/8.jpg', '1993-04-29', 1, '22520 Keyon Place\nSouth Hazelmouth, CO 94274', 0, 'erick.fadel@runolfsdottir.com', '2017-03-09', '1', 0, 1),
('frieda71', '}Z)HJ}c7!QZ/', 'Ung Chế Chính', 'resources/users/16.jpg', '1996-09-17', 1, '31074 Fisher Forest\nNorth Sharon, SC 80606-5914', 857, 'jwiegand@yahoo.com', '2017-10-25', '0', 1, 3),
('granville96', 'qM<m_j/', 'Lương Chí Kỳ', 'resources/users/19.jpg', '1995-11-23', 0, '625 Bernardo Ports\nKallieland, AK 69416-5312', 720, 'ykassulke@hotmail.com', '2017-06-02', '0', 1, 2),
('gregory.frami', 'w|l,7viGj>Z', 'Triệu Định Phương', 'resources/users/20.jpg', '1996-06-13', 0, '765 Schmeler Shores\nMitchellbury, PA 68813-0484', 279542, 'shanahan.myrl@nader.com', '2018-01-24', '1', 0, 3),
('gregory86', 'F!G#c8{1O(eoF', 'Em. Trác Chiêu Cảnh', 'resources/users/19.jpg', '1997-08-13', 1, '590 Orion Fields\nJerdefort, KS 97103', 1, 'mackenzie.powlowski@hotmail.com', '2017-03-03', '1', 0, 3),
('grover.gerlach', 'vM.Bcxq', 'Khu Mậu Chung', 'resources/users/17.jpg', '1997-06-22', 0, '102 Orn Stravenue\nSouth Deontaemouth, ID 23693-3066', 1, 'dare.gennaro@wiza.net', '2017-06-25', '0', 1, 2),
('gturcotte', 'LMg~n1MbRS3Yn1Ms`+:', 'Chị. Bình Linh Quế', 'resources/users/14.jpg', '1997-10-21', 0, '785 Katelin Plaza\nNorth Emilie, MO 97559-7606', 1, 'lnader@gmail.com', '2017-07-07', '0', 1, 4),
('harold.roberts', 'zA0>IBTW', 'Bác. Nhữ Duệ', 'resources/users/2.jpg', '1996-01-03', 1, '81885 Karlie Summit Apt. 296\nNorth Jodie, MD 16855', 745791, 'hilpert.myah@yahoo.com', '2017-05-22', '1', 1, 2),
('hayes.lonie', 'Tv&xQ}dpXJz_9RIPH<(n', 'Bà. Bình Xuân Yến', 'resources/users/3.jpg', '1996-07-07', 1, '92526 Doug Orchard\nNorth Denafort, CO 01413-2442', 1, 'ywiegand@senger.net', '2017-09-14', '0', 0, 2),
('hmertz', ':[9yF`}sxok)?,:>}bC%', 'Chú. Nhữ Như Kiếm', 'resources/users/9.jpg', '1997-05-21', 0, '994 Kris Courts\nNew Agnes, TX 19080-0433', 1, 'streich.fermin@marks.org', '2017-08-18', '1', 0, 2),
('hoppe.quentin', '`!6F,-qnT`I', 'Chú. Thân Viên', 'resources/users/19.jpg', '1995-11-27', 0, '5868 Tatyana Walks\nRusselhaven, ID 88105', 668859, 'paucek.hilma@gmail.com', '2017-11-11', '0', 0, 4),
('huel.kristian', 'dl,%y9ZRlK_$JRUlQMu', 'Chị. Hà Đàn', 'resources/users/4.jpg', '1994-05-04', 0, '955 Ryan Square\nLake Darwin, AL 83280', 0, 'omante@hotmail.com', '2017-06-03', '0', 1, 2),
('huels.raphaelle', 'H68V&cM%~&H|inR]>0e5', 'Em. Mạch Tùng', 'resources/users/5.jpg', '1997-11-06', 1, '324 Rosenbaum Fort Suite 924\nIvorystad, MA 68479', 1, 'aurelia.sawayn@mante.com', '2017-09-01', '0', 1, 2),
('iboyle', ',DzO\"N', 'Lạc Huyền', 'resources/users/19.jpg', '1994-11-13', 0, '9054 Rachael Stravenue\nFritschbury, NM 13981-6055', 907344, 'casper.demarcus@herzog.com', '2017-04-06', '0', 1, 2),
('idare', '=;\"L)\"BEYRz|<?)q', 'Chị. Tiêu Chi Vọng', 'resources/users/12.jpg', '1994-07-08', 0, '712 Wilderman Crescent\nFriesenstad, GA 20102', 465645, 'ybruen@hotmail.com', '2017-08-04', '1', 1, 1),
('ihudson', '6`UP$*p9{X,|Sf', 'Nhậm Vy', 'resources/users/1.jpg', '1996-09-16', 0, '274 Schaden Loaf\nNew Jerel, KY 42221', 0, 'trevor19@hotmail.com', '2017-02-26', '1', 0, 3),
('ikovacek', ',Ik\"p~-', 'Diệp Lam', 'resources/users/1.jpg', '1994-01-18', 0, '4530 Schuppe Cliffs\nWest Karamouth, NE 96050', 1842, 'gtremblay@gmail.com', '2017-09-14', '1', 0, 3),
('iokon', '>.}/$_VAbG3&Yr)0$~N[', 'Chú. Âu Cẩn', 'resources/users/8.jpg', '1993-08-20', 1, '897 Karelle Mountain Apt. 810\nMcDermottmouth, IN 74608-9300', 0, 'ethel91@pouros.biz', '2017-10-11', '0', 0, 2),
('ivory89', 'hI*]T)j', 'Mạc Duy Khải', 'resources/users/8.jpg', '1996-05-03', 1, '5996 Marvin Mills\nKingshire, NM 28045-7315', 0, 'carroll.charlene@hotmail.com', '2017-08-11', '0', 0, 4),
('jalen.koepp', 'oC?gKGf~u+Z', 'Mai Nhất Khoát', 'resources/users/20.jpg', '1993-09-17', 0, '419 Daryl Fork Apt. 169\nPort Brookeburgh, WY 14650', 1, 'isai64@hotmail.com', '2017-09-09', '1', 1, 2),
('jayda77', '@*kH<WWh2Eg!IsaT', 'Bác. An Hiểu Thủy', 'resources/users/17.jpg', '1993-05-04', 1, '34164 Kshlerin Forges Suite 572\nMarleeview, NH 60360-6210', 729426, 'zmoen@yahoo.com', '2017-12-15', '1', 0, 1),
('jbuckridge', 'bw}bwn{R5^kd}pAo', 'Bác. Hồng Khôi Thọ', 'resources/users/17.jpg', '1997-01-27', 0, '94979 Harber Squares Apt. 364\nBeattyfort, MT 25055', 421337, 'morar.patsy@williamson.net', '2017-10-21', '1', 1, 2),
('jessyca78', 'LhXct#!0p', 'Cụ. Khúc Thảo', 'resources/users/12.jpg', '1994-10-15', 1, '611 Chaz Plaza\nLake Laceyton, WV 56403', 1343, 'schumm.augusta@hegmann.com', '2017-06-21', '0', 0, 4),
('joannie88', 'p{\"Ba>a4V>^n*k[>', 'Nghị Đăng Long', 'resources/users/1.jpg', '1998-01-30', 1, '47486 Linda Square\nNew Othaview, CT 03619', 725, 'erdman.belle@metz.com', '2017-09-15', '0', 1, 3),
('johnston.destini', '9m\0b-|S3_904G.M?[y', 'Phi Mộng Diễm', 'resources/users/17.jpg', '1995-11-25', 1, '21029 Shannon Port Suite 719\nJamesonton, NC 26541-8461', 1, 'evans.rempel@carter.com', '2017-09-19', '0', 0, 3),
('june.reynolds', 'JcUZ69a$FGRi8k`J]%', 'Ông. Xa Nghĩa', 'resources/users/20.jpg', '1995-09-07', 0, '8938 Labadie Glen\nEbertberg, VT 81876-4507', 939, 'llarson@yahoo.com', '2017-05-03', '1', 1, 2),
('june06', 'D[,m*I(%8Rq', 'Quản Dạ Quế', 'resources/users/13.jpg', '1995-07-26', 0, '110 Salvador Harbors\nPort Mack, MO 09426-9020', 0, 'ricardo.metz@gmail.com', '2017-04-11', '0', 1, 3),
('kasandra.goodwin', '`e)y8~#E6~pWiw', 'Lý Phong', 'resources/users/19.jpg', '1993-04-19', 1, '9859 Haven Mount\nSchultzchester, OR 32993', 0, 'xmurphy@hotmail.com', '2017-06-20', '1', 0, 3),
('kathryn.friesen', '3=pUjl', 'Cù Huệ Lâm', 'resources/users/4.jpg', '1995-08-27', 1, '5163 Sam Avenue Apt. 373\nDickiberg, FL 03905', 682, 'virgil77@thompson.com', '2017-10-25', '0', 1, 2),
('kebert', 'J>Su+nca4Gx{ql/MZj7', 'Ông. Triệu Sĩ Trân', 'resources/users/3.jpg', '1997-01-20', 0, '99170 Balistreri Plaza\nSouth Devan, CO 45449-8604', 462524, 'jayne.kris@hotmail.com', '2017-10-15', '1', 0, 4),
('keebler.mozell', ']G-9(K$X)\"H@P;JhD?', 'Hình Kiều Phúc', 'resources/users/19.jpg', '1995-05-26', 0, '548 Domenica Course Apt. 050\nPort Lexi, IN 82076', 1, 'lockman.tatyana@hotmail.com', '2017-11-09', '1', 1, 2),
('keeling.virginie', '8|X\"`WlD@)+0/', 'Chú. Sử Như Trạch', 'resources/users/4.jpg', '1994-09-24', 1, '252 Kassandra Light Apt. 803\nFreedaside, FL 10426-5196', 0, 'kuhic.beverly@daugherty.info', '2017-05-14', '1', 1, 1),
('kenny.heaney', 'O@5d*I&&W,Abz;3e', 'Tống Nhàn', 'resources/users/18.jpg', '1993-02-24', 1, '24014 Mitchell Mill\nLake Kobyfort, MN 67572-9681', 270, 'micaela.gulgowski@white.biz', '2017-03-17', '0', 0, 4),
('kerluke.elnora', 'fwK\"lPklITesD7', 'Bác. Mộc Đông Dương', 'resources/users/12.jpg', '1994-08-12', 0, '4625 Creola Overpass Suite 743\nNorth Jonathonborough, ND 52589', 819, 'little.erling@yahoo.com', '2017-07-07', '0', 1, 3),
('kian80', 'EIjM]~8X[@~Bm<4bcJ/', 'Diệp Lễ', 'resources/users/6.jpg', '1994-03-15', 1, '87035 Raul Spur Apt. 434\nNew Patriciahaven, IA 43068-7835', 0, 'mante.rollin@white.com', '2017-07-02', '1', 0, 3),
('klockman', '\"*%!~MwR|', 'Ánh Nguyết Vọng', 'resources/users/13.jpg', '1996-12-21', 1, '326 McGlynn Wells\nElectaton, VT 43551-0923', 413, 'parisian.matilde@yahoo.com', '2017-07-03', '1', 0, 4),
('koepp.ena', '-M=~qX7%\"]Q', 'Cô. Nhữ Ánh Quế', 'resources/users/19.jpg', '1997-03-06', 0, '329 Ruecker Radial Suite 953\nBusterside, NH 09494', 0, 'lawrence.hane@gmail.com', '2017-07-06', '1', 1, 3),
('kole.swaniawski', 'G-%fZBI', 'Chị. Mang Thủy', 'resources/users/2.jpg', '1997-12-13', 1, '18093 Paucek Viaduct Suite 793\nZemlakmouth, SD 28614-0449', 405, 'winona.beer@yahoo.com', '2018-01-26', '1', 0, 2),
('kozey.addie', '-2yc:m<X', 'Thôi Uyên', 'resources/users/5.jpg', '1997-09-16', 0, '1185 Vivien Unions\nRempelland, KS 19640', 1, 'eveline.schuster@gmail.com', '2018-01-22', '1', 1, 1),
('ladarius63', 'X5i>/mf&L^.:=[azyG4', 'Nhâm Sương', 'resources/users/5.jpg', '1995-05-16', 0, '90816 Tressa Square\nWinnifredville, CO 86619-6874', 608, 'jacynthe32@hudson.com', '2017-10-04', '0', 0, 3),
('lakin.zechariah', 'FS>A:EI', 'Ty Hạc Yên', 'resources/users/2.jpg', '1993-10-23', 1, '58108 Roy Station\nWest Lafayettemouth, WY 94678-1426', 1, 'mathias51@marquardt.net', '2017-08-12', '0', 1, 1),
('lamont50', '9:qf*6FA$?4', 'Giao Cảnh Anh', 'resources/users/20.jpg', '1994-11-13', 0, '87377 Becker Ports Apt. 525\nDemetrismouth, AR 86188-5281', 1, 'xbosco@connelly.info', '2017-05-26', '1', 0, 1),
('laurel78', '~7@_m~<45U.', 'Kiều Hà Ca', 'resources/users/4.jpg', '1998-02-07', 1, '62077 Murphy Lights Suite 510\nPort Taylormouth, NM 51085', 353, 'selmer.fritsch@goyette.net', '2017-02-21', '1', 0, 4),
('laurine.beer', '6k3msy#3|', 'Hứa Nhật Tâm', 'resources/users/16.jpg', '1997-07-20', 0, '655 Loraine Island\nKihnmouth, OH 46482', 437, 'agustin.kuphal@cruickshank.com', '2017-03-19', '1', 0, 1),
('laverna.luettgen', 'MQv{K9W61', 'Bá Gia Kha', 'resources/users/4.jpg', '1997-12-28', 1, '403 Bartoletti Walk\nKrismouth, MT 85126', 0, 'wade.luettgen@gmail.com', '2018-02-09', '1', 1, 2),
('lavon36', 'aE+gckzhUBo.gXI', 'Bác. Giang Quân Hậu', 'resources/users/1.jpg', '1993-04-20', 1, '56176 Violette Walk\nCarrollstad, SD 36913-7911', 1, 'ryan.raul@gusikowski.com', '2017-12-31', '0', 0, 3),
('layne89', 'gL<DY5!r', 'Đới Lộc Ý', 'resources/users/18.jpg', '1994-02-10', 1, '4944 Dickens Lodge Suite 086\nOkunevaland, ME 01541-9259', 0, 'angus85@hotmail.com', '2017-02-18', '0', 1, 3),
('lenora34', '<>EKJ2mf\"7&]J#', 'Thạch Thông', 'resources/users/4.jpg', '1995-08-31', 1, '70963 Rowe Causeway Suite 118\nPattiefurt, NC 50107-6923', 695, 'dubuque.mae@gmail.com', '2017-07-24', '0', 0, 1),
('lera.veum', 'DdFVO;+1&7+eL^Q4n', 'Em. Đàm Tạ Lân', 'resources/users/10.jpg', '1993-12-14', 0, '920 Christiansen Vista\nRogahnfort, IL 23783', 657252, 'jasen.cartwright@gmail.com', '2017-12-24', '0', 0, 4),
('lesly.reichert', 'qeCB!:z\"B4HMO', 'Bác. Khuất Võ', 'resources/users/8.jpg', '1997-10-22', 0, '1607 Torrey Station\nCordieberg, MI 04377', 1, 'eladio84@gmail.com', '2017-07-29', '1', 0, 3),
('liliane52', 'c5I`RKI!akUq6\"`&g', 'Cụ. Quách Chung Tín', 'resources/users/10.jpg', '1994-09-30', 0, '6697 Holden Ports Suite 601\nEast Kassandra, TX 07031-4689', 542, 'shanelle.lynch@yahoo.com', '2017-04-16', '1', 0, 3),
('lilly67', 'fuPV,<OP16S', 'Cổ Chính Lai', 'resources/users/9.jpg', '1995-05-23', 1, '2270 Ryan Brooks\nNew Estellafurt, IN 95149-3602', 0, 'magnolia65@reilly.com', '2017-11-19', '0', 1, 2),
('lockman.darien', '.DPWgyWH+l_j', 'Dương Nghị Diệp', 'resources/users/17.jpg', '1993-06-25', 1, '82781 Lindgren Turnpike Apt. 766\nNew Henri, IA 27596', 0, 'jordon.hessel@yahoo.com', '2017-11-16', '1', 0, 4),
('lucinda.welch', 'i0U=Pu%/^$u3H)(@', 'Mai Tú Ngân', 'resources/users/9.jpg', '1994-11-27', 0, '512 Borer Parks\nLake Diego, NY 74128', 0, 'zetta.larkin@yahoo.com', '2017-11-02', '0', 1, 4),
('maggio.aiyana', 'Q)H4]_6', 'Bà. Lỳ Bạch Đan', 'resources/users/11.jpg', '1994-01-11', 1, '7083 Mohr Glens\nNorth Vergie, HI 55814', 1, 'trantow.wilhelmine@oconner.com', '2017-12-02', '0', 0, 4),
('malvina.kuhlman', '4~}?(VndX5zq', 'Ông. Phó Đinh Ẩn', 'resources/users/7.jpg', '1994-11-07', 1, '732 Buckridge Lane\nZiemeside, CT 65901-9930', 1, 'cartwright.avis@hotmail.com', '2017-12-26', '1', 1, 3),
('marjorie72', 'X2j|#Q', 'Lò Hướng An', 'resources/users/5.jpg', '1997-06-25', 0, '57824 Jace Loop Suite 458\nWest Goldamouth, UT 44336', 717285, 'ngulgowski@mueller.com', '2018-02-04', '1', 1, 4),
('martine75', '>m>lQ_0z%?LX', 'Cát Hợp', 'resources/users/3.jpg', '1996-11-29', 1, '5393 Kertzmann Stravenue Suite 790\nKingmouth, NH 06456', 1, 'abbott.preston@hotmail.com', '2017-06-30', '0', 1, 3),
('maryse.nicolas', '_qJ~~.', 'Bác. Viên Sĩ', 'resources/users/12.jpg', '1997-10-14', 1, '86874 Wiley Springs\nNorth Amely, IN 90852', 689883, 'emile.white@gmail.com', '2018-01-24', '0', 1, 1),
('mathew82', '`\".O2K`a6c+M)a(', 'Mâu Văn', 'resources/users/3.jpg', '1994-01-13', 0, '93610 Murphy Greens Apt. 615\nTurnerfort, WY 64774-7851', 1, 'tpouros@halvorson.com', '2017-03-29', '1', 1, 2),
('matilda.hagenes', 'wJLuMb^h25Y', 'Chị. Hạ Mẫn', 'resources/users/4.jpg', '1997-06-07', 0, '6452 Goodwin Track\nWest Jarrett, NM 63049-1564', 241277, 'monroe64@yahoo.com', '2017-12-09', '1', 0, 4),
('misty23', '5bBqh,_@', 'Bác. Bửu Thảo', 'resources/users/8.jpg', '1996-01-24', 1, '1355 Toy Mountain Apt. 931\nGaylordmouth, MT 35567-1325', 0, 'roscoe48@hotmail.com', '2017-03-28', '1', 0, 3),
('mkautzer', ',3nd$0HE&', 'Em. Thái Bích Vĩnh', 'resources/users/20.jpg', '1996-04-06', 0, '7185 Koepp Ways\nPort Theastad, IN 24890-0148', 898, 'osanford@altenwerth.com', '2017-12-22', '1', 1, 3),
('morar.hazle', '@YRFRF|2;', 'Khổng Nữ', 'resources/users/10.jpg', '1995-09-29', 1, '280 Josianne River Apt. 039\nNorth Jermain, MA 61780', 852608, 'sandrine.senger@hotmail.com', '2017-04-21', '1', 1, 2),
('mosciski.moises', 'O97Cr;Sj*TY8}lk$g', 'Chú. Hoàng Bá Phú', 'resources/users/12.jpg', '1995-01-30', 1, '859 Beer Spring\nNew Freddietown, DE 57644-9769', 1334, 'kemmer.deondre@gmail.com', '2017-03-01', '0', 0, 3),
('mprosacco', 'lNL4/RD', 'Chu Dũng Tiền', 'resources/users/15.jpg', '1995-07-10', 0, '2614 Davis Drive\nNorth Samantastad, TN 22985-5945', 1, 'swaniawski.ashlee@gmail.com', '2017-10-06', '0', 1, 3),
('neffertz', '#!CDI0Dx<\"(emSy7V;', 'Chị. Khưu Chi', 'resources/users/20.jpg', '1993-03-26', 0, '117 Howe Haven\nNorth Stewart, OK 93827-8089', 0, 'davis.maximillia@heaney.info', '2017-06-13', '1', 1, 4),
('neil25', '.?a(n/+=PA', 'Nhữ Hằng Bình', 'resources/users/11.jpg', '1994-01-28', 1, '7523 Lockman Centers Apt. 937\nFritschfurt, KY 00244-6291', 246972, 'breilly@raynor.com', '2017-08-14', '1', 0, 2),
('nicola.schaden', '`,CS)P69Y%Q:', 'Âu Đàn', 'resources/users/9.jpg', '1995-03-29', 0, '50158 Kuhlman Estate\nPort Leehaven, KS 40489', 972, 'ocummings@gmail.com', '2017-11-17', '1', 0, 3),
('oconnell.lafayette', ';p,[>iK&fr0Glb', 'Cấn Diên Đàn', 'resources/users/8.jpg', '1994-09-20', 0, '14276 Brenna Grove Apt. 516\nEast Garret, SD 51864-7412', 376831, 'benny.simonis@hotmail.com', '2017-12-09', '0', 0, 1),
('oma.macejkovic', '@nSflfIkY', 'Biện Hoàn', 'resources/users/16.jpg', '1997-11-03', 0, '676 Blanda Ramp\nHudsonview, NE 90750-1910', 690889, 'dooley.ramona@gmail.com', '2017-10-23', '0', 0, 2),
('ora07', 'NX03GI!_iNU&:]', 'Cụ. Diệp Ánh', 'resources/users/8.jpg', '1998-02-09', 0, '3462 Schowalter Skyway Suite 129\nDarlenehaven, OR 01343-9293', 740719, 'crist.ken@hotmail.com', '2017-12-17', '0', 1, 1),
('osbaldo.maggio', 'pG`l?MO>M!;1', 'Cụ. Ánh Thủy', 'resources/users/14.jpg', '1995-08-21', 1, '81577 Pinkie Ridge Suite 322\nEast Caleside, MA 47191', 434409, 'orlando11@jacobs.com', '2017-12-15', '0', 0, 3),
('owen.schoen', '2*a[T~Hrl5Z2b--~', 'Vừ Nguyễn Dương', 'resources/users/11.jpg', '1994-08-17', 1, '89653 Hoeger Manor Apt. 938\nReynoldsberg, WA 15674', 1, 'dcasper@hickle.net', '2017-03-15', '1', 0, 4),
('priscilla.kirlin', 'DMNASXr(1b?YjeWXi7i#', 'Chiêm Quân Chương', 'resources/users/19.jpg', '1997-06-24', 0, '774 Margarete Center Apt. 440\nSouth Korbinburgh, NM 12169', 1, 'howe.claudie@cummings.com', '2017-11-14', '1', 0, 2),
('qabshire', 'K4jA!!a}^\";Y?Z', 'Ninh Hà', 'resources/users/11.jpg', '1997-06-17', 1, '5018 Morissette Skyway\nKittyburgh, RI 54391-5058', 0, 'pschuppe@yahoo.com', '2017-03-10', '1', 1, 3),
('qdamore', 'W%2tW4ej', 'Cô. Bá Nhàn', 'resources/users/11.jpg', '1997-07-23', 1, '47952 Luis Camp Apt. 387\nDonnellyburgh, AR 69349-6952', 0, 'isabella42@luettgen.info', '2017-06-08', '0', 1, 1),
('quinten.monahan', 'ssscbRDB', 'Tông Chánh Thắng', 'resources/users/2.jpg', '1993-02-21', 0, '357 Jarret Ridge\nLake Jaydaview, SC 74197', 814, 'stehr.joshua@hotmail.com', '2017-11-01', '0', 1, 2),
('rachelle85', 'XZ.QJBWH=Y9MbnCA}w', 'Bà. Triệu Phong', 'resources/users/8.jpg', '1997-01-27', 0, '786 Gaylord Highway\nWillbury, NM 34953-3282', 1, 'lafayette.white@yahoo.com', '2017-05-23', '0', 0, 2),
('ramiro77', ')UN<A5XhtPUv=*xs<Y8(', 'Cô. Lạc Ngôn', 'resources/users/7.jpg', '1998-02-09', 0, '26106 Elwyn Lodge Apt. 184\nSouth Jomouth, NJ 93481-1414', 1, 'jacobson.wilfredo@hotmail.com', '2017-07-28', '1', 0, 2),
('ray05', 'gcVv;!&C!7', 'Trương Tiên Hường', 'resources/users/6.jpg', '1994-05-08', 0, '39836 Herman Mews Apt. 457\nNew Raymondville, WY 68064', 367, 'tdavis@kilback.com', '2017-04-28', '0', 0, 3),
('reichel.loraine', 'BA+QO{I$YsL?3_', 'Bế Lệ', 'resources/users/7.jpg', '1993-03-17', 1, '722 Charley Dale\nNolamouth, FL 74081-3887', 564, 'kdubuque@corwin.com', '2017-09-16', '0', 0, 4),
('rigoberto78', '_:x6+ziQy', 'Cô. Lều Uyên', 'resources/users/6.jpg', '1996-03-12', 1, '8016 Cecile Grove Suite 562\nGleasonmouth, MT 80914', 537, 'vanessa.metz@mayer.com', '2017-10-23', '0', 1, 3),
('rodriguez.alek', '+PfDnn.tZb', 'Sơn Uyển', 'resources/users/6.jpg', '1995-12-11', 1, '2046 Feeney Falls Apt. 319\nSouth Major, VA 21181-8701', 1, 'ellis.wisoky@bayer.com', '2018-01-13', '0', 1, 3),
('sage18', 'e24ePRN}c2s>)', 'Lỳ Thư', 'resources/users/15.jpg', '1995-05-09', 1, '90546 Henderson Corners Suite 435\nMalindabury, VT 31142-8789', 0, 'jschneider@collins.com', '2017-11-24', '1', 1, 2),
('sanford92', 'WXpJf1*&S>C2d', 'Cụ. Mẫn Cẩn', 'resources/users/10.jpg', '1996-09-12', 0, '499 Pagac Pike Suite 088\nWest Brannonmouth, ND 56923-8139', 1671, 'trantow.rebeca@gottlieb.net', '2017-09-25', '1', 0, 2),
('sawayn.ocie', 'f5LXIT;/', 'Ông. Lữ Linh', 'resources/users/8.jpg', '1996-09-12', 0, '9060 Satterfield Divide Apt. 531\nEast Niaside, OH 68914-8986', 1, 'steuber.titus@hotmail.com', '2017-05-31', '0', 0, 3),
('schneider.hermann', 'C7*;):U', 'Cô. Giang Sinh', 'resources/users/1.jpg', '1995-09-23', 1, '619 Bartholome Mount\nNeilville, NJ 78715-9651', 932833, 'sadye.stamm@kuhic.net', '2017-11-19', '1', 0, 1),
('schowalter.cecilia', '#2?|E}pNqzog)(14uNRX', 'Giang Quốc', 'resources/users/2.jpg', '1994-11-23', 0, '442 Schumm Plain Apt. 246\nSchambergerville, IL 55927-1960', 916, 'ayana36@mayer.biz', '2017-06-26', '1', 0, 3),
('shad58', 'x2>%!9', 'Dư Diệp Nhiên', 'resources/users/6.jpg', '1996-07-15', 1, '7929 Hosea Lodge Suite 224\nSchneiderside, IA 57602', 1, 'melyssa76@collier.com', '2017-07-09', '1', 0, 4),
('shannon47', '9#BoPF', 'Chị. Nhậm Giang Minh', 'resources/users/9.jpg', '1996-03-16', 1, '49934 Bernardo Stravenue Apt. 584\nSouth Bridie, ID 06329-5910', 239434, 'tyler.haley@hotmail.com', '2017-09-16', '0', 1, 4),
('sosinski', '@TKBS?-6&4L9ZVB', 'Từ Phụng Trân', 'resources/users/14.jpg', '1993-05-23', 0, '648 Koepp Street\nShanelton, CA 65256', 364814, 'beaulah48@herzog.com', '2017-10-07', '1', 1, 3),
('sthiel', 'xpde9/eqLMf6I6\"Y', 'Triệu Hải', 'resources/users/20.jpg', '1997-05-04', 1, '96212 Flatley Course Apt. 827\nHodkiewiczbury, MN 81248', 0, 'brendon.little@harvey.net', '2017-06-09', '0', 0, 4),
('stokes.eriberto', 'l$s~cK%2g!gKjbZ', 'Bác. Thái Đinh Lâm', 'resources/users/10.jpg', '1993-10-27', 0, '58930 Schinner Turnpike\nLeeville, TN 64728-5417', 1, 'madge.rutherford@yahoo.com', '2017-03-26', '0', 1, 2),
('tamara91', 'Vp3>,9OBnu3', 'Cụ. Bành Hội', 'resources/users/6.jpg', '1993-09-02', 1, '608 Casper Cove\nRatkeport, HI 50185', 630801, 'krystal66@hotmail.com', '2017-03-02', '0', 0, 3),
('ted90', 'Ay=68q~', 'Cụ. Cam Hà', 'resources/users/7.jpg', '1997-06-10', 0, '87848 Jordan Curve\nJohnnyhaven, CT 45160', 684733, 'tdicki@gutkowski.net', '2017-06-05', '0', 1, 3),
('tess25', 'QFs-t{<=i]e.', 'Vi Thơ Xuân', 'resources/users/18.jpg', '1997-11-09', 0, '107 Gilda Valley Suite 431\nEast Alexis, MS 05860-2073', 1, 'magnus58@yahoo.com', '2017-09-18', '1', 1, 3),
('thiel.marjorie', '6I-stU-eG$X', 'Anh. Thịnh Hạnh Toàn', 'resources/users/12.jpg', '1993-05-08', 0, '57174 Osinski Squares\nNorth Ramiro, AR 20272-7010', 0, 'qhills@hotmail.com', '2017-12-07', '0', 0, 1),
('tiara.upton', 'M[TYlo<Y#]', 'Nhâm Trâm', 'resources/users/6.jpg', '1995-10-23', 0, '364 Lebsack Lake Suite 369\nHeathcotestad, FL 03699', 1, 'hwolf@goldner.com', '2017-04-23', '1', 1, 4),
('tomasa57', '_)ou^i-n', 'Cụ. Hứa Trọng', 'resources/users/10.jpg', '1997-07-07', 1, '5543 Imogene Road Suite 534\nLangport, GA 53363', 435, 'neichmann@yahoo.com', '2017-09-11', '0', 0, 4),
('trever73', '>8=`=79DO', 'Khổng Pháp', 'resources/users/7.jpg', '1993-09-16', 1, '7397 Dallas Forks\nBogisichshire, WY 81917', 1919, 'jkoelpin@gmail.com', '2018-02-09', '0', 1, 2),
('tstracke', 'h5.\"MH_uy`r`l2', 'Kiều Tiểu Diệu', 'resources/users/3.jpg', '1993-06-28', 1, '79069 Chaz Locks\nNew Tessview, AZ 86546-4326', 1, 'robb52@hotmail.com', '2018-01-05', '1', 0, 2),
('turcotte.lamont', 'Row1<edI', 'Châu Lập Việt', 'resources/users/16.jpg', '1993-02-15', 1, '47761 Ernser Crossing\nWest Wardville, NJ 92516-9841', 1732, 'herminia.jast@grady.net', '2017-07-11', '1', 1, 2),
('tvonrueden', '^|0<b9cM/,-)\">rF1Ti', 'Danh Cát Chính', 'resources/users/19.jpg', '1994-05-10', 0, '30248 Lacey Course Suite 615\nHoseachester, ID 48542', 313, 'jarret91@hotmail.com', '2017-10-17', '1', 1, 1),
('umorar', '{B./kX{M|ylPYgU', 'Ung Hồ Trân', 'resources/users/3.jpg', '1994-07-16', 1, '61670 Veum Keys Suite 220\nHettingerberg, SD 21477', 1, 'prosacco.quinn@hotmail.com', '2018-01-08', '0', 0, 2),
('valentina86', 'A`T~7D', 'Ngô Hoan', 'resources/users/12.jpg', '1994-04-13', 0, '36877 Macejkovic Turnpike\nAlishatown, KY 17017-3619', 1, 'lnader@yahoo.com', '2017-06-22', '0', 1, 1),
('veffertz', 'K9$oEE5ey', 'Ông. Kha Huy Chiểu', 'resources/users/18.jpg', '1993-06-08', 0, '82863 Goyette Forks Suite 191\nSouth Marilou, TX 30275-4985', 374945, 'margarete.kozey@bergstrom.com', '2018-01-29', '1', 1, 2),
('vhilpert', '`C[X:}n#~E19V[P', 'Em. Đái Gia Thống', 'resources/users/20.jpg', '1996-10-29', 0, '425 Satterfield Road Apt. 820\nFerrytown, AZ 39152', 1, 'eloisa62@hotmail.com', '2017-08-29', '0', 1, 4),
('vicky.johnston', '&55Jwpo!,@/yC($;iv=', 'Hồ Đoan Ngọc', 'resources/users/5.jpg', '1997-06-01', 0, '9172 Boyd Ford\nMiltonside, AZ 10726', 1, 'marietta.ledner@grady.com', '2017-06-01', '0', 1, 4),
('wabbott', '<CYnM\"yI#M$u2', 'Cụ. Đàm Tuyến', 'resources/users/20.jpg', '1997-03-09', 1, '8542 Araceli Cape Apt. 986\nJarretville, ID 91859', 0, 'josie.streich@abernathy.net', '2017-05-13', '0', 0, 1),
('walsh.breanne', '!hjem8c`<=', 'Vũ Lý', 'resources/users/3.jpg', '1993-04-30', 0, '61489 Harold Garden Apt. 115\nAliyahside, DE 76312-2729', 448, 'steuber.lulu@hotmail.com', '2017-11-09', '1', 1, 3),
('wgislason', 'xjof/#?S#b}2Xa', 'Cụ. Cao Cẩn', 'resources/users/8.jpg', '1995-07-06', 1, '173 Destin Gardens\nAdellestad, NH 98954', 374716, 'mitchell.julian@hotmail.com', '2017-08-01', '1', 0, 4),
('xcormier', '7DP4]qqT17b', 'Đào Sinh', 'resources/users/15.jpg', '1993-09-10', 0, '49042 VonRueden Island\nWest Mercedes, DE 30713', 1, 'jaclyn80@zboncak.com', '2017-07-27', '0', 0, 2),
('xhauck', '\"k5A4zUwqa&Q,0', 'Phùng Cảnh Tuyền', 'resources/users/4.jpg', '1996-12-31', 0, '6342 Schultz Curve Suite 839\nMarquardtmouth, AL 73256', 679513, 'durgan.donato@dietrich.com', '2018-01-19', '0', 0, 4),
('xschulist', 'azi8,/J`$RJ', 'Kim Chung', 'resources/users/17.jpg', '1997-09-25', 1, '78100 Brent Rue\nAllyburgh, SD 57946', 1, 'vconroy@gmail.com', '2017-09-28', '0', 0, 4),
('yundt.marisa', '7D|`TA;+e<;', 'Thân Khang Vĩ', 'resources/users/17.jpg', '1996-08-12', 0, '5036 Will Mission\nNew Jayne, OH 59133', 273, 'angelica.koss@hotmail.com', '2017-10-12', '0', 0, 2),
('zhowell', 'q/X[CaQ\"$(/', 'Ngụy Lý', 'resources/users/14.jpg', '1994-09-17', 0, '58030 Catherine Rest Apt. 617\nKendramouth, MS 21495', 398683, 'maximilian73@greenfelder.com', '2018-01-24', '1', 0, 1),
('zraynor', 'pE|Bg]A6ua6Go[rj0^', 'Chử Yên', 'resources/users/15.jpg', '1995-03-13', 1, '1415 Terrance Summit Suite 072\nWest Cleora, IL 21532', 314971, 'jordon70@zulauf.com', '2017-06-28', '0', 1, 2),
('zturcotte', 'GfK|H(@fhs*@+>=(GNV', 'Cam Quốc Tấn', 'resources/users/7.jpg', '1995-03-25', 1, '802 Grant Ferry Suite 160\nHermannmouth, WI 78103-2885', 0, 'qyundt@schmitt.com', '2017-11-06', '1', 0, 3),
('zulauf.bud', 'v9s./3>[.{|uX[g', 'Cự Hào Sử', 'resources/users/2.jpg', '1996-07-14', 1, '767 Bria Spur\nTreutelstad, DC 02179', 1, 'gia71@hotmail.com', '2017-10-22', '0', 1, 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`AuthorId`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`BookId`),
  ADD KEY `CategoryId` (`CategoryId`),
  ADD KEY `LanguageId` (`LanguageId`),
  ADD KEY `LentId` (`LentCostId`),
  ADD KEY `PublisherId` (`PublisherId`);

--
-- Indexes for table `book_author`
--
ALTER TABLE `book_author`
  ADD PRIMARY KEY (`BookId`,`AuthorId`),
  ADD KEY `AuthorId` (`AuthorId`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`CategoryId`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`FeedBackId`);

--
-- Indexes for table `imgbook`
--
ALTER TABLE `imgbook`
  ADD PRIMARY KEY (`ImgBookId`),
  ADD KEY `BookId` (`BookId`);

--
-- Indexes for table `imgnews`
--
ALTER TABLE `imgnews`
  ADD PRIMARY KEY (`ImgNewId`),
  ADD KEY `NewsId` (`NewsId`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`LanguageId`);

--
-- Indexes for table `lend`
--
ALTER TABLE `lend`
  ADD PRIMARY KEY (`LendId`),
  ADD KEY `Username` (`Username`),
  ADD KEY `PaymentMethodId` (`PaymentMethodId`);

--
-- Indexes for table `lendcost`
--
ALTER TABLE `lendcost`
  ADD PRIMARY KEY (`LentCostId`);

--
-- Indexes for table `lenditem`
--
ALTER TABLE `lenditem`
  ADD PRIMARY KEY (`LendId`,`BookId`),
  ADD KEY `BookId` (`BookId`);

--
-- Indexes for table `lend_receive`
--
ALTER TABLE `lend_receive`
  ADD PRIMARY KEY (`LendId`,`ReceiveId`),
  ADD KEY `ReceiveId` (`ReceiveId`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`NewsId`),
  ADD KEY `Username` (`Username`);

--
-- Indexes for table `publisher`
--
ALTER TABLE `publisher`
  ADD PRIMARY KEY (`PublisherId`);

--
-- Indexes for table `receive`
--
ALTER TABLE `receive`
  ADD PRIMARY KEY (`ReceiveId`),
  ADD KEY `Username` (`Username`);

--
-- Indexes for table `receiveitem`
--
ALTER TABLE `receiveitem`
  ADD PRIMARY KEY (`ReceiveId`,`BookId`),
  ADD KEY `BookId` (`BookId`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`Username`),
  ADD KEY `Role` (`Role`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `author`
--
ALTER TABLE `author`
  MODIFY `AuthorId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `BookId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `CategoryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `FeedBackId` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `imgbook`
--
ALTER TABLE `imgbook`
  MODIFY `ImgBookId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `imgnews`
--
ALTER TABLE `imgnews`
  MODIFY `ImgNewId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `LanguageId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `lend`
--
ALTER TABLE `lend`
  MODIFY `LendId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `lendcost`
--
ALTER TABLE `lendcost`
  MODIFY `LentCostId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `NewsId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `publisher`
--
ALTER TABLE `publisher`
  MODIFY `PublisherId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `receive`
--
ALTER TABLE `receive`
  MODIFY `ReceiveId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `book`
--
ALTER TABLE `book`
  ADD CONSTRAINT `book_ibfk_1` FOREIGN KEY (`CategoryId`) REFERENCES `category` (`CategoryId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `book_ibfk_3` FOREIGN KEY (`LanguageId`) REFERENCES `language` (`LanguageId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `book_ibfk_5` FOREIGN KEY (`PublisherId`) REFERENCES `publisher` (`PublisherId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `book_author`
--
ALTER TABLE `book_author`
  ADD CONSTRAINT `book_author_ibfk_1` FOREIGN KEY (`AuthorId`) REFERENCES `author` (`AuthorId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `book_author_ibfk_2` FOREIGN KEY (`BookId`) REFERENCES `book` (`BookId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `imgbook`
--
ALTER TABLE `imgbook`
  ADD CONSTRAINT `imgbook_ibfk_3` FOREIGN KEY (`BookId`) REFERENCES `book` (`BookId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `imgnews`
--
ALTER TABLE `imgnews`
  ADD CONSTRAINT `imgnews_ibfk_1` FOREIGN KEY (`NewsId`) REFERENCES `news` (`NewsId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `lend`
--
ALTER TABLE `lend`
  ADD CONSTRAINT `lend_ibfk_1` FOREIGN KEY (`Username`) REFERENCES `user` (`Username`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `lenditem`
--
ALTER TABLE `lenditem`
  ADD CONSTRAINT `lenditem_ibfk_1` FOREIGN KEY (`BookId`) REFERENCES `book` (`BookId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `lenditem_ibfk_2` FOREIGN KEY (`LendId`) REFERENCES `lend` (`LendId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `lend_receive`
--
ALTER TABLE `lend_receive`
  ADD CONSTRAINT `lend_receive_ibfk_1` FOREIGN KEY (`ReceiveId`) REFERENCES `receive` (`ReceiveId`),
  ADD CONSTRAINT `lend_receive_ibfk_2` FOREIGN KEY (`LendId`) REFERENCES `lend` (`LendId`);

--
-- Constraints for table `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `news_ibfk_1` FOREIGN KEY (`Username`) REFERENCES `user` (`Username`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `receiveitem`
--
ALTER TABLE `receiveitem`
  ADD CONSTRAINT `receiveitem_ibfk_1` FOREIGN KEY (`BookId`) REFERENCES `book` (`BookId`),
  ADD CONSTRAINT `receiveitem_ibfk_2` FOREIGN KEY (`ReceiveId`) REFERENCES `receive` (`ReceiveId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
