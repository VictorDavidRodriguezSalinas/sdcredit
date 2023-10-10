<?php
try {
  	class Conexion extends mysqli {
		public function __construct(){ 
			parent::__construct('localhost','ciacup_adminprocoindi','Brickman_2017','ciacup_procoindi');
			$this->query("SET NAMES 'utf-8';");
			$this->maxdb_connect_errno ? die('Error al Conectar a la Base de Datos'): $x='Conectado';
			unset($x);
            echo $x;
		}	
	}
} catch(PDOException $e) {
  echo 'Error conectando con la base de datos: ' . $e->getMessage();
}
?>