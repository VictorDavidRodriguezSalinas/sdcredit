<?php
    $tab=$_POST['opcion'];
    require_once('../model/metodos.php');
    $cli=new Metodo();
    $datos=$cli->listarTablaJson($tab);
    print json_encode($datos, JSON_UNESCAPED_UNICODE);
?>