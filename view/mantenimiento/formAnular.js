$(function () {
    
    listPagares();
    ocultarColumna(1);
  
});

$(document).on("click", ".btnBorrar", function (e) {

	e.preventDefault();
	swal({
		title: "Desea eliminar pagaré?",
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
                idcli = parseInt(fila.find('td:eq(1)').text());
				numpgr = parseInt(fila.find('td:eq(2)').text()); //capturo el ID		
				console.log('cliente:'+idcli);
                console.log('pagare:'+numpgr);
				$.ajax({
					url: 'controller/anularPagare.php',
					type: 'POST',
					data: { numpgr: numpgr,idcli:idcli },
					success: function (res) {
                      //  console.log(res);
						var js = JSON.parse(res);
						
						if (js.estado == 'no') {

							swal({ title: "No se pudo eliminar el pagaré", text: "", icon: "warning", timer: "1500", });

						}
						else {
							tablaEstado.ajax.reload(null, false);
							swal({ title: "Eliminado", text: "exitosamente!!!", icon: "warning", timer: "1500", });
						}






					}
				});

			}
		});

});

function ocultarColumna(columnIndex) {
    var table = document.getElementById('tabEstado');
    var rows = table.getElementsByTagName('tr');
  
    for (var i = 0; i < rows.length; i++) {
      var cells = rows[i].getElementsByTagName('td');
      if (cells.length > columnIndex) {
        cells[columnIndex].style.display = 'none';
      }
    }
  }

function listPagares() {
    
    procedure = "lis_pagares_anular";
    param=""
    $.fn.dataTable.ext.errMode = 'throw';
    tablaEstado = $('#tabEstado').DataTable({
        "paging": true,
        "ordering": true,
        "info": false,
        "bFilter": true,
        "ajax": {
            "url": "controller/listarProcedure.php",
            "method": 'POST', //usamos el metodo POST
            "data": { param: param, procedure: procedure }, //enviamos opcion 4 para que haga un SELECT
            "dataSrc": ""
        },
        "columns": [
            { "defaultContent": "<div class='text-center'><div class='btn-group'><button data-dismiss='modal' class='btn btn-danger btn-sm btnBorrar'><i class='fas fa-ban'></i> Eliminar</button></div></div>" },
            { "data": "idcli" },
            { "data": "numpgr" },
            { "data": "feccuo" },
            { "data": "ruccli" },
            { "data": "razcli" },
            { "data": "moncre", render: $.fn.dataTable.render.number('.', ',', 0) }
          
          
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
                filename: 'ListaApertura',
                title: 'Listado de aperturas de caja'
            },
            {
                extend: 'pdfHtml5',
                text: '<i class="fas fa-file-pdf"></i> ',
                titleAttr: 'Exportar a PDF',
                className: 'btn btn-danger',
                filename: 'ListaApertura',
                title: 'Listado de aperturas de caja'
            },
            {
                extend: 'print',
                text: '<i class="fa fa-print"></i> ',
                titleAttr: 'Imprimir',
                className: 'btn btn-info',
                filename: 'ListaApertura',
                title: 'Listado de aperturas de caja'
            },

        ]


    });


}


