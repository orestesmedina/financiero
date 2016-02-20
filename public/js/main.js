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
      //location.reload();
      
    })
  .fail(function () {
    $("#myModal").modal();
    $('#textoModal').text('Lo sentimos, algo salió mal durante el proceso de reintegro.');
    })
}
