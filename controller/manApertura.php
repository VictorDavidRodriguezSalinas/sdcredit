<?php
	require_once('../model/metodos.php');
$idapc = (isset($_POST['txtidapc'])) ? $_POST['txtidapc'] : '0';
   $ope = (isset($_POST['txtOPE'])) ? $_POST['txtOPE'] : 'GUA';
   $monini = (isset($_POST['txtMonIni'])) ? $_POST['txtMonIni'] : '0';
   $monapc = (isset($_POST['txtMonApc'])) ? $_POST['txtMonApc'] : '';
       $idusu=$_SESSION['idusu'];

$Cn=new Conexion();
$sql="SELECT * FROM apertura WHERE idusu='$idusu' AND estapc=1";
$query=$Cn->query($sql);
$fil=$query->num_rows;
if($fil==1 && $ope=='GUA'){
       $arr = array(
        'estado' => 'no'                
            );
       echo json_encode($arr, JSON_FORCE_OBJECT);   
}
else{
	$texto="'$idapc',"."'$monini',"."'$monapc',"."'$idusu',"."'$ope'";
	$cli=new Metodo();
	$reg=$cli->Insertar($texto,'man_apertura');
       $arr = array(
              'estado' => 'ok',
              'texto' => $texto               
                  );
             echo json_encode($arr, JSON_FORCE_OBJECT);  
}

?>