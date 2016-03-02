/**
* Metodo que permite obtener todas las facturas a reintegrar en un array y las ubicada en la lista a reintegrar
**/

function getCheck(valor) {
  var seleccionado = new Array();
  $.each($("input[name='agregar[]']:checked"), function(index, value) {
    var data = $(this).parents('tr:eq(0)');
    seleccionado.push($(data).find('td:eq(0)').text());

  });
  $('#listaReintegrar > li').remove();

  $.each(seleccionado, function(index, value) {
    var li = document.createElement("li");
    li.setAttribute("class", "list-group-item list-group-item-success");
    var texto = document.createTextNode(value);
    li.appendChild(texto);

    var element = document.getElementById("listaReintegrar");
    element.appendChild(li);
  });
}

/**
* Metodo que permite capturar las facturas a reintegrar y las envia al servidor con ajax
**/
function insertReintegro(){
  var lis = new Array();
  var documento = $("#vDocumento").val();
  var observacion = $('#vDescripcionFactura').val();
  var fecha = $('#dFechaFactura').val();

  if(documento != "" && observacion != "" && fecha != "") {

  $( ".list-group-item-success" ).each(function( index ) {
    lis.push($(this).text());
  });

  $.get('/transaccion/reintegro/insert', {'lista' : lis, 'documento' : documento, 'observacion' : observacion, 'fecha' : fecha},
    function (resp) {
    $("#myModal").modal();
    $('#textoModal').text('El reintegro se realizó correctamente.');
    $('#btnModal').click(function(){
    location.reload();
});
    
    })
  .fail(function () {
    $("#myModal").modal();
    $('#textoModal').text('Lo sentimos, algo salió mal durante el proceso de reintegro.');
    })
} else {
  $("#myModal").modal();
  $('#textoModal').text('Lo sentimos, no se permiten campos en blanco.');
}

}

/**
 *Metodo que marca las filas que se desmarcaron (para eliminar una factura que se encuetre en reintegro)
**/
function editcheck() {
  if($('input[name="eliminarFactura"]:checked').length > 0) {
  $.each($("input[name='eliminarFactura']"), function(index, value) {
    var data = $(this).parents('tr:eq(0)');
    if($(this).is(':checked')) {
      data.removeClass("danger");
    } else {
      data.attr('class', 'danger');
    }

  });
  $('#btnModificarReintegro').removeAttr('disabled');
  } else {
    $('#btnModificarReintegro').attr('disabled', 'true');
    $("#myModal").modal();
    $('#textoModal').text('No se permite elimiar todas las facturas, por favor seleccione al menos una factura.');
  }
}

/**
 * Metodo que permite obtener y eliminar las facturas perteneciente al reintegro
**/
function getCheckModificar() {
  var documento = $('#vDocumento').val();

  var noSeleccionado = new Array();
  $.each($("input[name='eliminarFactura']"), function(index, value) {
    var data = $(this).parents('tr:eq(0)');
    if($(this).is(':checked')) {
      //No hace nada solo obtiene las facturas que se encuentran desmarcadas
    } else {
    noSeleccionado.push($(data).find('td:eq(0)').text());

    } 
  });

  $.get('/transaccion/reintegro/modificar', {'listaNoSeleccionado' : noSeleccionado, 'documento' : documento},
    function (resp) {
    $("#myModal").modal();
    $('#textoModal').text('El reintegro se modificó correctamente.');
    $('#btnModal').click(function(){
    window.location.href="/transaccion/reintegro/update";
});
    
    })
  .fail(function () {
    $("#myModal").modal();
    $('#textoModal').text('Lo sentimos, algo salió mal durante el proceso de modoficar reintegro.');
    })
}
