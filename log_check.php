<?php
	include "bd/conexao.php";
	session_start();
  
  $sql_object = new Sql_func();	
  

	


  header("location: char_list.php");
?>