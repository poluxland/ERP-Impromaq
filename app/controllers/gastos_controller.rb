class GastosController < ApplicationController
  before_action :set_gasto, only: [:show, :edit, :update, :destroy]

  # GET /gastos
  # GET /gastos.json
  def index
    @gastos = Gasto.all
  end

  def import
    Gasto.my_import(params[:file])
    redirect_to gastos_url, notice: 'Facturas correctamente importadas'
  end

  def dup
    @gasto_dup = Gasto.find(params[:id]).dup
    render :new
  end

  # GET /gastos/1
  # GET /gastos/1.json
  def show; end

  # GET /gastos/new
  def new
    @gasto = Gasto.new
  end

  # GET /gastos/1/edit
  def edit; end

  # POST /gastos
  # POST /gastos.json
  def create
    @gasto = Gasto.new(gasto_params)

    respond_to do |format|
      if @gasto.save
        format.html { redirect_to gastos_url, notice: 'El registro ha sido creado.' }
        # format.html { redirect_to @gasto, notice: 'Gasto was successfully created.' }
        format.json { render :show, status: :created, location: @gasto }
      else
        format.html { render :new }
        format.json { render json: @gasto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gastos/1
  # PATCH/PUT /gastos/1.json
  def update
    respond_to do |format|
      if @gasto.update(gasto_params)
        format.html { redirect_to gastos_url, notice: 'El registro ha sido actualizado.' }
        # format.html { redirect_to @gasto, notice: 'Gasto was successfully updated.' }
        format.json { render :show, status: :ok, location: @gasto }
      else
        format.html { render :edit }
        format.json { render json: @gasto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gastos/1
  # DELETE /gastos/1.json
  def destroy
    @gasto.destroy
    respond_to do |format|
      format.html { redirect_to gastos_url, notice: 'Gasto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_gasto
    @gasto = Gasto.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def gasto_params
    params.require(:gasto).permit(:fecha, :rend, :tipo, :num, :descripcion, :valor, :iva, :neto, :cc, :resp, :familia,
                                  :tipo, :cot, :aprobado, :estado)
  end
end
