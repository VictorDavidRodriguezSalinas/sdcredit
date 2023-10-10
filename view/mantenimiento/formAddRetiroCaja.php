<form id="frmAddRetiroCaja" method="POST" action=""> 
<body onload="enviarPost();" class="">
  <div class="align-content-center">
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-md-3">
            <div class="card card-success">
              <div class="card-header">
              <h3 class="card-title">Registrar retiro de dinero de caja</h3>
              </div>
              <form id="quickForm">
                <div class="card-body"> 
                    <input type="text" name="txtidret" id="txtidret" class="form-control" value="0" placeholder="ID"  hidden>
                    <input type="text" name="txtOPE" id="txtOPE" class="form-control" placeholder="OPE" value="GUA" hidden >

                <div class="col-lg-12">
									<label class="col-form-label"></i> Motivo: </label>
									<input type="text" name="txtMotRet" id="txtMotRet" min="1" class="form-control" required>
								</div>
                
                    <div class="col-lg-12">
									<label class="col-form-label"></i> Monto retiro: </label>
									<input type="number" name="txtMonRet" id="txtMonRet" min="1" class="form-control" required>
								</div>
                
                </div>
                <div class="card-footer">
                <button type="submit" id="btnGuardar" class="btn btn-outline-success"><i class="fas fa-save"></i> Guardar</button> 
                 <button onclick='location.href="/sdcredit/dashboard"' class="btn btn-outline-danger"><i class="fas fa-times-circle"></i> Cerrar</button>
                </div>
              </form>
            </div>
          </div>
          <div class="col-md-9">
            <div class="card card-success">
              <div class="card-header">
                <h3 class="card-title">Listado de retiros</h3>
              </div>
              <div class="card-body">
              <div class="table-responsive">        
                  <table id="tabRetiroCaja" name="tabRetiroCaja" class="table table-bordered table-striped">
                      <thead>
                          <th>Id</th>
                          <th>Fecha</th>
                          <th>Motivo</th>
                          <th>Monto</th>
                          <th>Estado Apertura</th>
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
<script type="text/javascript" src="view/mantenimiento/formAddRetiroCaja.js"></script> 
  
</body>




</body>

