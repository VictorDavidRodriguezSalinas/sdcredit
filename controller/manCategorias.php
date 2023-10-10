<?php
	require_once('../model/metodos.php');
   $ope = (isset($_POST['txtOPE'])) ? $_POST['txtOPE'] : 'GUA';
   $idcat = (isset($_POST['txtidcat'])) ? $_POST['txtidcat'] : '0';
   $nomcat = (isset($_POST['txtNomCat'])) ? $_POST['txtNomCat'] : '';
	$texto="'$idcat',"."'$nomcat',"."'$ope'";
	$cli=new Metodo();
	$reg=$cli->Insertar($texto,'man_categoria');
?>