$(function(){
	listar();
	});
function ver(){
	$.ajax({
		url: 'data/buckup.php',
		type: 'POST',
		data: $('#frmAddUser').serialize(),
		success: function(res){
			console.log(res);
			var js= JSON.parse(res);
			if (js.estado === 'no'){
							swal("Advertencia", "Error al crear la copia", "warning");  
			}else if(js.estado === 'ok')
			{
			
				swal("La copia se generó correctamente", "Archivo: "+js.archivo, "success");  
				tablaUsuarios.ajax.reload(null, false);
			}
		}
	});
}
    //restaruar        
    $(document).on("click", ".btnEditar", function(e){	
			e.preventDefault();    
			swal({
				title: "Desea restaurar la base de datos?",
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
						e.preventDefault();    
						fila = $(this).closest("tr");	        
						archivo = fila.find('td:eq(2)').text(); //capturo el ID		   
						$.ajax({
					url: 'data/restore.php',
					type: 'POST',
					data: {archivo:archivo},
					success: function(res){
						var js= JSON.parse(res);
						swal("La base de datos ha sido restaurado!", {
							icon: "success",
							timer:"1200"
						});
						
					}
				});

					} 
				});
	
});
function listar() {

			opcion = 'buckup';
			$.fn.dataTable.ext.errMode = 'throw';
				tablaUsuarios = $('#tabUser').DataTable({  
					"paging":   true,
					"ordering": true,
					"filter":true,
					"info":     false,
						"ajax":{            
								"url": "controller/listarTabla.php", 
								"method": 'POST', //usamos el metodo POST
								"data":{opcion:opcion}, //enviamos opcion 4 para que haga un SELECT
								"dataSrc":""
						},
						"columns":[
								{"data": "idbuc"},
								{"data": "fecha"},
								{"data": "archivo"},
								{"defaultContent": "<div class='text-center'><div class='btn-group'><button class='btn btn-warning btn-xs btnEditar'><i class='fa fa-database'>Restaurar</i></button>"}
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
						filename: 'Respaldo',
						title: 'Listado de respaldo de datos'
				},
				{
						extend:    'pdfHtml5',
						text:      '<i class="fas fa-file-pdf"></i> ',
						titleAttr: 'Exportar a PDF',
						className: 'btn btn-danger',
						filename: 'Respaldo',
						title: 'Listado de respaldo de datos'
				},
				{
						extend:    'print',
						text:      '<i class="fa fa-print"></i> ',
						titleAttr: 'Imprimir',
						className: 'btn btn-info',
						filename: 'Respaldo',
						title: 'Listado de respaldo de datos'
				},
		]
				});  
			
		}