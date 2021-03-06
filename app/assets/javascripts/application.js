// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require foundation
//= require select2
//= require select2_locale_es
//= require_tree .

$(function(){ $(document).foundation(); });

$(document).ready(function() {
  $('.select2').each(function(i, e){
    var select = $(e);
    options = {
      minimumInputLength: (select.data('caracteresminimos') == undefined) ? '0' : select.data('caracteresminimos'),
      allowClear: true,
      width: 'resolve',
      dropdownAutoWidth : true
    };

    if(select.data('funcion-de-formato') != undefined || select.data('funcion-de-formato') != "") {
      options.formatResult = eval(select.data('funcion-de-formato'));
      options.formatSelection = eval(select.data('funcion-de-formato-seleccionada'));
    } 
    // Agrega las opciones adicionales de creacion.
    // TODO: reemplazar por $.extend y sacar el eval
    if( select.data('opciones') != undefined){
      opc = select.data('opciones');
      for(var o in opc)
        eval("options."+ o +" = opc."+o );
    }

    if (select.hasClass('ajax')) {
      if (select.data('parametros-adicionales') == undefined )
        select.data('parametros-adicionales',  '');
      
      options.ajax = {
        url: select.data('source'),
        dataType: 'json',
        quietMillis: 170,
        data: function(term, page) { 
          ret = {
            q: term,
            page: page,
            per: 10,
            // DEPRECATION WARNING:
            // envio los parametros adicionales como valores - Dejo el array tambien para compatibilidad hacia atras
            parametros_adicionales: (select.data('parametros-adicionales') == undefined) ? '' : eval("({"+ select.data('parametros-adicionales') + "})")
          }
          
          var params = {};
          if( select.data('parametros-adicionales') != undefined){
            //Convierto los datos adicionales en un obj
            params = jQuery.parseJSON( JSONize("{"+ select.data('parametros-adicionales') + "}")  );
          }
          //agrego los parametros adicionales al obj sin estar en el array
          $.extend( ret, ret, params );
          return ret 
        },
        results: function(data, page) { return { more: data.total > (page * 10), results: eval("data." + select.data('coleccion'))} }
      }
    } // end if (select.hasClass('ajax')) {

    if(select.hasClass('dependiente') && select.data('id-padre') != undefined )
    {
      //Busco los padres:
      padres = []
      if($.trim(select.data('parametros-adicionales')) == "")
        parametros_adicionales = [];
      else 
        parametros_adicionales = $.trim(select.data('parametros-adicionales')).split(",");

      $.each(select.data('id-padre').split(","), function(indice, padre_id){
        padre = $("#"+$.trim(padre_id));
        
        //Si lo encuentra
        if(padre.length)
        {
          padres.push(padre)
          //Guardo los parametros adicionales estaticos y agrego el id de este padre en los parametros adicionales
          
          padre_val = ' -1';
          if (padre.val() !== undefined && padre.val() != '' ) 
            padre_val = " "+ padre.val();

          parametros_adicionales.push($.trim(padre_id)+':'+padre_val);
          select.data('parametros-adicionales', parametros_adicionales.join(","))
          
          //A cada padre lo seteo para que cuando cambie el valor, actualice los parametros que envia via ajax
          padres[indice].change( function(evt){
            
            arr_parametros_adicionales = [];
            $.each(select.data('parametros-adicionales').split(","),function(idx_parametro, parametro){
              //reconstruyo el string de parametros adicionales cambiando solo el nuevo valor del padre
              nombre_parametro = $.trim(parametro.split(":")[0]);
              valor_parametro  = $.trim(parametro.split(":")[1]);
              //Si no paso parametros adicionales
              if(nombre_parametro.length != 0)
              {
                if(nombre_parametro == evt.currentTarget.id)
                  valor_parametro = evt.currentTarget.value;
                arr_parametros_adicionales.push(nombre_parametro+":"+valor_parametro+" ");
              }
            }); //end each parametros-adicionales
            select.data('parametros-adicionales', arr_parametros_adicionales.join(",") );
          }); //end on change
          //Disparo el change para que si los padres ya tenian valores, le setee el valor a este depediente
          padre.trigger("change");
        } // end if (si encontro el padre)
        else
          throw "No se encontro el elemento: "+"'"+padre_id+"'";
      });//end each padre
    } //end class dependiente

    if (select.hasClass('ajax') ) {
      options.initSelection =  function (element, callback) {
        // Dejo el valor como rails lo envió.
        var ids = $.trim($(element).val());
        
        //  Rails envia los arrays como arrays al value. A select 2 los toma como lista separados x comas,
        // asique reemplazo el array para q select2 no se confunda y duplique elementos en los valores
        $(element).val(ids.replace("[", "").replace("]", "")); //Elimino el valor del value html. 
        
        if( ids !== "[]"){
          ret = { 
            ids: ids,
            // DEPRECATION WARNING:
            // envio los parametros adicionales como valores - Dejo el array tambien para compatibilidad hacia atras
            parametros_adicionales: (select.data('parametros-adicionales') == undefined) ? '' : eval("({"+ select.data('parametros-adicionales') + "})")
          }

          var params = {};
          if( select.data('parametros-adicionales') != undefined)
            params = jQuery.parseJSON( JSONize("{"+ select.data('parametros-adicionales') + "}")  ); //Convierto los datos adicionales en un obj
          //agrego los parametros adicionales al obj sin estar en el array
          $.extend( ret, ret, params );
          // Pasando los args como json puedo hacer una sola llamada ajax y lo agarra el format selection del select2.
          $.ajax({
            url: select.data('source'),
            dataType: "json",
            data: ret
          })
          .done( function(data) { 
            /*
             *  Esta diferencia es porque el select2 es una garcha que manda 
             * los argumentos como array o como objeto dependiendo de la configuracion del
             * select2, en lugar de considerar q simplemente es una llamada ajax.
            */
            if (select.data('opciones').multiple == true) {
              callback( eval("data." + select.data('coleccion')) ); 
            } else{
              callback( eval("data." + select.data('coleccion') + "[0]" ) ); 
            };
          });
        } //end if los ids!=="[]"
      } //end function initSelection
    } //end if multiple

    select.select2(options);
  })    
});