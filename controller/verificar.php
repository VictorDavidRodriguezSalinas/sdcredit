<?php
require('../model/conexion.php');
$usu=$_POST['txtlogusu'];
$cla=md5($_POST['txtclausu']);

$Cn=new Conexion();
$sql="SELECT * FROM usuario WHERE logusu='$usu' AND clausu='$cla'";
$query=$Cn->query($sql);
$fil=$query->num_rows;
if($fil==1){
    while($r=$query->fetch_array()){
       session_start();
        $_SESSION['idusu']=$r['idusu'];
        $_SESSION['nomusu']=$r['nomusu'];
        $_SESSION['docusu']=$r['docusu'];
        $_SESSION['nivusu']=$r['nivusu'];
        $_SESSION['login']='ok';
        $_GET['page']='dashboard';
       // $arr[]=$r;
       $arr = array(
        'estado' => 'ok'                
            );
      // header("Location:../index");
       echo json_encode($arr, JSON_FORCE_OBJECT);  
    }   
}
else{
    $arr = array(
        'estado' => 'no'                
            );
    echo json_encode($arr, JSON_FORCE_OBJECT);  
   
}



?>