<?php
	require_once('../model/metodos.php');
   $ope = (isset($_POST['txtOPE'])) ? $_POST['txtOPE'] : 'GUA';
   $idest = (isset($_POST['txtidest'])) ? $_POST['txtidest'] : '0';
   $nomest = (isset($_POST['txtNomEst'])) ? $_POST['txtNomEst'] : '';
   $rucest = (isset($_POST['txtRucEst'])) ? $_POST['txtRucEst'] : '';
   $direst = (isset($_POST['txtDirEst'])) ? $_POST['txtDirEst'] : '';
   $celest = (isset($_POST['txtCelEst'])) ? $_POST['txtCelEst'] : '';
   $mailest = (isset($_POST['txtMailEst'])) ? $_POST['txtMailEst'] : '';

	$texto="'$idest',"."'$nomest',"."'$rucest',"."'$direst',"."'$celest',"."'$mailest',"."'$ope'";
	$cli=new Metodo();
	$reg=$cli->Insertar($texto,'man_estancia');
    print($texto);
?>