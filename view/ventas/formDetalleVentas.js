$(function () {
	listVentas();



});



function listVentas() {
	
	param = "'LID'";
	procedure="lis_ventas";
	$.fn.dataTable.ext.errMode = 'throw';
	tablaVentas = $('#tabVentas').DataTable({
		"footerCallback": function ( row, data, start, end, display ) {
			var api = this.api(), data;

			// Remove the formatting to get integer data for summation
			var intVal = function ( i ) {
					return typeof i === 'string' ?
							i.replace(/[\$,]/g, '')*1 :
							typeof i === 'number' ?
									i : 0;
			};

			// Total over all pages
			totalSaldo = api
					.column( 7 )
					.data()
					.reduce( function (a, b) {
							return intVal(a) + intVal(b);
					}, 0 );

			

			// Total over this page

			totalVenta = api
					.column( 7, { page: 'current'} )
					.data()
					.reduce( function (a, b) {
							return intVal(a) + intVal(b);
					}, 0 );

			pageTotal = api
					.column( 7, { page: 'current'} )
					.data()
					.reduce( function (a, b) {
							return intVal(a) + intVal(b);
					}, 0 );

		

			// Update footer
			$( api.column( 6).footer() ).html(
				'TOTAL: '
		);

			$( api.column( 7 ).footer() ).html(
				(pageTotal ).toLocaleString('es')
			);

		

		
	},


		"paging": true,
		"ordering": true,
		"info": false,
		"bFilter": true,
		"ajax": {
			"url": "controller/listarProcedure.php",
			"method": 'POST', //usamos el metodo POST
			"data": { param:param,procedure:procedure }, //enviamos opcion 4 para que haga un SELECT
			"dataSrc": ""
		},
		"columns": [

		
			{ "data": "fecven" },
			{ "data": "numven" },
			{ "data": "ruccli" },
			{ "data": "nomcli" },
			{ "data": "apecli" },
			{ "data": "carani" },
			{ "data": "nomcat" },
			{ "data": "preven", render: $.fn.dataTable.render.number( '.', ',', 0) },
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
				title: 'Listado de Ventas'
			},
			{
				extend: 'pdfHtml5',
				text: '<i class="fas fa-file-pdf"></i> ',
				titleAttr: 'Exportar a PDF',
				className: 'btn btn-danger',
				filename: 'Ventas',
				title: 'Listado de Ventas'
			},
			{
				extend: 'print',
				text: '<i class="fa fa-print"></i> ',
				titleAttr: 'Imprimir',
				className: 'btn btn-info',
				filename: 'Ventas',
				title: 'Listado de Ventas'
			},
		]
		



	});


	var parentsData = {
		"success": true,
		"parents": [{
			"id": 1531,
			"Firstname": "Austin",
			"Surname": "Ana\u00eblle",
			"schoolId": "046039",
			"schoolName": "ARCAMBAL",
			"commune": "ARCAMBAL"
		}, {
			"id": 2032,
			"Firstname": "Ramos",
			"Surname": "L\u00e8i",
			"schoolId": "046043",
			"schoolName": "J CALVET",
			"commune": "CAHORS"
		}, {
			"id": 3036,
			"Firstname": "Baker",
			"Surname": "Salom\u00e9",
			"schoolId": "046043",
			"schoolName": "Z LAFAGE",
			"commune": "CAHORS"
		}, {
			"id": 1724,
			"Firstname": "Berry",
			"Surname": "Marl\u00e8ne",
			"schoolId": "046044",
			"schoolName": "J CALVET",
			"commune": "CAHORS"
		}]
	};
		
}

