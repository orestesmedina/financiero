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

  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          
          <h4 class="modal-title">Reintegro de caja chica</h4>
        </div>
        <div class="modal-body">
          <p id = "textoModal"></p>
        </div>
        <div class="modal-footer">
          <button type="button" id="btnModal" class="btn btn-default" data-dismiss="modal">Cerrar</button>
        </div>
      </div>
      
    </div>
  </div>
  


    <form class="col-md-12 alert container-fluid table-responsive form-horizontal" method="post" action="/transaccion" onsubmit="buttonName.disabled=true; return true;">
        {!!csrf_field()!!}
        <div class="col-md-12">
        <h2>Reintegro de Caja Chicha</h2>
        <h3>Modificar Reintegro</h3>
        </div>
       
        
        <div class="container-fluid table-responsive col-md-12"  ng-controller="facturaTemplate">

            <div class="container-fluid table-responsive">
        		<table id="table_reintegro" class="table table-striped table-hover">
                    <thead>
                      <tr>
                          <th>Num. Documento</th>
                          <th>Observacion</th>
                          <th>Modificar</th>

                      </tr>
                    </thead>
            		<tbody>
                    <?php foreach ($reintegro as $reint) { ?>
        			<tr>
                        <td><?php echo $reint->documento; ?></td>
                        <td><?php echo $reint->observacion; ?></td>
                        <td><a href="/transaccion/reintegro/<?php echo $reint->documento; ?>/edit" class="btn btn-warning">Editar</a></td>
        		    </tr>
                    <?php }?>
                  
        			</tbody>
        	    </table>
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
