<?php
	require_once('../model/metodos.php');
   $ope = (isset($_POST['txtOPE'])) ? $_POST['txtOPE'] : 'GUA';
   $idlot = (isset($_POST['txtidlot'])) ? $_POST['txtidlot'] : '0';
   $nomlot = (isset($_POST['txtNomLot'])) ? $_POST['txtNomLot'] : '';
	$texto="'$idlot',"."'$nomlot',"."'$ope'";
	$cli=new Metodo();
	$reg=$cli->Insertar($texto,'man_lote');
?>