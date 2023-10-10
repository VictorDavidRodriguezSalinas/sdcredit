<?php 


    session_start();
	require_once('../model/metodos.php');
	$usu=$_POST['txtlogusu'];
	$cla=md5($_POST['txtclausu']);
	$_SESSION['clamd']=$cla;
	    $sql=" * ";
        $cli=new Metodo();
        $lisper=$cli->listarwhere($sql,'usuario WHERE logusu='."'".$usu."'");
     
       if (count($lisper)>0)
        {
                $datos = array(
                    'estado' => 'ok',
                    'nombre' => $lisper[0]['logusu']
                        );
            }
        
header('Content-Type: application/json');
  
echo json_encode($datos, JSON_FORCE_OBJECT);

?>