<?php
	require_once('../model/metodos.php');

   
   $ope = (isset($_POST['txtOPE'])) ? $_POST['txtOPE'] : 'GUA';

    if ($ope=='GUA'){
        $process=new Metodo();
        $datos=$process->listarCamposJson("animales","MAX(idani) as id");
        for($i=0;$i<sizeof($datos);$i++)
            {
            $idult= $datos[$i]['id']+1;
        }
        
    }
    else
    {
        $idult=$_POST['txtidani'];
    }


//CARPETA DE FOTOS
        $num_archivos=count($_FILES['file']['name']);
        $carpeta = "../images/animales/".$idult;
        $files = glob($carpeta.'/*'); //obtenemos todos los nombres de los ficheros
        $canfiles=count($files);
        
        if ($ope=='GUA'){
            if ($canfiles>0){
                foreach($files as $file){
                    if(is_file($file))
                    unlink($file); //elimino el fichero
                }
            }
        }
    for ($i=0; $i <=$num_archivos ; $i++) { 
        if(!empty($_FILES['file']['name'][$i])){
            if (!is_dir($carpeta)) {
                mkdir($carpeta, 0777, true);
            }
            $ruta_nueva=$carpeta."/foto".$i.".jpg";
           // if (file_exists($ruta_nueva)){
            //    $ruta_temporal=$_FILES['file']['tmp_name'][$i];
           //     move_uploaded_file($ruta_temporal,$ruta_nueva);

            //}
          //  else
            //{
                $ruta_temporal=$_FILES['file']['tmp_name'][$i];
                move_uploaded_file($ruta_temporal,$ruta_nueva);
               
            //}
        }
        else
        {

        }
    }
// END FOTOS
   
    
   $idani = $idult;//(isset($_POST['txtidani'])) ? $_POST['txtidani'] : $idult;
   $carani = (isset($_POST['txtCarAni'])) ? $_POST['txtCarAni'] : '';
   $hbpani = (isset($_POST['txtHbpAni'])) ? $_POST['txtHbpAni'] : ''; 
   $nomani = (isset($_POST['txtNomAni'])) ? $_POST['txtNomAni'] : '';
   $fecnac = (isset($_POST['txtFecNac'])) ? $_POST['txtFecNac'] : '2021-11-15';
   $cirani = (isset($_POST['txtCirAni'])) ? $_POST['txtCirAni'] : '';
   $precom = (isset($_POST['txtPrecom'])) ? $_POST['txtPrecom'] : '';
   $preven = (isset($_POST['txtPreVen'])) ? $_POST['txtPreVen'] : '';
   $obsani = (isset($_POST['txtObsAni'])) ? $_POST['txtObsAni'] : '';
   $sexani = (isset($_POST['txtSexAni'])) ? $_POST['txtSexAni'] : '';
   $idcat = (isset($_POST['txtIdCat'])) ? $_POST['txtIdCat'] : '1';
   $idraz = (isset($_POST['txtIdRaz'])) ? $_POST['txtIdRaz'] : '1';
   $idlot = (isset($_POST['txtIdLot'])) ? $_POST['txtIdLot'] : '1';
   $idubi = (isset($_POST['txtIdUbi'])) ? $_POST['txtIdUbi'] : '1';
   $idtip = (isset($_POST['txtIdTip'])) ? $_POST['txtIdTip'] : '1';
   $idcol = (isset($_POST['txtIdCol'])) ? $_POST['txtIdCol'] : '1';
   $idest = (isset($_POST['txtIdEst'])) ? $_POST['txtIdEst'] : '1';
    $usuario=$_SESSION['nomusu'];
 


	$texto="'$idani',"."'$carani',"."'$hbpani',"."'$nomani',"."'$fecnac',"."'$cirani',"."'$precom',"."'$preven',"."'$obsani',"."'$sexani',"."'$idcat',"."'$idraz',".
    "'$idlot',"."'$idubi',"."'$idtip',"."'$idcol',"."'$idest',"."'$usuario',"."'$ope'";
	$cli=new Metodo();
	$reg=$cli->Insertar($texto,'man_animal');
