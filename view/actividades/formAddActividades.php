<body class="">
  <div class="align-content-center">
    <section class="content">

      <div class="col-md-12" id="listadoActividades">
        <div class="card card-success">
          <div class="card-header">
            <h3 class="card-title">Listado de Actividades</h3>

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
              <table id="tabActividades" name="tabActividades" class="table table-bordered table-striped">
                <thead>
                  <th>Id</th>
                  <th>Nº Planilla</th>
                  <th>Fecha</th>
                  <th>Nº caravana</th>
                  <th>Categoría</th>
                  <th>Actividad</th>
                  <th>Tipo de actividad</th>
                  <th>Pesaje Kg</th>
                  <th>Tipo de sanitación</th>
                  <th>Dosis</th>
                  <th>Precio Unit.</th>
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
          <div class="col-md-12" id="formularioregistros">
            <div class="card card-success">
              <div class="card-header">
                <h3 class="card-title">Registro de actividades de campo</h3>
              </div>
              <div class="card-body">
                <form id="frmAddActividades" method="POST">
                  <div class="row">
                    <div class="col-lg-2">
                      <label class="col-form-label"></i> Nº Planilla (*): </label>
                      <input type="number" id="txtCodActv" name="txtCodActv" min="1" class="form-control" required></input>
                    </div>
                    <div class="col-lg-2">
                      <label class="col-form-label"></i> Fecha (*): </label>
                      <input type="date" id="txtFecActv" name="txtFecActv" class="form-control" required></input>
                    </div>



                    <div class="col-lg-12">
                      <label class="col-form-label"></i> </label>

                    </div>
                    <div class="col-lg-12">
                      <div class="card card-info card-outline">

                        <div class="card-body">

                          <div class="row">

                            <div class="col-lg-2">
                              <input type="text" name="txtidani" id="txtidani" class="form-control" placeholder="ID" required hidden>
                              <input type="text" name="txtidactv" id="txtidactv" class="form-control" placeholder="ID" required hidden>
                              <input type="text" name="txtOPE" id="txtOPE" class="form-control" placeholder="OPE" value="GUA" hidden>
                              <label class="col-form-label"></i> Actividad: </label>
                              <select id="txtIdAct" name="txtIdAct" class="form-control" style="width: 100%;">
                              </select>
                            </div>

                            <div class="col-lg-2">
                              <label class="col-form-label"></i> Tipo Actividad: </label>
                              <select id="txtIdTia" name="txtIdTia" class="form-control" style="width: 100%;">
                              </select>
                            </div>

                            <div class="col-lg-1">
                              <label class="col-form-label"></i>Caravana: </label>
                              <div class="input-group-prepend">
                                <input id="txtCarAni" name="txtCarAni" class="form-control" required readonly></input>
                                <!-- Button trigger modal -->
                                <button type="button" class="btn btn-outline-info" data-toggle="modal" data-target="#modal-Animales"><i class="fas fa-search"></i></button>
                              </div>
                            </div>
                            <div class="col-lg-1">
                              <label class="col-form-label"></i> Pesaje: </label>
                              <input type="number" id="txtPesActv" name="txtPesActv" min="0" class="form-control" required></input>

                            </div>

                            <div class="col-lg-3">
                            <label class="col-form-label"></i> Tipo de sanitación / Descripción: </label>
                            <div class="input-group-prepend">
                             
                              <select id="txtIdTimed" name="txtIdTimed" class="form-control" style="width: 100%;">
                              <input type="text" id="txtObsActv" name="txtObsActv" maxlength="250" class="form-control"></input>
                              </select>
                            </div>

                            </div>

                     

                            <div class="col-lg-1">
                              <label class="col-form-label"></i> Dosis ml: </label>
                              <input type="number" id="txtCanMedi" name="txtCanMedi" min="0" class="form-control" required></input>

                            </div>
                            <div class="col-lg-2">
                             
                            

                              <label class="col-form-label"></i> Precio: </label>
                              <div class="input-group-prepend">
                              <input type="number" id="txtPreMedi" name="txtPreMedi" min="0" class="form-control" required></input>
                                <button type="button" onclick="agregarDetalle();" class="btn btn-outline-info"><i class="fas fa-plus"></i></button>
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
                                    <th hidden>IdMed</th>
                                    <th>Caravana</th>
                                    <th hidden>IdTipoActividad</th>
                                    <th>Actividad </th>
                                    <th>Tipo Actividad</th>
                                    <th>Pesaje Kg</th>
                                    <th>Tipo Medicación</th>
                                    <th>Dosis</th>
                                    <th>Precio</th>
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
                        <th class="date">Fecha Nacimiento</th>
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


          <!-- Modal Editar Individual -->
          <div class="modal fade" id="modalEditarActividad">
            <div class="modal-dialog modal-lg">
              <div class="modal-content">
                <div class="modal-header">
                  <h4 class="modal-title">Editar actividad</h4>
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                  </button>
                </div>
                <div class="modal-body">

                </div>

              </div>
              <!-- /.modal-content -->
            </div>
            <!-- /.modal-dialog -->
          </div>
          <!-- Modal -->
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
  <script type="text/javascript" src="view/actividades/formAddActividades.js"></script>
</body>