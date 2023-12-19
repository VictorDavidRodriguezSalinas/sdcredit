
$(function () {
	listCliente();
	cargarUsuarios();
});
function listCliente() {

	idusuario= document.getElementById("txtidusu").value;
	nivusu= document.getElementById("txtnivusu").value;
	
	
	$.fn.dataTable.ext.errMode = 'throw';
	tablaCliente = $('#tabCliente').DataTable({
		"paging": true,
		"ordering": true,
		"info": false,
		"bFilter": true,
		"ajax": {
			"url": "controller/listarProcedure.php",
			"method": 'POST', //usamos el metodo POST
			"data": { param: "'"+idusuario+"',"+"'"+nivusu+"'", procedure: 'lis_cliente' }, //enviamos opcion 4 para que haga un SELECT
			"dataSrc": ""
		},
		"columns": [
			
			{ "data": "idcli" },
		
			{"defaultContent": "<div class='text-center'><div class='btn-group'><button class='btn btn-warning btn-sm btnEditar'><i class='fas fa-user-edit'></i>Editar</button></div></div>"},
       
			{ "data": "ruccli" },
			{ "data": "nomcli" },
			{ "data": "apecli" },
			{ "data": "telcli" }	

			
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
		dom: 'Bfrtilp',
		buttons: [
			{
				extend: 'excelHtml5',
				text: '<i class="fas fa-file-excel"></i> ',
				titleAttr: 'Exportar a Excel',
				className: 'btn btn-success',
				filename: 'ListaCliente',
				title: 'Listado de Clientes'
			},
			{
				extend: 'pdfHtml5',
				text: '<i class="fas fa-file-pdf"></i> ',
				titleAttr: 'Exportar a PDF',
				className: 'btn btn-danger',
				filename: 'ListaCliente',
				title: 'Listado de Clientes'
			},
			{
				extend: 'print',
				text: '<i class="fa fa-print"></i> ',
				titleAttr: 'Imprimir',
				className: 'btn btn-info',
				filename: 'ListaCliente',
				title: 'Listado de Clientes'
			},
		]
	});

}

$('#frmAddCliente').submit(function (e) {



	ope = document.getElementById("txtOPE").value;
	e.preventDefault();
	$.ajax({
		url: 'controller/manCliente.php',
		type: 'POST',
		data: $('#frmAddCliente').serialize(),
		success: function (res) {
			var js = JSON.parse(res);
			console.log(js.texto);
			
			if (js.estado == 'no') {

				swal({ title: "Ya existe otro cliente con el mismo Ruc", text: "", icon: "warning", timer: "1250", });

			}
			else {
				tablaCliente.ajax.reload(null, false);
				$("#frmAddCliente").trigger("reset");
				if (ope === 'GUA') {
					swal({ title: "Registrado", text: "exitosamente!!!", icon: "success", timer: "1250", });
				}
				else {
					swal({ title: "Actualizado", text: "exitosamente!!!", icon: "success", timer: "1250", });
				}
			}
		}
	});
});

//Editar        
$(document).on("click", ".btnEditar", function (e) {

	e.preventDefault();
	fila = $(this).closest("tr");
	id = parseInt(fila.find('td:eq(0)').text()); //capturo el ID	
	nomtab = "clientes";
	nomid = "idcli";
	$.ajax({
		url: 'controller/listarTablaId.php',
		type: 'POST',
		data: { nomtab: nomtab, nomid: nomid, id: id },
		success: function (res) {
			console.log('success:', res);
			var js = JSON.parse(res);

			var tabla;
			for (var i = 0; i < js.length; i++) {
				$("#txtOPE").val("EDI");
				$("#txtidcli").val(js[i].idcli);
				$("#txtRucCli").val(js[i].ruccli);
				$("#txtNomCli").val(js[i].nomcli);
				$("#txtApeCli").val(js[i].apecli);
				$("#txtTelCli").val(js[i].telcli);
				$("#dtcUSU").val(js[i].idusu);
				$("#txtCiuCli").val(js[i].ciucli);
				$("#txtDirCli").val(js[i].dircli);
				$("#txtBarCli").val(js[i].barcli);
				$("#txtRef1").val(js[i].refcli1);
				$("#txtRef2").val(js[i].refcli2);
				$("#txtRucCli").focus();
				window.scrollTo({ top: 0, behavior: 'smooth' });
				
			}
		}
	});



});

$(document).on("click", ".btnBorrar", function (e) {

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
				opera = "ELI";
				$.ajax({
					url: 'controller/manCliente.php',
					type: 'POST',
					data: { txtidcli: idcli, txtOPE: opera },
					success: function (res) {

						var js = JSON.parse(res);
						// console.log((js.estado));
						if (js.estado == 'no') {

							swal({ title: "El cliente ya posee cuotas, no puede ser eliminado", text: "", icon: "warning", timer: "1500", });

						}
						else {
							tablaCliente.ajax.reload(null, false);
							swal({ title: "Eliminado", text: "exitosamente!!!", icon: "warning", timer: "1500", });
						}






					}
				});

			}
		});

});

function cargarUsuarios() {
    $.ajax({
        url: 'controller/listarTabla.php',
        type: 'POST',
        data: {opcion:'usuario'},
        success: function(res){
          var js= JSON.parse(res);
            for (var i = 0; i < js.length; i++) {
              $("#dtcUSU").append('<option value="'+js[i].idusu+'">'+js[i].nomusu+'</option>');
            }
          
        }
      });   
}

function Cerrar(){
	
	$("#txtOPE").val("");
	window.location.assign("/sdcredit/dashboard");
}
