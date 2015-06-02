function descargar_resultados (encuesta) {
  if( $("#participante_talento_1").val() == "" || 
      $("#participante_talento_2").val() == "" || 
      $("#participante_talento_3").val() == "" || 
      $("#participante_talento_4").val() == "" || 
      $("#participante_talento_5").val() == "" 
    ){
    $("ul.stack-for-small.round.button-group .small.button").addClass("disabled");
      alert("Debe elegir los 5 talentos antes de descargar los resultados");
      return(false);
    } 
  else{
    $('#tipo_de_encuesta').val(encuesta);
    $(".panel form").submit();
    //$('#edit_participante_1').submit();
  };
}

var normalize = (function() {
  var from = "ÃÀÁÄÂÈÉËÊÌÍÏÎÒÓÖÔÙÚÜÛãàáäâèéëêìíïîòóöôùúüûÑñÇç", 
      to   = "AAAAAEEEEIIIIOOOOUUUUaaaaaeeeeiiiioooouuuunncc",
      mapping = {};
 
  for(var i = 0, j = from.length; i < j; i++ )
      mapping[ from.charAt( i ) ] = to.charAt( i );
 
  return function( str ) {
      var ret = [];
      for( var i = 0, j = str.length; i < j; i++ ) {
          var c = str.charAt( i );
          if( mapping.hasOwnProperty( str.charAt( i ) ) )
              ret.push( mapping[ c ] );
          else
              ret.push( c );
      }      
      return ret.join( '' );
  }
 
})();

$(document).ready(function() {
  
  //$("ul.stack-for-small.round.button-group ").delegate(".small.button", 'change', function(){
  //$("ul.vcard").delegate("select", "change", function () {
  $("ul.vcard select").on("change", function () {
    if( $("#participante_talento_1").val() != "" && 
      $("#participante_talento_2").val() != "" && 
      $("#participante_talento_3").val() != "" && 
      $("#participante_talento_4").val() != "" && 
      $("#participante_talento_5").val() != "" 
    ){
      $("ul.stack-for-small.round.button-group .small.button").removeClass("disabled");
    }
    else if ( $("#participante_talento_1").val() == "" || 
              $("#participante_talento_2").val() == "" || 
              $("#participante_talento_3").val() == "" || 
              $("#participante_talento_4").val() == "" || 
              $("#participante_talento_5").val() == "" 
              ){
      $("ul.stack-for-small.round.button-group .small.button").addClass("disabled")
    };
  })
  

  $('#talentos').keyup(function(){
    str = $.trim($(this).val());
    // obtengo los talentos y sus valores
    talentos_cargados = [];
    $("#participante_talento_1 option").each(function () {
      talentos_cargados.push([$(this).val(), normalize($(this).text())]);
    })
    // blanqueo los select
    $("#participante_talento_1 option").prop("selected", false);
    $("#participante_talento_2 option").prop("selected", false);
    $("#participante_talento_3 option").prop("selected", false);
    $("#participante_talento_4 option").prop("selected", false);
    $("#participante_talento_5 option").prop("selected", false);

    // veo si los valores estan uno abajo del otro y los guardo
    arr_talentos = [];
    $.each(str.split("\n"), function (i, val) {
      str_talento = normalize(val.charAt(0).toUpperCase() + val.slice(1).toLowerCase());
      talento_id = 0;
      $.each(talentos_cargados, function(i, tc){
        if (str_talento == tc[1]) {
          talento_id = tc[0];
        };
      });

      switch(i){
        case 0:
          $("#participante_talento_1").val([talento_id]);
          break;
        case 1:
          $("#participante_talento_2").val([talento_id]);
          break;
        case 2:
          $("#participante_talento_3").val([talento_id]);
          break;
        case 3:
          $("#participante_talento_4").val([talento_id]);
          break;
        case 4:
          $("#participante_talento_5").val([talento_id]);
          break;
      }
    });
    $("#participante_talento_1 option").trigger('change');
  });
  
  
});