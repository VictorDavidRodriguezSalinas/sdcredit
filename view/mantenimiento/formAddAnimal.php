<body class="">
	<div class="align-content-center">
		<section class="content">
			<div class="container-fluid">
				<div class="col-md-12" id="listadoAnimales">
					<div class="card card-success card-outline">
						<div class="card-header">
							<h3 class="card-title">Listado de Ganados</h3>
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
								<table id="tabAnimales" name="tabAnimales" class="table table-bordered table-striped">
									<thead>
										<th >Id</th>
										<th>Caravana</th>
										<th>Hbp</th>
										<th>Nombre</th>
										<th class="date">Fecha Nacimiento</th>
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
			</div>

			<!--FORMULARIO -->

			<div class="col-md-9" id="formularioregistros">
				<div class="card card-success">
					<div class="card-header">
						<h3 class="card-title">Registro de Ganado</h3>
					</div>
					<form id="frmAddAnimal" method="POST">
						<div class="card-body">
							<div class="row">
								<div class="col-lg-3">
									<input type="text" name="txtidani" id="txtidani" class="form-control" value="0" placeholder="ID" hidden>
									<input type="text" name="txtOPE" id="txtOPE" class="form-control" placeholder="OPE" value="GUA" hidden>
									<label class="col-form-label" for="inputSuccess"><i class="fas fa-bookmark"></i> Nº Caravana (*): </label>
									<input type="text" name="txtCarAni" id="txtCarAni" class="form-control" required>
								</div>
								<div class="col-lg-3">
									<label class="col-form-label"></i> Tipo (*): </label>
									<select id="txtIdTip" name="txtIdTip" class="form-control " style="width: 100%;">
									</select>
								</div>

								<div class="col-lg-3">
									<label class="col-form-label"></i> Color (*): </label>
									<select id="txtIdCol" name="txtIdCol" class="form-control " style="width: 100%;">
									</select>
								</div>

								<div class="col-lg-3">
									<label class="col-form-label"></i> Nº Hbp: </label>
									<input type="text" name="txtHbpAni" id="txtHbpAni" class="form-control">
								</div>
								<div class="col-lg-3">
									<label class="col-form-label"></i> Nombre: </label>
									<input type="text" name="txtNomAni" id="txtNomAni" class="form-control">
								</div>
								<div class="col-lg-3">
									<label class="col-form-label"></i> Fecha Nac. (*): </label>
									<input type="date" name="txtFecNac" id="txtFecNac" class="form-control" required>
								</div>
								<div class="col-lg-3">
									<label class="col-form-label"></i> Circ. Escrotal (Toros): </label>
									<input type="text" name="txtCirAni" id="txtCirAni" class="form-control">
								</div>
								<div class="col-lg-3">
									<label class="col-form-label"></i> Precio compra: </label>
									<input type="number" name="txtPrecom" id="txtPrecom" class="form-control">
								</div>
								<div class="col-lg-3">
									<label class="col-form-label"></i> Precio venta: </label>
									<input type="number" name="txtPreVen" id="txtPreVen" class="form-control">
								</div>
								<div class="col-lg-3">
									<label class="col-form-label"></i> Categoría (*): </label>
									<select id="txtIdCat" name="txtIdCat" class="form-control" style="width: 100%;">
									</select>
								</div>
								<div class="col-lg-3">
									<label class="col-form-label"></i> Sexo (*): </label>
									<select id="txtSexAni" name="txtSexAni" class="form-control" style="width: 100%;">
										<option value="M">Macho</option>
										<option value="H">Hembra</option>
									</select>
								</div>

								<div class="col-lg-3">
									<label class="col-form-label"></i> Raza (*): </label>
									<select id="txtIdRaz" name="txtIdRaz" class="form-control" style="width: 100%;">
									</select>
								</div>
								<div class="col-lg-3">
									<label class="col-form-label"></i> Lote (*): </label>
									<select id="txtIdLot" name="txtIdLot" class="form-control" style="width: 100%;">
									</select>
								</div>
								<div class="col-lg-3">
									<label class="col-form-label"></i> Ubicación (*): </label>
									<select id="txtIdUbi" name="txtIdUbi" class="form-control" style="width: 100%;">
									</select>
								</div>
								<div class="col-lg-6">
									<label class="col-form-label"></i> Observaciones: </label>
									<input type="text" name="txtObsAni" id="txtObsAni" class="form-control"> </input>
								</div>
							</div>

							<div class="col-lg-6">
								<div class="card-body">
									<button id="cmdGuardar" class="btn btn-outline-success" ><i class="fas fa-save"></i> Guardar</button>
									<button type="button" onclick="cancelarform()" class="btn btn-outline-danger"><i class="fas fa-times-circle"></i> Cerrar</button>
								</div>
							</div>

							<div class="col-lg-6">
							<div id="wrapper">
								<label>Fotos</label>
								<div id="container-input">
									<div class="wrap-file">
										<div class="content-icon-camera">
											<input type="file" id="file" name="file[]" accept="image/*" multiple />
											<div class="icon-camera"></div>
										</div>
										<p id="cantFotos"></p>
										<div id="vistaPreviaImg">
									

										</div>
									</div>
								</div>
							</div>

						
						



							</div>

						</div>
					</form>




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
	<script type="text/javascript" src="view/mantenimiento/formAddAnimal.js"></script>
</body>