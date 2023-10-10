let imageContainer = document.getElementById("vistaPreviaImg");
$(function(){

 
    listAnimales();
    cargarCategorias();
    cargarRazas();
    cargarLotes();
    cargarUbicacion();
    cargarTipoCaravana();
    cargarColores();
    mostrarform(false);
    
  $(document).on("change", "#file", function () {
     
  let fileInput = document.getElementById("file");
  let imageContainer = document.getElementById("vistaPreviaImg");
  let numOfFiles = document.getElementById("cantFotos");
  imageContainer.innerHTML = "";
  numOfFiles.textContent = `${fileInput.files.length} Archivos seleccionados`;
    for(i of fileInput.files){
        let reader = new FileReader();
        let figure = document.createElement("figure");
        let figCap = document.createElement("figcaption");
        figCap.innerText = "";
        figure.appendChild(figCap);
        reader.onload=()=>{
            let img = document.createElement("img");
            img.style.width="100px";
            img.setAttribute("src",reader.result);
            figure.insertBefore(img,figCap); 
        }
        imageContainer.appendChild(figure);
        reader.readAsDataURL(i);
    }
  });



});
 


//Función mostrar formulario
function mostrarform(flag)
{
	if (flag)
	{

   
		$("#listadoAnimales").hide();
	  $("#formularioregistros").show();
   
 
   
	}
	else
	{
   
		$("#listadoAnimales").show();
		$("#formularioregistros").hide();
		$("#btnagregar").show();
   
	}
}

//Función cancelarform
function cancelarform()
{
  document.getElementById('vistaPreviaImg').innerHTML = '';
  document.getElementById('cantFotos').textContent = '';
  $("#frmAddAnimal").trigger("reset");
	mostrarform(false);
}


  function listAnimales() {
          opcion = "animales";
          $.fn.dataTable.ext.errMode = 'throw';
          tablaAnimales = $('#tabAnimales').DataTable({  
          
            "paging":   true,
            "ordering": true,
            "info":     false,
            "bFilter": true,
              "ajax":{            
                  "url": "controller/listarCamposTabla.php", 
                  "method": 'POST', //usamos el metodo POST
                  "data":{tabla:opcion,campos:"idani,carani,hbpani,nomani,fecnac,IF(idest=1,'Activo','Vendido') as estani"}, //enviamos opcion 4 para que haga un SELECT
                  "dataSrc":""
              },
              "columns":[
                  {"data": "idani"},
                  {"data": "carani"},
                  {"data": "hbpani"},
                  {"data": "nomani"},
                  {"data": "fecnac"},
                  {"data": "estani"},
                  {"defaultContent": "<div class='text-center'><div class='btn-group'><button class='btn btn-warning btn-sm btnEditar'><i class='fas fa-user-edit'></i>Editar</button><button class='btn btn-danger btn-sm btnBorrar'><i class='fa fa-user-minus'></i>Eliminar</button></div></div>"}
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
                  filename: 'ListaAnimales',
                  title: 'Listado de animales'
              },
              {
                  extend:    'pdfHtml5',
                  text:      '<i class="fas fa-file-pdf"></i>',
                  titleAttr: 'Exportar a PDF',
                  className: 'btn btn-danger',
                  filename: 'ListaAnimales',
                  title: 'Listado de animales'
              },
              {
                extend:    'print',
                text:      '<i class="fa fa-print"></i> ',
                titleAttr: 'Imprimir',
                className: 'btn btn-info',
                filename: 'ListaAnimales',
                title: 'Listado de animales'
              },
              
          ]
          });  

         
        
      }

function cargarCategorias() {
    $.ajax({
        url: 'controller/listarTabla.php',
        type: 'POST',
        data: {opcion:'categorias'},
        success: function(res){
          var js= JSON.parse(res);
            for (var i = 0; i < js.length; i++) {
              $("#txtIdCat").append('<option value="'+js[i].idcat+'">'+js[i].nomcat+'</option>');
            }
          
        }
      });
    
}

function cargarRazas() {
    $.ajax({
        url: 'controller/listarTabla.php',
        type: 'POST',
        data: {opcion:'razas'},
        success: function(res){
          var js= JSON.parse(res);
            for (var i = 0; i < js.length; i++) {
              $("#txtIdRaz").append('<option value="'+js[i].idraz+'">'+js[i].nomraz+'</option>');
            }
          
        }
      });   
}
function cargarLotes() {
    $.ajax({
        url: 'controller/listarTabla.php',
        type: 'POST',
        data: {opcion:'lotes'},
        success: function(res){
          var js= JSON.parse(res);
            for (var i = 0; i < js.length; i++) {
              $("#txtIdLot").append('<option value="'+js[i].idlot+'">'+js[i].nomlot+'</option>');
            }
          
        }
      }); 
}
function cargarUbicacion() {
    $.ajax({
        url: 'controller/listarTabla.php',
        type: 'POST',
        data: {opcion:'ubicacion'},
        success: function(res){
          var js= JSON.parse(res);
            for (var i = 0; i < js.length; i++) {
              $("#txtIdUbi").append('<option value="'+js[i].idubi+'">'+js[i].nomubi+'</option>');
            }
          
        }
      }); 
}

function cargarTipoCaravana() {
    $.ajax({
        url: 'controller/listarTabla.php',
        type: 'POST',
        data: {opcion:'tipocaravana'},
        success: function(res){
          var js= JSON.parse(res);
            for (var i = 0; i < js.length; i++) {
              $("#txtIdTip").append('<option value="'+js[i].idtip+'">'+js[i].nomtip+'</option>');
            }
          
        }
      }); 
}

function cargarColores() {
    $.ajax({
        url: 'controller/listarTabla.php',
        type: 'POST',
        data: {opcion:'colores'},
        success: function(res){
          var js= JSON.parse(res);
            for (var i = 0; i < js.length; i++) {
              alert(js.length);
              $("#txtIdCol").append('<option value="'+js[i].idcol+'">'+js[i].nomcol+'</option>');
            }
          
        }
      }); 
}


 //Función para guardar o actualizar

 $('#frmAddAnimal').submit(function(e){  
  e.preventDefault(); 
  var formDatos = new FormData($("#frmAddAnimal")[0]);
  ope= document.getElementById("txtOPE").value;     
                       
  $.ajax({
      url: 'controller/manAnimal.php',
      type: 'POST',
      data: formDatos,
      contentType: false,
      processData: false,
      success: function(res){
          limpiarFotos(e);
          tablaAnimales.ajax.reload(null, false);
          $("#frmAddAnimal").trigger("reset");
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

 function limpiarFotos(e) {
  document.getElementById('vistaPreviaImg').innerHTML = '';
  document.getElementById('cantFotos').textContent = '';
  
}



function cargarColores() {
  $.ajax({
      url: 'controller/listarTabla.php',
      type: 'POST',
      data: {opcion:'colores'},
      success: function(res){
        var js= JSON.parse(res);
          for (var i = 0; i < js.length; i++) {
            
            $("#txtIdCol").append('<option value="'+js[i].idcol+'">'+js[i].nomcol+'</option>');
          }
        
      }
    }); 
}
  
    //Editar        
    $(document).on("click", ".btnEditar", function(e){		    
           
          fila = $(this).closest("tr");	        
          id = parseInt(fila.find('td:eq(0)').text()); //capturo el ID	
          var dir = "../images/animales/"+id+"/";
          $.ajax({
            url: 'controller/getImagen.php',
            type: 'POST',
            data: {ruta:dir},
            success: function(res){
              var js= JSON.parse(res);
              let imageContainer = document.getElementById("vistaPreviaImg");
                for (var i = 0; i < js.length; i++) {
                  if (js[i].nomFoto.length>3){
                      let figure = document.createElement("figure");
                      let figCap = document.createElement("figcaption");
                      figCap.innerText = "";
                      figure.appendChild(figCap);
                      ruta="images/animales/"+id+"/"+js[i].nomFoto;
                     
                      let img = document.createElement("img");
                      img.style.width="100px";
                      img.setAttribute("src",ruta);
                      figure.insertBefore(img,figCap); 
                      imageContainer.appendChild(figure);
                  
                  }
                }
            }
          });
          e.preventDefault();  
          nomtab="animales";
          nomid="idani";	            
          $.ajax({
        url: 'controller/listarTablaId.php',
        type: 'POST',
        data: {nomtab:nomtab,nomid:nomid,id:id},
        success: function(res){
          var js= JSON.parse(res);
          var tabla;
            for (var i = 0; i < js.length; i++) {
              $("#txtOPE").val("EDI");
              $("#txtidani").val(js[i].idani);
              $("#txtCarAni").val(js[i].carani);
              $("#txtHbpAni").val(js[i].hbpani);
              $("#txtNomAni").val(js[i].nomani);
              $("#txtFecNac").val(js[i].fecnac);
              $("#txtCirAni").val(js[i].cirani);
              $("#txtPrecom").val(js[i].precom);
              $("#txtPreVen").val(js[i].preven);
              $("#txtObsAni").val(js[i].obsani);
              $("#txtSexAni").val(js[i].sexani);
              $("#txtIdCat").val(js[i].idcat);
              $("#txtIdRaz").val(js[i].idraz);
              $("#txtIdLot").val(js[i].idlot);
              $("#txtIdUbi").val(js[i].idubi);
              $("#txtIdTip").val(js[i].idtip);
              $("#txtIdCol").val(js[i].idcol);
              $("#txtIdEst").val(js[i].idest);
            }
            mostrarform(true);
        }
      });
    });
  
    $(document).on("click", ".btnBorrar", function(e){
          e.preventDefault();    
          fila = $(this).closest("tr");	        
          idani = parseInt(fila.find('td:eq(0)').text()); //capturo el ID		
          opera="ELI";
          $.ajax({
        url: 'controller/manAnimal.php',
        type: 'POST',
        data: {txtidani:idani,txtOPE:opera},
        success: function(res){
          tablaAnimales.ajax.reload(null, false);
          swal({title: "Eliminado",text: "exitosamente!!!",icon: "warning",timer: "1500",}); 
          
        }
      });
    });

  
  