 <!-- Counts Section -->
<<<<<<< HEAD

        <div class="container-fluid">
          <div class="row">
            <!-- Count item widget-->
            <div class="col-xl-2 col-md-4 col-6">
              <div class="wrapper count-title d-flex">
                <div class="icon"><i class="icon-page"></i></div>
                <div class="name"><strong class="text-uppercase">Category</strong><span>Total</span>
                <?php 
                $result = mysqli_query($conn,"SELECT * FROM `category` ");
                $num_rows = mysqli_num_rows($result);
                ?>
                  <div class="count-number"><?php echo $num_rows ?></div>
                </div>
              </div>
            </div>
            <!-- Count item widget-->
            <div class="col-xl-2 col-md-4 col-6">
              <div class="wrapper count-title d-flex">
                <div class="icon"><i class="icon-padnote"></i></div>
                <div class="name"><strong class="text-uppercase">Book</strong><span>Total</span>
                <?php 
                $result1 = mysqli_query($conn,"SELECT * FROM `book` ");
                $num_rows1 = mysqli_num_rows($result1);
                ?>
                  <div class="count-number"><?php echo $num_rows1 ?></div>
                </div>
              </div>
            </div>
            <!-- Count item widget-->
            <div class="col-xl-2 col-md-4 col-6">
              <div class="wrapper count-title d-flex">
                <div class="icon"><i class="icon-user"></i></div>
                <div class="name"><strong class="text-uppercase">Custommer</strong><span>Total</span>
                <?php 
                $result2 = mysqli_query($conn," SELECT * FROM `user` WHERE `Role`=1 ");
                $num_rows2 = mysqli_num_rows($result2);
                ?>
                  <div class="count-number"><?php echo $num_rows2 ?></div>
                </div>
              </div>
            </div>
            <!-- Count item widget-->
            <div class="col-xl-2 col-md-4 col-6">
              <div class="wrapper count-title d-flex">
                <div class="icon"><i class="icon-bill"></i></div>
                <div class="name"><strong class="text-uppercase">Feedback</strong><span>Not Views</span>
                <?php
                $result3 = mysqli_query($conn,"SELECT `FeedBackId`, `FeedBackTitle`, `FeedBackDate`, `FeedBackContent`, `FeedBackStatus` FROM `feedback` WHERE `FeedBackStatus`=0");
                $num_rows3 = mysqli_num_rows($result3);
                ?>
                  <div class="count-number"><?php echo $num_rows3 ?></div>
                </div>
              </div>
            </div>
            <!-- Count item widget-->
            <div class="col-xl-2 col-md-4 col-6">
              <div class="wrapper count-title d-flex">
                <div class="icon"><i class="icon-list"></i></div>
                <div class="name"><strong class="text-uppercase">Lent</strong><span>Total</span>
                <?php
                $result4 = mysqli_query($conn,"SELECT * FROM `lenditem` WHERE `LendStatus`=1");
                $num_rows4 = mysqli_num_rows($result4);
                ?>
                  <div class="count-number"><?php echo $num_rows4 ?></div>
                </div>
              </div>
            </div>
            <!-- Count item widget-->
            <div class="col-xl-2 col-md-4 col-6">
              <div class="wrapper count-title d-flex">
                <div class="icon"><i class="icon-mail"></i></div>
                <div class="name"><strong class="text-uppercase">Mail</strong><span>Not Active</span>
                
                <?php
                $result5 = mysqli_query($conn,"SELECT * FROM `user` WHERE `Active`=0");
                $num_rows5 = mysqli_num_rows($result5);
                ?>
                  <div class="count-number"><?php echo $num_rows5 ?></div>
                </div>
              </div>
            </div>
=======
<section class="dashboard-header section-padding">
  <div class="container-fluid">
    <div class="row">
      <!-- Count item widget-->
      <div class="col-xl-2 col-md-4 col-6">
        <div class="wrapper count-title d-flex">
          <div class="icon"><i class="icon-user"></i></div>
          <div class="name"><strong class="text-uppercase">New Clients</strong><span>Last 7 days</span>
            <div class="count-number">25</div>
>>>>>>> master
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
