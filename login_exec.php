<?php
include('bd/conexao.php');
session_start();

$user = addslashes( $_POST['login']);
$password = addslashes( $_POST['password']);

if($user == null || $password == null){
    header('Location: login.php');
    exit();
}else{ 
    $sql_object = new Sql_func();
    $teste_user = $sql_object->Chek_login($user,$password);
    $data = mysqli_fetch_assoc($teste_user);  
  
    if ($data != NULL){
        session_start();
        date_default_timezone_set('America/Sao_Paulo');
        $_SESSION["user"] = $data["name"];
        $_SESSION["id"] = $data["accountid"];
        $_SESSION["tp"] = $data["gd"];
        $_SESSION["pv"] = $data["pv"];

        $_SESSION["d_in"] = date('d/m/Y');
        $_SESSION["h_in"] = date('H:i');
        $log= $sql_object->new_log_in($_SESSION["d_in"],$_SESSION["h_in"],$_SESSION["id"]);
        
        header('Location: index.php');
        exit();       
    }else {
        echo "<META HTTP-EQUIV=REFRESH CONTENT = '0;URL=login.php'>
        <script type=\"text/javascript\">
            alert(\"User or password invalid\");
        </script>";	 
        exit();
    }
}
?>