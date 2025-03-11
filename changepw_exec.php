<?php
	session_start();
	include "bd/conexao.php";

	$login = addslashes( $_POST['login']);
	$oldpassword = addslashes( $_POST['oldpassword']);
	$cpassword = addslashes( $_POST['cpassword']);
	$password = addslashes( $_POST['password']);

	$sql_object = new Sql_func();								
	$login_ok = $sql_object->Chek_User($login);
	$login_ok = mysqli_fetch_assoc($login_ok);		
	
	function validatorPassword($password) {
		$passwordPattern = "/^[_a-z0-9-]{6,}$/";
		return preg_match($passwordPattern, $password);
	}
	
	function validatorCPassword($cpassword, $password) {
		if ($cpassword === $password) {
			return true;
		} else {
			return false;
		}
	}

	if ($login == NULL || $password == NULL || $cpassword == NULL || $oldpassword == NULL){
		$_SESSION["msgpw"] ="Fill all field";
		header("location: changepw.php");
	}else {
		if ($login_ok != NULL){
			if (validatorPassword($password) == TRUE && validatorCPassword($cpassword,$password) == TRUE ){
        $pwcheck = $sql_object->Chek_login($login,$oldpassword);
        $pwcheck = mysqli_fetch_assoc($pwcheck);
        if ($pwcheck != 0){
          $muda_senha = $sql_object->Change_password($login,$password,);
				  $_SESSION["msgpw"] ="Password Change Success";
				  header("location: changepw.php");	
        }else{
				  $_SESSION["msgpw"] ="Old Password dont match";
				  header("location: changepw.php");	
        }	
			}else {
				$_SESSION["msgpw"] ="Erro on change";
				header("location: changepw.php");	
			}
		}else{
			$_SESSION["msgpw"] ="Account  dont  exit";
			header("location: changepw.php");
		}
	}
?>