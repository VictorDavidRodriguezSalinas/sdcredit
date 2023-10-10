<?php
	require_once('../model/metodos.php');
   $ope = (isset($_POST['txtOPE'])) ? $_POST['txtOPE'] : 'GUA';
   $idusu = (isset($_POST['txtidusu'])) ? $_POST['txtidusu'] : '0';
   $docusu = (isset($_POST['txtDocUsu'])) ? $_POST['txtDocUsu'] : '';
   $nomusu = (isset($_POST['txtNomUsu'])) ? $_POST['txtNomUsu'] : '';
   $logusu = (isset($_POST['txtLogUsu'])) ? $_POST['txtLogUsu'] : '';
   $clausu = (isset($_POST['txtClaUsu'])) ? $_POST['txtClaUsu'] : '';
   $nivusu = (isset($_POST['dtcTIP'])) ? $_POST['dtcTIP'] : '0';
   $clausu=md5($clausu);
	$texto="'$idusu',"."'$docusu',"."'$nomusu',"."'$logusu',"."'$clausu',"."'$nivusu',"."'$ope'";
	$cli=new Metodo();
	$reg=$cli->Insertar($texto,'man_user');
?>