
$(function(){
	listRetiroCaja();
});
function listRetiroCaja() {
	param = "'LIS'";
	procedure="lis_retiro";
				$.fn.dataTable.ext.errMode = 'throw';
				tablaRetiroCaja = $('#tabRetiroCaja').DataTable({  
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
								{"data": "idret"},
								{"data": "fecret", className: "text-center"},
								{"data": "motret", className: "text-center"},
								{"data": "monret", render: $.fn.dataTable.render.number( '.', ',', 0) , className: "text-right"},
								{"data": "estapc", className: "text-center"},

								{"defaultContent": "<div class='text-center'><div class='btn-group'><button class='btn btn-warning btn-xs btnEditar'><i class='fa fa-user-edit'>Editar</i></button></div></div>"}
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
								className: 'btn btn-success'
						},
						{
								extend:    'pdfHtml5',
								text:      '<i class="fas fa-file-pdf"></i> ',
								titleAttr: 'Exportar a PDF',
								className: 'btn btn-danger'
						},
						{
								extend:    'print',
								text:      '<i class="fa fa-print"></i> ',
								titleAttr: 'Imprimir',
								className: 'btn btn-info'
						},
				]
				});  
			
		}

$('#frmAddRetiroCaja').submit(function(e){  
	ope= document.getElementById("txtOPE").value;     
	e.preventDefault();                      
	$.ajax({
			url: 'controller/manRetiroCaja.php',
			type: 'POST',
			data: $('#frmAddRetiroCaja').serialize(),
			success: function(res){
				var js= JSON.parse(res);
			
				if(js.estado=='ok')
				{
					tablaRetiroCaja.ajax.reload(null, false);
					$("#frmAddRetiroCaja").trigger("reset");
				if (ope==='GUA') {
					swal({title: "Registrado",text: "exitosamente!!!",icon: "success",timer: "1250",}); 
				}
				else
				{
					swal({title: "Actualizado",text: "exitosamente!!!",icon: "success",timer: "1250",});  
				}

				}
				else
				{
					swal({title: "Dinero no disponible, solo puede retirar Gs. "+js.mondis,text: "",icon: "warning",timer: "1250",}); 

				}

			
			}
		});
});

	//Editar        
	$(document).on("click", ".btnEditar", function(e){		    
				e.preventDefault();    
				fila = $(this).closest("tr");	        
				id = parseInt(fila.find('td:eq(0)').text()); //capturo el ID	
				nomtab="retirocaja";
				nomid="idret";
				estapc=fila.find('td:eq(4)').text();
				if (estapc==='Activo')
				{         
					$.ajax({
						url: 'controller/listarTablaId.php',
						type: 'POST',
						data: {nomtab:nomtab,nomid:nomid,id:id},
						success: function(res){
							var js= JSON.parse(res);
							var tabla;
								for (var i = 0; i < js.length; i++) {
									$("#txtOPE").val("EDI");
									$("#txtidret").val(js[i].idret);
									$("#txtMonRet").val(js[i].monret);
									$("#txtMotRet").val(js[i].motret);
								 
								}
							
						}
					});
			}
			else
			{
				swal({title: "Apertura cerrada",text: "",icon: "warning",timer: "1500",}); 
			}
				


	});

	$(document).on("click", ".btnBorrar", function(e){
				e.preventDefault();    
				fila = $(this).closest("tr");	        
				idret = parseInt(fila.find('td:eq(0)').text()); //capturo el ID		
				opera="ELI";
				$.ajax({
			url: 'controller/manRetiroCaja.php',
			type: 'POST',
			data: {txtidret:idret,txtOPE:opera},
			success: function(res){
				tablaRetiroCaja.ajax.reload(null, false);
				swal({title: "Eliminado",text: "exitosamente!!!",icon: "warning",timer: "1500",}); 
				
			}
		});
	});
