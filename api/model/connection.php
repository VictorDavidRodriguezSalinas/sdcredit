<?php
try {
  	class Connection extends mysqli {
		public function __construct(){ 
			parent::__construct('127.0.0.1','admin','brickman','sdinfco_sdcredit');
			$this->query("SET NAMES 'utf8';");
			unset($x);
		}	
	}
} catch(PDOException $e) {
  echo 'Error conectando con la base de datos: ' . $e->getMessage();
}


?>