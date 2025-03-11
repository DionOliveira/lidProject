<?php
    session_start();
    
    include('bd/conexao.php');
    $sql_object = new Sql_func();
    $log= $sql_object->log_out($_SESSION["d_in"], $_SESSION["h_in"],$_SESSION["id"]);
    session_destroy();
    header("Location: index.php");
?>
