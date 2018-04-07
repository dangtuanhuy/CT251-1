<!-- Side Navbar -->
<nav class="side-navbar">
  <div class="side-navbar-wrapper">
    <!-- Sidebar Header    -->
    <div class="sidenav-header d-flex align-items-center justify-content-center">
      <!-- User Info-->
      <div class="sidenav-header-inner text-center"><img src="img/avatar-1.jpg" alt="person" class="img-fluid rounded-circle">
        <h2 class="h5">Nhóm 03</h2><span>Web Developer PHP</span>
      </div>
      <!-- Small Brand information, appears on minimized sidebar-->
      <div class="sidenav-header-logo"><a href="index.php" class="brand-small text-center"> <strong>B</strong><strong class="text-primary">D</strong></a></div>
    </div>
    <!-- Sidebar Navigation Menus-->
    <div class="main-menu">
      <h5 class="sidenav-heading">Quản lý</h5>
      <ul id="side-main-menu" class="side-menu list-unstyled">
        <li><a href="charts.php"> <i class="fa fa-bar-chart"></i>Thống Kê</a></li>
        <li><a href="#Dropdown1" aria-expanded="false" data-toggle="collapse"> <i class="icon-bars"></i>Quản lý Sách</a>
          <ul id="Dropdown1" class="collapse list-unstyled ">
            <li><a href="?page=category">Quản lý danh mục sách</a></li>
            <li><a href="?page=publisher">Quản lý nhà xuất bản</a></li>
            <li><a href="?page=author">Quản lý tác giả</a></li>
            <li><a href="?page=lang">Quản lý ngôn ngữ</a></li>
            <li><a href="?page=lent">Phí Mượn</a></li>
            <li><a href="?page=book">Quản lý thông tin sách</a></li>
            <li><a href="?page=bookauthor">Quản lý sách - tác giả</a></li>
          </ul>
        </li>
        <li><a href="?page=user"> <i class="icon-user"></i>Quản lý người dùng</a></li>
        <li><a href="?page=feedback"> <i class="icon-grid"></i> Quản lý Phản Hồi</a></li>
        <li><a href="#exampledropdownDropdown" aria-expanded="false" data-toggle="collapse">
          <i class="icon-interface-windows"></i>Mượn trả</a>
          <ul id="exampledropdownDropdown" class="collapse list-unstyled ">
            <li><a href="?page=lenditem">Mượn</a></li>
            <li><a href="?page=receive">Trả</a></li>
            <li><a href="#">Trả nửa vời</a></li>
          </ul>
        </li>
          <!-- //?page=news -->
        <li><a href="?page=news"> <i class="icon-website"></i>Quản lý tin tức</a></li>
      </ul>
    </div>
    <!-- <div class="admin-menu">
      <h5 class="sidenav-heading">Second menu</h5>
      <ul id="side-admin-menu" class="side-menu list-unstyled">
        <li> <a href="#"> <i class="icon-screen"> </i>Demo</a></li>
        <li> <a href="#"> <i class="icon-flask"> </i>Demo
          <div class="badge badge-info">Special</div></a></li>
          <li> <a href=""> <i class="icon-flask"> </i>Demo</a></li>
          <li> <a href=""> <i class="icon-picture"> </i>Demo</a></li>
      </ul>
    </div> -->
  </div>
</nav>
