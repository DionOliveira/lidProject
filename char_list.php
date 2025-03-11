<?php
  session_start();
  if (!isset($_SESSION["user"])){
    header('Location: index.php');
  }
	include "bd/conexao.php";
	$sql_object = new Sql_func();		
	$data = $sql_object->List_Char($_SESSION["id"]); 
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
            <li class="nav-item "><a href="index.php" class="nav-link">Home</a></li>
			<li class="nav-item"><a href="register.php" class="nav-link">Register</a></li>
			<li class="nav-item "><a href="changepw.php" class="nav-link">Change Password</a></li>
			<li class="nav-item"><a href="downloads.php" class="nav-link">Downloads</a></li>
            <li class="nav-item active"><a href="char_list.php" class="nav-link">List Char</a></li>
			<li class="nav-item "><a href="actioner.php" class="nav-link">Actioner List</a></li>
			<li class="nav-item"><a href="logout.php" class="nav-link">Exit</a></li>
			<?php
              if($_SESSION["pv"] === 9 ){
                echo'<li class="nav-item"><a href="adm_painel.php" class="nav-link">List Char</a></li>';
              }
            ?>
          </ul>
        </div>
      </div>
    </nav>
    <!-- END nav -->
		<!-- Inidio do Container -->
  	<section class="ftco-section bg-light">
      <div class="container">
        <div class="row justify-content-center">
          <div class="col">
						<div class="container theme-showcase" role="main">
  						<div class="page-header">
								<h1>Char List</h1>
							</div>
							<div class="row">
								<div class="col-md-12">
									<table class="table">
										<thead>
											<tr style="font-size: 22px">
												<th><center>Nick</center></th>
												<th><center>Level</center></th>
												<th><center>Class</center></th>
												<th><center>Giuld</center></th>
												<th><center>Acction</center></th>
											</tr>
										</thead>
										<tbody>
											<?php while ($row_data = mysqli_fetch_assoc($data)) {?>
											<tr style="font-size: 18px">
												<td><center><?php echo $row_data['name']; ?></center></td>
												<td><center><?php echo $row_data['level']; ?></center></td>
												<?php 
													if ($row_data['party'] == 0){
													$class ="Wizard";
													}else if($row_data['party'] == 1){
													$class ="Mok";
													}else if($row_data['party'] == 2){
													$class ="Sin";
													}else if($row_data['party'] == 3){
													$class ="Fay";
													}else if($row_data['party'] == 4){
													$class ="Tamer";
												}?>
												<td><center><?php echo $class;?></center></td>
												<td><center><?php echo $row_data['guild']; ?></center></td>
												<td><center>
										  		<button type="button" class="btn btn-xs btn-primary" data-toggle="modal" 
                      			data-target="#myModal<?php echo $row_data['accountid']; ?>" 
                      			style="  font-size: 18px">Change Nick</button>
                     	 		<button type="button" class="btn btn-xs btn-warning" data-toggle="modal" 
														data-target="#modalSellChar" 
                      			data-whateveraccountid="<?php echo $row_data['accountid'];?>" 
					  								data-whatevername="<?php echo $row_data['name']; ?>"
														data-whatevertypeproc="1"
														style="font-size: 18px">Sell Char</button></a>
                    			</center></td>
											</tr>
											<?php }?>
										</tbody>
									</table>
								</div>
							</div>
  						<div class="page-header">
								<h3>
									<?php
       							if (isset($_SESSION["msg"])){
          						echo $_SESSION["msg"];
          						$_SESSION["msg"] ="";
											echo $_SESSION["msg"];
        						}?>
								</h3>		
							</div>
  						<?php 
  							$data_acit =$sql_object->List_Char_On_acit($_SESSION["id"]); 
  							$rn_rows= mysqli_fetch_assoc($data_acit);
  							if ($rn_rows != NULL){
  								$data_acit =$sql_object->List_Char_On_acit($_SESSION["id"]);
								?> 

  						<div class="page-header">
								<h1>You Char  On Aouction </h1>
							</div>
							<div class="row">
								<div class="col-md-12">
									<table class="table">
										<thead>
											<tr style="font-size: 22px">
												<th><center>Nick</center></th>
												<th><center>Level</center></th>
												<th><center>Class</center></th>
												<th><center>Giuld</center></th>
												<th><center>Valor</center></th>
												<th><center>Acction</center></th>
											</tr>
										</thead>
										<tbody>
											<?php while ($row_data_act = mysqli_fetch_assoc($data_acit)) {?>
											<tr style="font-size: 18px">
												<td><center><?php echo $row_data_act['name']; ?></center></td>
												<td><center><?php echo $row_data_act['level']; ?></center></td>
												<?php 
													if ($row_data_act['party'] == 0){
														$class ="Wizard";
													}else if($row_data_act['party'] == 1){
														$class ="Mok";
													}else if($row_data_act['party'] == 2){
														$class ="Sin";
													}else if($row_data_act['party'] == 3){
														$class ="Fay";
													}else if($row_data_act['party'] == 4){
														$class ="Tamer";
												}?>
												<td><center><?php echo $class;?></center></td>
												<td><center><?php echo $row_data_act['guild']; ?></center></td>
												<td><center><?php echo $row_data_act['charvalor']; ?></center></td>
												<td><center>
                  				<button type="button" class="btn btn-xs btn-warning" data-toggle="modal" 
														data-target="#modalCSellChar" 
														data-whateveraccountid="<?php echo $row_data_act['oldaccountid'];?>" 
					  								data-whatevername="<?php echo $row_data_act['name']; ?>"
														data-whatevertypeproc="2"
														style="font-size: 18px">Cancell Selling</button></a>
                  				</center>
                				</td>
											</tr>
											<?php }?>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</session>
  	<?php } ?>
		<!--Modal SellChar -->
		<div class="modal fade" id="modalSellChar" tabindex="-1" role="dialog" aria-labelledby="modalSellCharLabel">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-body">
						<form method="POST" action="proc_auctioner.php" enctype="multipart/form-data">
					    <div class="form-group">
								<input type="hidden" id="typeproc" name="typeproc" >
								<input type="hidden" id="accountid" name="accountid" >
								<input type="hidden" id="accname" name="accname" >
								<input type="number" class="form-control" placeholder="Valor:" id="value" name="value">
								<small id="Valor"></small>
              	<h3>This Char Will be put on Auctioner List </h3>
							</div>
							<div class="modal-footer">
								<center>
									<button type="submit" class="btn btn-warning">Sell</button>
									<button type="button" class="btn btn-danger" data-dismiss="modal">Cancel</button>
								</center>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
		<!-- Fim Modal SellChar-->
		<!--Modal CSellChar -->
		<div class="modal fade" id="modalCSellChar" tabindex="-1" role="dialog" aria-labelledby="modalCSellCharLabel">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-body">
						<form method="POST" action="proc_auctioner.php" enctype="multipart/form-data">
					    <div class="form-group">
								<input type="hidden" id="typeproc" name="typeproc" >
								<input type="hidden" id="accountid" name="accountid" >
								<input type="hidden" id="accname" name="accname" >
                <h3>This Char Will be romove to Auctioner List </h3>
							</div>
							<div class="modal-footer">
								<center>
									<button type="submit" class="btn btn-warning">Cancell Selling</button>
									<button type="button" class="btn btn-danger" data-dismiss="modal">Cancel</button>
								</center>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
		<!-- Fim Modal CSellChar-->
  	<!--Logar-->
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
		<script src="js/modal.js"></script> 
	</body>
</html>