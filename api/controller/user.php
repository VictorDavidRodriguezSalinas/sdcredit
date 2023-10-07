
<?php
include_once('../model/methods.php');
header("Content-Type: application/json");
// Verificar el método de solicitud HTTP
$method = $_SERVER['REQUEST_METHOD'];
// Manejar las solicitudes
switch ($method) {
    case 'GET':
        // Verificar si se proporciona el parámetro "id" en la solicitud GET
        if (isset($_GET['id'])) {
            $id = $_GET['id'];
            $cli = new Method();
            $datos = $cli->getId('usuario', 'idusu', $id);
            if ($datos) {
                // El usuario se encontró en la base de datos
                echo json_encode($datos);
            } else {
                // El usuario no se encontró
                echo json_encode(['error' => 'Usuario no encontrado']);
            }
        } else {
            // Listar todos los usuarios
            $cli = new Method();
            $datos = $cli->getAll('usuario');
            $json = json_encode($datos);
            echo $json;
        }
        break;
    default:
        http_response_code(405); // Método no permitido
        echo json_encode(['error' => 'Método no permitido']);
        break;
}












?>