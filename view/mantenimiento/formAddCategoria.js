
$(function(){
    listCategorias();
  });
  function listCategorias() {
          opcion = "categorias";
          $.fn.dataTable.ext.errMode = 'throw';
          tablaCategorias = $('#tabCategorias').DataTable({  
            "paging":   false,
            "ordering": true,
            "info":     false,
            "bFilter": false,
              "ajax":{            
                  "url": "controller/listarTabla.php", 
                  "method": 'POST', //usamos el metodo POST
                  "data":{opcion:opcion}, //enviamos opcion 4 para que haga un SELECT
                  "dataSrc":""
              },
              "columns":[
                  {"data": "idcat"},
                  {"data": "nomcat"},
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
  
  $('#frmAddCategoria').submit(function(e){  
    ope= document.getElementById("txtOPE").value;     
    e.preventDefault();                      
    $.ajax({
        url: 'controller/manCategorias.php',
        type: 'POST',
        data: $('#frmAddCategoria').serialize(),
        success: function(res){
          
          tablaCategorias.ajax.reload(null, false);
            $("#frmAddCategoria").trigger("reset");
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
          nomtab="categorias";
          nomid="idcat";	            
          $.ajax({
        url: 'controller/listarTablaId.php',
        type: 'POST',
        data: {nomtab:nomtab,nomid:nomid,id:id},
        success: function(res){
          var js= JSON.parse(res);
          var tabla;
            for (var i = 0; i < js.length; i++) {
              $("#txtOPE").val("EDI");
              $("#txtidcat").val(js[i].idcat);
              $("#txtNomCat").val(js[i].nomcat);
             
            }
          
        }
      });
    });
  
    $(document).on("click", ".btnBorrar", function(e){
          e.preventDefault();    
          fila = $(this).closest("tr");	        
          idcat = parseInt(fila.find('td:eq(0)').text()); //capturo el ID		
          opera="ELI";
          $.ajax({
        url: 'controller/manCategorias.php',
        type: 'POST',
        data: {txtidcat:idcat,txtOPE:opera},
        success: function(res){
          tablaCategorias.ajax.reload(null, false);
          swal({title: "Eliminado",text: "exitosamente!!!",icon: "warning",timer: "1500",}); 
          
        }
      });
    });
  