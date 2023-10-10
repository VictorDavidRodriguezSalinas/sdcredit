<?php
	require_once('../model/metodos.php');

	$ope = (isset($_POST['txtOPE'])) ? $_POST['txtOPE'] : 'GUA';
  $idret = (isset($_POST['txtidret'])) ? $_POST['txtidret'] : '0';
  $monret = (isset($_POST['txtMonRet'])) ? $_POST['txtMonRet'] : '0';
	$motret = (isset($_POST['txtMotRet'])) ? $_POST['txtMotRet'] : '';
	$idusu=$_SESSION['idusu'];
	$usuario=$_SESSION['nomusu'];
	$texto="'$idret',"."'$monret',"."'$usuario',"."'$motret',"."'$idusu',"."'$ope'";

$Cn=new Conexion();
$sql="SELECT monapc-monret as mondis FROM apertura WHERE estapc=1 and idusu=$idusu";
$query=$Cn->query($sql);
$fil=$query->num_rows;
if($fil==1){
	while($r=$query->fetch_array()){
		$mondis=$r['mondis'];

		if ($mondis>=$monret)
		{
			$arr = array(
				'estado' => 'ok',  
				'mondis' => $r['mondis']
						);
						$cli=new Metodo();
						$reg=$cli->Insertar($texto,'man_retiro');			
		}
		else
		{
			$arr = array(
				'estado' => 'no',  
				'mondis' => $r['mondis']
						);
		}
		echo json_encode($arr, JSON_FORCE_OBJECT);  
	} 
}
?>