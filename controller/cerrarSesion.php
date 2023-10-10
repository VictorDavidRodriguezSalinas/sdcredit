<?php
session_start();
$_SESSION['login']='no';
$_SESSION['docusu']='';
$_SESSION['nomusu']='';


	header("Location:../login");
?>
 