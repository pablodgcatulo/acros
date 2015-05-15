class TalentosController < ApplicationController
  before_action :set_talento, only: [:show, :edit, :update, :destroy]

  # GET /talentos
  def index
    @talentos = Talento.all
  end

  # GET /talentos/1
  def show
  end

  # GET /talentos/new
  def new
    @talento = Talento.new
  end

  # GET /talentos/1/edit
  def edit
  end

  # POST /talentos
  def create
    @talento = Talento.new(talento_params)

    if @talento.save
      redirect_to @talento, notice: 'Talento was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /talentos/1
  def update
    if @talento.update(talento_params)
      redirect_to @talento, notice: 'Talento was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /talentos/1
  def destroy
    @talento.destroy
    redirect_to talentos_url, notice: 'Talento was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_talento
      @talento = Talento.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def talento_params
      params.require(:talento).permit(:nombre, :dominio_id, :libro, :pelicula, :docx_json)
    end
end
