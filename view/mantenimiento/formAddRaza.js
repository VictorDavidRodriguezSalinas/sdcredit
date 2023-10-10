
$(function(){
    listRazas();
  });
  function listRazas() {
          opcion = "razas";
          $.fn.dataTable.ext.errMode = 'throw';
          tablaRazas = $('#tabRazas').DataTable({  
            "paging":   true,
            "ordering": true,
            "info":     false,
            "bFilter": true,
              "ajax":{            
                  "url": "controller/listarTabla.php", 
                  "method": 'POST', //usamos el metodo POST
                  "data":{opcion:opcion}, //enviamos opcion 4 para que haga un SELECT
                  "dataSrc":""
              },
              "columns":[
                  {"data": "idraz"},
                  {"data": "nomraz"},
                  {"defaultContent": "<div class='text-center'><div class='btn-group'><button class='btn btn-warning btn-xs btnEditar'><i class='fa fa-user-edit'>Editar</i></button><button class='btn btn-danger btn-xs btnBorrar'><i class='fa fa-user-minus'>Eliminar</i></button></div></div>"}
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
  
  $('#frmAddRaza').submit(function(e){  
    ope= document.getElementById("txtOPE").value;     
    e.preventDefault();                      
    $.ajax({
        url: 'controller/manRazas.php',
        type: 'POST',
        data: $('#frmAddRaza').serialize(),
        success: function(res){
          
          tablaRazas.ajax.reload(null, false);
            $("#frmAddRaza").trigger("reset");
          if (ope==='GUA') {
            swal({title: "Registrado",text: "exitosamente!!!",icon: "success",timer: "1250",}); 
          }
          else
          {
            swal({title: "Actualizado",text: "exitosamente!!!",icon: "success",timer: "1250",});  
          }
        }
      });
  });
  
    //Editar        
    $(document).on("click", ".btnEditar", function(e){		    
          e.preventDefault();    
          fila = $(this).closest("tr");	        
          id = parseInt(fila.find('td:eq(0)').text()); //capturo el ID	
          nomtab="razas";
          nomid="idraz";	            
          $.ajax({
        url: 'controller/listarTablaId.php',
        type: 'POST',
        data: {nomtab:nomtab,nomid:nomid,id:id},
        success: function(res){
          var js= JSON.parse(res);
          var tabla;
            for (var i = 0; i < js.length; i++) {
              $("#txtOPE").val("EDI");
              $("#txtidraz").val(js[i].idraz);
              $("#txtNomRaz").val(js[i].nomraz);
             
            }
          
        }
      });
    });
  
    $(document).on("click", ".btnBorrar", function(e){
          e.preventDefault();    
          fila = $(this).closest("tr");	        
          idraz = parseInt(fila.find('td:eq(0)').text()); //capturo el ID		
          opera="ELI";
          $.ajax({
        url: 'controller/manRazas.php',
        type: 'POST',
        data: {txtidraz:idraz,txtOPE:opera},
        success: function(res){
          tablaRazas.ajax.reload(null, false);
          swal({title: "Eliminado",text: "exitosamente!!!",icon: "warning",timer: "1500",}); 
          
        }
      });
    });
  