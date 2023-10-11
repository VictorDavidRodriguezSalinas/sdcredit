<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
  $datosJSON = file_get_contents("php://input");
  $datos = json_decode($datosJSON);

  if (!empty($datos)) {
    foreach ($datos as $dato) {
        

    }
    $arr = array(
		'estado' => 'ok',
		'datos' => $datos
	);
	
  } else {
    $arr = array(
		'estado' => 'no'
	);
  }
  echo json_encode($arr, JSON_FORCE_OBJECT);
}
?>
