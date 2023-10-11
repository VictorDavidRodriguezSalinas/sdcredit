
var arrCuotas = [];
$(function () {

});

//GUARDAR DATOS
$('#cmdGuardar').click(function (e) {
	// numven = document.getElementById("txtNumVen").value;
	// fecven = document.getElementById("txtFecVen").value;

	// if (numven == '') { swal({ title: "Ingrese número de venta !!!", text: "", icon: "warning", timer: "1200", }); document.getElementById("txtNumVen").focus(); throw ''; }
	// if (fecven == '') { swal({ title: "Ingrese fecha de venta !!!", text: "", icon: "warning", timer: "1200", }); document.getElementById("txtFecVen").focus(); throw ''; }
	// if (cont == 0) { swal({ title: "Ingrese detalles de venta !!!", text: "", icon: "warning", timer: "1200", }); throw ''; }

	e.preventDefault();
	var formDatos = new FormData($("#frmAddCuotas")[0]);
    var datosJSON = JSON.stringify(arrCuotas);
	ope = document.getElementById("txtOPE").value;

	$.ajax({
		url: 'controller/manCuotas.php',
		type: 'POST',
		data: datosJSON,
		contentType: false,
		processData: false,
		success: function (res) {
			var js = JSON.parse(res);
			console.log(js.datos);

			
		}
	});

});



function agregarDetalle() {

    const tipven = document.getElementById("txttipven").value;
    const fecha = new Date(document.getElementById("txtfeccuo").value);
    const moncuo = document.getElementById("txtmoncuo").value;
    const cancuo = document.getElementById("txtcancuo").value;


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


    var i = 0;
    let tot=0;
    while (i < cancuo) {

        arrCuotas.push([i + 1, fechaFormateada, moncuo]);
        tot += parseFloat(moncuo);
        //table.row.add([i + 1, fechaFormateada, moncuo]).draw();
        i++;
    }
    // Convertir el array a un formato JSON
    var datosJSON = [];
    

    
    for (var i = 0; i < arrCuotas.length; i++) {
        var fila = {};
        fila.numcuo = arrCuotas[i][0];
        fila.fecven = arrCuotas[i][1];
        fila.moncuo = arrCuotas[i][2];
       
        datosJSON.push(fila);
    }

    var numeroFormateado = tot.toLocaleString('es-ES', {
        style: 'decimal', // Puede ser 'decimal', 'percent', 'currency', etc.
        minimumFractionDigits: 0, // Número mínimo de decimales
    });
    document.getElementById("txttotpgr").value = numeroFormateado+' GS.'; //total
    //agregar datos a DataTable

    var table = $('#tabCuotas').DataTable({
        data: datosJSON,
        columns: [
            { data: 'numcuo' },
            { data: 'fecven' },
            { data: 'moncuo', render: $.fn.dataTable.render.number( '.', ',', 0) }
        ],
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


}
function formatearFecha(fecha) {
    const dia = String(fecha.getDate()).padStart(2, '0');
    const mes = String(fecha.getMonth() + 1).padStart(2, '0');
    const anio = fecha.getFullYear();
    return `${dia}/${mes}/${anio}`;
}
