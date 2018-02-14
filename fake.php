<?php
require __DIR__ . "/vendor/autoload.php";
require __DIR__ . "/config/config.db.php";

$faker = Faker\Factory::create();
$faker_vi = Faker\Factory::create('vi_VN');

/* change character set to utf8 */

if (!$conn->set_charset("utf8")) {
    printf("Error loading character set utf8: %s\n", $conn->error);
    exit();
}
else
    printf("Current character set: %s<br/>", $conn->character_set_name());


$ID_CATEGORY = get_id_list($conn, 'category');
$ID_PUBLISHER = get_id_list($conn, 'publisher');
$ID_LANGUAGE = get_id_list($conn, 'language');
$ID_LENDCOST = get_id_list($conn, 'lendcost');
$ID_BOOK = get_id_list($conn, 'book');
$ID_AUTHOR = get_id_list($conn, 'author');
$ID_USER = get_id_list($conn, 'user');
$ID_LEND = get_id_list($conn, 'lend');
$ID_RECEIVE = get_id_list($conn, 'receive');

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
    while ($row = $result->fetch_array(MYSQLI_NUM)) {
        array_push($id, $row[0]);
    };

    return $id;
}

## CLEAN
/*

TRUNCATE TABLE author;
TRUNCATE TABLE book;
TRUNCATE TABLE book_author;
TRUNCATE TABLE category;
TRUNCATE TABLE feedback;
TRUNCATE TABLE imgbook;
TRUNCATE TABLE imgnews;
TRUNCATE TABLE language;
TRUNCATE TABLE lend;
TRUNCATE TABLE lend_receive;
TRUNCATE TABLE lendcost;
TRUNCATE TABLE lenditem;
TRUNCATE TABLE news;
TRUNCATE TABLE publisher;
TRUNCATE TABLE receive;
TRUNCATE TABLE receiveitem;
TRUNCATE TABLE user

*/

### AUTHOR
function insert_author($num_row_insert) {
    for ($i = 0; $i < $num_row_insert; $i++) {
        $QUERY = "INSERT INTO `author` (`AuthorNames`, `AuthorDetails`) VALUES
                ('{$GLOBALS['faker']->name}', '{$GLOBALS['faker']->text}'),
                ('{$GLOBALS['faker_vi']->name}', '{$GLOBALS['faker']->text}') ";
        
        $check = mysqli_query($GLOBALS['conn'], $QUERY);
        if ($check)
            echo 'AUTHOR Inserted<br>';
    }
}

### CATEGORY
function insert_category() {
    $cat = array(
        "Sách Tiếng Anh", "Sách ăn học", "Sách kinh tế", "Sách Văn Học", "Sách thiếu nhi", "Sách kỹ năng - Sống đẹp", "Sách Bà mẹ - Em bé", "Sách Tham Khảo", "Sách Học Ngoại Ngữ", "Từ Điển", "Truyện Tranh, Manga, Comic", "Giáo Trình Đại Học - Cao Đẳng", "Sách Kiến Thức Tổng Hợp", "Sách Lịch sử", "Sách Khoa Học - Kỹ Thuật", "Điện Ảnh - Nhạc - Họa", "Sách Tôn Giáo - Tâm Linh", "Sách Văn Hoá - Du Lịch", "Sách Chính Trị", "Sách Pháp Lý", "Sách Nông Nghiệp", "Sách Lâm Nghiệp", "Sách Ngư Nghiệp", "Sách Công Nghệ Thông Tin", "Sách Y Học", "Tạp Chí", "Sách Tâm lý - Giới tính", "Sách Thường Thức - Đời Sống"
    );

    foreach ($cat as $category) {
        $QUERY = "INSERT INTO `category` (`CategoryNames`, `CategoryDescription`) VALUES
                    ('{$category}', '{$GLOBALS['faker']->text}');";
        $check = mysqli_query($GLOBALS['conn'], $QUERY);
        if ($check)
            echo 'CATEGORY Inserted<br>';
    }
}

### FEEDBACK
function insert_feedback($num_row_insert) {
    for ($i = 0; $i < $num_row_insert; $i++) {
        $QUERY = "INSERT INTO `feedback` (`FeedBackTitle`, `FeedBackDate`, `FeedBackContent`) VALUES
                ('{$GLOBALS['faker']->sentence(6, true)}', 
                 '{$GLOBALS['faker']->dateTimeBetween('-1 years', 'now')->format('Y-m-d H:i:s')}',
                 '{$GLOBALS['faker']->text}');";
        $check = mysqli_query($GLOBALS['conn'], $QUERY);
        if ($check) 
            echo 'FEEDBACK Inserted<br>';
    }
}

### LANGUAGE
function insert_language() {
    $lang = array(
        'Tiếng Trung', 'Tiếng Anh', 'Tiếng Hindi',
        'Tiếng Tây Ban Nha', 'Tiếng Nga', 'Tiếng Ả Rập',
        'Tiếng Bồ Đào Nha', 'Tiếng Ý', 'Tiếng Pháp',
        'Tiếng Nhật', 'Tiếng Việt', 'Tiếng Đức' 
    );

    foreach ($lang as $language) {
        $QUERY = "INSERT INTO `language` (`LaguageName`) VALUES
                ('{$language}');";
        $check = mysqli_query($GLOBALS['conn'], $QUERY);
        if ($check)
            echo 'LANGUAGE Inserted<br>';
    }
}


### PUBLISHER
function insert_publisher($num_row_insert) {
    for ($i = 0; $i < $num_row_insert; $i++) {
        $QUERY = "INSERT INTO `publisher` (`PublisherName`) VALUES
                  ('{$GLOBALS['faker']->unique()->company()}');";
        $check = mysqli_query($GLOBALS['conn'], $QUERY);
        if ($check)
            echo 'PUBLISHER Inserted<br>';
    }
}


### LENDCOST
function insert_lendcost() {
    $cost = array(
        'Theo Tháng' => '70000',
        'Theo Quý' => '60000',
        'Theo Năm'  => '50000'
    );

    foreach ($cost as $lenddetail => $lendcost) {
        $QUERY = "INSERT INTO `lendcost` (`LentDetails`, `LentCost`) VALUES
                    ('{$lenddetail}', '{$lendcost}');";
        $check = mysqli_query($GLOBALS['conn'], $QUERY);
        if ($check)
            echo 'LENDCOST Inserted<br>';
    }
}

### BOOK
function insert_book($num_row_insert) {
    global $ID_CATEGORY, $ID_PUBLISHER, $ID_LANGUAGE, $ID_LENDCOST;
    for ($i = 0; $i < $num_row_insert; $i++) {
        $BookQuantity = rand(10, 50);
        $BookLentTimes = rand(10, 300);
        $QUERY = "INSERT INTO `book` (`BookNames`, `BookPrices`, `BookDescription`, 
                                      `BookQuantity`, `BookUpdateDate`, `BookLentTimes`, 
                                      `CategoryId`, `PublisherId`, `LanguageId`, `LentCostId`) VALUES
                  ('{$GLOBALS['faker']->text(10)}',
                   '{$GLOBALS['faker']->randomNumber(rand(5, 6))}',
                   '{$GLOBALS['faker']->text(rand(80, 100))}',
                   '{$BookQuantity}',
                   '{$GLOBALS['faker']->dateTimeBetween('-1 years', 'now')->format('Y-m-d H:i:s')}',
                   '{$BookLentTimes}',
                   '{$ID_CATEGORY[rand(0, count($ID_CATEGORY) - 1)]}',
                   '{$ID_PUBLISHER[rand(0, count($ID_PUBLISHER) - 1)]}',
                   '{$ID_LANGUAGE[rand(0, count($ID_LANGUAGE) - 1)]}',
                   '{$ID_LENDCOST[rand(0, count($ID_LENDCOST) - 1)]}');";
        $check = mysqli_query($GLOBALS['conn'], $QUERY);
        if ($check)
            echo 'BOOK Inserted<br>';
    }
}

### BOOKAUTHOR
function insert_bookauthor($num_row_insert) {
    global $ID_BOOK, $ID_AUTHOR;
    for ($i = 0; $i < $num_row_insert; $i++) {
        $QUERY = "INSERT INTO `book_author` (`BookId`, `AuthorId`) VALUES
                  ('{$ID_BOOK[rand(0, count($ID_BOOK) - 1)]}', 
                   '{$ID_AUTHOR[rand(0, count($ID_AUTHOR) - 1)]}');"; 
        $check = mysqli_query($GLOBALS['conn'], $QUERY);
        if ($check)
            echo 'BOOKAUTHOR Inserted<br>';
    }
}

### USER
function insert_user($num_row_insert) {
    for ($i = 0; $i < $num_row_insert; $i++) {
        $image = 'resources/users/' . rand(1,20) . '.jpg';
        $gender = rand(0, 1);
        $active = rand(0, 1);
        $status = rand(0, 1);
        $role = rand(1, 4);
        $QUERY = "INSERT INTO `user` (`Username`, `Passwords`, `DisplayName`, `UserImg`, 
                                      `Birthday`, `Gender`, `Address`, `Phone`, `Email`, 
                                      `ExpriredDate`, `Active`, `Status`, `Role`) VALUES
                       ('{$GLOBALS['faker']->unique()->username(12, 20)}', 
                        '{$GLOBALS['faker']->password}',
                        '{$GLOBALS['faker_vi']->name}', 
                        '{$image}', 
                        '{$GLOBALS['faker']->dateTimeBetween('-25 years', '-20 years')->format('Y-m-d')}', 
                        '{$gender}', 
                        '{$GLOBALS['faker']->address}', 
                        '{$GLOBALS['faker']->PhoneNumber('mobileNumber')}',
                        '{$GLOBALS['faker']->email}',
                        '{$GLOBALS['faker']->dateTimeBetween('-1 years', 'now')->format('Y-m-d')}',
                        '{$active}',
                        '{$status}',
                        '{$role}'
                        );"; 
        $check = mysqli_query($GLOBALS['conn'], $QUERY);
        if ($check)
            echo 'USER Inserted<br>';
    }
}

### NEWS
function insert_news($num_row_insert) {
    global $ID_USER;
    for ($i = 0; $i < $num_row_insert; $i++) {
        $username = $ID_USER[rand(0, count($ID_USER) - 1)];
        $image = 'resources/news/' . rand(1,20) . '.jpg';
        $QUERY = "INSERT INTO `news` (`Title`, `NewsNames`, `NewsContent`, `ImgNews`, `Username`) VALUES
                    ('{$GLOBALS['faker']->sentence(rand(4, 8))}', 
                     '{$GLOBALS['faker']->sentence(rand(10, 20))}', 
                     '{$GLOBALS['faker']->text}', 
                     '{$image}', '{$username}');";
        // echo $QUERY;
        $check = mysqli_query($GLOBALS['conn'], $QUERY);
        if ($check)
            echo 'NEWS Inserted<br>';
    }
}

### IMGBOOK
function insert_imgbook($num_row_insert) {
    global $ID_BOOK;
    for ($i = 0; $i < $num_row_insert; $i++) {
        $username = $ID_BOOK[rand(0, count($ID_BOOK) - 1)];
        $image = 'resources/books/' . rand(1,20) . '.jpg';
        $QUERY = "INSERT INTO `imgbook` (`ImgBook`, `BookId`) VALUES
                    ('{$image}', '{$username}');";
        // echo $QUERY;
        $check = mysqli_query($GLOBALS['conn'], $QUERY);
        if ($check)
            echo 'IMGBOOK Inserted<br>';
    }
}

### LEND
function insert_lend($num_row_insert) {
    global $ID_USER;
    for ($i = 0; $i < $num_row_insert; $i++) {
        $username = $ID_USER[rand(0, count($ID_USER) - 1)];
        $CreateDate = $GLOBALS['faker']->dateTimeThisYear('now')->format('Y-m-d h:m:s');
        $EndDate = gmdate('Y-m-d', strtotime('+2 week', strtotime($CreateDate)));
        $Status = rand(0, 1);
        $Payment = rand(1, 5);
        $QUERY = "INSERT INTO `lend` (`LendCreateDate`, `LendExpDate`, `LendStatus`,
                                      `PaymentMethodId`, `Username`) VALUES
                    ('{$CreateDate}',
                     '{$EndDate}',
                     '{$Status}', 
                     '$Payment',
                     '{$username}');";
        $check = mysqli_query($GLOBALS['conn'], $QUERY);
        if ($check)
            echo 'LEND Inserted<br>';
    }
}

### LENDITEM
function insert_lenditem() {
    global $ID_LEND, $ID_BOOK;
    foreach ($ID_LEND as $lend_id) {
        $Status = rand(0, 1);
        // Get LendCreateDate
        $SQL = "SELECT `LendCreateDate` FROM `lend` WHERE `LendId`=".$lend_id;
        $CreateDate = $GLOBALS['conn']->query($SQL)->fetch_object()->LendCreateDate;
        // Create QUERY to insert multiple lend at once 
        $num_book = rand(1, 5);
        $QUERY = "INSERT INTO `lenditem`(`LendId`, `BookId`, `LendCreateDate`, `LendStatus`) VALUES ";
        for ($j = 0; $j < $num_book; $j++) {
            $book_id = $ID_BOOK[rand(0, count($ID_BOOK) - 1)];
            $QUERY .= "('{$lend_id}', '{$book_id}', '{$CreateDate}', '{$Status}')";
            if ($j === $num_book - 1) 
                $QUERY .= ";";
            else
                $QUERY .= ",";
        }

        $check = mysqli_query($GLOBALS['conn'], $QUERY);
        if ($check)
            echo 'LENDITEM Inserted<br>';
    }
}

### RECEIVE
### LEND-RECEIVE
function insert_receive($num_row_insert) {
    global $ID_USER, $ID_LEND;
    for ($i = 1; $i <= $num_row_insert; $i++) {
        $username = $ID_USER[rand(0, count($ID_USER) - 1)];
        $lend_id = $ID_LEND[rand(0, count($ID_LEND) - 1)];
        // Get Lend Create Date
        $SQL = "SELECT `LendCreateDate` FROM `lend` WHERE `LENDID`=".$lend_id;
        $CreateDate = $GLOBALS['conn']->query($SQL)->fetch_object()->LendCreateDate;
        // Create Receive Date 4->6 from LendCreateDate
        $time_diff = '+' . rand(4, 6) . ' day';
        $Date = gmdate('Y-m-d H:i:s', strtotime($time_diff, strtotime($CreateDate)));

        $QUERY = "INSERT INTO `receive`(`ReceiveDate`, `Username`) VALUES
                    ('{$Date}', '{$username}');
                  INSERT INTO `lend_receive`(`LendId`, `ReceiveId`) VALUES
                    ('{$lend_id}', '{$i}');";
        echo $QUERY . '<br>';
        $check = mysqli_query($GLOBALS['conn'], $QUERY);
        if ($check)
            echo 'RECEIVE Inserted<br>';
    }
}

### RECEIVE TICKET
function insert_receiveitem() {
    global $ID_RECEIVE, $ID_BOOK;
    foreach ($ID_RECEIVE as $receive_id) {
        $Status = rand(0, 1);
        // Get ReceiveDate
        $SQL = "SELECT `ReceiveDate` FROM `receive` WHERE `ReceiveId`=".$receive_id;
        $receive_date = $GLOBALS['conn']->query($SQL)->fetch_object()->ReceiveDate;
        // Get lend ID
        $SQL = "SELECT `LendId` FROM `lend_receive` WHERE `ReceiveId`=".$receive_id;
        $lend_id = $GLOBALS['conn']->query($SQL)->fetch_object()->LendId;
        // Get number of lend book 
        // (num_book_RECEIVE <= num_book_LEND)
        $SQL = "SELECT `BookId` FROM `lenditem` WHERE `LendId`=".$lend_id;
        $result = mysqli_query($GLOBALS['conn'], $SQL);
        $max_book = 0;
        while ($row = mysqli_fetch_array($result, MYSQLI_ASSOC)) {
            $max_book++;
        };
        // Create QUERY to insert multiple receiveitem at once 
        $num_book = rand(1, $max_book);
        $QUERY = "INSERT INTO `receiveitem`(`ReceiveId`, `BookId`, 
                                            `ReceiveDate`, `ReceiveStatus`) VALUES ";
        for ($j = 0; $j < $num_book; $j++) {
            $book_id = $ID_BOOK[rand(0, count($ID_BOOK) - 1)];
            $QUERY .= "('{$receive_id}', '{$book_id}', '{$receive_date}', '{$Status}')";
            if ($j === $num_book - 1) 
                $QUERY .= ";"; // end of QUERY
            else
                $QUERY .= ","; // NEXT VALUE
        }

        // echo $QUERY . '<br>';
        $check = mysqli_query($GLOBALS['conn'], $QUERY);
        if ($check)
            echo 'RECEIVEITEM Inserted<br>';
    }
}

### LEND-RECEIVE
// function insert_lendreceive($num_row_insert) {
//     global $ID_RECEIVE, $ID_LEND;
//     for ($i = 0; $i < $num_row_insert; $i++) {
//         $receive = $ID_RECEIVE[rand(0, count($ID_RECEIVE) - 1)];
//         $lend = $ID_LEND[rand(0, count($ID_LEND) - 1)];
//         $QUERY = "INSERT INTO `lend_receive`(`LendId`, `ReceiveId`) VALUES
//                         ('{$lend}', '{$receive}');";
//         $check = mysqli_query($GLOBALS['conn'], $QUERY);
//         if ($check)
//             echo 'LEND-RECEIVE Inserted<br>';
//     }
// }

function main() {
    insert_user(200);
    insert_author(100);
    insert_feedback(100);
    insert_publisher(100);
    insert_category();
    insert_language();
    insert_lendcost();
}

function _main() {
    insert_book(200); // category / author / publisher / language
    insert_news(100); // username
    insert_lend(100); // username
}

function __main() {
    insert_bookauthor(300); // book / author
    insert_imgbook(100); // book
    insert_lenditem(100); // lendid / lendCreateDate
    # NOT Working
    insert_receive(100); // username / lendid

}

function ___main() {
    insert_receiveitem(100); // receive
}

main();
// _main();
// __main();
// ___main();

?>
