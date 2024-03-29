<form id="frmAddCliente" method="POST" action="">

  <body onload="enviarPost();" class="">
    <div class="align-content-center">
      <section class="content">
        <div class="container-fluid">
          <div class="row">
            <div class="col-md-3">
              <div class="card card-success">
                <div class="card-header">
                  <h3 class="card-title">Registro de Clientes</h3>
                </div>
                <form id="quickForm">
                  <div class="card-body">
                    <input type="text" name="txtidcli" id="txtidcli" class="form-control" value="0" placeholder="ID" hidden>
                    <input type="text" name="txtOPE" id="txtOPE" class="form-control" placeholder="OPE" value="GUA" hidden>
                    <input type="text" name="txtidusu" id="txtidusu" class="form-control" value="<?php echo $_SESSION['idusu']; ?>" hidden >
                    <input type="text" name="txtnivusu" id="txtnivusu" class="form-control" value="<?php echo $_SESSION['nivusu']; ?>" hidden>
                                                              

                    <div class="col-lg-12">
                      <label class="col-form-label"></i> C.I.Nº / RUC (*): </label>
                      <input type="text" name="txtRucCli" id="txtRucCli" min="0" class="form-control" required>
                    </div>
                    <div class="col-lg-12">
                      <label class="col-form-label"></i> Nombre (*): </label>
                      <input type="text" name="txtNomCli" id="txtNomCli" class="form-control" required>
                    </div>

                    <div class="col-lg-12">
                      <label class="col-form-label"></i> Apellido (*): </label>
                      <input type="text" name="txtApeCli" id="txtApeCli" class="form-control" required>
                    </div>

                    <div class="col-lg-12">
                      <label class="col-form-label"></i> Telefono (*): </label>
                      <input type="text" name="txtTelCli" id="txtTelCli" class="form-control" required>
                    </div>

                    <div class="col-lg-12">
                      <label class="col-form-label"></i> Cobrador (*): </label>
                      <select id="dtcUSU" name="dtcUSU" class="form-control" style="width: 100%;">
                      </select>
                    </div>

                    <div class="col-lg-12">
                      <label class="col-form-label"></i> Ciudad (*): </label>
                      <input type="text" name="txtCiuCli" id="txtCiuCli" class="form-control" required>
                    </div>

                    <div class="col-lg-12">
                      <label class="col-form-label"></i> Dirección (*): </label>
                      <input type="text" name="txtDirCli" id="txtDirCli" class="form-control" required>
                    </div>

                    <div class="col-lg-12">
                      <label class="col-form-label"></i> Barrio (*): </label>
                      <input type="text" name="txtBarCli" id="txtBarCli" class="form-control" required>
                    </div>
                    <div class="col-lg-12">
                      <label class="col-form-label"></i> Referencia Personal 1 (*): </label>
                      <input type="text" name="txtRef1" id="txtRef1" class="form-control" required>
                    </div>
                    
                    <div class="col-lg-12">
                      <label class="col-form-label"></i> Referencia Personal 2 (*): </label>
                      <input type="text" name="txtRef2" id="txtRef2" class="form-control" required>
                    </div>
                    


                  </div>
                  <div class="card-footer">
                    <button type="submit" id="btnGuardar" class="btn btn-outline-success"><i class="fas fa-save"></i> Guardar</button>
                    <button onclick='Cerrar()' class="btn btn-outline-danger"><i class="fas fa-times-circle"></i> Cerrar</button>
                  </div>
                </form>
              </div>
            </div>
            <div class="col-md-9">
              <div class="card card-success">
                <div class="card-header">
                  <h3 class="card-title">Listado de Clientes</h3>
                </div>
                <div class="card-body">
                  <div class="table-responsive">
                    <table id="tabCliente" name="tabCliente" class="table table-bordered table-striped">
                      <thead>
                        <th>Id</th>
                        <th>Opciones</th>
                        <th>Ruc</th>
                        <th>Nombre</th>
                        <th>Apellido</th>
                        <th>Telefono</th>
                        
                      
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
    <script type="text/javascript" src="view/mantenimiento/formAddCliente.js?<?php echo  date('Y-m-d H:i:s'); ?>"></script>

  </body>




  </body>