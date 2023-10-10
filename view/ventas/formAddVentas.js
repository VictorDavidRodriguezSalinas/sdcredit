var cont = 0;
var codven = 0;
var estape=0;


$(function () {
	verificarCaja();
	listVentas();
	fechaActual();
	listClientes();
	listAnimales();
	Enumerar();
	mostrarform(false);


});

function verificarCaja() {

	$.ajax({
		url: 'controller/verificarCaja.php',
		type: 'POST',
		data: {idUsu:0},
		success: function(res){
			var js= JSON.parse(res);
			estape=js.estape;
			console.log(estape);

			
		}
	});

	
}

//Función mostrar formulario
function mostrarform(flag) {
	if (flag) {

		if (estape==0)
		{
			swal({title: "Debe aperturar caja para realizar una venta", icon: "warning",timer:"1200"	});
			throw ''
		}


		if ($('#txtOPE') == 'GUA') {
			fechaActual();
			Enumerar();
		}

		$("#listadoVentas").hide();
		$("#formularioregistros").show();



	}
	else {

		$("#listadoVentas").show();
		$("#formularioregistros").hide();
		$("#formulariopago").hide();



	}
}
function cancelarform() {
	$("#frmAddActividades").trigger("reset");
	limpiarDetalle();
	$(".filas").remove();

	mostrarform(false);
}

function listClientes() {
	opcion = "clientes";
	tablaAnimales = $('#tabClientes').DataTable({

		"paging": true,
		"ordering": true,
		"info": false,
		"bFilter": true,
		"ajax": {
			"url": "controller/listarCamposTabla.php",
			"method": 'POST', //usamos el metodo POST
			"data": { tabla: opcion, campos: ' * ' }, //enviamos opcion 4 para que haga un SELECT
			"dataSrc": ""
		},
		"columns": [
			{ "data": "idcli" },
			{ "data": "ruccli" },
			{ "data": "nomcli" },
			{ "data": "apecli" },
			{ "data": "telcli" },
			{ "defaultContent": "<div class='text-center'><div class='btn-group'><button data-dismiss='modal' class='btn btn-success btn-sm btnSeleccionar'><i class='fas fa-check'></i>Seleccionar</button></div></div>" }
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

//seleccionar cliente de modal       
$(document).on("click", ".btnSeleccionar", function (e) {
	fila = $(this).closest("tr");
	id = parseInt(fila.find('td:eq(0)').text());
	ruccli = fila.find('td:eq(1)').text();
	razcli = fila.find('td:eq(2)').text() + ', ' + fila.find('td:eq(3)').text();
	$("#txtIdCli").val(id);
	$("#txtRucCli").val(ruccli);
	$("#txtRazCli").val(razcli);

	//document.getElementById(txtPesActv).focus();
});


function listAnimales() {
	opcion = "animales where idest=1";
	tablaAnimales = $('#tabAnimales').DataTable({

		"paging": true,
		"ordering": true,
		"info": false,
		"bFilter": true,
		"ajax": {
			"url": "controller/listarCamposTabla.php",
			"method": 'POST', //usamos el metodo POST
			"data": { tabla: opcion, campos: 'idani,carani,hbpani,nomani,preven' }, //enviamos opcion 4 para que haga un SELECT
			"dataSrc": ""
		},
		"columns": [
			{ "data": "idani" },
			{ "data": "carani" },
			{ "data": "hbpani" },
			{ "data": "nomani" },
			{ "data": "preven", render: $.fn.dataTable.render.number( '.', ',', 0) },
			{ "defaultContent": "<div class='text-center'><div class='btn-group'><button data-dismiss='modal' class='btn btn-success btn-sm btnSeleccionarAnimal'><i class='fas fa-check'></i>Seleccionar</button></div></div>" }
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
//seleccionar animal de modal       
$(document).on("click", ".btnSeleccionarAnimal", function (e) {
	fila = $(this).closest("tr");
	id = parseInt(fila.find('td:eq(0)').text());
	carani = fila.find('td:eq(1)').text();
	preven = fila.find('td:eq(4)').text();
	
	preven = preven.replace(".","");

	preven = preven.replace(".","");

	

	

	$("#txtidani").val(id);
	$("#txtCarAni").val(carani);
	$("#txtPreVen").val(preven);
	document.getElementById(txtPreVen).focus();
});

function Enumerar() {
	$.ajax({
		url: 'controller/listarCamposTabla.php',
		type: 'POST',
		data: { campos: 'MAX(numven) AS ult', tabla: 'ventas' },
		success: function (res) {
			var js = JSON.parse(res);
			if (js[0].ult == null) {
				num = 1;
			}
			else {
				var ult = parseInt(js[0].ult);
				var num = ult + 1;
			}

			$('#txtNumVen').val(num);
		}
	});
}

function agregarDetalle() {

	var idani = document.getElementById("txtidani").value;
	var carani = document.getElementById("txtCarAni").value;
	var preven = parseInt(document.getElementById("txtPreVen").value);

	alert(preven);


	$(".idanimal").each(function () {
		idanim = parseInt($(this).html());
		if (idani == idanim) { swal({ title: "El ganado ya ha sido seleccionado para la venta !!!", text: "", icon: "warning", timer: "1200", }); throw ''; }
	});


	if (idani == '') { swal({ title: "Seleccione el ganado !!!", text: "", icon: "warning", timer: "1200", }); throw ''; }
	if (carani == '') { swal({ title: "Seleccione el ganado !!!", text: "", icon: "warning", timer: "1200", }); throw ''; }
	if (preven == '') { swal({ title: "Ingese el precio de venta!!!", text: "", icon: "warning", timer: "1200", }); document.getElementById("txtPreVen").focus(); throw ''; }
	if (preven == 0) { swal({ title: "Ingese el precio de venta!!!", text: "", icon: "warning", timer: "1200", }); document.getElementById("txtPreVen").focus(); throw ''; }


	var fila = '<tr class="filas" id="fila' + cont + '">' +
		'<td hidden><input type="hidden" name="idani[]" value="' + idani + '">' + idani + '</td>' +
		'<td><input type="hidden" name="carani[]" id="carani[]" value="' + carani + '">' + carani + '</td>' +
		'<td><input type="hidden" name="canven[]" id="canven[]" value="1">1</td>' +
		'<td><input type="hidden" name="preven[]" id="preven[]" value="' + preven + '">' + (preven).toLocaleString('es') + '</td>' +
		'<td hidden><span id="subtotal" class="subtotal">' + preven + '</span></td>' +
		'<td><button type="button" onclick="eliminarFila(' + cont + ')" class="btn btn-danger sm"><i class="fa fa-trash-alt"></i></button></td>' +
		'</tr>';
	cont++;
	detalles = detalles + 1;
	$('#detalles').append(fila);
	limpiarDetalle();
	calcular();





}
function calcular() {
	var totalVenta = 0;
	var iva = 0;
	$(".subtotal").each(function () {
		totalVenta += parseInt($(this).html());

	});

	$("#total_venta").val((totalVenta).toLocaleString('es'));
	$("#txtTotVen").val((totalVenta).toLocaleString('es'));
	iva = totalVenta / 21;
	iva = parseInt(iva);
	$("#total_iva").val((iva).toLocaleString('es'));

}

function eliminarFila(indice) {
	$("#fila" + indice).remove();
	detalles = detalles - 1;
	calcular();

}

function limpiarDetalle() {
	$('#txtidani').val('');
	$('#txtCarAni').val('');
	$('#txtPreVen').val('');
}
function fechaActual() {
	var now = new Date();
	var day = ("0" + now.getDate()).slice(-2);
	var month = ("0" + (now.getMonth() + 1)).slice(-2);
	var today = now.getFullYear() + "-" + (month) + "-" + (day);
	$("#txtFecVen").val(today);
	$("#txtFecPag").val(today);

}

//GUARDAR DATOS
$('#cmdGuardar').click(function (e) {
	numven = document.getElementById("txtNumVen").value;
	fecven = document.getElementById("txtFecVen").value;

	if (numven == '') { swal({ title: "Ingrese número de venta !!!", text: "", icon: "warning", timer: "1200", }); document.getElementById("txtNumVen").focus(); throw ''; }
	if (fecven == '') { swal({ title: "Ingrese fecha de venta !!!", text: "", icon: "warning", timer: "1200", }); document.getElementById("txtFecVen").focus(); throw ''; }
	if (cont == 0) { swal({ title: "Ingrese detalles de venta !!!", text: "", icon: "warning", timer: "1200", }); throw ''; }

	e.preventDefault();
	var formDatos = new FormData($("#frmAddVentas")[0]);
	ope = document.getElementById("txtOPE").value;

	$.ajax({
		url: 'controller/manVentas.php',
		type: 'POST',
		data: formDatos,
		contentType: false,
		processData: false,
		success: function (res) {
			var js = JSON.parse(res);
			var total = parseInt(js.totven);
			//console.log(((total).toLocaleString('es')));

			$("#txtIdVenPag").val(js.idven);
			$("#txtTotVenPag").val((total).toLocaleString('es'));
			$("#txtNumVenPag").val(js.numven);





			$(".filas").remove();

			$("#frmAddVentas").trigger("reset");


			if (ope === 'GUA') {
				swal({ title: "Registrado", text: "exitosamente!!!", icon: "success", timer: "1250", });
			}
			else {
				swal({ title: "Actualizado", text: "exitosamente!!!", icon: "success", timer: "1250", });
			}
			Enumerar();
			fechaActual();
			tablaVentas.ajax.reload(null, false);

			tablaAnimales.ajax.reload(null, false);
			$("#listadoVentas").hide();
			$("#formularioregistros").hide();
			$("#formulariopago").show();
			$("#txtMonPag").focus();
			
		}
	});

});
//GUARDAR PAGO
$('#cmdGuardarPago').click(function (e) {


	numven = document.getElementById("txtNumVenPag").value;
	fecpag = document.getElementById("txtFecPag").value;
	idven = document.getElementById("txtIdVenPag").value;


	if (idven == '') { swal({ title: "Ingrese número de venta !!!", text: "", icon: "warning", timer: "1200", }); document.getElementById("txtNumVenPag").focus(); throw ''; }
	if (numven == '') { swal({ title: "Ingrese número de venta !!!", text: "", icon: "warning", timer: "1200", }); document.getElementById("txtNumVenPag").focus(); throw ''; }
	if (fecpag == '') { swal({ title: "Ingrese fecha de pago !!!", text: "", icon: "warning", timer: "1200", }); document.getElementById("txtFecPag").focus(); throw ''; }

	e.preventDefault();
	var formDatos = new FormData($("#frmAddPago")[0]);
	ope = document.getElementById("txtOPEPAG").value;

	$.ajax({
		url: 'controller/manPago.php',
		type: 'POST',
		data: formDatos,
		contentType: false,
		processData: false,
		success: function (res) {

			//	console.log(res);




			$("#frmAddPago").trigger("reset");


			if (ope === 'GUA') {
				swal({ title: "Registrado", text: "exitosamente!!!", icon: "success", timer: "1250", });
			}
			else {
				swal({ title: "Actualizado", text: "exitosamente!!!", icon: "success", timer: "1250", });
			}
			fechaActual();
			tablaVentas.ajax.reload(null, false);
			$("#listadoVentas").show();
			$("#formularioregistros").hide();
			$("#formulariopago").hide();

		}
	});

});
//Pagar        
$(document).on("click", ".btnPagar", function (e) {

	if (estape==0)
	{
		swal({title: "Debe aperturar caja para realizar la operación", icon: "warning",timer:"1200"	});
		throw ''
	}
	e.preventDefault();
	fila = $(this).closest("tr");
	idven = parseInt(fila.find('td:eq(0)').text());
	estven = fila.find('td:eq(9)').text();
	numven = fila.find('td:eq(2)').text();
	salven = fila.find('td:eq(8)').text();
	if (estven != 'Pagado' && estven != 'Anulado') {

		$("#txtIdVenPag").val(idven);
		$("#txtTotVenPag").val(salven);
		$("#txtNumVenPag").val(numven);
		$("#listadoVentas").hide();
		$("#formularioregistros").hide();
		$("#formulariopago").show();
		$("#txtMonPag").focus();

	}
	else {
		swal({ title: "La venta ha sido, " + estven + ", no posee saldo ", text: "", icon: "warning", timer: "1250" });

	}



});




function listVentas() {

	param = "'LIS'";
	procedure = "lis_ventas";
	$.fn.dataTable.ext.errMode = 'throw';
	tablaVentas = $('#tabVentas').DataTable({

		"paging": true,
		"ordering": true,
		"info": false,
		"bFilter": true,
		"ajax": {
			"url": "controller/listarProcedure.php",
			"method": 'POST', //usamos el metodo POST
			"data": { param: param, procedure: procedure }, //enviamos opcion 4 para que haga un SELECT
			"dataSrc": ""
		},
		"columns": [
			{ "data": "idven" },
			{ "data": "fecven" },
			{ "data": "numven" },
			{ "data": "ruccli" },
			{ "data": "apecli" },
			{ "data": "nomcli" },
			{ "data": "totven", render: $.fn.dataTable.render.number('.', ',', 0) },
			{ "data": "ivauno", render: $.fn.dataTable.render.number('.', ',', 0) },
			{ "data": "salven", render: $.fn.dataTable.render.number('.', ',', 0) },
			{ "data": "estven" },
			{ "defaultContent": "<div class='text-center'><div class='btn-group'><button class='btn btn-warning btn-xs btnPagar'><i class='fa fa-clipboard-check'></i>Cobrar</button><button type='button' class='btn btn-info btn-xs btnDetalle' data-toggle='modal' data-target='#modal-detalles' ><i class='fa fa-file-alt'></i>Ver Detalle</button><button class='btn btn-danger btn-xs btnAnular'><i class='fa fa-user-minus'></i>Anular</button></div></div>" }
		],
		language: {
			"decimal": ",",//separador decimales
			"thousands": ".",//Separador miles
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
				filename: 'Ventas',
				title: 'Listado de Vemtas'
			},
			{
				extend: 'pdfHtml5',
				text: '<i class="fas fa-file-pdf"></i> ',
				titleAttr: 'Exportar a PDF',
				className: 'btn btn-danger',
				filename: 'Ventas',
				title: 'Listado de Vemtas'
			},
			{
				extend: 'print',
				text: '<i class="fa fa-print"></i> ',
				titleAttr: 'Imprimir',
				className: 'btn btn-info',
				filename: 'Ventas',
				title: 'Listado de Vemtas'
			},
		]
	});
}

$(document).on("click", ".btnDetalle", function (e) {




	e.preventDefault();
	fila = $(this).closest("tr");
	idven = parseInt(fila.find('td:eq(0)').text()); //capturo el ID		
	codven = idven;

	var Detalle = $('#tabDetalleVentas').dataTable();
	Detalle.fnClearTable();
	Detalle.fnDestroy();

	listVentasDetalle();

});


function listVentasDetalle() {

	param = "'LIS'" + "," + codven + "";
	procedure = "lis_ventasdetalle";
	$.fn.dataTable.ext.errMode = 'throw';


	tablaDetalleVentas = $('#tabDetalleVentas').DataTable({

		"paging": true,
		"ordering": true,
		"info": false,
		"bFilter": true,
		"ajax": {
			"url": "controller/listarProcedure.php",
			"method": 'POST', //usamos el metodo POST
			"data": { param: param, procedure: procedure }, //enviamos opcion 4 para que haga un SELECT
			"dataSrc": ""
		},
		"columns": [

			{ "data": "fecven" },
			{ "data": "numven" },
			{ "data": "carani" },
			{ "data": "nomcat" },
			{ "data": "canven" },
			{ "data": "preven", render: $.fn.dataTable.render.number('.', ',', 0) },
		],
		language: {
			"decimal": ",",//separador decimales
			"thousands": ".",//Separador miles
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
				filename: 'DetalleVentas',
				title: 'Detalle de Ventas'
			},
			{
				extend: 'pdfHtml5',
				text: '<i class="fas fa-file-pdf"></i> ',
				titleAttr: 'Exportar a PDF',
				className: 'btn btn-danger',
				filename: 'DetalleVentas',
				title: 'Detalle de Ventas'
			},
			{
				extend: 'print',
				text: '<i class="fa fa-print"></i> ',
				titleAttr: 'Imprimir',
				className: 'btn btn-info',
				filename: 'DetalleVentas',
				title: 'Detalle de Ventas'
			},
		]
	});


}

$(document).on("click", ".btnAnular", function (e) {
	e.preventDefault();
	fila = $(this).closest("tr");
	idven = parseInt(fila.find('td:eq(0)').text()); //capturo el ID	
	estven = fila.find('td:eq(9)').text();

if (estven=='Pendiente')
{

	swal({
		title: "Desea anular la venta?",
		text: "",
		icon: "warning",
		buttons: {
			cancel: "Cancelar",
			confirm: "Si",
		},
		dangerMode: true,
	})
		.then((willDelete) => {
			if (willDelete) {
				
				$.ajax({
					url: 'controller/anularVentas.php',
					type: 'POST',
					data: { txtidven: idven },
					success: function (res) {
						tablaVentas.ajax.reload(null, false);
						swal("La venta ha sido anulado!", {
							icon: "success",
							timer:"1200"
						});

					}
				});
			} 
		});

	}
	else
	{
		swal({text: "No se puede anular la venta con estado "+estven, icon: "warning",timer:"1200"	});
	}

});

