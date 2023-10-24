<form id="" method="POST" action="">
    <input type="text" name="txtidusu" id="txtidusu" class="form-control" value="<?php echo $_SESSION['idusu']; ?>" hidden>
    <input type="text" name="txtnivusu" id="txtnivusu" class="form-control" value="<?php echo $_SESSION['nivusu']; ?>" hidden>

    <body onload="enviarPost();" class="">
        <div class="align-content-center">
            <section class="content">
                <div class="container-fluid">
                    <div class="row">

                        <div class="col-md-12">
                            <div class="card card-success">
                                <div class="card-header">
                                    <h3 class="card-title">Listado de Pagarés</h3>
                                </div>
                                <div class="card-body">
                                    <div class="table table-bordered">
                                        <table id="tabEstado" name="tabEstado" class="table table-bordered table-striped">
                                            <thead>
                                                <th>Operación</th>
                                                <th>Nº Pagaré</th>
                                                <th>Fecha Reg.</th>
                                                <th>Ruc</th>
                                                <th>Razón Social</th>
                                                <th>Monto </th>
                                              


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
        <script type="text/javascript" src="view/mantenimiento/formAnular.js"></script>

    </body>
</form>