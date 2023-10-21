<body onload="enviarPost();">
    <div class="align-content-center">
        <section class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-9">
                        <div class="card card-success">
                            <div class="card-header">
                                <h3 class="card-title">Registro de Pago de Cuota</h3>
                            </div>
                            <div class="card-body">
                                <form id="frmAddPagoCuota" method="POST">
                                    <div class="row">




                                        <div class="col-lg-12">
                                            <label class="col-form-label"></i> </label>

                                        </div>
                                        <div class="col-lg-12">
                                            <div class="card card-info card-outline">
                                                <div class="card-body">
                                                    <div class="row">
                                                        <input type="text" name="txtOPEPAG" id="txtOPEPAG" class="form-control" placeholder="OPE" value="GUA" hidden>

                                                        <div class="col-lg-3">
                                                            <label class="col-form-label"></i>Fecha Pago: </label>
                                                            <div class="input-group-prepend">
                                                                <input type="date" id="txtfecpag" name="txtfecpag" value="<?php echo date('Y-m-d'); ?>" class="form-control" required></input>
                                                            </div>
                                                        </div>

                                                        <div class="col-lg-3">
                                                            <label class="col-form-label"></i>Ruc (*): </label>
                                                            <div class="input-group-prepend">
                                                                <input id="txtidcli" name="txtidcli" class="form-control" required hidden></input>
                                                                <input type="text" name="txtidusu" id="txtidusu" class="form-control" value="<?php echo $_SESSION['idusu']; ?>" hidden>
                                                                <input type="text" name="txtnivusu" id="txtnivusu" class="form-control" value="<?php echo $_SESSION['nivusu']; ?>" hidden>
                                                                <input id="txtRucCli" name="txtRucCli" class="form-control" required readonly></input>
                                                                <!-- Button trigger modal -->
                                                                <button type="button" onclick="listClientes()" class="btn btn-outline-info" data-toggle="modal" data-target="#modal-clientes"><i class="fas fa-search"></i></button>
                                                            </div>
                                                        </div>

                                                        <div class="col-lg-6">
                                                            <label class="col-form-label"></i> Razón Social (*): </label>
                                                            <input type="text" id="txtRazCli" name="txtRazCli" class="form-control" required readonly></input>
                                                        </div>

                                                        <div class="col-lg-12">
                                                            <label class="col-form-label"></i> </label>

                                                        </div>


                                                        <div class="col-lg-3">
                                                            <div class="input-group mb-3">
                                                                <div class="input-group-prepend">
                                                                    <span class="input-group-text"> <i class="fas "> Nº Cuota</i> </span>
                                                                </div>
                                                                <select id="dtcCUO" style="font-weight: bold; background-color: #bdd6ef" name="dtcCUO" class="form-control " style="width: 100%;">
                                                                </select>
                                                            </div>
                                                        </div>



                                                        <div class="col-lg-3">
                                                            <div class="input-group mb-3">
                                                                <div class="input-group-prepend">
                                                                    <span class="input-group-text"> <i class="fas fa-calculator"> Monto:</i> </span>
                                                                </div>
                                                                <input type="text" name="txtmoncuo" id="txtmoncuo" class="form-control" readonly>
                                                            </div>
                                                        </div>

                                                        <div class="col-lg-3">
                                                            <div class="input-group mb-3">
                                                                <div class="input-group-prepend">
                                                                    <span class="input-group-text"> <i class="fas fa-calculator"> Atraso:</i> </span>
                                                                </div>
                                                                <input type="text" name="txtatraso" id="txtatraso" class="form-control" readonly>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-3">
                                                            <div class="input-group mb-3">
                                                                <div class="input-group-prepend">
                                                                    <span class="input-group-text"> <i class="fas fa-calculator"> Interés:</i> </span>
                                                                </div>
                                                                <input type="text" name="txtintacu" id="txtintacu" class="form-control" readonly>
                                                            </div>
                                                        </div>


                                                        <div class="col-lg-3">
                                                            <div class="input-group mb-3">
                                                                <div class="input-group-prepend">
                                                                    <span class="input-group-text"> <i class="fas fa-money-bill"> Monto a pagar:</i> </span>
                                                                </div>
                                                                <input type="number" style="font-weight: bold; background-color: #bdd6ef" name="txtmonpag" min="0" id="txtmonpag" class="form-control" required>
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
                                                <th></th>
                                                <th>Nº Documento</th>
                                                <th>Razón Social</th>
                                                <th>Id</th>
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

    </script>
    <script>
        $(function() {

            //         $("#tabClientes").DataTable({
            //   "responsive": true, "lengthChange": false, "autoWidth": false,
            //   "buttons": ["copy", "csv", "excel", "pdf", "print", "colvis"]
            // }).buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)');
            // $('#example2').DataTable({
            //   "paging": true,
            //   "lengthChange": false,
            //   "searching": false,
            //   "ordering": true,
            //   "info": true,
            //   "autoWidth": false,
            //   "responsive": true,
            // });

            $('.select2').select2();
            $('.select2bs4').select2({
                theme: 'bootstrap4'
            })

        });
    </script>
    <script type="text/javascript" src="view/mantenimiento/formAddPagoCuota.js?v<?php echo date("Y-m-d H:i:s") ?>"></script>
</body>