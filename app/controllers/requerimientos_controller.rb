class RequerimientosController < ApplicationController
  skip_before_action :authenticate_user!, only: [:create, :show, :new]
  before_action :set_requerimiento, only: [:show, :edit, :update, :destroy]

  # GET /requerimientos
  # GET /requerimientos.json
  def index
    @requerimientos = Requerimiento.all
  end

  # GET /requerimientos/1
  # GET /requerimientos/1.json
  def show
  end

  # GET /requerimientos/new
  def new
    @requerimiento = Requerimiento.new
  end

  # GET /requerimientos/1/edit
  def edit
  end

  # POST /requerimientos
  # POST /requerimientos.json
  def create
    @requerimiento = Requerimiento.new(requerimiento_params)

    respond_to do |format|
      if @requerimiento.save
        format.html { redirect_to @requerimiento, notice: 'Consulta enviada.' }
        format.json { render :show, status: :created, location: @requerimiento }
      else
        format.html { render :new }
        format.json { render json: @requerimiento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /requerimientos/1
  # PATCH/PUT /requerimientos/1.json
  def update
    respond_to do |format|
      if @requerimiento.update(requerimiento_params)
        format.html { redirect_to @requerimiento, notice: 'Consulta enviada.' }
        format.json { render :show, status: :ok, location: @requerimiento }
      else
        format.html { render :edit }
        format.json { render json: @requerimiento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /requerimientos/1
  # DELETE /requerimientos/1.json
  def destroy
    @requerimiento.destroy
    respond_to do |format|
      format.html { redirect_to requerimientos_url, notice: 'Requerimiento was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_requerimiento
      @requerimiento = Requerimiento.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def requerimiento_params
      params.require(:requerimiento).permit(:nombre, :planta, :solicitud, :observaciones, :respuesta, :otros, :monto, :estado, :phone)
    end
end
