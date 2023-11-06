<?php
require('../model/conexion.php');
$Cn=new Conexion();
$idusu = (isset($_POST['txtidusu'])) ? $_POST['txtidusu'] : '0';
$sql="SELECT * FROM apertura WHERE estapc=1 and idusu=$idusu";


$query=$Cn->query($sql);
$fil=$query->num_rows;
if($fil==1){
    while($r=$query->fetch_array()){
       $arr = array(
        'estado' => 'ok',
				'estape' => '1'  

            );
     
       echo json_encode($arr, JSON_FORCE_OBJECT);  
    }   
}
else{

	$arr = array(
		'estado' => 'no',
		'estape' => '0'  

				);
 
	 echo json_encode($arr, JSON_FORCE_OBJECT);  
   
}
?>