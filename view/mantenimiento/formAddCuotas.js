
var arrCuotas = [];
var datosJSON = [];
$(function () {
   // listClientes();
   Enumerar();

});

//GUARDAR DATOS
$('#cmdGuardar').click(function (e) {
    numven = document.getElementById("txtNumVen").value;
    fecven = document.getElementById("txtFecVen").value;

    // if (numven == '') { swal({ title: "Ingrese número de venta !!!", text: "", icon: "warning", timer: "1200", }); document.getElementById("txtNumVen").focus(); throw ''; }
    // if (fecven == '') { swal({ title: "Ingrese fecha de venta !!!", text: "", icon: "warning", timer: "1200", }); document.getElementById("txtFecVen").focus(); throw ''; }
    // if (cont == 0) { swal({ title: "Ingrese detalles de venta !!!", text: "", icon: "warning", timer: "1200", }); throw ''; }

    e.preventDefault();
    var formDatos = new FormData($("#frmAddCuotas")[0]);
    var jsonData = JSON.stringify(datosJSON);
    ope = document.getElementById("txtOPE").value;

    // $.ajax({
    //     url: 'controller/manCuotas.php',
    //     type: 'POST',
    //     data: data,
    //     contentType: false,
    //     processData: false,
    //     success: function (res) {
    //         var js = JSON.parse(res);
    //         console.log(js.datos);


    //     }
    // });
    fetch('controller/manCuotas.php', {
        method: 'POST',
        body: jsonData,
        headers: {
            'Content-Type': 'application/json'
        }
    })
    .then(response => response.text())
    .then(data => {
        console.log(data); // Imprime la respuesta del servidor
    })
    .catch(error => {
        console.error('Error:', error);
    });

});


function agregarDetalle() {

    const numpgr = document.getElementById("txtnumpgr").value;
    const tipven = document.getElementById("txttipven").value;
    const tipint = document.getElementById("txttipint").value;
    var fecha = new Date(document.getElementById("txtfeccuo").value);
    const moncuo = document.getElementById("txtmoncuo").value;
    const cancuo = document.getElementById("txtcancuo").value;
    const feccuo =formatearFechaYmd(fecha);
    const monint = document.getElementById("txtmonint").value;
    const porint = document.getElementById("txtporint").value;
    const idcli = document.getElementById("txtidcli").value;
    const idusu = document.getElementById("txtidusu").value;
    const moncre = document.getElementById("txtmoncre").value;
    if (idcli == '') { swal({ title: "Seleccione el Cliente !!!", text: "", icon: "warning", timer: "1200", }); document.getElementById("txtidcli").focus(); throw ''; }
     if (numpgr == '') { swal({ title: "Ingrese número de pagaré !!!", text: "", icon: "warning", timer: "1200", }); document.getElementById("txtnumpgr").focus(); throw ''; }
     if (moncre == '') { swal({ title: "Ingrese monto del crédito !!!", text: "", icon: "warning", timer: "1200", }); document.getElementById("txtmoncre").focus(); throw ''; }
     if (fecha == '') { swal({ title: "Ingrese fecha !!!", text: "", icon: "warning", timer: "1200", }); document.getElementById("txtfeccuo").focus(); throw ''; }
     if (moncuo == '') { swal({ title: "Ingrese monto de cuota !!!", text: "", icon: "warning", timer: "1200", }); document.getElementById("txtmoncuo").focus(); throw ''; }
     if (moncuo == '') { swal({ title: "Ingrese monto de cuota !!!", text: "", icon: "warning", timer: "1200", }); document.getElementById("txtmoncuo").focus(); throw ''; }
     if (cancuo == '') { swal({ title: "Ingrese cuotas !!!", text: "", icon: "warning", timer: "1200", }); document.getElementById("txtcancuo").focus(); throw ''; }
     if (monint == '') { swal({ title: "Ingrese monto de interés al menos Cero (0) !!!", text: "", icon: "warning", timer: "1200", }); document.getElementById("txtmonint").focus(); throw ''; }
     if (porint == '') { swal({ title: "Ingrese porcentaje de interés al menos Cero (0) !!!", text: "", icon: "warning", timer: "1200", }); document.getElementById("txtporint").focus(); throw ''; }
      
    var i = 0;
    let tot = 0;
    while (i < cancuo) {
        if (i=>0){
        if (tipven == 'DIA') {
         fecha.setDate(fecha.getDate() + 1);
        
        }
        else if (tipven == 'SEM') {
            fecha.setDate(fecha.getDate() + 7);
        }
        else if (tipven == 'MES') {
           fecha.setDate(fecha.getMonth() + 1);
    
        }
    }
        arrCuotas.push([i + 1, formatearFecha(fecha), moncuo, formatearFechaYmd(fecha)]);
        tot += parseFloat(moncuo);
        //table.row.add([i + 1, fechaFormateada, moncuo]).draw();
        i++;
    }
    // Convertir el array a un formato JSON

    for (var i = 0; i < arrCuotas.length; i++) {
       
        var fila = {};
        fila.numpgr=numpgr;
        fila.numcuo = arrCuotas[i][0];
        fila.feccuo = feccuo;
        fila.fecven =arrCuotas[i][1];
        fila.tipven = tipven;
        fila.moncuo = arrCuotas[i][2];
        fila.tipint = tipint;
        fila.monint = monint;
        fila.porint = porint;
        fila.estcuo = 'PEN';
        fila.estpgr = 'PEN';
        fila.idcli = idcli;
        fila.idusu = idusu;
        fila.totpgr=tot;
        fila.fecvenymd=arrCuotas[i][3];
        datosJSON.push(fila);
    }


    var numeroFormateado = tot.toLocaleString('es-ES', {
        style: 'decimal', // Puede ser 'decimal', 'percent', 'currency', etc.
        minimumFractionDigits: 0, // Número mínimo de decimales
    });
    document.getElementById("txttotpgr").value = numeroFormateado + ' GS.'; //total
    //agregar datos a DataTable

    var table = $('#tabCuotas').DataTable({
        data: datosJSON,
        columns: [
            { data: 'numcuo' },
            { data: 'fecven' },
            { data: 'moncuo', render: $.fn.dataTable.render.number('.', ',', 0) }
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
function formatearFechaYmd(fecha) {
    const dia = String(fecha.getDate()).padStart(2, '0');
    const mes = String(fecha.getMonth() + 1).padStart(2, '0');
    const anio = fecha.getFullYear();
    return `${anio}/${mes}/${dia}`;
}


function Enumerar() {
	$.ajax({
		url: 'controller/listarCamposTabla.php',
		type: 'POST',
		data: { campos: 'IF(MAX(numpgr) IS NULL,1,MAX(numpgr)+1) AS ult', tabla: 'cuotas' },
		success: function (res) {
			var js = JSON.parse(res);
			if (js[0].ult == null) {
				num = 1;
			}
			else {
				var ult = parseInt(js[0].ult);
				var num = ult + 1;
			}

			$('#txtnumpgr').val(num);
		}
	});
}


//seleccionar cliente de modal       
$(document).on("click", ".btnSeleccionar", function (e) {
	fila = $(this).closest("tr");
	id = parseInt(fila.find('td:eq(3)').text());
	ruccli = fila.find('td:eq(1)').text();
	razcli = fila.find('td:eq(2)').text();
	$("#txtidcli").val(id);
	$("#txtRucCli").val(ruccli);
	$("#txtRazCli").val(razcli);

	//document.getElementById(txtPesActv).focus();
});


function listClientes() {
	opcion = "clientes";
	tablaAnimales = $('#tabClientes').DataTable({
        "destroy": true,
		"paging": true,
		"ordering": true,
		"info": false,
		"bFilter": true,
        "bJQueryUI": false,
		"ajax": {
			"url": "controller/listarCamposTabla.php",
			"method": 'POST', //usamos el metodo POST
			"data": { tabla: opcion, campos: 'ruccli, CONCAT(nomcli,", ",apecli) as razcli, idcli ' }, //enviamos opcion 4 para que haga un SELECT
			"dataSrc": ""
		},
		"columns": [
            { "defaultContent": "<div class='text-center'><div class='btn-group'><button data-dismiss='modal' class='btn btn-success btn-sm btnSeleccionar'><i class='fas fa-check'></i>Seleccionar</button></div></div>" },
			{ "data": "ruccli" },
            { "data": "razcli" },
            { "data": "idcli" }
			
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

	});
}
