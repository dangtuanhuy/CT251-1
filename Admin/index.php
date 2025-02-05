<?php
include_once("../config/config.db.php");
session_start();
if (!isset($_SESSION['Username'])):
	echo '<meta http-equiv="refresh" content="0; URL=login.php"/>';
else:
?>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Phát Triển Ứng Dụng Trên Windowns</title>
  <meta name="description" content="">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="robots" content="all,follow">
  <!-- Bootstrap CSS-->
  <link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
  <!-- Font Awesome CSS-->
  <link rel="stylesheet" href="vendor/font-awesome/css/font-awesome.min.css">

  <!-- Fontastic Custom icon font-->
  <link rel="stylesheet" href="css/fontastic.css">
  <!-- Google fonts - Roboto -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700">
  <!-- jQuery Circle-->
  <link rel="stylesheet" href="css/grasp_mobile_progress_circle-1.0.0.min.css">
  <!-- Custom Scrollbar-->
  <link rel="stylesheet" href="vendor/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.css">
  <!-- theme stylesheet-->
  <link rel="stylesheet" href="css/style.default.css" id="theme-stylesheet">
  <!-- Custom stylesheet - for your changes-->
  <link rel="stylesheet" href="css/custom.css">
  <!-- Favicon-->
  <link rel="shortcut icon" href="img/favicon.ico">
  <style>
    a:hover {
      text-decoration: none;
      color: blue;
      font-weight: bold;
    }
  </style>
</head>
<body>
  <?php
  include "nav-left.php";
  ?>
  <div class="page">
    <!-- navbar-->
    <?php
    include "nav-top.php";
    ?>
    <!-- Counts Section -->
    <section class="dashboard-counts section-padding">
      <?php
      if (isset($_GET['page']))
      {
        $page = $_GET['page'];
        if ($page === "lent") {
          include_once("../src/lent/Lent.php");
        }
        if ($page === "addlent") {
          include_once("../src/lent/addLent.php");
        }
        if ($page === "Updatelent") {
          include_once("../src/lent/editLent.php");
        }
        // author
        if ($page === "author") {
          include_once("../src/author/Author.php");
        }
        if ($page === "addauthor") {
          include_once("../src/author/addAuthor.php");
        }
        if ($page === "updateauthor") {
          include_once("../src/author/editAuthor.php");
        }
        //publisher
        if ($page === "publisher") {
          include_once("../src/publisher/Publisher.php");
        }
        if ($page === "addpublisher") {
          include_once("../src/publisher/addPublisher.php");
        }
        if ($page === "updatepublisher") {
          include_once("../src/publisher/editPublisher.php");
        }
        //category
        if ($page === "category") {
          include_once("../src/category/Category.php");
        }
        if ($page === "addcategory") {
          include_once("../src/category/addCategory.php");
        }
        if ($page === "updatecategory") {
          include_once("../src/category/editCategory.php");
        }
        //language
        if ($page === "lang") {
          include_once("../src/lang/Lang.php");
        }
        if ($page === "addlang") {
          include_once("../src/lang/addLang.php");
        }
        if ($page === "updatelang") {
          include_once("../src/lang/editLang.php");
        }
        //Book
        if ($page === "book") {
          include_once("../src/book/Book.php");
        }
        if ($page === "addbook") {
          include_once("../src/book/addBook.php");
        }
        if ($page === "updatebook") {
          include_once("../src/book/editBook.php");
        }
        if ($page === "updatefile") {
          include_once("../src/book/updateimages.php");
        }
        //Book-Author
        if ($page === "bookauthor") {
          include_once("../src/book-author/BookAuthor.php");
        }
        if ($page === "addbook") {
          include_once("../src/book/addBook.php");
        }
        if ($page === "updatebook") {
          include_once("../src/book/editBook.php");
        }
        //News
        if ($page === "news") {
          include_once("../src/news/News.php");
        }
        if ($page === "addnews") {
          include_once("../src/news/addNews.php");
        }
        if ($page === "updatenews") {
          include_once("../src/news/editNews.php");
        }
        //User
        if ($page === "user") {
          include_once("../src/user/User.php");
        }
        // Status
        if ($page === "bookauthor") {
          include_once("../src/book-author/BookAuthor.php");
        }
        if ($page === "addbook") {
          include_once("../src/book/addBook.php");
        }
        if ($page === "updatebook") {
          include_once("../src/book/editBook.php");
        }
        //News
        if ($page === "news") {
          include_once("../src/news/News.php");
        }
        if ($page === "addnews") {
          include_once("../src/news/addNews.php");
        }
        if ($page === "updatenews") {
          include_once("../src/news/editNews.php");
        }
        //Feedback
        if ($page === "feedback") {
          include_once("../src/feedback/feedback.php");
        }
        //lenitem
        if ($page === "lenditem") {
          include_once("../src/lenditem/lenditem.php");
        }
        //Imgs
        if ($page === "imgs") {
          include_once("../src/imgs/imgs.php");
        }
        //Imgss
        if ($page === "imgss") {
          include_once("../src/imgs/imgss.php");
        }
        //Receive
        if ($page === "receive") {
          include_once("../src/receive/Receive.php");
        }
        //Receive Status
        if (isset($_GET['page']) && $_GET['page'] == "ActiveUsers") {
          if ($_GET['ReceiveStatus'] == 0) {
            $active = 1;
          }
          else {
            $active = 0;
          }
          $updateStatus = "UPDATE `receiveitem` SET `ReceiveStatus`=".$active." where `ReceiveId` = '".$_GET['ReceiveId']."'";
          mysqli_query($conn,$updateStatus);
          echo "<script>window.location.href='?page=receive'</script>";
        }
        //User
        if ($page === "user") {
          include_once("../src/user/User.php");
        }
        //active
        if (isset($_GET['page']) && $_GET['page'] === "ActiveUser"){
          if ($_GET['Active'] == 0) {
            $active = 1;
          }
          else {
            $active = 0;
          }
          $updateStatus = "UPDATE `user` SET `Active`=".$active." where `UserName` = '".$_GET['Username']."'";
          mysqli_query($conn,$updateStatus);
          echo "<script>window.location.href='?page=user'</script>";
        }
        //Feedback
        if (isset($_GET['page']) && $_GET['page'] === "ActiveUser2") {
          if ($_GET['FeedBackStatus'] == 0) {
            $active = 1;
          }
          else {
            $active = 0;
          }
          $updateStatus = "UPDATE `feedback` SET `FeedBackStatus`=".$active." where `FeedBackId` = '".$_GET['FeedBackId']."'";
          mysqli_query($conn,$updateStatus);
          echo "<script>window.location.href='?page=feedback'</script>";
        }
        //status
        if (isset($_GET['page']) && $_GET['page'] === "ActiveUser1") {
          if ($_GET['Status'] == 0) {
            $status = 1;
          }
          else {
            $status = 0;
          }
          $updateStatus = "UPDATE `user` SET `Status`=".$status." where `UserName` = '".$_GET['Username']."'";
          mysqli_query($conn,$updateStatus);
          echo "<script>window.location.href='?page=user'</script>";
        }
      }
      else
      {
        include("statistical.php");
      }
      ?>
    </section>
    <footer class="main-footer">
      <div class="container-fluid">
        <div class="row">
          <div class="col-sm-6">
            <p>Your company &copy; 2017-2019</p>
          </div>
          <div class="col-sm-6 text-right">
            <p>Design by <a href="https://bootstrapious.com" class="external">Bootstrapious</a></p>
            <!-- Please do not remove the backlink to us unless you support further theme's development at https://bootstrapious.com/donate. It is part of the license conditions. Thank you for understanding :)-->
          </div>
        </div>
      </div>
    </footer>
  </div>
  <!-- Javascript files-->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/popper.js/umd/popper.min.js"> </script>
  <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
  <script type="text/javascript" src="js/ckeditor/ckeditor.js"></script>
  <script src="js/grasp_mobile_progress_circle-1.0.0.min.js"></script>
  <script src="vendor/jquery.cookie/jquery.cookie.js"> </script>
  <script src="vendor/chart.js/Chart.min.js"></script>
  <script src="vendor/jquery-validation/jquery.validate.min.js"></script>
  <script src="vendor/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.concat.min.js"></script>
  <script src="js/charts-home.js"></script>
  <!-- Main File-->
  <script src="js/front.js"></script>
  <script src="js/chartjs-plugin-datalabels.min.js"></script>
  <link rel="stylesheet" type="text/css" href="//cdn.datatables.net/1.10.16/css/jquery.dataTables.min.css"/>
  <script type="text/javascript" src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
  <script language="javascript">
      $(document).ready(function() {
        var table = $('#myTable').DataTable( {
          responsive: true,
          "language": {
            // "lengthMenu": "Hiển thị _MENU_ dòng dữ liệu trên một trang",
            // "info": "Hiển thị _START_ trong tổng số _TOTAL_ dòng dữ liệu",
            "infoEmpty": "Empty data",
            "emptyTable": "Data not available",
            "processing": "Processing...",
            "search": "Search:",
            "loadingRecords": "Loading data...",
            "zeroRecords": "Data not found",
            // "infoFiltered": "(Được từ tổng số _MAX_ dòng dữ liệu)",
            "paginate": {
              "first": "|<",
              "last": ">|",
              "next": ">>",
              "previous": "<<"
            }
          },
          "lengthMenu": [[10, 15, 20, 25, 30, -1], [10, 15, 20, 25, 30, "All"]]
        } );
      //new $.fn.dataTable.FixedHeader( table );
    } );
  </script>
  <script language="javascript">
    CKEDITOR.replace('txtDetails');
  </script>
  <script language="javascript">
    $(document).ready(function(){
      'use strict'
      <?php
        date_default_timezone_set('Asia/Ho_Chi_Minh');
        $current_year = date('Y', time());
        $current_month = date('m', time());
        $list_month = array();
        $list_value = array();
        for ($i = 1; $i <=12; $i++) {
          $month_last_year = $i + $current_month;
          if ($month_last_year <= 12) {
            $year = $current_year - 1;
            $list_month[] = $month_last_year.'/'.($current_year-1);
            $query = "SELECT COUNT(LendId) as total
                      FROM lenditem
                      WHERE YEAR(LendCreateDate) = {$year} AND
                            MONTH(LendCreateDate) = {$month_last_year}";
            $list_value[] = $conn->query($query)->fetch_object()->total;
          }
          else {
            $month_this_year = $month_last_year - 12;
            $list_month[] = ($month_this_year).'/'.$current_year;
            $query = "SELECT COUNT(LendId) as total
                      FROM lenditem
                      WHERE YEAR(LendCreateDate) = {$current_year} AND
                            MONTH(LendCreateDate) = {$month_this_year}";
            $list_value[] = $conn->query($query)->fetch_object()->total;
          }
        }
      ?>
      const total_lent_book_in_12_months = new Chart('chart-total-lent-book', {
        type: 'line',
        data: {
          labels: <?= str_replace('\\', '', json_encode($list_month)) ?>,
          datasets: [{
            // label: "ABC",
            backgroundColor: "#4DAB6D",
            borderColor: "#4DAB6D",
            fill: false,
            data: <?= str_replace('\\', '', json_encode($list_value)) ?>,
            datalabels: '1'
          }]
        },
        options: {
          legend: {
            display: false
          },
          plugins: {
            datalabels: {
              backgroundColor: function(context) {
                return context.dataset.backgroundColor;
              },
              borderRadius: 4,
              color: 'white',
              font: {
                weight: 'bold'
              },
              formatter: Math.round
            }
          },
          scales: {
            yAxes: [{
              stacked: true
            }]
          }
        }
      });
    })
  </script>
</body>
</html>
<?php
endif;
?>
