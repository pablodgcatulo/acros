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
    @paises = Pais.all.collect {|p| [p.nombre, p.id]}
    @provincias = Provincia.all.collect {|p| [p.nombre, p.id]}
    @empresas = Empresa.all.collect { |e| [e.nombre, e.id]}
    @tipos_de_documento = TipoDeDocumento.all.collect { |td| [td.codigo, td.id] }
  end

  # GET /participantes/1/edit
  def edit
    @paises = Pais.all.collect {|p| [p.nombre, p.id]}
    @provincias = Provincia.all.collect {|p| [p.nombre, p.id]}
    @empresas = Empresa.all.collect { |e| [e.nombre, e.id]}
    @tipos_de_documento = TipoDeDocumento.all.collect { |td| [td.codigo, td.id] }
  end

  # POST /participantes
  def create
    @participante = Participante.new(participante_params)

    if @participante.save
      redirect_to @participante, notice: 'El participante se guardo correctamente.' 
    else
      @paises = Pais.all.collect {|p| [p.nombre, p.id]}
      @provincias = Provincia.all.collect {|p| [p.nombre, p.id]}
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
      @paises = Pais.all.collect {|p| [p.nombre, p.id]}
      @provincias = Provincia.all.collect {|p| [p.nombre, p.id]}
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
    
    if params[:participante][:talento_1].blank? and
       params[:participante][:talento_2].blank? and
       params[:participante][:talento_3].blank? and
       params[:participante][:talento_4].blank? and
       params[:participante][:talento_5].blank? 
       redirect_to @participante, alert: 'Debe seleccionar al menos un talento para descargar los resultados' 
    else
      (1..5).each do |i|
        if eval("params[:participante][:talento_#{i}]").present?
          talentos_ids << eval("params[:participante][:talento_#{i}]")
        end
      end
    end

    tipo_de_encuesta = params.require(:tipo_de_encuesta)


    talentos = Talento.find(talentos_ids)
    
    case 
    when tipo_de_encuesta.to_i == 1 #:perfil_de_fortalezas
      template = Sablon.template(File.join(Rails.root, 'app', 'docx_templates', '1_los_treinta_y_cuatro_talentos_template.docx'))
 
      # skill = Struct.new(:index, :label, :rating)
      # talent = Struct.new(:nombre, :texto)
      contexto  = {
        talentos: []
      }
      
      talentos.each do |t|
        contexto[:talentos] << { nombre: t.nombre, 
                                 texto: Sablon.content(:markdown, t.docx_json["documentos"][tipo_de_encuesta.to_i - 1]["datos"]["texto"]) }
      end

      send_data template.render_to_string(contexto), filename: "1_perfil_de_fortalezas.docx", disposition: 'attachment'

    when tipo_de_encuesta.to_i == 2 #:manejar_las_fortalezas
      
      template = Sablon.template(File.join(Rails.root, 'app', 'docx_templates', '2_como_manejar_las_fortalezas_template.docx'))      
      
      t = talentos.first

      contexto  = {
        participante: @participante.apellido_y_nombre,
        talentos:[]
      }

      talentos.each do |t|
        contexto[:talentos] << { nombre: t.nombre, 
                                 items: (t.docx_json["documentos"][tipo_de_encuesta.to_i - 1]["datos"]["items"])
                               }
      end

      send_data template.render_to_string(contexto), filename: "como_manejar_las_fortalezas_#{@participante.apellido}_#{@participante.nombre}.docx", disposition: 'attachment'

    when tipo_de_encuesta.to_i == 3 # :liderazgo_basado_en_fortalezas

      template = Sablon.template(File.join(Rails.root, 'app', 'docx_templates', '3_liderazgo_basado_en_fortalezas_template.docx'))      
      
      contexto = { talentos: []}
      
      talentos.each do |t|
        contexto[:talentos] << {  nombre: t.nombre,
                                  items_confianza:   (t.docx_json["documentos"][tipo_de_encuesta.to_i - 1]["datos"]["items_confianza"].map { |i| Sablon.content(:markdown, i) }),
                                  items_empatia:     (t.docx_json["documentos"][tipo_de_encuesta.to_i - 1]["datos"]["items_empatia"].map { |i| Sablon.content(:markdown, i) }),
                                  items_estabilidad: (t.docx_json["documentos"][tipo_de_encuesta.to_i - 1]["datos"]["items_estabilidad"].map { |i| Sablon.content(:markdown, i) }),
                                  items_esperanza:   (t.docx_json["documentos"][tipo_de_encuesta.to_i - 1]["datos"]["items_esperanza"].map { |i| Sablon.content(:markdown, i) }) 
                                }
      end

      send_data template.render_to_string(contexto), filename: "3_liderazgo_basado_en_fortalezas.docx", disposition: 'attachment'

    when tipo_de_encuesta.to_i == 4 # Ideas para la acción
      template = Sablon.template(File.join(Rails.root, 'app', 'docx_templates', '3_liderazgo_basado_en_fortalezas_template.docx'))      
      
      contexto = { talentos: []}

      talentos.each do |t|
        contexto[:talentos] << {
          nombre: t.nombre,
          items: (t.docx_json["documentos"][tipo_de_encuesta.to_i -1]["datos"]["items"].map { |i| Sablon.content(:markdown, i) })
        }
      end
      
      send_data template.render_to_string(contexto), filename: "4_ideas_para_la_accion.docx", disposition: 'attachment'


    when tipo_de_encuesta.to_i == 5 # Libros y peliculas
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
