class EmpresasController < ApplicationController
  before_action :set_empresa, only: [:show, :edit, :update, :destroy]

  # GET /empresas
  def index
    @empresas = Empresa.order(:nombre).all
  end

  # GET /empresas/1
  def show
  end

  # GET /empresas/new
  def new
    @empresa = Empresa.new
  end

  # GET /empresas/1/edit
  def edit
  end

  # POST /empresas
  def create
    @empresa = Empresa.new(empresa_params)

    if @empresa.save
      redirect_to @empresa, notice: 'La empresa se creó correctamente.'
    else
      render :new
    end
  end

  # PATCH/PUT /empresas/1
  def update
    if @empresa.update(empresa_params)
      redirect_to @empresa, notice: 'La empresa se actualizó correctamente.'
    else
      render :edit
    end
  end

  # DELETE /empresas/1
  def destroy
    @empresa.destroy
    redirect_to empresas_url, notice: 'La empresa fue borrada correctamente.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_empresa
      @empresa = Empresa.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def empresa_params
      params[:empresa].permit(:nombre)
    end
end
