
<?php



include_once('../model/methods.php');
// $tab=$_GET['opcion'];
// $cli=new Method();
// $datos=$cli->listarTablaJson('clientes');
// print json_encode($datos, JSON_UNESCAPED_UNICODE);
header("Content-Type: application/json");


if ($_SERVER["REQUEST_METHOD"] == "GET") {
    $cli = new Method();
    $datos = $cli->getAll('usuario');
    $json = json_encode($datos);
    echo $json;
} else {
    $error = array("status" => 405, "message" => 'Method not allowed...');

    echo json_encode($error);
}



?>