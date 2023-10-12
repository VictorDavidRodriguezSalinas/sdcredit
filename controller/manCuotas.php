<?php
require_once('../model/metodos.php');
if ($_SERVER["REQUEST_METHOD"] == "POST") {
  $datosJSON = file_get_contents("php://input");
  $datos = json_decode($datosJSON,true);
  

  if (!empty($datos)) {
    foreach ($datos as $dato) {

          $estcuo =$datos['estcuo'];
          $estpgr =$datos['estpgr'];
          $feccuo =$datos['feccuo'];
          $fecven =$datos['fecven'];
          $idcli =$datos['idcli'];
          $idusu =$datos['idusu'];
          $moncuo=$datos['moncuo'];
          $​monint=$datos['monint'];
          $​​numcuo=$datos['numcuo'];
          $​​numpgr=$datos['numpgr'];
          $​​porint=$datos['porint'];
          $​​tipint=$datos['tipint'];
          $​​tipven=$datos['tipven'];
          $​​totpgr=$datos['totpgr']; 

      // // $texto = "'$dato['feccuo']'," . "'$ruccli'," . "'$nomcli'," . "'$apecli'," . "'$telcli'," . "'$ope'";
      // //  $cli=new Metodo();
	    // //  $reg=$cli->Insertar($texto,'man_cuotas');
      $arr = array(
        'estado' => 'ok',
        'datos' => $datos
      );
      
    }

	
  } else {
    $arr = array(
		'estado' => 'no'
	);
  }
  echo json_encode($arr, JSON_FORCE_OBJECT);
}
?>
