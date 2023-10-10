<?php
require_once('../model/metodos.php');
$idcli = (isset($_POST['txtidcli'])) ? $_POST['txtidcli'] : '0';
$ope = (isset($_POST['txtOPE'])) ? $_POST['txtOPE'] : 'GUA';
$ruccli = (isset($_POST['txtRucCli'])) ? $_POST['txtRucCli'] : '0';
$nomcli = (isset($_POST['txtNomCli'])) ? $_POST['txtNomCli'] : '';
$apecli = (isset($_POST['txtApeCli'])) ? $_POST['txtApeCli'] : '';
$telcli = (isset($_POST['txtTelCli'])) ? $_POST['txtTelCli'] : '';

$usuario = $_SESSION['nomusu'];




if ($ope == 'ELI') :
	$Cn = new Conexion();
	$sql = "SELECT * FROM ventas WHERE idcli='$idcli'";
	$query = $Cn->query($sql);
	$fil = $query->num_rows;
	if ($fil > 0) :
		$arr = array(
			'estado' => 'no'
		);
		echo json_encode($arr, JSON_FORCE_OBJECT);
	else :
		$texto = "'$idcli'," . "'$ruccli'," . "'$nomcli'," . "'$apecli'," . "'$telcli'," . "'$ope'";
		$cli = new Metodo();
		$reg = $cli->Insertar($texto, 'man_cliente');
		$arr = array(
			'estado' => 'ok',
			'texto' => $texto
		);
		echo json_encode($arr, JSON_FORCE_OBJECT);

	endif;

elseif ($ope=='GUA') :

	$Cn = new Conexion();
	$sql = "SELECT * FROM clientes WHERE ruccli='$ruccli'";
	$query = $Cn->query($sql);
	$fil = $query->num_rows;
	if ($fil > 0 && $ope == 'GUA') {
		$arr = array(
			'estado' => 'no'
		);
		echo json_encode($arr, JSON_FORCE_OBJECT);
	} else {
		$texto = "'$idcli'," . "'$ruccli'," . "'$nomcli'," . "'$apecli'," . "'$telcli'," . "'$ope'";
		$cli = new Metodo();
		$reg = $cli->Insertar($texto, 'man_cliente');
		$arr = array(
			'estado' => 'ok',
			'texto' => $texto
		);
		echo json_encode($arr, JSON_FORCE_OBJECT);
	}

	elseif ($ope=='EDI') :
			$texto = "'$idcli'," . "'$ruccli'," . "'$nomcli'," . "'$apecli'," . "'$telcli'," . "'$ope'";
			$cli = new Metodo();
			$reg = $cli->Insertar($texto, 'man_cliente');
			$arr = array(
				'estado' => 'ok',
				'texto' => $texto
			);
			echo json_encode($arr, JSON_FORCE_OBJECT);
endif;
