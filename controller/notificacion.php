<?php
require('../fpdf/fpdf.php');
require_once('../model/metodos.php');

// Obtener parámetros POST
$param = "'" . $_POST['ruccli'] . "'";
$procedure = 'lis_notificacion';

// Crear instancia del método y obtener datos
$cli = new Metodo();
$datos = $cli->ListarProcedure($param, $procedure);

class PDF extends FPDF {
    // Cabecera de página
    function Header() {
        $this->SetFont('Arial', 'B', 12);
        $this->SetTextColor(255, 0, 0);
        $this->Cell(0, 10, utf8_decode('NOTIFICACIÓN POR INCUMPLIMIENTO DE PAGARÉ'), 0, 1, 'C');
    }

    // Pie de página
    function Footer() {
        $this->SetY(-15);
        $this->SetFont('Arial', 'I', 8);
        $this->Cell(0, 10, 'Página ' . $this->PageNo() . '/{nb}', 0, 0, 'C');
    }

    // Tabla con autoajuste de columnas
    function AutoAdjustTable($header, $data, $margin) {
        // Establecer margen izquierdo
        $this->SetLeftMargin($margin);
        
        // Calcular el ancho de las columnas
        $numCols = count($header);
        $colWidths = array();

        // Establecer ancho mínimo para cada columna
        foreach ($header as $col) {
            $colWidths[] = $this->GetStringWidth($col) + 6;
        }

        // Ajustar ancho de columnas según el contenido de cada celda
        foreach ($data as $row) {
            foreach ($row as $key => $col) {
                $colWidth = $this->GetStringWidth($col) + 6;
                if ($colWidth > $colWidths[$key]) {
                    $colWidths[$key] = $colWidth;
                }
            }
        }

        // Calcular el ancho total de la tabla
        $tableWidth = array_sum($colWidths);
        $pageWidth = $this->GetPageWidth() - 2 * $margin;

        // Si la tabla es más ancha que la página, ajustar los anchos proporcionalmente
        if ($tableWidth > $pageWidth) {
            $ratio = $pageWidth / $tableWidth;
            foreach ($colWidths as $key => $width) {
                $colWidths[$key] = $width * $ratio;
            }
        }

        // Cabecera
        $this->SetFont('Arial', 'B', 10);
        foreach ($header as $key => $col) {
            $this->Cell($colWidths[$key], 7, utf8_decode($col), 1, 0, 'C');
        }
        $this->Ln();

        // Datos
        $this->SetFont('Arial', '', 10);
        $totalDeuda = 0;
        foreach ($data as $row) {
            foreach ($row as $key => $col) {
                if ($key == 6) { // Columna "Deuda"
                    $this->SetFillColor(255, 0, 0); // Rojo
                    $this->SetTextColor(255, 255, 255); // Blanco
                    $col = number_format($col, 0, '', '.');
                } else {
                    $this->SetFillColor(255, 255, 255); // Blanco
                    $this->SetTextColor(0, 0, 0); // Negro
                }
                $this->Cell($colWidths[$key], 6, utf8_decode($col), 1, 0, 'C', true);
            }
            $this->Ln();
            $totalDeuda += str_replace('.', '', $row[6]);
        }

        // Mostrar total de la columna "Deuda"
        $this->SetFont('Arial', 'B', 10);
        $this->SetFillColor(255, 0, 0); // Rojo
        $this->SetTextColor(255, 255, 255); // Blanco
        $this->Cell(array_sum($colWidths) - $colWidths[6], 6, 'Total', 1, 0, 'R', true);
        $this->Cell($colWidths[6], 6, number_format($totalDeuda, 0, '', '.'), 1, 0, 'C', true);
        $this->Ln();
    }
}

$pdf = new PDF();
$pdf->AliasNbPages();
$pdf->AddPage();
$pdf->SetFont('Arial', '', 10);

// Agregar fecha y texto de notificación de requerimiento de pagaré
$pdf->Cell(0, 10, utf8_decode('Fecha: ' . date('d-m-Y')), 0, 1, 'L');
$pdf->Ln(5);
$pdf->MultiCell(0, 10, utf8_decode('Por medio de la presente, se notifica el requerimiento de pago del pagaré. A continuación, se detalla la información correspondiente a las cuotas atrasadas:'), 0, 'L');
$pdf->Ln(10);

// Agregar imagen de advertencia
//$pdf->Image('../icons/advertencia.png', 10, $pdf->GetY(), 20);
//$pdf->SetY($pdf->GetY() + 25); // Ajustar la posición Y después de la imagen

// Define los encabezados de la tabla
$header = array('Nº Pagaré', 'Nº Cuota', 'Cédula', 'Nombre y Apellido', 'Vencimiento', 'Atraso', 'Deuda');

// Convierte los datos en un formato adecuado para la tabla
$data = array();
foreach ($datos as $row) {
    $data[] = array_values((array)$row);
}

// Llama a la función para imprimir la tabla con autoajuste de columnas
$pdf->AutoAdjustTable($header, $data, 10); // Establece el margen izquierdo en 1cm (10mm)
$pdf->Output();
?>
