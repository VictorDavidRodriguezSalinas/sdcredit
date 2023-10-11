

$(function () {

});
function agregarDetalle() {

    const tipven = document.getElementById("txttipven").value;
    const fecha = new Date(document.getElementById("txtfeccuo").value);
    const moncuo = document.getElementById("txtmoncuo").value;


    console.log(fecha);

    var cancuo = document.getElementById("txtcancuo").value;
    var i = 0;
    while (i < cancuo) {
        var table = $('#tabCuotas').DataTable({
            "destroy": true,
            "paging": false,
            "searching": false,
            "ordering": true,
            "info": false,
            "bFilter": true,
            "bJQueryUI": false,
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
        });
        if (tipven == 'DIA') {

            fecha.setDate(fecha.getDate() + 1);
        }
        else if (tipven == 'SEM') {
            fecha.setDate(fecha.getDate() + 7);
        }
        else if (tipven == 'MES') {
            fecha.setDate(fecha.getMonth() + 1);

        }


        const fechaFormateada = formatearFecha(fecha);
        table.row.add([i + 1, fechaFormateada, moncuo]).draw();
        i++;
    }


}
function formatearFecha(fecha) {
    const dia = String(fecha.getDate()).padStart(2, '0');
    const mes = String(fecha.getMonth() + 1).padStart(2, '0');
    const anio = fecha.getFullYear();

    return `${dia}/${mes}/${anio}`;
}
