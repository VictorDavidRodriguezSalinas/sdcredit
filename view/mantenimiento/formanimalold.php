<div class="col-md-6">
	<div class="card card-success">
		<div class="card-header">
			<h3 class="card-title">Registro de Animal</h3>
		</div>
		<form id="quickForm">
			<div class="card-body">
				<div class="row">
					<div class="col-lg-6">
						<div class="input-group mb-3">
							<div class="input-group-prepend">
								<span class="input-group-text">Nº Caravana (*): <i></i></span>
							</div>
							<input type="text" name="txtidani" id="txtidani" class="form-control" value="0" placeholder="ID" hidden>
							<input type="text" name="txtOPE" id="txtOPE" class="form-control" placeholder="OPE" value="GUA" hidden>
							<input type="text" name="txtCarAni" id="txtCarAni" class="form-control" required>
						</div>
					</div>
					<div class="col-lg-6">
						<div class="input-group mb-3">
							<div class="input-group-prepend">
								<span class="input-group-text">Nº HBP: <i></i></span>
							</div>
							<input type="text" name="txtHbpAni" id="txtHbpAni" class="form-control">
						</div>
					</div>
				</div>

				<div class="input-group mb-3">
					<div class="input-group-prepend">
						<span class="input-group-text">Nombre: <i></i></span>
					</div>
					<input type="text" name="txtNomAni" id="txtNomAni" class="form-control">
				</div>


				<div class="row">
					<div class="col-lg-7">
						<div class="form-group">

							<div class="input-group mb-3">
								<div class="input-group-prepend">
									<span class="input-group-text">Fecha de nacimiento (*): <i></i></span>
								</div>
								<input type="date" name="txtFecNac" id="txtFecNac" class="form-control" required>
							</div>
						</div>
					</div>
					<div class="col-lg-5">
						<div class="input-group mb-3">
							<div class="input-group-prepend">
								<span class="input-group-text">Circunferencia Escrotal: <i></i></span>
							</div>
							<input type="text" name="" id="txtCirAni" class="form-control">
						</div>
					</div>
					<div class="col-lg-6">
						<div class="input-group mb-3">
							<div class="input-group-prepend">
								<span class="input-group-text">Precio compra: <i></i></span>
							</div>
							<input type="text" name="txtPreCom" id="txtPreCom" class="form-control">
						</div>
					</div>
					<div class="col-lg-6">
						<div class="input-group mb-3">
							<div class="input-group-prepend">
								<span class="input-group-text">Precio venta: <i></i></span>
							</div>
							<input type="text" name="txtPreVen" id="txtPreVen" class="form-control">
						</div>
					</div>
					<div class="col-lg-12">
						<div class="input-group mb-3">
							<div class="input-group-prepend">
								<span class="input-group-text">Obs: <i></i></span>
							</div>
							<input type="text" name="txtObsAni" id="txtObsAni" class="form-control">
						</div>
					</div>
					<div class="col-lg-4">
						<div class="form-group">
							<div class="input-group-prepend">
								<span class="input-group-text">Sexo (*): <i></i></span>
								<select id="txtSexAni" name="txtSexAni" class="form-control" style="width: 100%;">
									<option value="M">Macho</option>
									<option value="H">Hembra</option>
								</select>
							</div>
						</div>
					</div>
					<div class="col-lg-8">
						<div class="form-group">
							<div class="input-group-prepend">
								<span class="input-group-text">Categoría (*): <i></i></span>
								<select id="txtIdCat" name="txtIdCat" class="form-control select2" style="width: 100%;">
								</select>
							</div>
						</div>
					</div>
					<div class="col-lg-6">
						<div class="form-group">
							<div class="input-group-prepend">
								<span class="input-group-text">Raza (*): <i></i></span>
								<select id="txtIdRaz" name="txtIdRaz" class="form-control select2" style="width: 100%;">
								</select>
							</div>
						</div>
					</div>

				</div>
			</div>








			<div class="row">
				<div class="card-footer">
					<button type="submit" id="btnGuardar" class="btn btn-outline-success"><i class="fas fa-save"></i> Guardar</button>
					<button onclick='location.href="/cattle/dashboard"' class="btn btn-outline-danger"><i class="fas fa-times-circle"></i> Cerrar</button>
				</div>
			</div>
		</form>
	</div>
</div>
<div class="col-md-6">


	<div class="card card-success">
		<div class="card-header">
			<h3 class="card-title">Listado de Animales</h3>
		</div>
		<div class="card-body">
			<div class="table-responsive">
				<table id="tabAnimales" name="tabAnimales" class="table table-bordered table-striped">
					<thead>
						<th>Id</th>
						<th>Caravana</th>
						<th>Hbp</th>
						<th>Nombre</th>
						<th>Fecha Nacimiento</th>
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