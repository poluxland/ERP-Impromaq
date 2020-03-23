class HorasController < ApplicationController
  before_action :set_hora, only: [:show, :edit, :update, :destroy]

  # GET /horas
  # GET /horas.json
  def index
    @horas = Hora.all
  end

  # GET /horas/1
  # GET /horas/1.json
  def show
  end

  # GET /horas/new
  def new
    @hora = Hora.new
  end

  # GET /horas/1/edit
  def edit
  end

  # POST /horas

  def create
    @hora = Hora.new(hora_params)

    if @hora.save
      redirect_to action: "index", notice: 'El registro ha sido creado.'
    else
      render :new

    end
  end

  # PATCH/PUT /horas/1

  def update

    if @hora.update(hora_params)
      redirect_to @hora, notice: 'Registro modificado con exito.'
    else
      render :edit


    end
  end

  # DELETE /horas/1
  # DELETE /horas/1.json
  def destroy
    @hora.destroy
    respond_to do |format|
      format.html { redirect_to horas_url, notice: 'Registro eliminado.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hora
      @hora = Hora.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def hora_params
      params.require(:hora).permit(:fecha, :descripcion, :area, :personal, :inicio, :termino, :he, :ot, :traslado, :lugar, :mandante, :estado)
    end
end
