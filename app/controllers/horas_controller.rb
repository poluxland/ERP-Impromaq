require 'date'
class HorasController < ApplicationController
  before_action :set_hora, only: [:show, :edit, :update, :destroy]

  # GET /horas
  # GET /horas.json
  def index
    @horas = Hora.all
  end

  def mec
    #@horas = Hora.where(mandante: "Martin Llancafil")
    if Date.today.day > 20
      @horas = Hora.where(mandante: ["Martin Llancafil", "Jorge Vyhmeister", "Johnny Rute"]).where(created_at: (Date.new((Date.today.year),(Date.today.month),20))..(Date.today + 1.day))
    else
      @horas = Hora.where(mandante: ["Martin Llancafil", "Jorge Vyhmeister", "Johnny Rute"]).where(created_at: ((Date.new((Date.today.year),(Date.today.month),20)) - 1.month)..(Date.today + 1.day))
    end

    #@horas = Hora.where("mandante LIKE (?)", "%M%")
  end

  def serv
    if Date.today.day > 20
      @horas = Hora.where(mandante: "Cesar Hernandez").where(created_at: ((Date.new((Date.today.year),(Date.today.month),20)))..(Date.today + 1.day))
    else
      @horas = Hora.where(mandante: "Cesar Hernandez").where(created_at: ((Date.new((Date.today.year),(Date.today.month),20)) - 1.month)..(Date.today + 1.day))
    end
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
  # POST /horas.json
  def create
    @hora = Hora.new(hora_params)

    respond_to do |format|
      if @hora.save
        format.html { redirect_to horas_url, notice: 'El registro ha sido creado.' }
        format.json { render :show, status: :created, location: @hora }
      else
        format.html { render :new }
        format.json { render json: @hora.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /horas/1
  # PATCH/PUT /horas/1.json
  def update
    respond_to do |format|
      if @hora.update(hora_params)
        format.html { redirect_to horas_url, notice: 'Hora was successfully updated.' }
        format.json { render :show, status: :ok, location: @hora }
      else
        format.html { render :edit }
        format.json { render json: @hora.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /horas/1
  # DELETE /horas/1.json
  def destroy
    @hora.destroy
    respond_to do |format|
      format.html { redirect_to horas_url, notice: 'Hora was successfully destroyed.' }
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
