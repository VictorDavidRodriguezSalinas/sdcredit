<?php
	require_once('../model/metodos.php');
  
   $idven = (isset($_POST['txtidven'])) ? $_POST['txtidven'] : '0';
  
	$texto="'$idven'";
	$cli=new Metodo();
	$reg=$cli->Insertar($texto,'anular_venta');
?>