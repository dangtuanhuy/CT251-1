 <!-- Counts Section -->

<section class="dashboard-header section-padding">
  <div class="container-fluid">
    <div class="row">
      <!-- Count item widget-->
      <div class="col-xl-2 col-md-4 col-6">
        <div class="wrapper count-title d-flex">
          <div class="icon"><i class="icon-user"></i></div>
          <div class="name"><strong class="text-uppercase">New Clients</strong><span>Last 7 days</span>
            <div class="count-number">25</div>

          </div>
        </div>
      </div>
      <!-- Count item widget-->
      <div class="col-xl-2 col-md-4 col-6">
        <div class="wrapper count-title d-flex">
          <div class="icon"><i class="icon-padnote"></i></div>
          <div class="name"><strong class="text-uppercase">Work Orders</strong><span>Last 5 days</span>
            <div class="count-number">400</div>
          </div>
        </div>
      </div>
      <!-- Count item widget-->
      <div class="col-xl-2 col-md-4 col-6">
        <div class="wrapper count-title d-flex">
          <div class="icon"><i class="icon-check"></i></div>
          <div class="name"><strong class="text-uppercase">Sách</strong><span>Tổng số sách</span>
            <?php
            $query = "SELECT COUNT(BookId) as total_books from book";
            $total_books = $conn->query($query)->fetch_object()->total_books;
            ?>
            <div class="count-number">
              <a href="index.php?page=book"><?= $total_books ?></a>
            </div>          </div>
        </div>
      </div>
      <!-- Count item widget-->
      <div class="col-xl-2 col-md-4 col-6">
        <div class="wrapper count-title d-flex">
          <div class="icon"><i class="icon-bill"></i></div>
          <div class="name"><strong class="text-uppercase">Tác giả</strong><span>Tổng số tác giả</span>
            <?php
            $query = "SELECT COUNT(AuthorId) as total_author from author";
            $total_author = $conn->query($query)->fetch_object()->total_author;
            ?>
            <div class="count-number">
              <a href="index.php?page=author"><?= $total_author ?></a>
            </div>
          </div>
        </div>
      </div>
      <!-- Count item widget-->
      <div class="col-xl-2 col-md-4 col-6">
        <div class="wrapper count-title d-flex">
          <div class="icon"><i class="icon-list"></i></div>
          <div class="name"><strong class="text-uppercase">Tin tức</strong><span>Số tin đã đăng</span>
            <?php
            $query = "SELECT COUNT(NewsId) as total_news from news";
            $total_news = $conn->query($query)->fetch_object()->total_news;
            ?>
            <div class="count-number">
              <a href="index.php?page=news"><?= $total_news ?></a>
            </div>
          </div>
        </div>
      </div>
      <!-- Count item widget-->
      <div class="col-xl-2 col-md-4 col-6">
        <div class="wrapper count-title d-flex">
          <div class="icon"><i class="icon-list-1"></i></div>
          <div class="name"><strong class="text-uppercase">Feedback</strong><span>Tổng số feedback</span>
            <?php
            $query = "SELECT COUNT(FeedBackId) as total_feedback from feedback";
            $total_feedback = $conn->query($query)->fetch_object()->total_feedback;
            ?>
            <div class="count-number">
              <a href="index.php?page=feedback"><?= $total_feedback ?></a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- Charts Section -->
<section class="dashboard-header section-padding">
  <div class="container-fluid">
    <div class="row d-flex align-items-md-stretch">
      <div class="col col-md-12 flex-lg-last flex-md-first align-self-baseline">
        <div class="card sales-report">
          <h2 class="display h4">Số sách mượn trong 12 tháng gần nhất</h2>
          <div class="line-chart">
            <canvas id="chart-total-lent-book"></canvas>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
