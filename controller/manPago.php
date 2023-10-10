<?php
	require_once('../model/metodos.php');
   $ope = (isset($_POST['txtOPEPAG'])) ? $_POST['txtOPEPAG'] : 'GUA';
	 if ($ope='GUA')
	 {
		$idpag=0;
	 }
	 else
	 {
		 $idpag=$_POST['txtidpag'];
	 }
   
	 $fecpag = (isset($_POST['txtFecPag'])) ? $_POST['txtFecPag'] : '';
	 $monpag = (isset($_POST['txtMonPag'])) ? $_POST['txtMonPag'] : '';
	 $idven = (isset($_POST['txtIdVenPag'])) ? $_POST['txtIdVenPag'] : '';
	 $usuario=$_SESSION['nomusu'];
	 
	$texto="'$idpag',"."'$fecpag',"."'$monpag',"."'$idven',"."'$usuario',"."'$ope'";
	$cli=new Metodo();
	$reg=$cli->Insertar($texto,'man_pago');


	$arr = array(
		'estado' => 'ok',
		'texto' => $texto               
				);
	 echo json_encode($arr, JSON_FORCE_OBJECT);  
?>