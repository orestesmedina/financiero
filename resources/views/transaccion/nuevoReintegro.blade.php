@extends('/layouts.master')
@section('title', 'Partida')
@section('movimiento')
class="active"
@endsection
@section('content')
@parent
@if(Auth::user() AND  Auth::user()->tienePermiso('Agregar Transaccion') AND $date = date('Y') == $anno->iValor)
<section class="container-fluid">
    <br>
    @if (count($errors) > 0)
    <div class="alert alert-danger">
        <strong>Oops!</strong> Error en la transaccion<br><br>
        <ul>
            @foreach ($errors->all() as $error)
            <li><% $error %></li>
            @endforeach
        </ul>
    </div>
    @endif
    @if (session('mensaje'))
    <div class="alert alert-success">
        <strong>Bien!</strong><br><br>
        <ul>
            <li>Se agrego la Factura</li>
        </ul>
    </div>
    @endif
    <form class="col-md-12 alert container-fluid table-responsive form-horizontal" method="post" action="/transaccion" onsubmit="buttonName.disabled=true; return true;">
        {!!csrf_field()!!}
        <div class="col-md-12">
        <h2>Nuevo Movimiento de Presupuesto</h2>
        <h3>Reintegro de Caja Chicha</h3>
        </div>
        <div class="container-fluid col-md-7">
            <div class="form-group">
                <label class="col-md-6 control-label" >Tipo de Transacción:</label>
                <div class="col-md-6">
                  <input type="text" name="vTipoFactura" value="Reintegro Caja Chica" readonly>
                </div>
            </div>
            <div class="form-group">
                <label class="col-md-6 control-label">Observacion:</label>
                <div class="col-md-6">
                    <textarea name="vDescripcionFactura" class="form-control" rows="2"></textarea>
                </div>
            </div>
        </div>
        <div class="container-fluid col-md-5">
            <div class="form-group">
                <label class="col-md-5 control-label">Fecha:</label>
                <div class="col-md-7">
                    <input type="date"  class="form-control" name="dFechaFactura" max="<%date('Y-m-d')%>" required placeholder="AAAA-MM-DD" maxlength="10">
                </div>
            </div>
            <div class="form-group text-left">
                <label class="col-md-6 control-label">Num. Documento:</label>
                <div class="col-md-6">
                    <input type="text" class="form-control" name="vDocumento" value="N/A">
                </div>
            </div >
        </div>
        <div class="container-fluid table-responsive col-md-12"  ng-controller="facturaTemplate">

            <div class="container-fluid table-responsive">
        			<table id="table_reintegro" class="table table-striped">
                <thead>
                  <tr>
                      <th>Num. Documento</th>
                      <th>Detalle</th>
                      <th>Monto</th>
                      <th>Unidad </th>
                      <th>Partida</th>
                      <th>Presupuesto</th>
                      <th>Agregar</th>

                  </tr>
                </thead>
        				<tbody>

        					<tr>
                    <td>2254</td>
                    <td>Prueba detalle factura pendiente</td>
                    <td>$12345</td>
                    <td>Codigo unidad</td>
                    <td>Codigo partida</td>
                    <td>Nombre presupuesto</td>
                    <td><input type="checkbox" class="agregar" name="agregar[]" value="1" onclick="getCheck()"></td>
        					</tr>
                  <tr>
                    <td>254</td>
                    <td>Prueba detalle factura pendiente</td>
                    <td>$12345</td>
                    <td>Codigo unidad</td>
                    <td>Codigo partida</td>
                    <td>Nombre presupuesto</td>
                    <td><input type="checkbox" class="agregar" name="agregar[]" value="1" onclick="getCheck()"></td>
        					</tr>
                  <tr>
                    <td>24</td>
                    <td>Prueba detalle factura pendiente</td>
                    <td>$12345</td>
                    <td>Codigo unidad</td>
                    <td>Codigo partida</td>
                    <td>Nombre presupuesto</td>
                    <td><input type="checkbox" class="agregar" name="agregar[]" value="1" onclick="getCheck()"></td>
        					</tr>
                  <tr>
                    <td>22</td>
                    <td>Prueba detalle factura pendiente</td>
                    <td>$12345</td>
                    <td>Codigo unidad</td>
                    <td>Codigo partida</td>
                    <td>Nombre presupuesto</td>
                    <td><input type="checkbox" class="agregar" name="agregar[]" value="1" onclick="getCheck()"></td>
        					</tr>
        				</tbody>
        			</table>
        		</div>

            <ul id="listaReintegrar" class="list-group">
              <a class="list-group-item active">Facturas a reintegrar</a>
            </ul>

            <div class="form-group">
              <input type="submit" value="Agregar Factura" name="buttonName"  class="btn btn-primary pull-right">
            </div>
        </div>
    </form>

</section>
<script type="text/javascript">
$(document).ready( function () {
  $('#table_reintegro').dataTable();
} );
</script>
@else
    @if(date('Y') != $anno->iValor)
        Solo se pueden agregar movimientos al presente año. <br>
       Para agregar un nuevo movimiento presupuestatio debe <br><br>
       <a href="/configuracion" class="btn btn-info">Configurar Año de Sistema</a>
    @else
        Debe estar autenticado y tener permisos para ver esta pagina
    @endif
@endif
@endsection
