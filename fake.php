<?php
require __DIR__ . '/vendor/autoload.php';
require __DIR__ . "/config/config.db.php";

$faker = Faker\Factory::create();
$faker_vi = Faker\Factory::create('vi_VN');

/* change character set to utf8 */

if (!$conn->set_charset("utf8")) {
    printf("Error loading character set utf8: %s\n", $conn->error);
    exit();
} else {
    printf("Current character set: %s<br/>", $conn->character_set_name());
}

$ID_CATEGORY = get_id_list($conn, 'category');
$ID_PUBLISHER = get_id_list($conn, 'publisher');
$ID_LANGUAGE = get_id_list($conn, 'language');
$ID_LENDCOST = get_id_list($conn, 'lendcost');
$ID_BOOK = get_id_list($conn, 'book');
$ID_AUTHOR = get_id_list($conn, 'author');
$ID_USER = get_id_list($conn, 'user');
$ID_LEND = get_id_list($conn, 'lend');
$ID_RECEIVE = get_id_list($conn, 'receive');
// echo rand(0, count($ID_CATEGORY) - 1);

// CLEAN
// // TRUNCATE TABLE author;
// // TRUNCATE TABLE book;
// // TRUNCATE TABLE book_author;
// // TRUNCATE TABLE category;
// // TRUNCATE TABLE feedback;
// // TRUNCATE TABLE imgbook;
// // TRUNCATE TABLE imgnews;
// // TRUNCATE TABLE language;
// // TRUNCATE TABLE lend;
// // TRUNCATE TABLE lend_receive;
// // TRUNCATE TABLE lendcost;
// // TRUNCATE TABLE lendticket;
// // TRUNCATE TABLE news;
// // TRUNCATE TABLE publisher;
// // TRUNCATE TABLE receive;
// // TRUNCATE TABLE receiveticket;
// // TRUNCATE TABLE user

// ### AUTHOR
// for ($i = 0; $i < 100; $i++) {
//     $QUERY = "INSERT INTO `author` (`AuthorNames`, `AuthorDetails`) VALUES
//               ('{$faker->name}', '{$faker->text}'),
//               ('{$faker_vi->name}', '{$faker->text}') ";
    
//     $check = mysqli_query($conn, $QUERY);
//     if ($check) {
//         echo 'AUTHOR Inserted<br>';
//     }
// }


// ### CATEGORY
// $cat = array(
//     "Sách Tiếng Anh", "Sách ăn học", "Sách kinh tế", "Sách Văn Học", "Sách thiếu nhi", "Sách kỹ năng - Sống đẹp", "Sách Bà mẹ - Em bé", "Sách Tham Khảo", "Sách Học Ngoại Ngữ", "Từ Điển", "Truyện Tranh, Manga, Comic", "Giáo Trình Đại Học - Cao Đẳng", "Sách Kiến Thức Tổng Hợp", "Sách Lịch sử", "Sách Khoa Học - Kỹ Thuật", "Điện Ảnh - Nhạc - Họa", "Sách Tôn Giáo - Tâm Linh", "Sách Văn Hoá - Du Lịch", "Sách Chính Trị", "Sách Pháp Lý", "Sách Nông Nghiệp", "Sách Lâm Nghiệp", "Sách Ngư Nghiệp", "Sách Công Nghệ Thông Tin", "Sách Y Học", "Tạp Chí", "Sách Tâm lý - Giới tính", "Sách Thường Thức - Đời Sống"
// );

// foreach ($cat as $category) {
//     $QUERY = "INSERT INTO `category` (`CategoryNames`, `CategoryDescription`) VALUES
//                 ('{$category}', '{$faker->text}');";
//     $check = mysqli_query($conn, $QUERY);
//     if ($check) {
//         echo 'CATEGORY Inserted<br>';
//     }
// }


// ### FEEDBACK
// for ($i = 0; $i < 100; $i++) {
//     $QUERY = "INSERT INTO `feedback` (`FeedBackTitle`, `FeedBackDate`, `FeedBackContent`) VALUES
//              ('{$faker->sentence(6, true)}', 
//               '{$faker->dateTimeBetween('-1 years', 'now')->format('Y-m-d H:i:s')}',
//               '{$faker->text}');";
//     $check = mysqli_query($conn, $QUERY);
//     if ($check) {
//         echo 'FEEDBACK Inserted<br>';
//     }
// }


// ### LANGUAGE
// $lang = array(
//     'Tiếng Trung', 'Tiếng Anh', 'Tiếng Hindi',
//     'Tiếng Tây Ban Nha', 'Tiếng Nga', 'Tiếng Ả Rập',
//     'Tiếng Bồ Đào Nha', 'Tiếng Ý', 'Tiếng Pháp',
//     'Tiếng Nhật', 'Tiếng Việt', 'Tiếng Đức' 
// );

// foreach ($lang as $language) {
//     $QUERY = "INSERT INTO `language` (`LaguageName`) VALUES
//               ('{$language}');";
//     $check = mysqli_query($conn, $QUERY);
//     if ($check) {
//         echo 'LANGUAGE Inserted<br>';
//     }
// }


// ### PUBLISHER
// for ($i = 0; $i < 100; $i++) {
//     $QUERY = "INSERT INTO `publisher` (`PublisherName`) VALUES
//               ('{$faker->unique()->company()}');";
//     $check = mysqli_query($conn, $QUERY);
//     if ($check) {
//         echo 'PUBLISHER Inserted<br>';
//     }
// }


// ### LENDCOST
// $cost = array(
//     'Theo Tháng' => '70000',
//     'Theo Quý' => '60000',
//     'Theo Năm'  => '50000'
// );

// foreach ($cost as $lenddetail => $lendcost) {
//     $QUERY = "INSERT INTO `lendcost` (`LentDetails`, `LentCost`) VALUES
//                 ('{$lenddetail}', '{$lendcost}');";
//     $check = mysqli_query($conn, $QUERY);
//     if ($check) {
//         echo 'LENDCOST Inserted<br>';
//     }
// }


// ### BOOK
// for ($i = 0; $i < 300; $i++) {
//     $BookQuantity = rand(10, 50);
//     $BookLentTimes = rand(10, 300);
//     $QUERY = "INSERT INTO `book` (`BookNames`, `BookPrices`, `BookDescription`, 
//                                   `BookQuantity`, `BookUpdateDate`, `BookLentTimes`, 
//                                   `CategoryId`, `PublisherId`, `LanguageId`, `LentCostId`) VALUES
//               ('{$faker->text(10)}',
//                '{$faker->randomNumber(rand(5, 6))}',
//                '{$faker->text(rand(80, 100))}',
//                '{$BookQuantity}',
//                '{$faker->dateTimeBetween('-1 years', 'now')->format('Y-m-d H:i:s')}',
//                '{$BookLentTimes}',
//                '{$ID_CATEGORY[rand(0, count($ID_CATEGORY) - 1)]}',
//                '{$ID_PUBLISHER[rand(0, count($ID_PUBLISHER) - 1)]}',
//                '{$ID_LANGUAGE[rand(0, count($ID_LANGUAGE) - 1)]}',
//                '{$ID_LENDCOST[rand(0, count($ID_LENDCOST) - 1)]}');";
//     $check = mysqli_query($conn, $QUERY);
//     if ($check) {
//         echo 'BOOK Inserted<br>';
//     }
// }


// ### BOOKAUTHOR
// for ($i = 0; $i < 100; $i++) {
//     $QUERY = "INSERT INTO `book_author` (`BookId`, `AuthorId`) VALUES
//               ('{$ID_BOOK[rand(0, count($ID_BOOK) - 1)]}', 
//                '{$ID_AUTHOR[rand(0, count($ID_AUTHOR) - 1)]}');"; 
//     $check = mysqli_query($conn, $QUERY);
//     if ($check) {
//         echo 'BOOKAUTHOR Inserted<br>';
//     }
// }

// ### USER
// for ($i = 0; $i < 200; $i++) {
//     $image = 'resources/users/' . rand(1,20) . '.jpg';
//     $gender = rand(0, 1);
//     $active = rand(0, 1);
//     $status = rand(0, 1);
//     $role = rand(1, 4);
//     $QUERY = "INSERT INTO `user` (`Username`, `Passwords`, `DisplayName`, `UserImg`, 
//                                   `Birthday`, `Gender`, `Address`, `Phone`, `Email`, 
//                                   `ExpriredDate`, `Active`, `Status`, `Role`) VALUES
//                    ('{$faker->unique()->username(12, 20)}', 
//                     '{$faker->password}',
//                     '{$faker_vi->name}', 
//                     '{$image}', 
//                     '{$faker->dateTimeBetween('-25 years', '-20 years')->format('Y-m-d')}', 
//                     '{$gender}', 
//                     '{$faker->address}', 
//                     '{$faker->PhoneNumber('mobileNumber')}',
//                     '{$faker->email}',
//                     '{$faker->dateTimeBetween('-1 years', 'now')->format('Y-m-d')}',
//                     '{$active}',
//                     '{$status}',
//                     '{$role}'
//                     );"; 
//     $check = mysqli_query($conn, $QUERY);
//     if ($check) {
//         echo 'USER Inserted<br>';
//     }
// }


// ### NEWS
// for ($i = 0; $i < 100; $i++) {
//     $username = $ID_USER[rand(0, count($ID_USER) - 1)];
//     $image = 'resources/news/' . rand(1,20) . '.jpg';
//     $QUERY = "INSERT INTO `news` (`Title`, `NewsNames`, `NewsContent`, `ImgNews`, `Username`) VALUES
//                 ('{$faker->sentence(rand(4, 8))}', 
//                  '{$faker->sentence(rand(10, 20))}', 
//                  '{$faker->text}', 
//                  '{$image}', '{$username}');";
//     // echo $QUERY;
//     $check = mysqli_query($conn, $QUERY);
//     if ($check) {
//         echo 'NEWS Inserted<br>';
//     }
// }


// ### IMGBOOK
// for ($i = 0; $i < 100; $i++) {
//     $username = $ID_BOOK[rand(0, count($ID_BOOK) - 1)];
//     $image = 'resources/books/' . rand(1,20) . '.jpg';
//     $QUERY = "INSERT INTO `imgbook` (`ImgBook`, `BookId`) VALUES
//                 ('{$image}', '{$username}');";
//     // echo $QUERY;
//     $check = mysqli_query($conn, $QUERY);
//     if ($check) {
//         echo 'IMGBOOK Inserted<br>';
//     }
// }


// ### LEND
// for ($i = 0; $i < 100; $i++) {
//     $username = $ID_USER[rand(0, count($ID_USER) - 1)];
//     $CreateDate = $faker->dateTimeThisYear('now')->format('Y-m-d h:m:s');
//     $EndDate = gmdate('Y-m-d', strtotime('+2 week', strtotime($CreateDate)));
//     $Status = rand(0, 1);
//     $Payment = rand(1, 5);
//     $QUERY = "INSERT INTO `lend` (`LendCreateDate`, `LendDeadline`, `LendStatus`,
//                                   `PaymentMethodId`, `Username`) VALUES
//                 ('{$CreateDate}',
//                  '{$EndDate}',
//                  '{$Status}', 
//                  '$Payment',
//                  '{$username}');";
//     $check = mysqli_query($conn, $QUERY);
//     if ($check) {
//         echo 'LEND Inserted<br>';
//     }
// }


// ### LENDTICKET
// for ($i = 0; $i < 100; $i++) {
//     $Status = rand(0, 1);
//     $Quanlity = rand(1, 5);
//     $lend = $ID_LEND[rand(0, count($ID_LEND) - 1)];
//     $book = $ID_BOOK[rand(0, count($ID_BOOK) - 1)];
//     $QUERY = "INSERT INTO `lendticket`(`LendId`, `BookId`, `LendQuantity`, `LendTicketStatus`) VALUES 
//                 ('{$lend}', '{$book}', '{$Quanlity}', '{$Status}');";
//     $check = mysqli_query($conn, $QUERY);
//     if ($check) {
//         echo 'LENDTICKET Inserted<br>';
//     }
// }


// ### RECEIVE
// for ($i = 0; $i < 100; $i++) {
//     $username = $ID_USER[rand(0, count($ID_USER) - 1)];

//     $lend_id = $ID_LEND[rand(0, count($ID_LEND) - 1)];
//     $SQL = "SELECT `LendCreateDate` FROM `lend` WHERE `LENDID`=28";
//     $CreateDate = $conn->query($SQL)->fetch_object()->LendCreateDate;
//     $Date = gmdate('Y-m-d', strtotime('+5 day', strtotime($CreateDate)));

//     $QUERY = "INSERT INTO `receive`(`ReceiveDate`, `Username`) VALUES
//                 ('{$Date}', '{$username}');";
//     $check = mysqli_query($conn, $QUERY);
//     if ($check) {
//         echo 'RECEIVE Inserted<br>';
//     }
// }


// ### RECEIVE TICKET
// for ($i = 0; $i < 100; $i++) {
//     $receive = $ID_RECEIVE[rand(0, count($ID_RECEIVE) - 1)];
//     $book = $ID_BOOK[rand(0, count($ID_BOOK) - 1)];
//     $Quan = rand(1, 5);
//     $Status = rand(0, 1);

//     $QUERY = "INSERT INTO `receiveticket`(`ReceiveId`, `BookId`, 
//                                           `ReceiveQuantity`, `ReceiveStatus`) VALUES
//                 ('{$receive}', '{$book}', '{$Quan}', '{$Status}');";
//     $check = mysqli_query($conn, $QUERY);
//     if ($check) {
//         echo 'RECEIVE TICKET Inserted<br>';
//     }
// }


// ### LEND-RECEIVE
// for ($i = 0; $i < 100; $i++) {
//     $receive = $ID_RECEIVE[rand(0, count($ID_RECEIVE) - 1)];
//     $lend = $ID_LEND[rand(0, count($ID_LEND) - 1)];
//     $QUERY = "INSERT INTO `lend_receive`(`LendId`, `ReceiveId`) VALUES
//                     ('{$lend}', '{$receive}');";
//     // echo $QUERY;
//     $check = mysqli_query($conn, $QUERY);
//     if ($check) {
//         echo 'LEND-RECEIVE Inserted<br>';
//     }
// }

function get_id_list($conn, $column) {
    $list = array(
        'user' => 'username',
        'book' => 'BookId',
        'author' => 'AuthorId',
        'category' => 'CategoryId',
        'publisher' => 'PublisherId',
        'lendcost' => 'LentCostId',
        'lend' => 'LendId',
        'receive' => 'ReceiveId',
        'language' => 'LanguageId'
    );
    $query = "SELECT {$list[$column]} FROM $column";
    $result = $conn->query($query);
    $id = array();
    while ($row = $result->fetch_array(MYSQLI_NUM)){
        array_push($id, $row[0]);
    };
    return $id;
}


?>