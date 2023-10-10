<?php

	//creando la clase conexion, usando la extension la mysqli
try {
	
  	class Conexion extends mysqli {

		//creamos el objeto constructor de la clase conexion

		public function __construct(){ 

			//declaramos las variables para la conexion

			parent::__construct('localhost','sdinfco_admin','brickman2017','sdinfco_sdcredit');

			//188.6parent::__construct('127.0.0.1','admin','brickman','procoindi');8.47.164 seleccionamos el tipo de caracteres a utilizar (utf-8 que acepte tildes)

			$this->query("SET NAMES 'utf8';");

			//declaramos un mensaje si hay error de conexion o conexion exitosa

			//$this->maxdb_connect_errno ? die('Error al Conectar a la Base de Datos'): $x='Conectado';

			unset($x);

		}	

	}
 
} catch(PDOException $e) {
  echo 'Error conectando con la base de datos: ' . $e->getMessage();
}


?>