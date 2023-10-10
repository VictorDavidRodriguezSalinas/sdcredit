$(function(){
	listAuditoria();
});
function listAuditoria() {
			opcion = 'auditoria';
			$.fn.dataTable.ext.errMode = 'throw';
				tablaUsuarios = $('#tabAuditoria').DataTable({  
					"paging":   true,
					"ordering": true,
					"info":     false,
						"ajax":{            
								"url": "controller/listarTabla.php", 
								"method": 'POST', //usamos el metodo POST
								"data":{opcion:opcion}, //enviamos opcion 4 para que haga un SELECT
								"dataSrc":""
						},
						"columns":[
								{"visible":false,"data": "idaud"},
								{"data": "nomtab"},
								{"data": "opetab"},
								{"data": "datvie"},
								{"data": "datact"},
								{"data": "usuario"}
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
                  filename: 'ListaAuditoria',
                  title: 'Listado de auditoria del sistema'
						},
						{
								extend:    'pdfHtml5',
								text:      '<i class="fas fa-file-pdf"></i> ',
								titleAttr: 'Exportar a PDF',
								className: 'btn btn-danger',
								filename: 'ListaAuditoria',
								title: 'Listado de auditoria del sistema'
						},
						{
								extend:    'print',
								text:      '<i class="fa fa-print"></i> ',
								titleAttr: 'Imprimir',
								className: 'btn btn-info',
								filename: 'ListaAuditoria',
								title: 'Listado de auditoria del sistema'
						},
				]
				});  
			
		}
