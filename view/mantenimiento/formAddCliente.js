
$(function(){
listCliente();
});
function listCliente() {
				param = "'LIS'";
				procedure="lis_cliente";
				$.fn.dataTable.ext.errMode = 'throw';
				tablaCliente = $('#tabCliente').DataTable({  
					"paging":   true,
					"ordering": true,
					"info":     false,
					"bFilter": true,
						"ajax":{            
								"url": "controller/listarProcedure.php", 
								"method": 'POST', //usamos el metodo POST
								"data":{ param:param,procedure:procedure}, //enviamos opcion 4 para que haga un SELECT
								"dataSrc":""
						},
						"columns":[
								{"data": "idcli"},
								{"data": "ruccli"},
								{"data": "nomcli"},
								{"data": "apecli"},
								{"data": "telcli"},
								{"defaultContent": "<div class='text-center'><div class='btn-group'><button class='btn btn-warning btn-xs btnEditar'><i class='fa fa-user-edit'>Editar</i></button></button><button class='btn btn-danger btn-xs btnBorrar'><i class='fa fa-user-minus'>Eliminar</i></button></div></div></div></div>"}
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
								filename: 'ListaCliente',
								title: 'Listado de Clientes'
						},
						{
								extend:    'pdfHtml5',
								text:      '<i class="fas fa-file-pdf"></i> ',
								titleAttr: 'Exportar a PDF',
								className: 'btn btn-danger',
								filename: 'ListaCliente',
								title: 'Listado de Clientes'
						},
						{
								extend:    'print',
								text:      '<i class="fa fa-print"></i> ',
								titleAttr: 'Imprimir',
								className: 'btn btn-info',
								filename: 'ListaCliente',
								title: 'Listado de Clientes'
						},
				]
				});  
			
		}

$('#frmAddCliente').submit(function(e){  



	ope= document.getElementById("txtOPE").value;     
	e.preventDefault();                      
	$.ajax({
			url: 'controller/manCliente.php',
			type: 'POST',
			data: $('#frmAddCliente').serialize(),
			success: function(res){
				var js= JSON.parse(res);
				//console.log((js.texto));
				if (js.estado=='no') {
			
					swal({title: "Ya existe otro cliente con el mismo Ruc",text: "",icon: "warning",timer: "1250",}); 
				
				}
				else
				{
					tablaCliente.ajax.reload(null, false);
					$("#frmAddCliente").trigger("reset");
				if (ope==='GUA') {
					swal({title: "Registrado",text: "exitosamente!!!",icon: "success",timer: "1250",}); 
				}
				else
				{
					swal({title: "Actualizado",text: "exitosamente!!!",icon: "success",timer: "1250",});  
				}
				}
			}
		});
});

	//Editar        
	$(document).on("click", ".btnEditar", function(e){	
			e.preventDefault();    
			fila = $(this).closest("tr");	        
			id = parseInt(fila.find('td:eq(0)').text()); //capturo el ID	
			nomtab="clientes";
			nomid="idcli";	   
			$.ajax({
		url: 'controller/listarTablaId.php',
		type: 'POST',
		data: {nomtab:nomtab,nomid:nomid,id:id},
		success: function(res){
			var js= JSON.parse(res);
			var tabla;
				for (var i = 0; i < js.length; i++) {
					$("#txtOPE").val("EDI");
					$("#txtidcli").val(js[i].idcli);
					$("#txtRucCli").val(js[i].ruccli);
					$("#txtNomCli").val(js[i].nomcli);
					$("#txtApeCli").val(js[i].apecli);
					$("#txtTelCli").val(js[i].telcli);
				}
		}
	});



	});

	$(document).on("click", ".btnBorrar", function(e){
		
		e.preventDefault();    
		swal({
			title: "Desea eliminar cliente?",
			text: "",
			icon: "warning",
			buttons: {
				cancel: "NO",
				confirm: "SI",
			},
			dangerMode: true,
		})
			.then((willDelete) => {
				if (willDelete) {
					e.preventDefault();    
					fila = $(this).closest("tr");	        
					idcli = parseInt(fila.find('td:eq(0)').text()); //capturo el ID		
					opera="ELI";
					$.ajax({
				url: 'controller/manCliente.php',
				type: 'POST',
				data: {txtidcli:idcli,txtOPE:opera},
				success: function(res){

					var js= JSON.parse(res);
					//console.log((js.texto));
					if (js.estado=='no') {
				
						swal({title: "El cliente ya posee ventas, no puede ser eliminado",text: "",icon: "warning",timer: "1500",}); 
					
					}
					else
					{
						tablaCliente.ajax.reload(null, false);
						swal({title: "Eliminado",text: "exitosamente!!!",icon: "warning",timer: "1500",}); 
					}




				
					
				}
			});
			
				} 
			});
	
	});
