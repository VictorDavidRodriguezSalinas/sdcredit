<?php
session_start();
	//Llamamos a la clase conexion
	require('conexion.php');
	class Metodo{
        
		public function __construct(){
		}
		public function Insertar($sql,$procedure){
			$Cn=new Conexion();
			$dato="CALL $procedure($sql)";
			$query=$Cn->query($dato);
			
		
		}

		public function Eliminar($sql){
			$Cn=new Conexion();
			$dato="DELETE FROM  $sql";
			$query=$Cn->query($dato);
		}
		public function listarTabla($tabla){
			$Cn=new Conexion();
			$sql="SELECT * FROM $tabla";
			$query=$Cn->query($sql);
			while ($res=$query->fetch_array()){
				$this->lista[]=$res;	
			}
			return $this->lista;
		}
		public function listarTablaJson($tabla){
			$Cn=new Conexion();
			$sql="SELECT * FROM $tabla";
			$query=$Cn->query($sql);
			while ($dat=mysqli_fetch_assoc($query)){
				$this->lista[]=$dat;	
			}
			return $this->lista;	
		}
		public function listarCamposJson($tabla,$campos){
			$Cn=new Conexion();
			$sql="SELECT $campos FROM $tabla";
			$query=$Cn->query($sql);
			while ($dat=mysqli_fetch_assoc($query)){
				$this->lista[]=$dat;	
			}
			return $this->lista;	
		}

		public function ListarProcedure($param,$procedure){
			$Cn=new Conexion();
			$dato="CALL $procedure($param)";
			$query=$Cn->query($dato);
			while ($dat=mysqli_fetch_assoc($query)){
				$this->lista[]=$dat;	
			}
			return $this->lista;
		}

	
		
	
	}
?>