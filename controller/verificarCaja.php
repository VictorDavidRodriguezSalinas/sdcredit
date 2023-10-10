<?php
require('../model/conexion.php');
$Cn=new Conexion();
$sql="SELECT * FROM apertura WHERE estapc=1";
$query=$Cn->query($sql);
$fil=$query->num_rows;
if($fil==1){
    while($r=$query->fetch_array()){
       
      
       $arr = array(
        'estado' => 'no',
				'estape' => '1'  

            );
     
       echo json_encode($arr, JSON_FORCE_OBJECT);  
    }   
}
else{
	$_SESSION['idape']=0;
	$arr = array(
		'estado' => 'ok',
		'estape' => '0'  

				);
 
	 echo json_encode($arr, JSON_FORCE_OBJECT);  
   
}
?>