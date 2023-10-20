var arrCuotas=[];
var arrCuota=[];
// Obtén una referencia al elemento select
var select = document.getElementById('dtcCUO');

$(function () {

 
 });

 function cargarCuotas(id) {
    var inputDate = document.getElementById("txtfecpag");
    var valorDate = inputDate.value;

  var parametros="'"+id+"',"+"'"+valorDate+"'";
  console.log(parametros);
  
    $.ajax({
        url: 'controller/listarProcedure.php',
        type: 'POST',
        data: {param:parametros+'',procedure:'lis_cuotaspen'},
        success: function(res){
          var js= JSON.parse(res);
          arrCuotas=[];
          arrCuotas=js;
          document.getElementById("dtcCUO").innerHTML=''; //resetea el combo
            for (var i = 0; i < js.length; i++) {
              $("#dtcCUO").append('<option value="'+js[i].idcuo+'">'+js[i].numcuo+ " - Vence: "+js[i].fecven+'</option>');
            }
          
        }
      });
    
}



// Agrega un oyente de eventos al elemento select
select.addEventListener('change', function() {
    // Obtiene el valor seleccionado
    seleccionarCuota();
    
    
});

function seleccionarCuota(){
    var idcuo = select.value;
    var tipven='';
    
    obtenerDatosCuota(idcuo);
   
    if (arrCuota[0].tipven=='DIA'){
     tipven=" Dias";
     $("#txtatraso").val(arrCuota[0].dias_atraso+" "+tipven);
    }
    else if (arrCuota[0].tipven=='SEM'){
        tipven=" Semanas";
        $("#txtatraso").val(arrCuota[0].sem_atraso+" "+tipven);
    }
    else if (arrCuota[0].tipven=='MES'){
        tipven=" Mes/es";
        $("#txtatraso").val(arrCuota[0].dias_atraso/30+" "+tipven);
    }
    $("#txtmoncuo").val(formaterNumero(parseFloat(arrCuota[0].moncuo)));
   

    $("#txtintacu").val(formaterNumero(parseFloat(arrCuota[0].intacu)));
    
   

    $("#txtmonpag").val(formaterNumero(parseFloat(arrCuota[0].monpag)));

   
   

}

function obtenerDatosCuota(idcuo) {

    arrCuota=[];

    for (var i = 0; i < arrCuotas.length; i++) {
        if (arrCuotas[i].idcuo === idcuo) {
            arrCuota.push(arrCuotas[i]);
        }
    }
    
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
});


function formaterNumero(numero){
    var numeroFormateado = numero.toLocaleString('es-ES', {
        style: 'decimal', // Puede ser 'decimal', 'percent', 'currency', etc.
        minimumFractionDigits: 0, // Número mínimo de decimales
    });
    return numeroFormateado;
}