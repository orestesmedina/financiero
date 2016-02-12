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
  $( ".list-group-item-success" ).each(function( index ) {
    lis.push($(this).text());
    alert( lis[index] );
  });

  $.get('/transaccion/reintegro/insert', {'lista' : lis},
    function (resp) {
      alert('algo paso bien' + resp);
    })
  .fail(function () {
    alert("Ha ocurrido un error al procesar la consulta, vuelva a intentarlo vez más tarde");
    })
}
