<?php

ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

$DateAndTime = date('mdYsiH', time());
$archivo=$DateAndTime."buckup.sql";
$database = 'sisgandb';
$user = 'admin';
$pass = 'brickman';
$host = 'localhost';
$dir = dirname(__FILE__) . '/'.$archivo;

exec("mysqldump --user={$user} --password={$pass} --host={$host} {$database} --result-file={$dir} 2>&1", $output);


	require_once('../model/metodos.php');
  
	$texto="'$archivo'";
	$cli=new Metodo();
	$reg=$cli->Insertar($texto,'man_buckup');


$arr = array(
	'estado' => 'ok',
	'archivo' =>$archivo                
			);
echo json_encode($arr, JSON_FORCE_OBJECT);  




?>