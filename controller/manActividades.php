<?php
		require_once('../model/metodos.php');
		$ope = (isset($_POST['txtOPE'])) ? $_POST['txtOPE'] : 'GUA';
		$usuario=$_SESSION['nomusu'];

		$idactv=0;	
		$codactv=$_POST['txtCodActv'];
		if ($ope=='EDI') {
			$texto="'$codactv',"."'$usuario'";
			$cli=new Metodo();
			$reg=$cli->Insertar($texto,'eli_actividades');

		}
		$fecactv=$_POST['txtFecActv'];
		$pesactv=$_POST["pesactv"];
		$obsactv=$_POST["txtObsActv"];;
		$canmedi=$_POST["canmedi"];
		$premedi=$_POST["premedi"];
		$idani=$_POST["idani"];
		$idtia=$_POST["idtia"];
		$idtimed=$_POST["idtimed"];



	
		

		$i=0;
		$texto="";
		
		//insertar detalles id,codact,fecact,pesact,obsact,canmed,premed,idan,idti,idtime
		while ($i < count($idani))
		{
			$texto="'$idactv',"."'$codactv',"."'$fecactv',"."'$pesactv[$i]',"."'$obsactv',"."'$canmedi[$i]',"."'$premedi[$i]',"."'$idani[$i]',"."'$idtia[$i]',"."'$idtimed[$i]',"."'$usuario',"."'$ope'";
			$cli=new Metodo();
			$reg=$cli->Insertar($texto,'man_actividades');	
			
			$i=$i + 1;
		}


	
  
   
	









?>