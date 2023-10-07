<?php
include_once('connection.php');
//error_reporting(0);
class Method
{
    public function __construct()
    {
    }

    public function getAll($tabla)
    {
        $Cn = new Connection();
        $sql = "SELECT * FROM $tabla";
        $query = $Cn->query($sql);
        if (!$query) {
            die("Error de consulta: " . mysqli_error($Cn));
        }
        $datos = array();

        while ($fila = mysqli_fetch_assoc($query)) {
            $datos[] = $fila;
        }
        return $datos;

    }

    public function getId($tabla,$campo,$id)
    {
        $Cn = new Connection();
        $sql = "SELECT * FROM $tabla WHERE $campo=$id";
        $query = $Cn->query($sql);
        if (!$query) {
            die("Error de consulta: " . mysqli_error($Cn));
        }
        $datos = array();

        while ($fila = mysqli_fetch_assoc($query)) {
            $datos[] = $fila;
        }
        return $datos;

    }
}
