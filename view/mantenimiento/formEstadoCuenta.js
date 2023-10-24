$(function () {
    listCuotas();
    pintar();
});



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
            { "data": "ruccli" },
            { "data": "razcli" },
            { "data": "numcuo" },
            { "data": "fecven" },
            { "data": "moncuo", render: $.fn.dataTable.render.number('.', ',', 0) },
            { "data": "dias_atraso"},
            { "data": "intacu", render: $.fn.dataTable.render.number('.', ',', 0) },
            { "data": "pagcuo", render: $.fn.dataTable.render.number('.', ',', 0) },
            { "data": "monpag", render: $.fn.dataTable.render.number('.', ',', 0) },
            { "data": "estado" }
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
        dom: 'Bfrtilp',
        buttons: [
            {
                extend: 'excelHtml5',
                text: '<i class="fas fa-file-excel"></i> ',
                titleAttr: 'Exportar a Excel',
                className: 'btn btn-success',
                filename: 'ListaApertura',
                title: 'Listado de aperturas de caja'
            },
            {
                extend: 'pdfHtml5',
                text: '<i class="fas fa-file-pdf"></i> ',
                titleAttr: 'Exportar a PDF',
                className: 'btn btn-danger',
                filename: 'ListaApertura',
                title: 'Listado de aperturas de caja'
            },
            {
                extend: 'print',
                text: '<i class="fa fa-print"></i> ',
                titleAttr: 'Imprimir',
                className: 'btn btn-info',
                filename: 'ListaApertura',
                title: 'Listado de aperturas de caja'
            },
        ]
    });


}


