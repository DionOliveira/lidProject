<?php
  session_start();
  if (!isset($_SESSION["user"]) ||$_SESSION["pv"] != 9 ){
    header('Location: index.php');
  }
  include "bd/conexao.php";
  $sql_object = new Sql_func();		
  $all_u_char = $sql_object->List_Char($_SESSION["id"]); 
  $all_u_char_on_act = $sql_object->List_Char_On_acit($_SESSION["id"]);
  $all_char_on_act =  $sql_object->List_All_On_acit();
  $rows = mysqli_num_rows($all_u_char)+mysqli_num_rows($all_u_char_on_act);
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
            <li class="nav-item"><a href="index.php" class="nav-link">Home</a></li>
			      <li class="nav-item "><a href="register.php" class="nav-link">Register</a></li>
			      <li class="nav-item "><a href="changepw.php" class="nav-link">Change Password</a></li>
			      <li class="nav-item"><a href="downloads.php" class="nav-link">Downloads</a></li>
						<li class="nav-item "><a href="char_list.php" class="nav-link">List Char</a></li>
						<li class="nav-item "><a href="actioner.php" class="nav-link">Actioner List</a></li>
            <li class="nav-item active"><a href="adm_painel.php" class="nav-link">Painel ADM</a></li>
						<li class="nav-item"><a href="logout.php" class="nav-link">Exit</a></li>
          </ul>
        </div>
      </div>
    </nav>
    <!-- END nav -->
    <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
      <div class="container">
        <div class="collapse navbar-collapse" id="ftco-nav">
          <ul class="navbar-nav mr-auto">
            <li class="nav-item"><button type="button" class="btn btn-xs btn-success" data-toggle="modal"
            data-target="#modalLogs" style="font-size: 15px">Check Log on site</button></li>
          
          </ul>
        </div>
      </div>
    </nav>
    <?php
    
    if (isset($_POST['data'])) {
      $data = addslashes($_POST['data']);
    } else {
      $data = null;
    }
    if($data != NULL){
      $sql_object = new Sql_func();	
      $log = $sql_object-> Check_log($data);
      $teste =mysqli_fetch_assoc($log);
      if($teste!= NULL){
        ?>        
        <section class="ftco-section bg-light">
          <div class="container">
            <div class="row justify-content-center">
              <div class="col">
		            <div class="container theme-showcase" role="main">
  		            <div class="page-header"></div>
			          <div class="row">
				          <div class="col-md-12">
					          <table class="table">
						          <thead>
							          <tr style="font-size: 22px">
							            <th><center>Acc Name</center></th>
							            <th><center>Login Data</center></th>
							            <th><center>Login Hour</center></th>
							            <th><center>Logout Data</center></th>
							            <th><center>Log Out Hour</center></th>
                          <th><center>Email</center></th>
						            </tr>
					            </thead>
					            <tbody>
						            <?php while ($row_dados = mysqli_fetch_assoc($log)) 
                        {?>
								    	  <tr style="font-size: 18px">
												  <td><center><?php echo $row_dados['name']; ?></center></td>
												  <td><center><?php echo $row_dados['data_in']; ?></center></td>
									    	  <td><center><?php echo $row_dados['hour_in']; ?></center></td>
									    	  <td><center><?php echo $row_dados['data_out']; ?></center></td>
                          <td><center><?php echo $row_dados['hour_out']; ?></center></td>
                          <td><center><?php echo $row_dados['email']; ?></center></td>
								    	  </tr>
						            <?php } ?>
					            </tbody>
				            </table>
			            </div>
		            </div>
              </div>                      
            </div>
				  </div>
			  </div>
		  </session>
    <?php }
    else{
      echo"<h3><cennter>Nao ha registros para etsa data</cennter></h3>";
    }}
    ?>


    <!-- modalLogs -->
    <div class="modal fade" id="modalLogs" tabindex="-1" role="dialog" aria-labelledby="modalLogsLabel">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-body">
          <form method="POST" action="adm_painel.php" enctype="multipart/form-data">
						<div class="form-group">
							<label for="recipient-name" class="control-label">Data</label>
							<input name="data" type="text" class="form-control" required>
              
						</div>
						<div class="modal-footer">
							<center>
								<button type="submit" class="btn btn-success">Check</button>
								<button type="button" class="btn btn-danger" data-dismiss="modal">Cancel</button>
							</center>
						</div>
					</form>
					</div>
				</div>
			</div>
		</div>
	<!-- end modalLogs -->




    
    <script src="js/jquery.min.js"></>
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
    <script src="js/modal.js"></script> 
  </body>
</html>


