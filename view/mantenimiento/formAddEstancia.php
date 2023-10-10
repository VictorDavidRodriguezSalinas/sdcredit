<form id="frmAddEstancia" method="POST" action=""> 
<body onload="enviarPost();" class="">
  <div class="align-content-center">
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-md-4">
            <div class="card card-success">
              <div class="card-header">
              <h3 class="card-title">Registro de Estancia</h3>
              </div>
              <form id="quickForm">
                <div class="card-body">
                  <div class="input-group mb-3">
                    <div class="input-group-prepend">
                    <span class="input-group-text"><i class="fas  fa-id-card"></i></span>
                    </div>
                    <input type="text" name="txtidest" id="txtidest" class="form-control" value="0" placeholder="ID" hidden > 
                    <input type="text" name="txtOPE" id="txtOPE" class="form-control" placeholder="OPE" value="GUA" hidden > 
                    <input type="text" name="txtRucEst" id="txtRucEst" class="form-control" placeholder="Ruc" required>
                  </div> 
                  <div class="input-group mb-3">
                    <div class="input-group-prepend">
                      <span class="input-group-text"><i class="fas fa-id-card"></i></span>
                    </div>
                    <input type="text" name="txtNomEst" id="txtNomEst" class="form-control" placeholder="Nombre de Estancia" required>
                  </div>

                  <div class="input-group mb-3">
                    <div class="input-group-prepend">
                      <span class="input-group-text"><i class="fas fa-map-marked-alt"></i></span>
                    </div>
                    <input type="text" name="txtDirEst" id="txtDirEst" class="form-control" placeholder="Dirección" required>
                  </div>

                  <div class="input-group mb-3">
                    <div class="input-group-prepend">
                      <span class="input-group-text"><i class="fas fa-blender-phone"></i></span>
                    </div>
                    <input type="text" name="txtCelEst" id="txtCelEst" class="form-control" placeholder="Celular" required>
                  </div>

                  <div class="input-group mb-3">
                    <div class="input-group-prepend">
                      <span class="input-group-text"><i class="fas fa-mail-bulk"></i></span>
                    </div>
                    <input type="text" name="txtMailEst" id="txtMailEst" class="form-control" placeholder="Email" required>
                  </div>





                </div>
                <div class="card-footer">
                <button type="submit" id="btnGuardar" class="btn btn-outline-success"><i class="fas fa-save"></i> Guardar</button> 
                 <button onclick='location.href="/cattle/dashboard"' class="btn btn-outline-danger"><i class="fas fa-times-circle"></i> Cerrar</button>
                </div>
              </form>
            </div>
          </div>
          <div class="col-md-8">
            <div class="card card-success">
              <div class="card-header">
                <h3 class="card-title">Listado de Estancias</h3>
              </div>
              <div class="card-body">
              <div class="table-responsive">        
                  <table id="tabEstancias" name="tabEstancias" class="table table-bordered table-striped">
                      <thead>
                          <th hidden>Id</th>
                          <th>Ruc</th>
                          <th>Nombre de Estancia</th>
                          <th>Dirección</th>
                          <th>Celular - Telef</th>
                          <th>Email</th>
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
<script type="text/javascript" src="view/mantenimiento/formAddEstancia.js"></script> 
  
</body>




</body>

