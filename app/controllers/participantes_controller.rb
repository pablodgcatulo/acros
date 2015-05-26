require "sablon"
class ParticipantesController < ApplicationController
  before_action :set_participante, only: [:show, :edit, :update, :destroy, :imprimir_resultados]

  # GET /participantes
  def index
    @participantes = Participante.all
  end

  # GET /participantes/1
  def show
    @talentos = Talento.all.map { |t| [t.nombre, t.id] }
  end

  # GET /participantes/new
  def new
    @participante = Participante.new
    @empresas = Empresa.all.collect { |e| [e.nombre, e.id]}
    @tipos_de_documento = TipoDeDocumento.all.collect { |td| [td.codigo, td.id] }
  end

  # GET /participantes/1/edit
  def edit
    @empresas = Empresa.all.collect { |e| [e.nombre, e.id]}
    @tipos_de_documento = TipoDeDocumento.all.collect { |td| [td.codigo, td.id] }
  end

  # POST /participantes
  def create
    @participante = Participante.new(participante_params)

    if @participante.save
      redirect_to @participante, notice: 'El participante se guardo correctamente.' 
    else
      @empresas = Empresa.all.collect { |e| [e.nombre, e.id]}
      @tipos_de_documento = TipoDeDocumento.all.collect { |td| [td.codigo, td.id] }

      render :new 
    end
  end

  # PATCH/PUT /participantes/1
  def update
    if @participante.update(participante_params)
      redirect_to @participante, notice: 'El participante se actualizó correctamente.' 
    else
      @empresas = Empresa.all.collect { |e| [e.nombre, e.id]}
      @tipos_de_documento = TipoDeDocumento.all.collect { |td| [td.codigo, td.id] }

      render :edit 
    end
  end

  # DELETE /participantes/1
  def destroy
    @participante.destroy
    redirect_to participantes_url, notice: 'El participante fue borrado correctamente.'
  end

  def imprimir_resultados

    #talentos_ids = params[:participante].map { |p| [p[:talento] }
    talentos_ids = []
    talentos = []
    if params[:participante][:talento_1].blank? and
       params[:participante][:talento_2].blank? and
       params[:participante][:talento_3].blank? and
       params[:participante][:talento_4].blank? and
       params[:participante][:talento_5].blank? 
       redirect_to @participante, alert: 'Debe seleccionar al menos un talento para descargar los resultados' 
    else
      (1..5).each do |i|
        if eval("params[:participante][:talento_#{i}]").present?
          talentos << Talento.find(eval("params[:participante][:talento_#{i}]"))
          # talentos_ids << eval("params[:participante][:talento_#{i}]")
        end
      end
    end

    tipo_de_encuesta = params.require(:tipo_de_encuesta)


    #talentos = Talento.find(talentos_ids)
    
    case 
    when tipo_de_encuesta.to_i == 1 #:perfil_de_fortalezas
      template = Sablon.template(File.join(Rails.root, 'app', 'docx_templates', '1_los_treinta_y_cuatro_talentos_template.docx'))
 
      contexto  = {
        talentos: []
      }
      
      talentos.each do |t|
        contexto[:talentos] << { nombre: t.nombre, 
                                 textos: t.docx_json["documentos"][tipo_de_encuesta.to_i - 1]["datos"]["texto"].map { |texto| Sablon.content(:markdown, texto + "\n\n<br>") } }
      end

      send_data template.render_to_string(contexto), filename: "1_perfil_de_fortalezas.docx", disposition: 'attachment'

    when tipo_de_encuesta.to_i == 2 #:manejar_las_fortalezas
      
      template = Sablon.template(File.join(Rails.root, 'app', 'docx_templates', '2_como_manejar_las_fortalezas_template.docx'))      
            
      contexto  = {
        participante: @participante.apellido_y_nombre,
        talentos:[]
      }

      talentos.each do |t|
        contexto[:talentos] << { nombre: t.nombre, 
                                 items: t.docx_json["documentos"][tipo_de_encuesta.to_i - 1]["datos"]["items"] ,
                                 separador: "\n\n"
                               }
      end

      send_data template.render_to_string(contexto), filename: "como_manejar_las_fortalezas_#{@participante.apellido}_#{@participante.nombre}.docx", disposition: 'attachment'

    when tipo_de_encuesta.to_i == 3 # :liderazgo_basado_en_fortalezas

      template = Sablon.template(File.join(Rails.root, 'app', 'docx_templates', '3_liderazgo_basado_en_fortalezas_template.docx'))      
      
      contexto = { talentos: []}
      
      talentos.each do |t|
        contexto[:talentos] << {  nombre: t.nombre,
                                  items_confianza:   t.docx_json["documentos"][(tipo_de_encuesta.to_i) - 1]["datos"]["items_confianza"],
                                  items_empatia:     t.docx_json["documentos"][(tipo_de_encuesta.to_i) - 1]["datos"]["items_empatia"],
                                  items_estabilidad: t.docx_json["documentos"][(tipo_de_encuesta.to_i) - 1]["datos"]["items_estabilidad"],
                                  items_esperanza:   t.docx_json["documentos"][(tipo_de_encuesta.to_i) - 1]["datos"]["items_esperanza"] 
                                }
      end

      send_data template.render_to_string(contexto), filename: "3_liderazgo_basado_en_fortalezas.docx", disposition: 'attachment'

    when tipo_de_encuesta.to_i == 4 # Ideas para la acción
      template = Sablon.template(File.join(Rails.root, 'app', 'docx_templates', '4_ideas_para_la_accion_template.docx'))      
      
      contexto = { talentos: []}

      talentos.each do |t|
        contexto[:talentos] << {
          nombre: t.nombre,
          items: t.docx_json["documentos"][(tipo_de_encuesta.to_i) -1]["datos"]["items"]
        }
      end
      
      send_data template.render_to_string(contexto), filename: "ideas_para_la_accion.docx", disposition: 'attachment'


    when tipo_de_encuesta.to_i == 5 # Libros y peliculas
      template = Sablon.template(File.join(Rails.root, 'app', 'docx_templates', '5_libros_y_peliculas_template.docx'))      
      
      talento = Struct.new(:nombre, :libro, :pelicula)
      contexto = {
        talento_1: talento.new(talentos[0].nombre, talentos[0].libro, talentos[0].pelicula ),
        talento_2: talento.new(talentos[1].nombre,talentos[1].libro, talentos[1].pelicula ),
        talento_3: talento.new(talentos[2].nombre,talentos[2].libro, talentos[2].pelicula ),
        talento_4: talento.new(talentos[3].nombre,talentos[3].libro, talentos[3].pelicula ),
        talento_5: talento.new(talentos[4].nombre,talentos[4].libro, talentos[4].pelicula )
      }
      
      send_data template.render_to_string(contexto), filename: "5_libros_y_peliculas.docx", disposition: 'attachment'
    end

    #raise
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_participante
      @participante = Participante.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def participante_params
      params.require(:participante).permit(:nombre, :apellido, :empresa_id, :tipo_de_documento_id, :numero_de_documento, :direccion, :telefono, :celular, :pais_id, :provincia_id)
    end
end
