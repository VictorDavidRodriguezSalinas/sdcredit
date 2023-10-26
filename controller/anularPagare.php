<?php
	require_once('../model/metodos.php');
   
   $numpgr = (isset($_POST['numpgr'])) ? $_POST['numpgr'] : '0';
   $idcli = (isset($_POST['idcli'])) ? $_POST['idcli'] : '0';
  
	$texto="'$numpgr','$idcli'";
	$cli=new Metodo();
	$reg=$cli->Insertar($texto,'anular_pagare');

    http_response_code(200);
    $res = array(
      'estado' => 'ok',
      'datos' => $texto
    );
    echo json_encode($res, JSON_FORCE_OBJECT);
?>