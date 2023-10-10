<?php
	require_once('../model/metodos.php');
   $ope = (isset($_POST['txtOPE'])) ? $_POST['txtOPE'] : 'GUA';
   $idcol = (isset($_POST['txtidcol'])) ? $_POST['txtidcol'] : '0';
   $nomcol = (isset($_POST['txtNomCol'])) ? $_POST['txtNomCol'] : '';
	$texto="'$idcol',"."'$nomcol',"."'$ope'";
	$cli=new Metodo();
	$reg=$cli->Insertar($texto,'man_color');
?>