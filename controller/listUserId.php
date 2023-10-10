<?php
    require_once('../model/metodos.php');
    $idusu=$_POST['idUsu'];
    $cli=new Metodo();
    $datos=$cli->listarTablaJson("usuario WHERE idusu=$idusu");
    echo json_encode($datos); 
?>