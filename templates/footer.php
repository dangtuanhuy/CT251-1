    </div>
    <!-- Footer -->
    <div class="row py-1 d-md-hidden" id="footer">
        <div class="container">
            <div class="row">
                <div class="col text-lg-left text-center">
                    <div class="d-none d-lg-block">Copyright &copy; 2018 - Book Manager Project</div>
                    <div class="d-lg-none">&copy; 2018 - Book Manager Project</div>
                </div>
                <div class="col-xl-1 col-md-2 offset-lg-0 px-0 mr-3 text-center">
                    <a href=<?= PUBLIC_PATH.'/feedback.php' ?>>Gửi phản hồi</a>
                </div>
                <div class="col-xl-1 col-md-2 px-0 text-center">
                    <a href=<?= PUBLIC_PATH.'/about.php' ?>>Về chúng tôi</a>
                </div>
                <div class="col-xl-1 col-md-2 px-0 text-center">
                    <a href=<?= PUBLIC_PATH.'/LICENSE.php' ?>>LICENSE</a>
                </div>
            </div>
            <div class="row d-md-none my-4"></div>
        </div>
    </div>
    <!-- ///Footer -->
</div>
    <script src=<?= PUBLIC_PATH."/js/fontawesome-all.min.js" ?>></script>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src=<?= PUBLIC_PATH."/js/bootstrap.min.js"?>></script>
    <script>
    $(document).ready(function(){
        const width = (window.innerWidth > 0) ? window.innerWidth : screen.width;
        if (width <= 430) {
            $("#horizontal-nav>a").removeClass("btn-lg");
        }
    })
    </script>
</body>
</html>
