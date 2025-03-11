<?php
session_start();
?>
<html lang="pt-br">
  <head>
    <title>Lendas L&D</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <link rel="stylesheet" href="css/animate.css" />
    <link rel="stylesheet" href="css/owl.carousel.min.css" />
    <link rel="stylesheet" href="css/owl.theme.default.min.css" />
    <link rel="stylesheet" href="css/magnific-popup.css" />
    <link rel="stylesheet" href="css/bootstrap-datepicker.css" />
    <link rel="stylesheet" href="css/jquery.timepicker.css" />
    <link rel="stylesheet" href="css/flaticon.css" />
    <link rel="stylesheet" href="css/style.css" />
  </head>
  <body>
  <div class="wrap">
      <div class="container">
        <div class="row justify-content-between">
          <div class="col-md-5 d-flex align-items-center">
            <a class="navbar-brand" href="index.php">Talisman
              Online<span>.</span></a>
          </div>
          <?php if (isset($_SESSION["user"])){	;?>
          <div class="col-md-3">
            <div class="row">
              <div class="col-md-3 d-flex justify-content-end align-items-center">
                <a class="navbar-brand" href=""><?php echo'Wellcome:  '.$_SESSION["user"]?></a>
              </div>
          	</div>
        	</div>
					<div class="col-md-3">
            <div class="row">
              <div class="col-md-3 d-flex justify-content-end align-items-center">
								<a class="navbar-brand" href=""><?php echo'TP:  '.$_SESSION["tp"]?></a>
          		</div>
          	</div>
        	</div>
          <?php } ?>
      	</div>
    	</div>
    </div>
    <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
      <div class="container">
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
          <span class="fa fa-bars"></span>
          Menu
        </button>
        <div class="collapse navbar-collapse" id="ftco-nav">
          <ul class="navbar-nav mr-auto">
            <li class="nav-item active"><a href="index.php" class="nav-link">Home</a></li>
			      <li class="nav-item"><a href="register.php" class="nav-link">Register</a></li>
			      <li class="nav-item "><a href="changepw.php" class="nav-link">Change Password</a></li>
			      <li class="nav-item"><a href="downloads.php" class="nav-link">Downloads</a></li>
            <?php
            if (!isset($_SESSION["user"])){
							echo'<li class="nav-item"><a href="login.php" class="nav-link">Login</a></li>';
            }else{
              echo'<li class="nav-item"><a href="char_list.php" class="nav-link">List Char</a></li>
              <li class="nav-item "><a href="actioner.php" class="nav-link">Actioner List</a></li>
              <li class="nav-item"><a href="logout.php" class="nav-link">Exit</a></li>';
              if($_SESSION["pv"] === 9 ){
                echo'<li class="nav-item"><a href="adm_painel.php" class="nav-link">Adm Painel</a></li>';
              }
            }
            ?>
          </ul>
        </div>
      </div>
    </nav>
    <!-- END nav -->
    <script src="js/valid-login.js"></script>
    <script src="js/jquery.min.js"></script>
    <script src="js/jquery-migrate-3.0.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.easing.1.3.js"></script>
    <script src="js/jquery.waypoints.min.js"></script>
    <script src="js/jquery.stellar.min.js"></script>
    <script src="js/jquery.animateNumber.min.js"></script>
    <script src="js/bootstrap-datepicker.js"></script>
    <script src="js/jquery.timepicker.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/jquery.magnific-popup.min.js"></script>
    <script src="js/scrollax.min.js"></script>
    <script src="js/main.js"></script>
  </body>
</html>