<?php
	require_once('../model/metodos.php');
   $ope = (isset($_POST['txtOPE'])) ? $_POST['txtOPE'] : 'GUA';
   $idtip = (isset($_POST['txtidtip'])) ? $_POST['txtidtip'] : '0';
   $nomtip = (isset($_POST['txtNomTip'])) ? $_POST['txtNomTip'] : '';
	$texto="'$idtip',"."'$nomtip',"."'$ope'";
	$cli=new Metodo();
	$reg=$cli->Insertar($texto,'man_tipocaravana');
?>