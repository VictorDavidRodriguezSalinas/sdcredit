<?php
require('fpdf/fpdf.php');
require_once('../model/metodos.php');

// Obtener parámetros POST
$param = $_POST['param'];
$procedure = $_POST['procedure'];

// Crear instancia del método y obtener datos
$cli = new Metodo();
$datos = $cli->ListarProcedure($param, $procedure);

class PDF extends FPDF {
    // Cabecera de página
    function Header() {
        $this->SetFont('Arial', 'B', 12);
        $this->Cell(0, 10, 'Titulo del PDF', 0, 1, 'C');
    }

    // Pie de página
    function Footer() {
        $this->SetY(-15);
        $this->SetFont('Arial', 'I', 8);
        $this->Cell(0, 10, 'Pagina ' . $this->PageNo() . '/{nb}', 0, 0, 'C');
    }

    // Tabla simple
    function BasicTable($header, $data) {
        foreach ($header as $col) {
            $this->Cell(40, 7, $col, 1);
        }
        $this->Ln();
        foreach ($data as $row) {
            foreach ($row as $col) {
                $this->Cell(40, 6, $col, 1);
            }
            $this->Ln();
        }
    }
}

$pdf = new PDF();
$pdf->AliasNbPages();
$pdf->AddPage();
$pdf->SetFont('Arial', '', 12);

// Define los encabezados de la tabla
$header = array('Columna1', 'Columna2', 'Columna3');

// Convierte los datos en un formato adecuado para la tabla
$data = array();
foreach ($datos as $row) {
    $data[] = array_values((array)$row);
}

$pdf->BasicTable($header, $data);
$pdf->Output();
?>
