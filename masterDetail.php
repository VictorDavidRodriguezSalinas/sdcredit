
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Document</title>

	<link rel="stylesheet" href="plugins/datatables-bs4/css/dataTables.bootstrap4.min.css">
	<link rel="stylesheet" href="https://cdn.datatables.net/1.11.3/css/jquery.dataTables.min.css">

	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	<link rel="stylesheet" href="masterDetail.css">

</head>
<body>

<div class="card-body">
<div class="table-responsive">
              <table id="tabVentas" name="tabVentas" class="table table-bordered table-striped">
                <thead>
                  <tr>
									<th></th>
                    <th>Fecha</th>
                    <th>Número</th>
                    <th>Ruc</th>
                    <th>Nombre</th>
                    <th>Apellido</th>
                    <th>Caravana</th>
                    <th>Categoría</th>
                    <th>Precio</th>
                    
                  </tr>
                </thead>
                <tbody>
                  <tr>

                  </tr>

                </tbody>
                <tfoot>
                  <tr>
									<th></th>
                    <th></th>
                    <th></th>
                    <th></th>
                    <th></th>
                    <th></th>
                    <th></th>
                    <th></th>
                    <th></th>
                  </tr>
                </tfoot>



              </table>
            </div>




<table id="example" class="display" style="width:100%">
        <thead>
            <tr>
                <th></th>
                <th>First name</th>
                <th>Last name</th>
                <th>Position</th>
                <th>Office</th>
            </tr>
        </thead>
        <tfoot>
            <tr>
                <th></th>
                <th>First name</th>
                <th>Last name</th>
                <th>Position</th>
                <th>Office</th>
            </tr>
        </tfoot>
</table>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script src="https://cdn.datatables.net/1.11.3/js/jquery.dataTables.min.js"></script>
<script>
	function format ( d ) {
    return 'Full name: '+d.first_name+' '+d.last_name+'<br>'+
        'Salary: '+d.salary+'<br>'+
        'The child row can contain any data you wish, including links, images, inner tables etc.';
}
 
$(document).ready(function() {
	listVentas();

    var dt = $('#example').DataTable( {
        "processing": true,
        "serverSide": true,
        "ajax": "data.json",
        "columns": [
            {
                "class":          "details-control",
                "orderable":      false,
                "data":           null,
                "defaultContent": ""
            },
            { "data": "first_name" },
            { "data": "last_name" },
            { "data": "position" },
            { "data": "office" }
        ],
        "order": [[1, 'asc']]
    } );
 
    // Array to track the ids of the details displayed rows
    var detailRows = [];
 
    $('#example tbody').on( 'click', 'tr td.details-control', function () {
        var tr = $(this).closest('tr');
        var row = dt.row( tr );
        var idx = $.inArray( tr.attr('id'), detailRows );
 
        if ( row.child.isShown() ) {
            tr.removeClass( 'details' );
            row.child.hide();
 
            // Remove from the 'open' array
            detailRows.splice( idx, 1 );
        }
        else {
            tr.addClass( 'details' );
            row.child( format( row.data() ) ).show();
 
            // Add to the 'open' array
            if ( idx === -1 ) {
                detailRows.push( tr.attr('id') );
            }
        }
    } );
 
    // On each draw, loop over the `detailRows` array and show any child rows
    dt.on( 'draw', function () {
        $.each( detailRows, function ( i, id ) {
            $('#'+id+' td.details-control').trigger( 'click' );
        } );
    } );


		var detailRowsDet = [];
 
    $('#tabVentas tbody').on( 'click', 'tr td.details-control', function () {
		
		
        var tr = $(this).closest('tr');
        var row = tablaVentas.row( tr );
        var idx = $.inArray( tr.attr('numven'), detailRows );
				tr.addClass( 'details' );
        
 
				for (let index = 0; index < 10; index++) {

					alert('detalle');
          
							detailRowsDet.push( tr.attr('numven') );
							row.child( formatDetalle( row.data() ) ).show();
           // On each draw, loop over the `detailRows` array and show any child rows
    tablaVentas.on( 'draw', function () {
        $.each( detailRowsDet, function ( i, id ) {
            $('#'+id+' td.details-control').trigger( 'click' );
        } );
    } );
				index++;

			}
			}
     );
 
 
} );

function formatDetalle ( tablaVentas ) {
		return 'Full name: '+tablaVentas.nomcat+' '+tablaVentas.carani+'<br>'+
        'Salary: '+tablaVentas.preven+'<br>'+
        'The child row can contain any data you wish, including links, images, inner tables etc.';
		
}
function listVentas() {
	
	param = "'LID'";
	procedure="lis_ventas";
	$.fn.dataTable.ext.errMode = 'throw';
	tablaVentas = $('#tabVentas').DataTable({
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
					.column( 7 )
					.data()
					.reduce( function (a, b) {
							return intVal(a) + intVal(b);
					}, 0 );

			

			// Total over this page

			totalVenta = api
					.column( 7, { page: 'current'} )
					.data()
					.reduce( function (a, b) {
							return intVal(a) + intVal(b);
					}, 0 );

			pageTotal = api
					.column( 7, { page: 'current'} )
					.data()
					.reduce( function (a, b) {
							return intVal(a) + intVal(b);
					}, 0 );

		

			// Update footer
			$( api.column( 6).footer() ).html(
				'TOTAL: '
		);

			$( api.column( 7 ).footer() ).html(
				(pageTotal ).toLocaleString('es')
			);

			

		

		
	},


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
			{
                "class":          "details-control",
                "orderable":      false,
                "data":           null,
                "defaultContent": ""
            },

		
			{ "data": "fecven" },
			{ "data": "numven" },
			{ "data": "ruccli" },
			{ "data": "nomcli" },
			{ "data": "apecli" },
			{ "data": "carani" },
			{ "data": "nomcat" },
			{ "data": "preven", render: $.fn.dataTable.render.number( '.', ',', 0) },
				],
				
		language: {
			"decimal": ",",//separador decimales
			"thousands": ".",//Separador miles
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
				filename: 'Ventas',
				title: 'Listado de Ventas'
			},
			{
				extend: 'pdfHtml5',
				text: '<i class="fas fa-file-pdf"></i> ',
				titleAttr: 'Exportar a PDF',
				className: 'btn btn-danger',
				filename: 'Ventas',
				title: 'Listado de Ventas'
			},
			{
				extend: 'print',
				text: '<i class="fa fa-print"></i> ',
				titleAttr: 'Imprimir',
				className: 'btn btn-info',
				filename: 'Ventas',
				title: 'Listado de Ventas'
			},
		]
		



	});


	var parentsData = {
		"success": true,
		"parents": [{
			"id": 1531,
			"Firstname": "Austin",
			"Surname": "Ana\u00eblle",
			"schoolId": "046039",
			"schoolName": "ARCAMBAL",
			"commune": "ARCAMBAL"
		}, {
			"id": 2032,
			"Firstname": "Ramos",
			"Surname": "L\u00e8i",
			"schoolId": "046043",
			"schoolName": "J CALVET",
			"commune": "CAHORS"
		}, {
			"id": 3036,
			"Firstname": "Baker",
			"Surname": "Salom\u00e9",
			"schoolId": "046043",
			"schoolName": "Z LAFAGE",
			"commune": "CAHORS"
		}, {
			"id": 1724,
			"Firstname": "Berry",
			"Surname": "Marl\u00e8ne",
			"schoolId": "046044",
			"schoolName": "J CALVET",
			"commune": "CAHORS"
		}]
	};
		
}

</script>
</body>
</html>

