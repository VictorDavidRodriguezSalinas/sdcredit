<?php
	require_once('../model/metodos.php');
   $ope = (isset($_POST['txtOPE'])) ? $_POST['txtOPE'] : 'GUA';
   $idraz = (isset($_POST['txtidraz'])) ? $_POST['txtidraz'] : '0';
   $nomraz = (isset($_POST['txtNomRaz'])) ? $_POST['txtNomRaz'] : '';
	$texto="'$idraz',"."'$nomraz',"."'$ope'";
	$cli=new Metodo();
	$reg=$cli->Insertar($texto,'man_raza');
?>