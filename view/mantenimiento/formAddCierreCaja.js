
$(function () {
	
	listCierreCaja();


});

function listCierreCaja() {


	var param =  document.getElementById("txtIdUsu").value;

	
	$.fn.dataTable.ext.errMode = 'throw';
	tablaCierreCaja = $('#tabCierreCaja').DataTable({
		"paging": false,
		"ordering": false,
		"info": false,
		"bFilter": false,
		"ajax": {
			"url": "controller/listarProcedure.php",
			"method": 'POST', //usamos el metodo POST
			"data": { procedure: 'cerrar_caja', param: param }, //enviamos opcion 4 para que haga un SELECT
			"dataSrc": ""
		},
		"columns": [
			{ "data": "idapc" },
			{ "data": "horapc" },
			{ "data": "monapc", render: $.fn.dataTable.render.number('.', ',', 0) },
			{ "data": "totven", render: $.fn.dataTable.render.number('.', ',', 0) },
			{ "data": "toting", render: $.fn.dataTable.render.number('.', ',', 0) },
			{ "data": "monret", render: $.fn.dataTable.render.number('.', ',', 0) },
			{ "data": "totegr", render: $.fn.dataTable.render.number('.', ',', 0) },
			{ "data": "moncie", render: $.fn.dataTable.render.number('.', ',', 0) }
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
		"autoWidth": false
	});


}

$('#cmdGuardar').click(function (e) {
	
	var idusu =  document.getElementById("txtIdUsu").value;
	e.preventDefault();
	var datos = $("#tabCierreCaja td").length;

	if (datos == 1) {

		swal({ title: "No existe caja aperturada", text: "", icon: "warning", timer: "1500", });

		ope = '';
	}
	else {
		ope = 'GUA';
		$.ajax({
			url: 'controller/manCierreCaja.php',
			type: 'POST',
			data: { idusu: idusu },
			success: function (res) {
				console.log(res);
				$("#frmAddCierreCaja").trigger("reset");
				if (ope === 'GUA') {
					swal({ title: "Registrado", text: "exitosamente!!!", icon: "success", timer: "1250", });
				}
				else {
					swal({ title: "Actualizado", text: "exitosamente!!!", icon: "success", timer: "1250", });
				}
				window.location = "dashboard";

			}
		});


	}


});
