<form id="frmAddRaza" method="POST" action=""> 
<body onload="enviarPost();" class="">
  <div class="align-content-center">
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-md-6">
            <div class="card card-success">
              <div class="card-header">
              <h3 class="card-title">Registro de Razas de Ganados</h3>
              </div>
              <form id="quickForm">
                <div class="card-body">
                  <div class="input-group mb-3">
                    <div class="input-group-prepend">
                      <span class="input-group-text"><i class="fas fa-clipboard-list"></i></span>
                    </div>
                    <input type="text" name="txtidraz" id="txtidraz" class="form-control" value="0" placeholder="ID" hidden >
                    <input type="text" name="txtOPE" id="txtOPE" class="form-control" placeholder="OPE" value="GUA" hidden >
                    <input type="text" name="txtNomRaz" id="txtNomRaz" class="form-control" placeholder="Nombre de Raza" required>
                  </div> 
                </div>
                <div class="card-footer">
                <button type="submit" id="btnGuardar" class="btn btn-outline-success"><i class="fas fa-save"></i> Guardar</button> 
                 <button onclick='location.href="/cattle/dashboard"' class="btn btn-outline-danger"><i class="fas fa-times-circle"></i> Cerrar</button>
                </div>
              </form>
            </div>
          </div>
          <div class="col-md-6">
            <div class="card card-success">
              <div class="card-header">
                <h3 class="card-title">Listado de Razas</h3>
              </div>
              <div class="card-body">
              <div class="table-responsive">        
                  <table id="tabRazas" name="tabRazas" class="table table-bordered table-striped">
                      <thead>
                          <th>Id</th>
                          <th>Nombre de Raza</th>
                          <th>Opciones</th>
                      </thead>
                      <tbody>                           
                        </tbody>  
                    </table>  
              </div>
              </div>
            </div>
        </div>

        </div>  
     
      </div>
      </div>
    </section>
  </div>
<script src="assets/jquery/jquery-3.3.1.min.js"></script>
<script src="assets/popper/popper.min.js"></script>
<script src="assets/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="assets/datatables/datatables.min.js"></script>   
<script type="text/javascript" src="view/mantenimiento/formAddRaza.js"></script> 
  
</body>




</body>

