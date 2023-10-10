var cont=0;
$(function () {
	fechaActual();
	cargarTipoMedicacion();
	listAnimales();
	listActividades();

	cargarActividad();
	cargarTipoActividad(1);
	Enumerar();
	mostrarform(false);
	
});
//Función mostrar formulario
function mostrarform(flag)
{
	if (flag)
	{
		if ($('#txtOPE')=='GUA'){
			fechaActual();
			Enumerar();
		}

		$("#listadoActividades").hide();
	  $("#formularioregistros").show();
   
 
   
	}
	else
	{
   
		$("#listadoActividades").show();
		$("#formularioregistros").hide();
		$('#txtCodActv').prop('readonly', false);
		
   
	}
}
function cancelarform()
{
  $("#frmAddActividades").trigger("reset");
	limpiarDetalle();
	$(".filas").remove();

	mostrarform(false);
}

function cargarActividad() {
	$.ajax({
		url: 'controller/listarTabla.php',
		type: 'POST',
		data: { opcion: 'actividad' },
		success: function (res) {
			var js = JSON.parse(res);
			for (var i = 0; i < js.length; i++) {
				$("#txtIdAct").append('<option value="' + js[i].idact + '">' + js[i].nomact + '</option>');
			}
		}
	});
}

function cargarTipoActividad(id) {
				
					$('#txtIdTia').empty();
          nomtab="tipoactividad";
          nomid="idact";	            
          $.ajax({
        url: 'controller/listarTablaId.php',
        type: 'POST',
        data: {nomtab:nomtab,nomid:nomid,id:id},
		success: function (res) {
			var js = JSON.parse(res);
			for (var i = 0; i < js.length; i++) {

				$("#txtIdTia").append('<option value="' + js[i].idtia + '">' + js[i].nomtia + '</option>');
			}
		}
	});
}


$('#txtIdAct').change(function(){
		if ($('#txtIdTia').val()==null){id=1;}else{	id=$('#txtIdAct').val()}
	
		cargarTipoActividad(id);
});

function cargarTipoMedicacion() {
	$.ajax({
		url: 'controller/listarTabla.php',
		type: 'POST',
		data: { opcion: 'tipomedicacion' },
		success: function (res) {
			var js = JSON.parse(res);
			for (var i = 0; i < js.length; i++) {

				$("#txtIdTimed").append('<option value="' + js[i].idtimed + '">' + js[i].nomtimed + '</option>');
			}
		}
	});
}

function Enumerar() {
	$.ajax({
		url: 'controller/listarCamposTabla.php',
		type: 'POST',
		data: { campos: 'MAX(codactv) AS ult',tabla:'actividades' },
		success: function (res) {
			var js = JSON.parse(res);
			if (js[0].ult==null){
				num=1;
			}
			else
			{ 
				var ult = parseInt(js[0].ult);
				var num=ult+1;
			}
	
			$('#txtCodActv').val(num);
		}
	});
}

function listActividades() {
	param = "'LIS'";
	procedure="lis_actividades";
	$.fn.dataTable.ext.errMode = 'throw';
	tablaActividades = $('#tabActividades').DataTable({
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
			{ "data": "idactv" },
			{ "data": "codactv" },
			{ "data": "fecactv" },
			{ "data": "carani" },
			{ "data": "nomcat" },
			{ "data": "nomact" },
			{ "data": "nomtia" },
			{ "data": "pesactv" },
			{ "data": "nomtimed" },
			{ "data": "canmedi" },
			{ "data": "premedi", render: $.fn.dataTable.render.number( '.', ',', 0) },
			{ "defaultContent": "<div class='text-center'><div class='btn-group'><button class='btn btn-warning btn-xs btnEditar'><i class='fa fa-clipboard-check'></i>Editar Planilla</button><button class='btn btn-danger btn-xs btnBorrar'><i class='fa fa-user-minus'></i>Eliminar</button></div></div>" }
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
				filename: 'ActividadesCampo',
        title: 'Listado de actividades de campo'
			},
			{
				extend: 'pdfHtml5',
				text: '<i class="fas fa-file-pdf"></i> ',
				titleAttr: 'Exportar a PDF',
				className: 'btn btn-danger',
				filename: 'ActividadesCampo',
        title: 'Listado de actividades de campo'
			},
			{
				extend: 'print',
				text: '<i class="fa fa-print"></i> ',
				titleAttr: 'Imprimir',
				className: 'btn btn-info',
				filename: 'ActividadesCampo',
        title: 'Listado de actividades de campo'
			},
		]
	});

}

function listAnimales() {
	opcion = "animales";
	tablaAnimales = $('#tabAnimales').DataTable({

		"paging": true,
		"ordering": true,
		"info": false,
		"bFilter": true,
		"ajax": {
			"url": "controller/listarCamposTabla.php",
			"method": 'POST', //usamos el metodo POST
			"data": { tabla: opcion, campos: 'idani,carani,hbpani,nomani,fecnac' }, //enviamos opcion 4 para que haga un SELECT
			"dataSrc": ""
		},
		"columns": [
			{ "data": "idani" },
			{ "data": "carani" },
			{ "data": "hbpani" },
			{ "data": "nomani" },
			{ "data": "fecnac" },
			{ "defaultContent": "<div class='text-center'><div class='btn-group'><button data-dismiss='modal' class='btn btn-success btn-sm btnSeleccionar'><i class='fas fa-check'></i>Seleccionar</button></div></div>" }
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

function agregarDetalle()
  {
	
		var idani = document.getElementById("txtidani").value;
		var carani=document.getElementById("txtCarAni").value;
		var idtia=document.getElementById('txtIdTia').value; 
		var nomact=$('select[name="txtIdAct"] option:selected').text();
		var nomtia=$('select[name="txtIdTia"] option:selected').text();
  	var pesactv=document.getElementById("txtPesActv").value;
		var nomtimed=$('select[name="txtIdTimed"] option:selected').text();
		var idtimed=document.getElementById('txtIdTimed').value; 
		var canmedi=document.getElementById("txtCanMedi").value;
		var premedi=document.getElementById("txtPreMedi").value;
    var totalkg=0;
		
		if (idani==''){swal({title: "Seleccione el ganado !!!",text: "",icon: "warning",timer: "1200",}); throw ''; }
		if (carani==''){swal({title: "Seleccione el ganado !!!",text: "",icon: "warning",timer: "1200",}); throw ''; }
		if (pesactv==''){swal({title: "Ingese el peso al menos cero (0) !!!",text: "",icon: "warning",timer: "1200",}); document.getElementById("txtPesActv").focus();throw ''; }
		if (pesactv<0){swal({title: "El peso no puede ser menor a cero (0) !!!",text: "",icon: "warning",timer: "1200",}); document.getElementById("txtPesActv").focus(); throw ''; }
		
		
		if (idtimed>0){
			if (canmedi==0){
				swal({title: "Ingrese cantidad de dosis !!!",text: "",icon: "warning",timer: "1200",}); document.getElementById("txtCanMedi").focus(); throw ''; 
			}
			else if (premedi=='')
			{
				swal({title: "Ingrese el precio de medicación !!!",text: "",icon: "warning",timer: "1200",}); document.getElementById("txtPreMedi").focus(); throw ''; 
			}
			else if (premedi<0)
			{
				swal({title: "Ingrese el precio de medicación no puede ser menor a cero (0) !!!",text: "",icon: "warning",timer: "1200",}); document.getElementById("txtPreMedi").focus(); throw ''; 
			}
			
		}
		
		if (canmedi >0)
		{
			if (idtimed==0){
				swal({title: "Seleccione el tipo de medicación !!!",text: "",icon: "warning",timer: "1200",}); document.getElementById("txtIdTimed").focus(); throw ''; 
			}
			else if (premedi=='')
			{
				swal({title: "Ingrese el precio de medicación !!!",text: "",icon: "warning",timer: "1200",}); document.getElementById("txtPreMedi").focus(); throw ''; 
			}
			else if (premedi<0)
			{
				swal({title: "Ingrese el precio de medicación no puede ser menor a cero (0) !!!",text: "",icon: "warning",timer: "1200",}); document.getElementById("txtPreMedi").focus(); throw ''; 
			}
		}
		else{canmedi=0;premedi=0;nomtimed=''}



		if (pesactv==''){swal({title: "Ingese el peso al menos cero (0)!!!",text: "",icon: "warning",timer: "1200",}); document.getElementById("txtPesActv").focus(); throw ''; }
		
    var fila='<tr class="filas" id="fila'+cont+'">'+
			'<td hidden><input type="hidden" name="idani[]" value="'+idani+'">'+idani+'</td>'+
    	'<td hidden><input type="hidden" name="idtimed[]" value="'+idtimed+'">'+idtimed+'</td>'+
			'<td><input type="hidden" name="carani[]" id="carani[]" value="'+carani+'">'+carani+'</td>'+
			'<td hidden><input type="hidden" name="idtia[]" value="'+idtia+'">'+idtia+'</td>'+
			'<td><input type="hidden" name="nomact[]" value="'+nomact+'">'+nomact+'</td>'+
			'<td><input type="hidden" name="nomtia[]" value="'+nomtia+'">'+nomtia+'</td>'+
    	'<td><input type="hidden" name="pesactv[]" id="pesactv[]" value="'+pesactv+'">'+pesactv+'</td>'+
    	'<td><input type="hidden" name="nomtimed[]" id="nomtimed[]" value="'+nomtimed+'">'+nomtimed+'</td>'+
    	'<td><input type="hidden" name="canmedi[]" id="canmedi" value="'+canmedi+'">'+canmedi+'</td>'+
    	'<td><input type="hidden" name="premedi[]" id="premedi" value="'+premedi+'">'+premedi+'</td>'+
    	'<td><button type="button" onclick="eliminarFila('+cont+')" class="btn btn-danger sm"><i class="fa fa-trash-alt"></i></button></td>'+
    	'</tr>';
    	cont++;
    	detalles=detalles+1;
			totalkg++;
    	$('#detalles').append(fila);
			limpiarDetalle();
   
  }
	function eliminarFila(indice){
  	$("#fila" + indice).remove();
  	detalles=detalles-1;
  }
	function limpiarDetalle() {
		$('#txtidani').val('');
		$('#txtCarAni').val('');
		$('#txtPesActv').val('');
		$('#txtCanMedi').val('');
		$('#txtPreMedi').val('');
	}

	function fechaActual() {
		var now = new Date();
		var day = ("0" + now.getDate()).slice(-2);
		var month = ("0" + (now.getMonth() + 1)).slice(-2);
		var today = now.getFullYear()+"-"+(month)+"-"+(day) ;
		$("#txtFecActv").val(today);
		
	}
	//seleccionar animal de modal       
$(document).on("click", ".btnSeleccionar", function(e){		   
//	agregarDetalle(); 


	fila = $(this).closest("tr");	        
	id = parseInt(fila.find('td:eq(0)').text()); 
	carani = fila.find('td:eq(1)').text(); 
	
	$("#txtidani").val(id);
	$("#txtCarAni").val(carani);
	document.getElementById(txtPesActv).focus();

	
	

});


$('#cmdGuardar').click(function(e){  


	codactv=document.getElementById("txtCodActv").value;
	fecactv=document.getElementById("txtFecActv").value;

	if (codactv==''){swal({title: "Ingrese número de planilla de actividad !!!",text: "",icon: "warning",timer: "1200",}); document.getElementById("txtCodActv").focus(); throw ''; }
	if (fecactv==''){swal({title: "Ingrese fecha de actividad !!!",text: "",icon: "warning",timer: "1200",}); document.getElementById("txtFecActv").focus(); throw ''; }
	if (cont==0){swal({title: "Ingrese detalles de actividad !!!",text: "",icon: "warning",timer: "1200",});  throw ''; }

  e.preventDefault(); 
  var formDatos = new FormData($("#frmAddActividades")[0]);
  ope= document.getElementById("txtOPE").value;     
                       
  $.ajax({
      url: 'controller/manActividades.php',
      type: 'POST',
      data: formDatos,
      contentType: false,
      processData: false,
      success: function(res){
				
				$(".filas").remove();

        $("#frmAddActividades").trigger("reset");
			
			
        if (ope==='GUA') {
          swal({title: "Registrado",text: "exitosamente!!!",icon: "success",timer: "1250",}); 
        }
        else
        {
          swal({title: "Actualizado",text: "exitosamente!!!",icon: "success",timer: "1250",});  
        }
				Enumerar();
				fechaActual();
				tablaActividades.ajax.reload(null, false);
      }
    });
		
});

//Editar        
$(document).on("click", ".btnEditar", function(e){		    
	fila = $(this).closest("tr");	        
	id = parseInt(fila.find('td:eq(1)').text()); 
//	id = parseInt(fila.find('td:eq(0)').text()); //capturo el ID	

	e.preventDefault();  
	procedure="lis_actividades";  
	$.ajax({
url: 'controller/listarProcedure.php',
type: 'POST',
data: {param:id,procedure:procedure},
success: function(res){
	var js= JSON.parse(res);
	
		for (var i = 0; i < js.length; i++) {
		
			$("#txtOPE").val("EDI");
			$("#txtCodActv").val(js[i].codactv);
			$('#txtCodActv').prop('readonly', true);
			$("#txtFecActv").val(js[i].fecactv);
		
		
			
		
			var idani = js[i].idani;
			var carani=js[i].carani;
			var idtia=js[i].idtia;
			var nomact=js[i].nomact;
			var nomtia=js[i].nomtia;
			var pesactv=js[i].pesactv;
			var nomtimed=js[i].nomtimed;
			var idtimed=js[i].idtimed;
			var canmedi=js[i].canmedi;
			var premedi=js[i].premedi;

		
		
			var fila='<tr class="filas" id="fila'+cont+'">'+
			'<td hidden><input type="hidden" name="idani[]" value="'+idani+'">'+idani+'</td>'+
    	'<td hidden><input type="hidden" name="idtimed[]" value="'+idtimed+'">'+idtimed+'</td>'+
			'<td><input type="hidden" name="carani[]" id="carani[]" value="'+carani+'">'+carani+'</td>'+
			'<td hidden><input type="hidden" name="idtia[]" value="'+idtia+'">'+idtia+'</td>'+
			'<td><input type="hidden" name="nomact[]" value="'+nomact+'">'+nomact+'</td>'+
			'<td><input type="hidden" name="nomtia[]" value="'+nomtia+'">'+nomtia+'</td>'+
    	'<td><input type="hidden" name="pesactv[]" id="pesactv[]" value="'+pesactv+'">'+pesactv+'</td>'+
    	'<td><input type="hidden" name="nomtimed[]" id="nomtimed[]" value="'+nomtimed+'">'+nomtimed+'</td>'+
    	'<td><input type="hidden" name="canmedi[]" id="canmedi" value="'+canmedi+'">'+canmedi+'</td>'+
    	'<td><input type="hidden" name="premedi[]" id="premedi" value="'+premedi+'">'+premedi+'</td>'+
    	'<td><button type="button" onclick="eliminarFila('+cont+')" class="btn btn-danger sm"><i class="fa fa-trash-alt"></i></button></td>'+
    	'</tr>';
			
    	cont++;
    	detalles=detalles+1;
    	$('#detalles').append(fila);
		
			
		}
	
		mostrarform(true);
	
}
});
});