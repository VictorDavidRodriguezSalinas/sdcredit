<?php
	require_once('../model/metodos.php');
   $ope ='GUA';
  
	$texto="'$ope'";
	$cli=new Metodo();
	$reg=$cli->Insertar($texto,'man_cierre');
?>