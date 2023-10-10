
$(function(){
    listUsers();
  });
  function listUsers() {
        opcion = 'usuario';
        $.fn.dataTable.ext.errMode = 'throw';
          tablaUsuarios = $('#tabUser').DataTable({  
            "paging":   true,
            "ordering": true,
            "info":     false,
              "ajax":{            
                  "url": "controller/listUsers.php", 
                  "method": 'POST', //usamos el metodo POST
                  "data":{opcion:opcion}, //enviamos opcion 4 para que haga un SELECT
                  "dataSrc":""
              },
              "columns":[
                  {"data": "idusu"},
                  {"data": "docusu"},
                  {"data": "nomusu"},
                  {"defaultContent": "<div class='text-center'><div class='btn-group'><button class='btn btn-warning btn-xs btnEditar'><i class='fa fa-user-edit'>Editar</i></button><button class='btn btn-danger btn-xs btnBorrar'><i class='fa fa-user-minus'>Eliminar</i></button></div></div>"}
              ],
                language: {
                  "lengthMenu": "Mostrar _MENU_ registros",
                  "zeroRecords": "No se encontraron resultados",
                  "info": "Mostrando registros del _START_ al _END_ de un total de _TOTAL_ registros",
                  "infoEmpty": "Mostrando registros del 0 al 0 de un total de 0 registros",
                  "infoFiltered": "(filtrado de un total de _MAX_ registros)",
                  "sSearch": "Buscar por C.I o Nombre:",
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
  
  $('#frmAddUser').submit(function(e){  
    ope= document.getElementById("txtOPE").value;     
    e.preventDefault();                      
    $.ajax({
        url: 'controller/manUser.php',
        type: 'POST',
        data: $('#frmAddUser').serialize(),
        success: function(res){
          
          tablaUsuarios.ajax.reload(null, false);
            $("#frmAddUser").trigger("reset");
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
          idusu = parseInt(fila.find('td:eq(0)').text()); //capturo el ID		            
          $.ajax({
        url: 'controller/listUserId.php',
        type: 'POST',
        data: {idUsu:idusu},
        success: function(res){
          var js= JSON.parse(res);
          var tabla;
            for (var i = 0; i < js.length; i++) {
              $("#txtOPE").val("EDI");
              $("#txtidusu").val(js[i].idusu);
              $("#txtDocUsu").val(js[i].docusu);
              $("#txtNomUsu").val(js[i].nomusu);
              $("#txtLogUsu").val(js[i].logusu);
              $("#txtClaUsu").val("");
            }
          
        }
      });
    });
  
    $(document).on("click", ".btnBorrar", function(e){
          e.preventDefault();    
          fila = $(this).closest("tr");	        
          idusu = parseInt(fila.find('td:eq(0)').text()); //capturo el ID		
          opera="ELI";
          
          $.ajax({
        url: 'controller/manUser.php',
        type: 'POST',
        data: {txtidusu:idusu,txtOPE:opera},
        success: function(res){
          tablaUsuarios.ajax.reload(null, false);
          swal({title: "Eliminado",text: "exitosamente!!!",icon: "warning",timer: "1500",}); 
          
        }
      });
    });
  