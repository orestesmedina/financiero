@extends('/layouts.master')
@section('title', 'Partida')
@section('partida')
class="active"
@endsection
@section('content')
@parent
@if(Auth::user() AND Auth::user()->tienePermiso('Editar Partida')AND Auth::user())
<section>
  <div class="wrapper">
    <br>
    <form class="col-md-12 form-horizontal" action="/partida/<%$partida->idPartida%>/put" method="post" onsubmit="buttonName.disabled=true; return true;">
      <input type="hidden" name="_token" value="<% csrf_token() %>">    
      
     @if (count($errors) > 0)
    <div class="alert alert-danger">
        <strong>Oops!</strong> Error al eliminar<br><br>
        <ul>
            @foreach ($errors->all() as $error)
            <li><% $error %></li>
            @endforeach
        </ul>
    </div> 
    @endif
    @if(!count($errors) > 0 || !count($mensaje)> 0)
      <div class="alert alert-warning" ng-show="show">
        <strong>Cuidado! </strong>Cambiar los datos afecta todos los presupuestos que utilicien esta partida <br><br>
        <ul>
          <li>No se podra eliminar una partida que tenga un presupuesto asignado</li>
        </ul>
      </div> 
    @endif
    @if(count($mensaje) > 0)
      <div class="alert alert-success">
        <strong>Bien! </strong>Se realizaron cambios en la partida
      </div> 
    @endif
      <div class="form-group">
        <label class="col-md-4 control-label">Cod Partida</label>
        <div class="col-md-6">
        <input type="text" class="form-control" name="codPartida" id="codPartida" value="<%$partida->codPartida%>"  >
        </div>
      </div>

      <div class="form-group">
        <label class="col-md-4 control-label">Nombre de Partida</label>
        <div class="col-md-6">
          <input type="text" class="form-control"  name="vNombrePartida" value="<%$partida->vNombrePartida%>" 
          pattern="[a-zA-Z0-9ñÑáéíóúÁÉÍÓÚ\s]+" title="Este campor solo acepta letras y numeros">
        </div>
      </div>
  
      <div class="form-group">
        <label class="col-md-4 control-label">Descripción de la Partida</label>
        <div class="col-md-6">
          <textarea class="form-control" name="vDescripcion" value="<%$partida->vDescripcion%>" rows="5" pattern="[a-zA-Z0-9-ñáéíóúÑÁÉÍÓÚ]+" title="Este campor solo acepta letras y numeros"><%$partida->vDescripcion%></textarea>
        </div>
      </div>

      <div class="form-group">
        <div class="col-md-4 col-md-offset-3">
          <button type="button" class="btn btn-success" data-toggle="modal" data-target="#myModal2">Confirmar</button>
          <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#myModal">Eliminar</button>
        </div>
      </div>
       <div class="col-md-5">
        <div class="modal fade" id="myModal2" role="dialog">
          <div class="modal-dialog modal-sm">
            <!-- Modal content-->
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Confirmar</h4>
              </div>
              <div class="modal-body">
                <p>Estas seguro de que quieres modificar la partida.
                  <ul>
                    <li>Verifique que los datos introducidos sean correctos</li>
                  </ul>
                </p>
                  <input type="submit" name="buttonName" class="btn btn-warning" value="Editar">
                  <button type="button" class="btn btn-danger pull-right" data-dismiss="modal">Cancelar</button>
              </div>
            </div> 
          </div>
        </div> 
      </div>
    </form>

    <form class="col-md-1" action="/partida/<%$partida->idPartida%>/delete" method="post" onsubmit="buttonName.disabled=true; return true;">
      <input type="hidden" name="_token" value="<% csrf_token() %>">
      @if(Auth::user() AND Auth::user()->tienePermiso('Borrar Partida', Auth::user()->id))
      <div class="modal fade" id="myModal" role="dialog">
        <div class="modal-dialog modal-sm">
          <!-- Modal content-->
          <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal">&times;</button>
              <h4 class="modal-title">Confirmar</h4>
            </div>
            <div class="modal-body">
              <p>Estas seguro de que quieres eliminar.</p>
              <input type="submit" class="btn btn-danger" name="buttonName" value="Eliminar">
              <button type="button" class="btn btn-success pull-right" data-dismiss="modal">Cancelar</button>

            </div>
          </div> 
        </div>
      </div> 
      @endif
    </form>
  </div>
</section>
@else
Debe estar autenticado y tener permisos para ver esta seccion

@endif
@endsection
