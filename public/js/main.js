function getCheck(valor) {
  //var values = "";
  var seleccionado = new Array();
  $.each($("input[name='agregar[]']:checked"), function(index, value) {
    var data = $(this).parents('tr:eq(0)');
    seleccionado.push($(data).find('td:eq(0)').text());
    /**
        var data = $(this).parents('tr:eq(0)');
        if (index > 0)
          values += " and ";
        values += $(data).find('td:eq(1)').text() + "," + $(data).find('td:eq(2)').text() + "," + $(data).find('td:eq(3)').text() + ",";
        **/
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
  /*
alert(seleccionado.length);
  alert(values);
  var myText = document.getElementById("demo").getElementsByTagName('li');
  alert(myText[3].childNodes[0].nodeValue);**/

}
