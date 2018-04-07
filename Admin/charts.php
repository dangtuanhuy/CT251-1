<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Bootstrap Dashboard by Bootstrapious.com</title>
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
</head>
<body>
    <!-- Side Navbar -->
    <?php
    include "nav-left.php";
    ?>
    <div class="page">
      <!-- navbar-->
      <?php
      include "nav-top.php";
      ?>
      <!-- Breadcrumb-->
      <div class="breadcrumb-holder">
        <div class="container-fluid">
          <ul class="breadcrumb">
            <li class="breadcrumb-item"><a href="index.html">Home</a></li>
            <li class="breadcrumb-item active">Charts       </li>
          </ul>
        </div>
      </div>
      <section class="charts">
        <div class="container-fluid">
          <!-- Page Header-->
          <header>
            <h1 class="h3 display">Charts            </h1>
          </header>
          <div class="row">
            <div class="col-lg-6">
              <div class="card line-chart-example">
                <div class="card-header d-flex align-items-center">
                  <h4>Line Chart Example</h4>
                </div>
                <div class="card-body">
                  <canvas id="lineChartExample"></canvas>
                </div>
              </div>
            </div>
            <div class="col-lg-6">
              <div class="card bar-chart-example">
                <div class="card-header d-flex align-items-center">
                  <h4>Bar Chart Example</h4>
                </div>
                <div class="card-body">
                  <canvas id="barChartExample"></canvas>
                </div>
              </div>
            </div>
            <div class="col-lg-6">
              <div class="card pie-chart-example">
                <div class="card-header d-flex align-items-center">
                  <h4>Pie Chart Example</h4>
                </div>
                <div class="card-body">
                  <div class="chart-container">
                    <canvas id="pieChartExample"></canvas>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-lg-6">
              <div class="card polar-chart-example">
                <div class="card-header d-flex align-items-center">
                  <h4>Ploar Chart Example</h4>
                </div>
                <div class="card-body">
                  <div class="chart-container">
                    <canvas id="polarChartExample"></canvas>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-lg-12">
              <div class="card radar-chart-example">
                <div class="card-header d-flex align-items-center">
                  <h4>Radar Chart Example</h4>
                </div>
                <div class="card-body">
                  <div class="chart-container">
                    <canvas id="radarChartExample"></canvas>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
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
    <script src="js/grasp_mobile_progress_circle-1.0.0.min.js"></script>
    <script src="vendor/jquery.cookie/jquery.cookie.js"> </script>
    <script src="vendor/chart.js/Chart.min.js"></script>
    <script src="vendor/jquery-validation/jquery.validate.min.js"></script>
    <script src="vendor/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.concat.min.js"></script>
    <script src="js/charts-custom.js"></script>
    <!-- Main File-->
    <script src="js/front.js"></script>
  </body>
</html>
