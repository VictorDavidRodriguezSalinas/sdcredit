$(function () {

 
 });

 function cargarCuotas(id) {
    console.log(id);
    $.ajax({
        url: 'controller/listarTablaId.php',
        type: 'POST',
        data: {nomtab:'cuotas',nomid:'idcli',id:id},
        success: function(res){
          var js= JSON.parse(res);
            for (var i = 0; i < js.length; i++) {
              $("#dtcCUO").append('<option value="'+js[i].idcuo+'">'+js[i].numcuo+'</option>');
            }
          
        }
      });
    
}

 function listClientes() {
	opcion = "clientes";
	tablaAnimales = $('#tabClientes').DataTable({
        "destroy": true,
		"paging": true,
		"ordering": true,
		"info": false,
		"bFilter": true,
        "bJQueryUI": false,
		"ajax": {
			"url": "controller/listarCamposTabla.php",
			"method": 'POST', //usamos el metodo POST
			"data": { tabla: opcion, campos: 'ruccli, CONCAT(nomcli,", ",apecli) as razcli, idcli ' }, //enviamos opcion 4 para que haga un SELECT
			"dataSrc": ""
		},
		"columns": [
            { "defaultContent": "<div class='text-center'><div class='btn-group'><button data-dismiss='modal' class='btn btn-success btn-sm btnSeleccionar'><i class='fas fa-check'></i>Seleccionar</button></div></div>" },
			{ "data": "ruccli" },
            { "data": "razcli" },
            { "data": "idcli" }
			
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

	});
}
//seleccionar cliente de modal       
$(document).on("click", ".btnSeleccionar", function (e) {
	fila = $(this).closest("tr");
	id = parseInt(fila.find('td:eq(3)').text());
	ruccli = fila.find('td:eq(1)').text();
	razcli = fila.find('td:eq(2)').text();
	$("#txtidcli").val(id);
	$("#txtRucCli").val(ruccli);
	$("#txtRazCli").val(razcli);
    cargarCuotas(id);

	//document.getElementById(txtPesActv).focus();
});


