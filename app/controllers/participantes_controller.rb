class ParticipantesController < ApplicationController
  before_action :set_participante, only: [:show, :edit, :update, :destroy, :imprimir_documentos]

  # GET /participantes
  def index
    @participantes = Participante.all
  end

  # GET /participantes/1
  def show
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

  def imprimir_documentos
    
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
