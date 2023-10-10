
$(function(){
	listApertura();
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




function listApertura() {
				param = "'LIS'";
				procedure="lis_apertura";
				$.fn.dataTable.ext.errMode = 'throw';
				tablaApertura = $('#tabApertura').DataTable({  
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
								{"data": "idapc"},
								{"data": "horapc"},
								{"data": "monini", render: $.fn.dataTable.render.number( '.', ',', 0)},
								{"data": "monapc", render: $.fn.dataTable.render.number( '.', ',', 0)},
								{"data": "monret", render: $.fn.dataTable.render.number( '.', ',', 0)},
								{"data": "nomusu", render: $.fn.dataTable.render.number( '.', ',', 0)},
								{"data": "estapc"},
						
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
								className: 'btn btn-success',
								filename: 'ListaApertura',
								title: 'Listado de aperturas de caja'
						},
						{
								extend:    'pdfHtml5',
								text:      '<i class="fas fa-file-pdf"></i> ',
								titleAttr: 'Exportar a PDF',
								className: 'btn btn-danger',
								filename: 'ListaApertura',
								title: 'Listado de aperturas de caja'
						},
						{
								extend:    'print',
								text:      '<i class="fa fa-print"></i> ',
								titleAttr: 'Imprimir',
								className: 'btn btn-info',
								filename: 'ListaApertura',
								title: 'Listado de aperturas de caja'
						},
				]
				});  
			
		}

$('#frmAddApertura').submit(function(e){  



	ope= document.getElementById("txtOPE").value;     
	e.preventDefault();                      
	$.ajax({
			url: 'controller/manApertura.php',
			type: 'POST',
			data: $('#frmAddApertura').serialize(),
			success: function(res){
				var js= JSON.parse(res);
				console.log((js.estado));
				if (js.estado=='no') {
			
					swal({title: "Ya existe otra caja aperturada",text: "",icon: "warning",timer: "1250",}); 
				
				}
				else
				{
					tablaApertura.ajax.reload(null, false);
					$("#frmAddApertura").trigger("reset");
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
			nomtab="apertura";
			nomid="idapc";	   
			estapc=fila.find('td:eq(6)').text();
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
					$("#txtidapc").val(js[i].idapc);
					$("#txtMonIni").val(js[i].monini);
					$("#txtMonApc").val(js[i].monapc);
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
				idapc = parseInt(fila.find('td:eq(0)').text()); //capturo el ID		
				opera="ELI";
				$.ajax({
			url: 'controller/manApertura.php',
			type: 'POST',
			data: {txtidapc:idapc,txtOPE:opera},
			success: function(res){
				tablaApertura.ajax.reload(null, false);
				swal({title: "Eliminado",text: "exitosamente!!!",icon: "warning",timer: "1500",}); 
				
			}
		});
	});
