<?php

 try {
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
   
	 $fecpag = (isset($_POST['txtfecpag'])) ? $_POST['txtfecpag'] : '';
	 $monpag = (isset($_POST['txtmonpag'])) ? $_POST['txtmonpag'] : '';
	 $monpag=str_replace('.','',$monpag);
	 $monpag=str_replace(',','',$monpag);
	 $monpag=(float)$monpag;

	 $idcuo = (isset($_POST['dtcCUO'])) ? $_POST['dtcCUO'] : '';
	 $usuario=$_SESSION['nomusu'];
	 $idusu=$_SESSION['idusu'];
	$texto="'$idpag',"."'$fecpag',"."'$monpag',"."'$idcuo',"."'$idusu',"."'$ope'";
	$cli=new Metodo();
	$reg=$cli->Insertar($texto,'man_pago');


	$arr = array(
		'estado' => 'ok',
		'texto' => $texto               
				);
	 echo json_encode($arr, JSON_FORCE_OBJECT);  
	} catch (Exception $e) {
		// Manejo de la excepción
		$arr = array(
			'estado' => 'err',
			'texto' => 'No se pudo registrar'       
					);
		 echo json_encode($arr, JSON_FORCE_OBJECT);  
	}
	



	 
?>