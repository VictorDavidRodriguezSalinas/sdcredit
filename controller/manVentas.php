<?php

		require_once('../model/metodos.php');
		$ope = (isset($_POST['txtOPE'])) ? $_POST['txtOPE'] : 'GUA';
		if ($ope=='GUA')
		{
			$Cn=new Conexion();
			$sql="SELECT IF(MAX(idven) IS NULL,1,MAX(idven)+1) as id FROM ventas";
			$query=$Cn->query($sql);
			$fil=$query->num_rows;
			if($fil==1){
				while($r=$query->fetch_array()){
					$idven=$r['id'];
				} 
			}
		}
		elseif ($ope=='EDI')
		 {
			$idven=$_POST['txtIdVen'];
			$texto="'$idven',"."'$usuario'";
			$cli=new Metodo();
			$reg=$cli->Insertar($texto,'eli_detallesventa');
		}



		$usuario=$_SESSION['nomusu'];


		$numven=$_POST['txtNumVen'];
		
		$fecven=$_POST['txtFecVen'];
		$numven=$_POST["txtNumVen"];
		$ivauno=$_POST["total_iva"];;
		$totven=$_POST["total_venta"];
		$idcli=$_POST["txtIdCli"];

		$ivauno=str_replace('.', '', $ivauno);
		$totven=str_replace('.', '', $totven);

		$texto="'$idven',"."'$fecven',"."'$numven',"."'$ivauno',"."'$totven',"."'$idcli',"."'$ope'";
		$cli=new Metodo();
		$reg=$cli->Insertar($texto,'man_ventas');	

		


		
		$preven=$_POST["preven"];
		$idani=$_POST["idani"];

		



		

		$i=0;
		$texto="";
	
		
		//insertar detalles id,codact,fecact,pesact,obsact,canmed,premed,idan,idti,idtime
		while ($i < count($idani))
		{
		
			$texto="'$preven[$i]',"."'$idani[$i]',"."'$idven'";
			$cli=new Metodo();
			$reg=$cli->Insertar($texto,'man_detventas');	
			$i=$i + 1;
			
			
		}

		$arr = array(
			'estado' => 'ok',  
			'idven' => $idven,
			'totven' => $totven,
			'numven' => $numven

					);
					echo json_encode($arr, JSON_FORCE_OBJECT);  

	
	

		

?>