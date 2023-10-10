$(function () {
	listVentas();


	var $table = $('.js-table');
	
	$table.find('.js-view-parents').on('click', function(e) {
		e.preventDefault();
		var $btn = $(e.target), $row = $btn.closest('tr'), $nextRow = $row.next('tr.expand-child');
		
		$btn.toggleClass('glyphicon-eye-close glyphicon-eye-open');
		// if .expand-chid row exist already, toggle
		if ($nextRow.length) {
				$nextRow.toggle($btn.hasClass('glyphicon-eye-open'));
		// if not, create .expand-child row
		} else {
			/*$.ajax({
					url: '/echo/json/',
					dataType: "json",
					data: parentsData,
					success: function (parentsData) {*/
			var newRow = '<tr class="expand-child" id="collapse' + $btn.data('id') + '">' +
				'<td colspan="12">' +
				'<table class="table table-condensed table-bordered" width=100% >' +
				'<thead>' +
				'<tr>' +
				'<th>Surname</th>' +
				'<th>FirstName</th>' +
				'<th>School Id</th>' +
				'<th>School name</th>' +
				'</tr>' +
				'</thead>' +
				'<tbody>';
	
			if (parentsData.parents) {
				$.each(parentsData.parents, function(i, parent) {
					newRow += '<tr>' +
						'<td>' + parent.Firstname + '</td>' +
						'<td>' + parent.Surname + '</td>' +
						'<td>' + parent.schoolId + '</td>' +
						'<td>' + parent.schoolName + ' ' + parent.commune + '</td>' +
						'</tr>';
				});
			}
			newRow += '</tbody></table></td></tr>';
			// set next row
			$nextRow = $(newRow).insertAfter($row);
			
			
			/*}
					});*/
		}
	});
	


	
});



function listVentas() {
	
	param = "'LIS'";
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
					.column(8)
					.data()
					.reduce( function (a, b) {
							return intVal(a) + intVal(b);
					}, 0 );

			

			// Total over this page

			totalVenta = api
					.column( 6, { page: 'current'} )
					.data()
					.reduce( function (a, b) {
							return intVal(a) + intVal(b);
					}, 0 );

			pageTotal = api
					.column( 8, { page: 'current'} )
					.data()
					.reduce( function (a, b) {
							return intVal(a) + intVal(b);
					}, 0 );


	

		

			// Update footer
			$( api.column( 6).footer() ).html(
				(totalVenta).toLocaleString('es') 
		);

			$( api.column( 8 ).footer() ).html(
				(pageTotal ).toLocaleString('es')
			);

			$( api.column( 4 ).footer() ).html(
				(totalSaldo ).toLocaleString('es')
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

			{ "data": "idven" },
			{ "data": "fecven" },
			{ "data": "numven" },
			{ "data": "ruccli" },
			{ "data": "apecli" },
			{ "data": "nomcli" },
			{ "data": "totven", render: $.fn.dataTable.render.number( '.', ',', 0) },
			{ "data": "ivauno", render: $.fn.dataTable.render.number( '.', ',', 0) },
			{ "data": "salven", render: $.fn.dataTable.render.number( '.', ',', 0) },
			{ "data": "estven" },
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

