<?php
    require_once('../model/metodos.php');
    $tab=$_POST['nomtab'];
    $nomid=$_POST['nomid'];
    $id=$_POST['id'];
    $cli=new Metodo();
    $datos=$cli->listarTablaJson("$tab WHERE $nomid=$id");
    echo json_encode($datos); 
//    $res = array(
//     'response' => 'Se requiere Petición POST'
//   );
?>