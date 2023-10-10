<?php
	require_once('../model/metodos.php');
   $ope = (isset($_POST['txtOPE'])) ? $_POST['txtOPE'] : 'GUA';
   $idubi = (isset($_POST['txtidubi'])) ? $_POST['txtidubi'] : '0';
   $nomubi = (isset($_POST['txtNomUbi'])) ? $_POST['txtNomUbi'] : '';
	$texto="'$idubi',"."'$nomubi',"."'$ope'";
	$cli=new Metodo();
	$reg=$cli->Insertar($texto,'man_ubicacion');
?>