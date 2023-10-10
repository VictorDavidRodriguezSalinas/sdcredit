<body class="">
  <div class="align-content-center">
    <section class="content">

      <div class="col-md-12" id="listadoVentas">
        <div class="card card-success">
          <div class="card-header">
            <h3 class="card-title">Listado de Ventas</h3>

          </div>
          <div class="col-lg-6">
            <div class="box-header with-border">
              <h1 class="box-title"><button class="btn btn-outline-success" id="btnagregar" onclick="mostrarform(true)"><i class="fa fa-plus-circle"></i> Agregar</button> <a href="../reportes/rptarticulos.php" target="_blank"><button class="btn btn-info" hidden><i class="fa fa-clipboard"></i> Reporte</button></a></h1>
              <div class="box-tools pull-right">
              </div>
            </div>
            

          </div>
          <div class="card-body">
            <div class="table-responsive">
              <table id="tabVentas" name="tabVentas" class="table table-bordered table-striped">
                <thead>
                  <th>Id</th>
                  <th>Fecha</th>
                  <th>Número</th>
                  <th>Ruc</th>
                  <th>Nombre</th>
                  <th>Apellido</th>
                  <th>Importe</th>
                  <th>Iva 5%</th>
                  <th>Saldo</th>
                  <th>Estado</th>
                  <th></th>
                </thead>
                <tbody>

                </tbody>
              </table>
            </div>
          </div>
        </div>
      </div>




      <div class="container-fluid">
        <div class="row">
          <div class="col-md-9" id="formularioregistros">
            <div class="card card-success">
              <div class="card-header">
                <h3 class="card-title">Registro de ventas de animales</h3>
              </div>
              <div class="card-body">
                <form id="frmAddVentas" method="POST">
                  <div class="row">
                    <div class="col-lg-2">
                      <label class="col-form-label"></i> Nº Venta (*): </label>
                      <input type="number" id="txtNumVen" name="txtNumVen" min="1" class="form-control" required></input>
                    </div>
                    <div class="col-lg-2">
                      <label class="col-form-label"></i> Fecha (*): </label>
                      <input type="date" id="txtFecVen" name="txtFecVen" class="form-control" required></input>
                    </div>

                    <div class="col-lg-3">
                      <label class="col-form-label"></i>Ruc (*): </label>
                      <div class="input-group-prepend">
                        <input id="txtIdCli" name="txtIdCli" class="form-control" required hidden></input>
                        <input id="txtRucCli" name="txtRucCli" class="form-control" required readonly></input>
                        <!-- Button trigger modal -->
                        <button type="button" class="btn btn-outline-info" data-toggle="modal" data-target="#modal-clientes"><i class="fas fa-search"></i></button>
                      </div>
                    </div>

                    <div class="col-lg-5">
                      <label class="col-form-label"></i> Razón Social (*): </label>
                      <input type="text" id="txtRazCli" name="txtRazCli" class="form-control" required readonly></input>
                    </div>



                    <div class="col-lg-12">
                      <label class="col-form-label"></i> </label>

                    </div>
                    <div class="col-lg-12">
                      <div class="card card-info card-outline">

                        <div class="card-body">

                          <div class="row">
                            <input type="text" name="txtidani" id="txtidani" class="form-control" placeholder="ID" required hidden>
                            <input type="text" name="txtOPE" id="txtOPE" class="form-control" placeholder="OPE" value="GUA" hidden>

                            <div class="col-lg-4">
                              <label class="col-form-label"></i>Caravana: </label>
                              <div class="input-group-prepend">
                                <input id="txtCarAni" name="txtCarAni" class="form-control" required readonly></input>
                                <!-- Button trigger modal -->
                                <button type="button" class="btn btn-outline-info" data-toggle="modal" data-target="#modal-Animales"><i class="fas fa-search"></i></button>
                              </div>
                            </div>


                            <div class="col-lg-4">
                              <label class="col-form-label"></i> Precio: </label>
                              <div class="input-group-prepend">
                                <input type="number" id="txtPreVen" name="txtPreVen" min="0" class="form-control" required></input>
                                <button type="button" onclick="agregarDetalle();" class="btn btn-outline-success"><i class="fas fa-plus">Agregar</i></button>
                              </div>
                            </div>

                            <div class="col-lg-12">
                              <p class=""></p>
                            </div>

                            <div class="col-lg-12">
                              <div class="table-responsive">
                                <table id="detalles" name="detalles" class="table table-bordered table-striped">
                                  <thead>

                                    <th hidden>Id</th>
                                    <th>Caravana</th>
                                    <th>Cantidad</th>
                                    <th>Precio</th>
                                   
                                    <th>Opciones</th>
                                  </thead>

                                  <tbody>

                                  </tbody>
                                  


                                </table>
                              </div>
                            </div>
                           
                            <div class="col-lg-4">
                              
                            </div>
                            <div class="col-lg-4">
                                <div class="input-group mb-3">
                                  <div class="input-group-prepend">
                                    <span class="input-group-text"> <i class="fas fa-calculator"></i>*Total Venta: </span>
                                  </div>
                                  <input type="text" name="total_venta" id="total_venta" class="form-control" readonly required>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                  <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                      <span class="input-group-text"><i class="fas fa-calculator"></i>*IVA 5%: </span>
                                    </div>
                                    <input type="text" name="total_iva" id="total_iva" class="form-control" readonly required>
                                  </div>
                              </div>
                           
                             

                          </div>
                        </div>
                      </div>
                    </div>


                  </div>
                </form>
                <div class="col-lg-6">
                  <div class="card-body">
                    <button id="cmdGuardar" class="btn btn-outline-success"><i class="fas fa-save"></i> Guardar</button>
                    <button type="button" onclick="cancelarform()" class="btn btn-outline-danger"><i class="fas fa-times-circle"></i> Cerrar</button>
                  </div>
                </div>
              </div>
            </div>
          </div>

          <!-- Modal -->
          <div class="modal fade" id="modal-clientes">
            <div class="modal-dialog modal-lg">
              <div class="modal-content">
                <div class="modal-header">
                  <h4 class="modal-title">Busqueda de Clientes</h4>
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                  </button>
                </div>
                <div class="modal-body">
                  <div class="table-responsive">
                    <table id="tabClientes" name="tabClientes" class="table table-bordered table-striped">
                      <thead>
                        <th>Id</th>
                        <th>Ruc</th>
                        <th>Nombre</th>
                        <th>Apellido</th>
                        <th>Cel / Telef</th>
                        <th></th>
                      </thead>
                      <tbody>
                      </tbody>
                    </table>
                  </div>
                </div>

              </div>
              <!-- /.modal-content -->
            </div>
            <!-- /.modal-dialog -->
          </div>

          <div class="modal fade" id="modal-detalles">
            <div class="modal-dialog modal-lg">
              <div class="modal-content">
                <div class="modal-header">
                  <h4 class="modal-title">Detalle de Venta</h4>
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                  </button>
                </div>
                <div class="modal-body">
                  <div class="table-responsive">
                    <table id="tabDetalleVentas" name="tabDetalleVentas" class="table table-bordered table-striped">
                      <thead>
                      <th>Fecha</th>
                      <th>Número</th>
                        <th>Caravana</th>
                        <th>Categoría</th>
                        <th>Cantidad</th>
                        <th>Precio</th>
                      </thead>
                      <tbody>
                      </tbody>
                    </table>
                  </div>
                </div>

              </div>
              <!-- /.modal-content -->
            </div>
            <!-- /.modal-dialog -->
          </div>


          <div class="modal fade" id="modal-Animales">
            <div class="modal-dialog modal-lg">
              <div class="modal-content">
                <div class="modal-header">
                  <h4 class="modal-title">Busqueda de Ganados</h4>
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                  </button>
                </div>
                <div class="modal-body">
                  <div class="table-responsive">
                    <table id="tabAnimales" name="tabAnimales" class="table table-bordered table-striped">
                      <thead>
                        <th>Id</th>
                        <th>Caravana</th>
                        <th>Hbp</th>
                        <th>Nombre</th>
                        <th >Precio</th>
                        <th></th>
                      </thead>
                      <tbody>
                      </tbody>
                    </table>
                  </div>
                </div>

              </div>
              <!-- /.modal-content -->
            </div>
            <!-- /.modal-dialog -->
          </div>

          <!-- Modal -->

          <div class="col-md-6" id="formulariopago">
            <div class="card card-success">
              <div class="card-header">
                <h3 class="card-title">Registrar Pago</h3>
              </div>
              <div class="card-body">
                <form id="frmAddPago" method="POST">
                
                  <div class="row">
                  
                  <input type="text" id="txtOPEPAG" name="txtOPEPAG" min="1" value="GUA" class="form-control" hidden></input>
                  <input type="text" id="txtidpag" name="txtidpag" min="1" class="form-control" placeholder="txtidpag" hidden></input>
                  <input type="text" id="txtIdVenPag" name="txtIdVenPag" min="1" class="form-control" placeholder="txtIdVenPag" hidden></input>

                    <div class="col-lg-3">
                     <label class="col-form-label"></i> Nº Venta (*): </label>
                    <input type="number" id="txtNumVenPag" name="txtNumVenPag" min="1" class="form-control" ></input>
                     
      
                    </div>
                    <div class="col-lg-4">
                      <label class="col-form-label"></i> Monto a pagar (*): </label>
                      <input type="text" id="txtTotVenPag" name="txtTotVenPag" class="form-control" ></input>
                    </div>
                    <div class="col-lg-5"></div>
                  
                    <div class="col-lg-3">
                      <label class="col-form-label"></i> Fecha de pago(*): </label>
                      <input type="date" id="txtFecPag" name="txtFecPag" class="form-control" required></input>
                    </div>

                    <div class="col-lg-3">
                      <label class="col-form-label"></i> Monto (*): </label>
                      <input type="number" id="txtMonPag" name="txtMonPag" class="form-control" required></input>
                    </div>



                  </div>
                </form>
                <div class="col-lg-6">
                  <div class="card-body">
                    <button id="cmdGuardarPago" class="btn btn-outline-success"><i class="fas fa-save"></i> Guardar</button>
                    <button type="button" onclick="cancelarform()" class="btn btn-outline-danger"><i class="fas fa-times-circle"></i> Cerrar</button>
                  </div>
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
  <script src="plugins/select2/js/select2.full.min.js"></script>
  <script src="assets/popper/popper.min.js"></script>
  <script src="assets/bootstrap/js/bootstrap.min.js"></script>
  <script type="text/javascript" src="assets/datatables/datatables.min.js"></script>
  <script>
    $(function() {

      $('.select2').select2();
      $('.select2bs4').select2({
        theme: 'bootstrap4'
      })

    });
  </script>
  <script type="text/javascript" src="view/Ventas/formAddVentas.js"></script>
</body>