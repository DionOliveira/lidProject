<?php
	session_start();
	include "bd/conexao.php";
	
	$login = addslashes( $_POST['login']);
	$password = addslashes( $_POST['password']);
	$cpassword = addslashes( $_POST['cpassword']);
	$email = addslashes( $_POST['email']);

	$sql_object = new Sql_func();								
	$login_ok = $sql_object->Chek_User($login);
	$login_ok = mysqli_fetch_assoc($login_ok);		

	function validatorEmail($email) {
		$emailPattern ="/^[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,4})$/";
		return preg_match($emailPattern, $email);
	}
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

	function validatorLogin($login) {
		$loginPattern = "/^[_a-z0-9-]{4,}$/";
		return preg_match($loginPattern, $login);
	}
	
	if ($login == NULL || $password == NULL || $cpassword == NULL || $email == NULL){
		$_SESSION["msg"] ="Fill all field";
		header("location: register.php");
	}else {
		if ($login_ok == NULL){
			if (validatorLogin($login) == TRUE && 
			validatorPassword($password) == TRUE && 
			validatorCPassword($cpassword,$password) == TRUE && 
			validatorEmail($email) == TRUE){
				$create = $sql_object->Register($login,$password,$email);
				$_SESSION["msg"] ="Account Registered";
				header("location: register.php");	
			}else {
				$_SESSION["msg"] ="Erro on register";
				header("location: register.php");	
			}
		}else{
			$_SESSION["msg"] ="Account  Arley exit";
			header("location: register.php");
		}
	}
?>