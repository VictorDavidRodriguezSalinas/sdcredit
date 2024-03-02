

$(document).ready(function () {
    listCuotas();
    
    // Inicializa DataTables
    const table = $('#tabEstado').DataTable();

    // Función para calcular la suma de las columnas
    function calcularSumaColumnas() {
        let sumaColumna7 = 0;
        let sumaColumna8 = 0;
        let sumaColumna9 = 0;
        let sumaColumna10 = 0;
        table.column(7, { search: 'applied' }).data().each(function (value) {
            sumaColumna7 += parseInt(value) || 0;
        });

        table.column(8, { search: 'applied' }).data().each(function (value) {
            sumaColumna8 += parseInt(value) || 0;
        });

        table.column(9, { search: 'applied' }).data().each(function (value) {
            sumaColumna9 += parseInt(value) || 0;
        });
        table.column(10, { search: 'applied' }).data().each(function (value) {
            sumaColumna10 += parseInt(value) || 0;
        });


        // console.log("Suma de Cobrado 1: " + sumaColumna1);
        // console.log("Suma de A Cobrar 2: " + sumaColumna2);
        const thtotInteres = document.getElementById("totInteres");
        const thtotCobrado = document.getElementById("totCobrado");
        const thtotSaldo = document.getElementById("totSaldo");
        const thtotExonera = document.getElementById("totExonera");
  
        thtotInteres.textContent = formatearNumero(sumaColumna7);
        thtotCobrado.textContent = formatearNumero(sumaColumna8);
        thtotSaldo.textContent = formatearNumero(sumaColumna9);
        thtotExonera.textContent = formatearNumero(sumaColumna10);
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


function listCuotas() {


    idusuario = document.getElementById("txtidusu").value;
    nivusu = document.getElementById("txtnivusu").value;

    procedure = "lis_estadocuenta";
    $.fn.dataTable.ext.errMode = 'throw';
    tablaEstado = $('#tabEstado').DataTable({
        "paging": true,
        "ordering": true,
        "info": false,
        "bFilter": true,
        "ajax": {
            "url": "controller/listarProcedure.php",
            "method": 'POST', //usamos el metodo POST
            "data": { param: "'" + idusuario + "'," + "'" + nivusu + "'", procedure: procedure }, //enviamos opcion 4 para que haga un SELECT
            "dataSrc": ""
        },
        "columns": [
            { "data": "numpgr" },
            { "data": "razcli" },
            { "data": "numcuo" },
            { "data": "estado" },
            { "data": "fecven" },
            { "data": "moncuo", render: $.fn.dataTable.render.number('.', ',', 0) },
            { "data": "dias_atraso" },
            { "data": "intacu", render: $.fn.dataTable.render.number('.', ',', 0) },
            { "data": "pagcuo", render: $.fn.dataTable.render.number('.', ',', 0) },
            { "data": "monpag", render: $.fn.dataTable.render.number('.', ',', 0) },
            { "data": "exonera", render: $.fn.dataTable.render.number('.', ',', 0) },
            { "data": "ruccli" }
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
                filename: 'EstadoCuenta',
                title: 'Estado de cuenta',
                footer:true,
            },
            {
                extend: 'pdfHtml5',
                text: '<i class="fas fa-file-pdf"></i> ',
                titleAttr: 'Exportar a PDF',
                className: 'btn btn-danger',
                filename: 'EstadoCuenta',
                title: 'Estado de cuenta',
                footer:true,
            },
            {
                extend: 'print',
                text: '<i class="fa fa-print"></i> ',
                titleAttr: 'Imprimir',
                className: 'btn btn-info',
                filename: 'EstadoCuenta',
                title: 'Estado de cuenta',
                footer:true,
                customize: function(win) {
                    // Personaliza la vista de impresión
                    $(win.document.body).addClass('horizontal-print'); // Agrega una clase CSS para la impresión horizontal
                  },
                
            },
        ]
    });


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