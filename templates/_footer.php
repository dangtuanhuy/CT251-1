    </div>
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
