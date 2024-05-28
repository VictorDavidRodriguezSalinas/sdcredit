

$(document).ready(function () {
    listCuotas();
    
    // Inicializa DataTables
    const table = $('#tabEstado').DataTable();

    // Función para calcular la suma de las columnas
    function calcularSumaColumnas() {
        let sumaColumna7 = 0;
        let sumaColumna8 = 0;
        let sumaColumna9 = 0;

        table.column(7, { search: 'applied' }).data().each(function (value) {
            sumaColumna7 += parseInt(value) || 0;
        });

        table.column(8, { search: 'applied' }).data().each(function (value) {
            sumaColumna8 += parseInt(value) || 0;
        });

        table.column(9, { search: 'applied' }).data().each(function (value) {
            sumaColumna9 += parseInt(value) || 0;
        });

        // console.log("Suma de Cobrado 1: " + sumaColumna1);
        // console.log("Suma de A Cobrar 2: " + sumaColumna2);
        const thtotInteres = document.getElementById("totInteres");
        const thtotCobrado = document.getElementById("totCobrado");
        const thtotSaldo = document.getElementById("totSaldo");

  
        thtotInteres.textContent = formatearNumero(sumaColumna7);
        thtotCobrado.textContent = formatearNumero(sumaColumna8);
        thtotSaldo.textContent = formatearNumero(sumaColumna9);
    }

    // Escucha el evento 'draw.dt' para calcular la suma después de cada búsqueda o cambio de datos
    table.on('draw.dt', function () {
        calcularSumaColumnas();
    });

    // Ejemplo: Realiza una búsqueda
    // setTimeout(function () {
    //     table.search('10').draw();
    // }, 2000);
});

function formatearNumero(tot){
    var numeroFormateado = tot.toLocaleString('es-ES', {
        style: 'decimal', // Puede ser 'decimal', 'percent', 'currency', etc.
        minimumFractionDigits: 0, // Número mínimo de decimales
    });
    return numeroFormateado;
}


// function listCuotas() {


//     idusuario = document.getElementById("txtidusu").value;
//     nivusu = document.getElementById("txtnivusu").value;

//     procedure = "lis_morosos";
//     $.fn.dataTable.ext.errMode = 'throw';
//     tablaEstado = $('#tabEstado').DataTable({
//         "paging": true,
//         "ordering": true,
//         "info": false,
//         "bFilter": true,
//         "ajax": {
//             "url": "controller/listarProcedure.php",
//             "method": 'POST', //usamos el metodo POST
//             "data": { param: "'" + idusuario + "'," + "'" + nivusu + "'", procedure: procedure }, //enviamos opcion 4 para que haga un SELECT
//             "dataSrc": ""
//         },
//         "columns": [
//             { "data": "numpgr" },
//             { "data": "ruccli" },
//             { "data": "razcli" },
//             { "data": "numcuo" },
//             { "data": "fecven" },
//             { "data": "moncuo", render: $.fn.dataTable.render.number('.', ',', 0) },
//             { "data": "dias_atraso" },
//             { "data": "intacu", render: $.fn.dataTable.render.number('.', ',', 0) },
//             { "data": "pagcuo", render: $.fn.dataTable.render.number('.', ',', 0) },
//             { "data": "monpag", render: $.fn.dataTable.render.number('.', ',', 0) },
//             { "data": "estado" }
        
//         ],
//         language: {
//             "lengthMenu": "Mostrar _MENU_ registros",
//             "zeroRecords": "No se encontraron resultados",
//             "info": "Mostrando registros del _START_ al _END_ de un total de _TOTAL_ registros",
//             "infoEmpty": "Mostrando registros del 0 al 0 de un total de 0 registros",
//             "infoFiltered": "(filtrado de un total de _MAX_ registros)",
//             "sSearch": "Buscar:",
//             "oPaginate": {
//                 "sFirst": "Primero",
//                 "sLast": "Último",
//                 "sNext": "Siguiente",
//                 "sPrevious": "Anterior"
//             },
//             "sProcessing": "Procesando...",
//         },
//         "responsive": true,
//         "autoWidth": false,
//         dom: 'Bfrtip',
//         buttons: [
//             {
//                 extend: 'excelHtml5',
//                 text: '<i class="fas fa-file-excel"></i> ',
//                 titleAttr: 'Exportar a Excel',
//                 className: 'btn btn-success',
//                 filename: 'Morosidad',
//                 title: 'Lista de Morosos',
//                 footer:true,
//             },
//             {
//                 extend: 'pdfHtml5',
//                 text: '<i class="fas fa-file-pdf"></i> ',
//                 titleAttr: 'Exportar a PDF',
//                 className: 'btn btn-danger',
//                 filename: 'Morosidad',
//                 title: 'Lista de Morosos',
//                 footer:true,
//             },
//             {
//                 extend: 'print',
//                 text: '<i class="fa fa-print"></i> ',
//                 titleAttr: 'Imprimir',
//                 className: 'btn btn-info',
//                 filename: 'Morosidad',
//                 title: 'Lista de Morosos',
//                 footer:true,
//                 customize: function(win) {
//                     // Personaliza la vista de impresión
//                     $(win.document.body).addClass('horizontal-print'); // Agrega una clase CSS para la impresión horizontal
//                   },
                
//             },
//         ]
//     });


// }
function listCuotas() {
    idusuario = document.getElementById("txtidusu").value;
    nivusu = document.getElementById("txtnivusu").value;

    procedure = "lis_morosos";
    $.fn.dataTable.ext.errMode = 'throw';
    tablaEstado = $('#tabEstado').DataTable({
        "paging": true,
        "ordering": true,
        "info": false,
        "bFilter": true,
        "ajax": {
            "url": "controller/listarProcedure.php",
            "method": 'POST',
            "data": { param: "'" + idusuario + "'," + "'" + nivusu + "'", procedure: procedure },
            "dataSrc": ""
        },
        "columns": [
            { "data": "numpgr" },
            { "data": "ruccli" },
            { "data": "razcli" },
            { "data": "numcuo" },
            { "data": "fecven" },
            { "data": "moncuo", render: $.fn.dataTable.render.number('.', ',', 0) },
            { "data": "dias_atraso" },
            { "data": "intacu", render: $.fn.dataTable.render.number('.', ',', 0) },
            { "data": "pagcuo", render: $.fn.dataTable.render.number('.', ',', 0) },
            { "data": "monpag", render: $.fn.dataTable.render.number('.', ',', 0) },
            { "data": "estado" },
            {
                "data": null,
                "defaultContent": '<button class="btn btn-primary btn-pdf">Generar PDF</button>',
                "orderable": false
            }
        ],
        language: {
            "lengthMenu": "Mostrar _MENU_ registros",
            "zeroRecords": "No se encontraron resultados",
            "info": "Mostrando registros del _START_ al _END_ de un total de _TOTAL_ registros",
            "infoEmpty": "Mostrando registros del 0 al 0 de un total de 0 registros",
            "infoFiltered": "(filtrado de un total de _MAX_ registros)",
            "sSearch": "Buscar:",
            "oPaginate": {
                "sFirst": "Primero",
                "sLast": "Último",
                "sNext": "Siguiente",
                "sPrevious": "Anterior"
            },
            "sProcessing": "Procesando...",
        },
        "responsive": true,
        "autoWidth": false,
        dom: 'Bfrtip',
        buttons: [
            {
                extend: 'excelHtml5',
                text: '<i class="fas fa-file-excel"></i> ',
                titleAttr: 'Exportar a Excel',
                className: 'btn btn-success',
                filename: 'Morosidad',
                title: 'Lista de Morosos',
                footer: true,
            },
            {
                extend: 'pdfHtml5',
                text: '<i class="fas fa-file-pdf"></i> ',
                titleAttr: 'Exportar a PDF',
                className: 'btn btn-danger',
                filename: 'Morosidad',
                title: 'Lista de Morosos',
                footer: true,
            },
            {
                extend: 'print',
                text: '<i class="fa fa-print"></i> ',
                titleAttr: 'Imprimir',
                className: 'btn btn-info',
                filename: 'Morosidad',
                title: 'Lista de Morosos',
                footer: true,
                customize: function (win) {
                    // Personaliza la vista de impresión
                    $(win.document.body).addClass('horizontal-print'); // Agrega una clase CSS para la impresión horizontal
                },
            },
        ]
    });

    // Evento para el botón "Generar PDF" en la fila visible
    $('#tabEstado tbody').on('click touchstart', '.btn-pdf', function(event) {
        event.preventDefault();
        var tr = $(this).closest('tr');
        var row = tablaEstado.row(tr);

        if (!row.data()) {
            row = tablaEstado.row(tr.prev()); // Para filas de detalle
        }

        var data = row.data();
        console.log(data);
        generatePDF(data);
    });
}

// Método generatePDF
function generatePDF(data) {
    //alert('Generar PDF para: ' + JSON.stringify(data)); // Aquí puedes añadir la lógica para generar el PDF
    var formData = new FormData();
    formData.append('ruccli', data.ruccli);
  
  

   fetch('controller/notificacion.php', {
       method: 'POST',
       body: formData
   })
   .then(response => response.blob())
   .then(blob => {
       var url = URL.createObjectURL(blob);
       var pdfWindow = window.open(url, '_blank');
       pdfWindow.onload = function() {
           pdfWindow.print();
       };
   });
}

// Formato para la fila de detalle (responsivo)
function format(d) {
    return `
        <table cellpadding="5" cellspacing="0" border="0" style="padding-left:50px;">
            <tr>
                <td>Nº Pagaré:</td>
                <td>${d.numpgr}</td>
            </tr>
            <tr>
                <td>Ruc:</td>
                <td>${d.ruccli}</td>
            </tr>
            <tr>
                <td>Razón Social:</td>
                <td>${d.razcli}</td>
            </tr>
            <tr>
                <td>Nº Cuota:</td>
                <td>${d.numcuo}</td>
            </tr>
            <tr>
                <td>Vencimiento:</td>
                <td>${d.fecven}</td>
            </tr>
            <tr>
                <td>Monto Cuota:</td>
                <td>${d.moncuo}</td>
            </tr>
            <tr>
                <td>Atraso Días:</td>
                <td>${d.dias_atraso}</td>
            </tr>
            <tr>
                <td>Interés:</td>
                <td>${d.intacu}</td>
            </tr>
            <tr>
                <td>Cobrado:</td>
                <td>${d.pagcuo}</td>
            </tr>
            <tr>
                <td>A Cobrar:</td>
                <td>${d.monpag}</td>
            </tr>
            <tr>
                <td>Estado:</td>
                <td>${d.estado}</td>
            </tr>
            <tr>
                <td colspan="2">
                    <button class="btn btn-primary btn-pdf">Generar PDF</button>
                </td>
            </tr>
        </table>
    `;
}



function cambiarColorColumna(){
    const table = document.getElementById("tabEstado");

// Obtén el índice de la columna que deseas cambiar (0 para la primera columna, 1 para la segunda, etc.)
const columnIndex = 9; // Cambiar el índice según la columna deseada

// Aplica un estilo a las celdas de la columna
for (let i = 0; i < table.rows.length; i++) {
  const row = table.rows[i];
  const cell = row.cells[columnIndex];
  
  // Cambia el color de fondo de la celda
  cell.style.backgroundColor = "red"; // Cambia el color a tu elección
  cell.style.color = "white"; // Cambia el color del texto si es necesario
}
}