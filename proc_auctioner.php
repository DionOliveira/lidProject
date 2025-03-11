<?php
	include "bd/conexao.php";
	session_start();
  
  $sql_object = new Sql_func();	
  
  $valor = addslashes( $_POST['value']);
	$accountid = addslashes( $_POST['accountid']);
	$accname = addslashes( $_POST['accname']);
	$type = addslashes( $_POST['typeproc']);
  $valor = intval($valor);
  $type = intval($type);

  if($type == 1){
    if($valor < 50){
      $_SESSION["msg"] ="Char price cant be less than 50";
    }else{
      $prochar = $sql_object->To_Sell_Char($accountid,$valor,$accname);
    }
  }else if($type == 2){
     $prochar = $sql_object->To_Not_Sell_Char($accountid,$accname);
  }
  header("location: char_list.php");
?>