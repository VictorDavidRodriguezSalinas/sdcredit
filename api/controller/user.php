
<?php
   
   include_once('../model/methods.php');
    // $tab=$_GET['opcion'];
    // $cli=new Method();
    // $datos=$cli->listarTablaJson('clientes');
    // print json_encode($datos, JSON_UNESCAPED_UNICODE);
    header("Content-Type: application/json");
    $cli=new Method();
    $datos=$cli->getAll('clientes');
    $json = json_encode($datos);
    echo $json;

?>