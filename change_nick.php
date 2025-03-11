<?php
	include "bd/conexao.php";
	session_start();
  
  $sql_object = new Sql_func();	
  $valor =150;
  $newaccname = addslashes( $_POST['newaccname']);
	$accountid = addslashes( $_POST['accountid']);
	$accname = addslashes( $_POST['accname']);

   if ($_SESSION["tp"]<$valor){
    $_SESSION["msg"] ="You don t have enough tp "

   }else{
                      
   }
  

  header("location: actioner.php");