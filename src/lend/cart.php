<!-- Confirm truoc khi xoa -->
<script language="javascript">
            function confirmDelete(){
                if(confirm("Do you want to delete!")){
                    return true;
                }
                else{
                    return false;
                }
            }
</script>
<?php
if (isset($_GET['action'])) {
    if ($_GET['action'] == "delete") {
        $id = $_GET["id"];
        unset($_SESSION["cart"][$id]);
        echo "<script>window.location='?khoatrang=cart';</script>";
    }
}

if (isset($_POST['btnOk'])) {
    if (isset($_SESSION['username'])) {
        foreach ($_SESSION["cart"] as $key => $row) {
            $_SESSION['cart'][$key]['quality'] = $_POST['SP' . $key];
        }
        echo "<script>window.location='?khoatrang=checkout';</script>";
    } else {
        echo "<script>alert('Please sign up your account before check out!');</script>";
    }
}

?>


<form id="form1" name="form1" method="post" action="">
	<div class="row">
        <!-- Ten sach -->
    	<div class="col-sm-2"><label>Book's Name</label></div>
        <!-- Tac gia -->
        <div class="col-sm-2"><label>Author</label></div>
        <!-- Gia muon mot quen sach-->
        <div class="col-sm-2"><label>Lend cost</label></div>
        <!-- So uong sach muon-->
        <div class="col-sm-2"><label>Quality</label></div>
        <!-- Tong tien muon sach-->
        <div class="col-sm-2"><label>Total</label></div>
        <!-- Xoa sach trong gio hanh-->
        <div class="col-sm-2"><label>Delete</label></div>
    </div>
    
    <?php
    if ($_SESSION["cart"] != null) 
	{
          $tong = 0;
          foreach ($_SESSION["cart"] as $key => $row) 
		  {
    ?>
            	<div class="row">
                    <!-- Lay cac cot trong mang khi tao session-->
                    <div class="col-sm-2"><?php echo $row['name'] ?></div>
                    <div class="col-sm-2"><?php echo $row["author"] ?></div>
                    <div class="col-sm-2"><?php echo number_format($row["lendcost"], 0, ",", ".") ?></div>
                    <div class="col-sm-2"><input type='text' name='SP<?php echo $key ?>' value='<?php echo $row["quality"] ?>' size='5' style='text-align:center;' maxlength='3'/></div>
                    <div class="col-sm-2"><?php echo number_format($row["lendcost"] * $row["quality"], 0, ",", ".") ?></div>
                    <div class="col-sm-2"><a onclick='return confirmDelete()' href="?khoatrang=cart&action=delete&id=<?php echo $key ?>"><img src=''/></a></div>
                                
                    </div>             
				<?php
                        $tong += $row["lendcost"] * $row["quality"];
                    }
                    echo "<div class='row'><div class='col-sm-12' align='right'>
                          <label>Total</label>: <span class='Gia'>"
						  .number_format($tong, 0, ",", ".") . "</span> VND </div></div>";
                } else {
                    echo "<div class='row'><div class='col-sm-12'>Don't have anything in your cart</div></div>";
                }
                ?>
	<div class='row'>
    	<div class='col-sm-12' align="center">
        	<input type="submit" value="Ok" name="btnOk" id="btnOk" class="InputButton"/>
    	</div>
    </div>
</form>
