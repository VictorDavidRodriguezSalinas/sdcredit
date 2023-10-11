<body class="">
    <div class="align-content-center">
        <section class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-9" id="formularioregistros">
                        <div class="card card-success">
                            <div class="card-header">
                                <h3 class="card-title">Registro de Crédito</h3>
                            </div>
                            <div class="card-body">
                                <form id="frmAddCuotas" method="POST">
                                    <div class="row">
                                        <div class="col-lg-2">
                                            <label class="col-form-label"></i> Nº Pagaré (*): </label>
                                            <input type="number" id="txtnumpgr" name="txtnumpgr" min="1" class="form-control" required></input>
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
                                                        <input type="text" name="txtOPE" id="txtOPE" class="form-control" placeholder="OPE" value="GUA" hidden>

                                                        <div class="col-lg-2">
                                                            <label class="col-form-label"></i>Monto del Crédito: </label>
                                                            <div class="input-group-prepend">
                                                                <input type="number" id="txtmoncre" name="txtmoncre" min="100000" class="form-control" required></input>
                                                            </div>
                                                        </div>


                                                        <div class="col-lg-2">
                                                            <label class="col-form-label"></i>Cuotas: </label>
                                                            <div class="input-group-prepend">
                                                                <input type="number" id="txtcancuo" name="txtcancuo" min="1" value="1" class="form-control"></input>
                                                            </div>
                                                        </div>

                                                        <div class="col-lg-2">
                                                            <label class="col-form-label"></i>Fecha Crédito: </label>
                                                            <div class="input-group-prepend">
                                                                <input type="date" id="txtfeccuo" name="txtfeccuo" value="<?php echo date('Y-m-d'); ?>" class="form-control" required></input>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-2">
                                                            <label class="col-form-label"></i> Tipo Vencimiento (*): </label>
                                                            <select id="txttipven" name="txttipven" class="form-control " style="width: 100%;">
                                                                <option value="DIA">Diario</option>
                                                                <option value="SEM">Semanal</option>
                                                                <option value="MES">Mensual</option>
                                                            </select>
                                                        </div>

                                                        <div class="col-lg-2">
                                                            <label class="col-form-label"></i> Tipo Interés (*): </label>
                                                            <select id="txttipint" name="txttipint" class="form-control " style="width: 100%;">
                                                                <option value="FIJ">Monto Fijo Gs.</option>
                                                                <option value="POR">Porcentaje %</option>

                                                            </select>
                                                        </div>

                                                        <div class="col-lg-2">
                                                            <label class="col-form-label"></i> Gs. interés por atraso: </label>
                                                            <div class="input-group-prepend">
                                                                <input type="number" id="txtmonint" name="txtmonint" min="0" value="0" inputmode="numeric" class="form-control" required></input>
                                                            </div>
                                                        </div>

                                                        <div class="col-lg-2">
                                                            <label class="col-form-label"></i> % de interés por atraso: </label>
                                                            <div class="input-group-prepend">
                                                                <input type="number" id="txtporint" name="txtporint" min="0" value="0" inputmode="numeric" class="form-control" required></input>
                                                            </div>
                                                        </div>

                                                        <div class="col-lg-3">
                                                            <label class="col-form-label"></i> Monto Cuota: </label>
                                                            <div class="input-group-prepend">
                                                                <input type="number" id="txtmoncuo" name="txtmoncuo" min="0" inputmode="numeric" class="form-control" required></input>
                                                                <button type="button" onclick="agregarDetalle(3);" class="btn btn-outline-success"><i class="fas fa-plus">Generar</i></button>
                                                            </div>
                                                        </div>

                                                        <div class="col-lg-12">
                                                            <p class=""></p>
                                                        </div>

                                                        <div class="col-md-12">
                                                            <!-- <div class="card card-warning card-outline">
                                                                <div class="card-header">
                                                                    <h3 class="card-title">Cuotas</h3>
                                                                </div>
                                                                <div class="card-body"> -->
                                                                    <div class="table-responsive">
                                                                        <table id="tabCuotas" name="tabCuotas" class="table table-bordered table-striped">
                                                                            <thead>
                                                                                <th>Nº</th>
                                                                                <th>Vence</th>
                                                                                <th>Monto</th>
                                                                                
                                                                            </thead>
                                                                            <tbody>
                                                                            </tbody>
                                                                        </table>
                                                                    </div>
                                                                <!-- </div>
                                                            </div> -->
                                                        </div>


                                                        <div class="col-lg-4">

                                                        </div>
                                                        <div class="col-lg-4">
                                                            <div class="input-group mb-3">
                                                                <div class="input-group-prepend">
                                                                    <span class="input-group-text"> <i class="fas fa-calculator"></i>*Total Pagaré: </span>
                                                                </div>
                                                                <input type="text" name="txttotpgr" id="txttotpgr" class="form-control" readonly required>
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
                                        <button type="button" onclick='location.href="/sdcredit/dashboard"' class="btn btn-outline-danger"><i class="fas fa-times-circle"></i> Cerrar</button>
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
    <script type="text/javascript" src="view/mantenimiento/formAddCuotas.js"></script>
</body>