<?php
	session_start();
	include "bd/conexao.php";

	$valor = addslashes( $_POST['value']);
	$accname = addslashes( $_POST['accname']);
	$oldaccountid = addslashes( $_POST['accountid']);
    
	$sql_object = new Sql_func();
	
	$valor= intval($valor);
	$tp=$sql_object->Get_TP($oldaccountid);
	$tp=mysqli_fetch_assoc($tp);

	$tpplus =$tp["gd"]+$valor;;
	$tpless = $_SESSION["tp"] - $valor;;
	$buy=$sql_object->OnBy($oldaccountid,$_SESSION["id"],$tpless,$tpplus,$accname);
	$_SESSION["tp"] = $tpless;
	header("location: actioner.php");
?>	