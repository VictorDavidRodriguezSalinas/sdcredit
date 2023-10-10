<?php
    $tab=$_POST['tabla'];
    $camp=$_POST['campos'];
    require_once('../model/metodos.php');
    $cli=new Metodo();
    $datos=$cli->listarCamposJson($tab,$camp);
    echo json_encode($datos); 
?>