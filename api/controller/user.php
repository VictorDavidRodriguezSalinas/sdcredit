
<?php
include_once('../model/methods.php');
include_once('../model/user.php');
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
                http_response_code(404);
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
    case 'POST' : 
        // Obtenemos el JSON de la solicitud POST
        $json = file_get_contents('php://input');
        // Decodificamos el JSON en un array asociativo
        $data = json_decode($json, true);
        //Verificamos si la decodificación del JSON fue exitosa
        $user = new User($data['idusu'], $data['docusu'], $data['nomusu'], $data['logusu'], $data['clausu'], $data['nivusu'], $data['idsuc'],);
        $ope = $data['ope'];
        $clausu = md5($user->clausu);
        $param = "'$user->idusu'," . "'$user->docusu'," . "'$user->nomusu'," . "'$user->logusu'," . "'$user->clausu'," . "'$user->nivusu'," . "'$user->idsuc'," . "'$ope'";
        $cmd = new Method();
        $reg = $cmd->Insertar($param, 'man_user');
        break;

    default:
        http_response_code(405); // Método no permitido
        echo json_encode(['error' => 'Método no permitido']);
        break;
}












?>