<?php
    $param=$_POST['param'];
    $procedure=$_POST['procedure'];
    require_once('../model/metodos.php');
    $cli=new Metodo();
    $datos=$cli->ListarProcedure($param,$procedure);
    echo json_encode($datos); 
?>