<?php
header('Content-Type: application/json');
require_once('../model/metodos.php');
if ($_SERVER["REQUEST_METHOD"] == "POST") {
  $json = file_get_contents('php://input');
  $datos = json_decode($json, true);
  
  if (!empty($datos)) {
    foreach ($datos as $dato) {
      $fecven=new DateTime();
      $ope = 'GUA';
      $estcuo = $dato['estcuo'];
      $estpgr = $dato['estpgr'];
      $feccuo = $dato['feccuo'];
      $fecven = $dato['fecvenymd'];
      $idcli = $dato['idcli'];
      $idusu = $dato['idusu'];
      $moncuo = $dato['moncuo'];
      $monint = $dato['monint'];
      $numcuo = $dato['numcuo'];
      $numpgr = $dato['numpgr'];
      $porint = $dato['porint'];
      $tipint = $dato['tipint'];
      $tipven = $dato['tipven'];
      $totpgr = $dato['totpgr'];
      $param = "'0'," . "'$numpgr'," . "'$numcuo'," . "'$feccuo'," . "'$fecven'," . "'$tipven'," . "'$moncuo'," . "'$tipint'," . "'$monint'," . "'$porint'," . "'$estcuo'," . "'$estpgr'," . "'$idcli'," . "'$idusu'," . "'$ope'";
      $cli = new Metodo();
      $reg = $cli->Insertar($param, 'man_cuotas');

      http_response_code(200);
      $res = array(
        'estado' => 'ok',
        'datos' => $datos
      );
      echo json_encode($res, JSON_FORCE_OBJECT);
    }
  }
}
else
{
  http_response_code(400);
  $res = array(
    'response' => 'Se requiere Petición POST'
  );
  echo json_encode($res, JSON_FORCE_OBJECT);
}
