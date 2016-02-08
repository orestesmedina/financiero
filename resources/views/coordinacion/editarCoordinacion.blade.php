@extends('/layouts.master')
@section('title', 'Coordinacion')
@section('coord')
  class="active"
@endsection
@section('content')
@parent
@if(Auth::user() AND Auth::user()->tienePermiso('Editar Coordinacion') AND Auth::user()->tieneCoordinacion($coordinacion->idCoordinacion))
<section>
  <div class="wrapper col-md-10">
  @if (count($errors) > 0)
    <div class="alert alert-danger">
        <strong>Ops!</strong>Error al modificar<br><br>
            <ul>
              <li><%$errors%></li>
            </ul>
     </div> 
    @endif
    <br>
    <form class="col-md-10 form-horizontal" action="/coordinacion/<%$coordinacion->idCoordinacion%>/put" method="post" onsubmit="buttonName.disabled=true; return true;">
      <input type="hidden" name="_token" value="<% csrf_token() %>">    

      <div class="form-group">
        <label class="col-md-4 control-label">Número Coordinación</label>
        <div class="col-md-8" ng-init="id=<%$coordinacion->idCoordinacion%>">
          <input type="text" class="form-control" name="idCoordinacion" value="<%$coordinacion->idCoordinacion%>" placeholder="ID de Coordinación" readonly min="1" required>
        </div>
      </div>

      <div class="form-group" ng-init="nomb = '<% $coordinacion->vNombreCoordinacion %>'">
        <label class="col-md-4 control-label">Nombre Coordinación</label>
        <div class="col-md-8">
          <input type="text" class="form-control" name="vNombreCoordinacion" 
           placeholder="Nombre de la Coordinacion" value="<%$coordinacion->vNombreCoordinacion%>" 
            pattern="[a-zA-Z0-9ñÑáéíóúÁÉÍÓÚ\s]+" title="Este campor solo acepta letras y numeros" required>
        </div>
      </div>
      <div class="form-group">
          <div class="col-md-4 col-md-offset-3">
            <button type="button" class="btn btn-success" data-toggle="modal" data-target="#myModal2">Confirmar</button>

@if(Auth::user() AND Auth::user()->tienePermiso('Borrar Coordinacion') AND Auth::user()->tieneCoordinacion($coordinacion->idCoordinacion))
            <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#myModal">Eliminar</button>
@endif
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
                <p>Estas seguro de que quieres modificar la coordinacion.</p>
                
                  <input type="submit" name="" class="btn btn-warning" value="Editar" name="buttonName">
                  <button type="button" class="btn btn-danger pull-right" data-dismiss="modal">Cancelar</button>
                </div>
              </div> 
            </div>
          </div> 
        </div>
      </form>

      <form class="col-md-1" action="/coordinacion/<%$coordinacion->idCoordinacion%>/delete" method="post" onsubmit="buttonName.disabled=true; return true;">
        <input type="hidden" name="_token" value="<% csrf_token() %>">
        @if(Auth::user() AND Auth::user()->tienePermiso('Borrar Coordinacion', Auth::user()->id))
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
                <input type="submit" class="btn btn-danger"name="delete" value="Eliminar" name="buttonName">
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
