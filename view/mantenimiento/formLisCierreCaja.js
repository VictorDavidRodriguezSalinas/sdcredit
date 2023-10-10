
$(function(){
	listCierreCaja();
	

});
function listCierreCaja() {
	param = "'LCI'";
	procedure="lis_paracierre";
				$.fn.dataTable.ext.errMode = 'throw';
				tablaCierreCaja = $('#tabCierreCaja').DataTable({  
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
								.column( 8 )
								.data()
								.reduce( function (a, b) {
										return intVal(a) + intVal(b);
								}, 0 );
			
						
			
						// Total over this page
			
						total = api
								.column( 5, { page: 'current'} )
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
						$( api.column( 8).footer() ).html(
							(pageTotal).toLocaleString('es') 
					);
			
		
			
					
			
					
				},


					"paging":   true,
					"ordering": true,
					"info":     false,
					"bFilter": true,
						"ajax":{            
								"url": "controller/listarProcedure.php", 
								"method": 'POST', //usamos el metodo POST
								"data":{param:param,procedure:procedure}, //enviamos opcion 4 para que haga un SELECT
								"dataSrc":""
						},
						"columns":[
								{"data": "idapc"},
								{"data": "horapc"},
								{"data": "horcie"},
								{"data": "monapc", render: $.fn.dataTable.render.number( '.', ',', 0) , className: "text-right"},
								{"data": "totven", render: $.fn.dataTable.render.number( '.', ',', 0) , className: "text-right"},
								{"data": "toting", render: $.fn.dataTable.render.number( '.', ',', 0) , className: "text-right"},
								{"data": "monret", render: $.fn.dataTable.render.number( '.', ',', 0) , className: "text-right"},
							
								{"data": "totegr", render: $.fn.dataTable.render.number( '.', ',', 0) , className: "text-right"},
								{"data": "moncie", render: $.fn.dataTable.render.number( '.', ',', 0) , className: "text-right"}
						],
						"columnDefs": [
							{
									"targets": [ 0 ],
									"visible": false,
									"searchable": false
							},
							{
									"targets": [ 0 ],
									"visible": false
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
										"sLast":"Último",
										"sNext":"Siguiente",
										"sPrevious": "Anterior"
								 },
								 "sProcessing":"Procesando...",
						},
				 "responsive": true,
			"autoWidth": false,
			dom: 'Bfrtilp',       
			buttons:[ 
					{
							extend:    'excelHtml5',
							text:      '<i class="fas fa-file-excel"></i> ',
							titleAttr: 'Exportar a Excel',
							className: 'btn btn-success',
							filename: 'CierreCaja',
        			title: 'Listado de cierres de caja'
					},
					{
							extend:    'pdfHtml5',
							text:      '<i class="fas fa-file-pdf"></i> ',
							titleAttr: 'Exportar a PDF',
							className: 'btn btn-danger',
							filename: 'CierreCaja',
        			title: 'Listado de cierres de caja'
					},
					{
							extend:    'print',
							text:      '<i class="fa fa-print"></i> ',
							titleAttr: 'Imprimir',
							className: 'btn btn-info',
							filename: 'CierreCaja',
        			title: 'Listado de cierres de caja'
					},
			]
				});  
			
		}

