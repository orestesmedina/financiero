@extends('/layouts.master')
@section('title', 'Presupuesto')
@section('presupuesto')
class="active"
@endsection
@section('content')
@parent
<section>
  <div class="wrapper col-md-10">
    <br>
    @if(Auth::user() AND Auth::user()->tienePermiso('Agregar Presupuesto', Auth::user()->id))
    
    @if (count($errors) > 0)
    <div class="alert alert-danger">
        <strong>Oops!</strong> Hay problemas con las entradas<br><br>
        <ul>
            @foreach ($errors->all() as $error)
            <li><% $error %></li>
            @endforeach
        </ul>
    </div> 
    @endif 
    <form action="/presupuesto" class="form-horizontal" method="post" onsubmit="buttonName.disabled=true; return true;">
      <input type="hidden" name="_token" value="<% csrf_token() %>">  
      
      
      <div class="form-group">
        <label class="col-md-4 control-label">Coordinación</label>
        <div class="col-md-6">
          <select name="tCoordinacion_idCoordinacion" class="form-control" required>
            <option value="0">Selecione a que unidad pertenece el Presupuesto</option>
            @foreach($coordinaciones as $coordinacion)
              <option value="<% $coordinacion->idCoordinacion %>"><% $coordinacion->idCoordinacion %> - <% $coordinacion->vNombreCoordinacion %></option>
            @endforeach
          </select>
        </div>
        </div>
        <div class="form-group">
        <label class="col-md-4 control-label">Nombre</label>
        <div class="col-md-6">
          <input type="text" class="form-control" required name="vNombrePresupuesto" placeholder="Nombre descriptivo del presupuesto" pattern="[a-zA-Z0-9ñÑáéíóúÁÉÍÓÚ\s]+" title="Este campor solo acepta letras y numeros" >
        </div>
      </div>
      <div class="form-group">
        <label class="col-md-4 control-label">Año</label>
        <div class="col-md-6">
          <input type="text" class="form-control" required name="anno" value="<% $date = date('Y') %>" readonly>
        </div>
      </div>

        
        <div class="form-group">
          <div class="col-md-4 col-md-offset-4">
            <button type="button" class="btn btn-success" data-toggle="modal" data-target="#myModal2">Agregar</button>
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
                <p>Estas seguro de que quieres agregar el presupuesto.
                  <ul>
                    <li>Verifique que los datos introducidos sean correctos</li>
                  </ul>
                </p>
                
                  <input type="submit" name="buttonName" class="btn btn-success" value="Agregar">
                  <button type="button" class="btn btn-danger pull-right" data-dismiss="modal">Cancelar</button>
              </div>
            </div> 
          </div>
        </div> 
      </div>
    </form>
  
      @else
      Debe estar autenticado y tener permisos para ver esta pagina
      @endif
  </section> 
  @endsection
