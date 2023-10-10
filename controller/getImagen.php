
<?php
$filenameArray = [];
$ruta=$_POST['ruta'];

if ($handler = opendir($ruta)) {
    while (false !== ($file = readdir($handler))) {

		
						$rutas[]=[
							"nomFoto"=>$file
						];
						
    }
    closedir($handler);
}
echo json_encode($rutas);

?>