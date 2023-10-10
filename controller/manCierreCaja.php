<?php
	require_once('../model/metodos.php');
	
   $idusu=$_POST['idusu'];
  
	
	$cli=new Metodo();
	$reg=$cli->Insertar($idusu,'man_cierre');
	$arr = array(
		'estado' => 'ok',
		'idusu' => $idusu
	);
	echo json_encode($arr, JSON_FORCE_OBJECT);
?>