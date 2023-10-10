<form id="frmAddApertura" method="POST" action=""> 
<body onload="enviarPost();" class="">
  <div class="align-content-center">
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-md-3">
            <div class="card card-success">
              <div class="card-header">
              <h3 class="card-title">Registro de Apertura de Caja</h3>
              </div>
              <form id="quickForm">
                <div class="card-body"> 
                    <input type="text" name="txtidapc" id="txtidapc" class="form-control" value="0" placeholder="ID"  hidden>
                    <input type="text" name="txtOPE" id="txtOPE" class="form-control" placeholder="OPE" value="GUA" hidden >
                 
                <div class="col-lg-12">
									<label class="col-form-label"></i> Monto inicial: </label>
									<input type="number" name="txtMonIni" id="txtMonIni" min="0" class="form-control" required>
								</div>
                <div class="col-lg-12">
									<label class="col-form-label"></i> Monto apertura: </label>
									<input type="number" name="txtMonApc" id="txtMonApc" min="0" class="form-control" required>
								</div>
                </div>
                <div class="card-footer">
                <button type="submit" id="btnGuardar" class="btn btn-outline-success"><i class="fas fa-save"></i> Guardar</button> 
                 <button onclick='location.href="/cattle/dashboard"' class="btn btn-outline-danger"><i class="fas fa-times-circle"></i> Cerrar</button>
                </div>
              </form>
            </div>
          </div>
          <div class="col-md-9">
            <div class="card card-success">
              <div class="card-header">
                <h3 class="card-title">Listado de Aperturas</h3>
              </div>
              <div class="card-body">
              <div class="table-responsive">        
                  <table id="tabApertura" name="tabApertura" class="table table-bordered table-striped">
                      <thead>
                          <th>Id</th>
                          <th>Fecha</th>
                          <th>Inicial</th>
                          <th>Apertura</th>
                          <th>Retiro</th>
                          <th>Usuario</th>
                          <th>Estado</th>
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
<script type="text/javascript" src="view/mantenimiento/formAddApertura.js"></script> 
  
</body>




</body>

