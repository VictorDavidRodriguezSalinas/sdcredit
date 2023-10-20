<?php
    error_reporting(0);
    
    $param=$_POST['param'];
    $procedure=$_POST['procedure'];
    require_once('../model/metodos.php');
    $cli=new Metodo();
    $datos=$cli->ListarProcedure($param,$procedure);

    if ($datos){
        echo json_encode($datos); 
    }
    else
    {
        $arr = array(
			'estado' => 'err',
			'texto' => 'No se encontraron datos'       
					);
		 echo json_encode($arr, JSON_FORCE_OBJECT);  
    }
  
?>