class MedidasController < ApplicationController
  skip_before_action :authenticate_user!, only: [:create, :show, :new]
  before_action :set_medida, only: [:show, :edit, :update, :destroy]

  # GET /medidas
  # GET /medidas.json
  def index
    @medidas = Medida.all
  end

  # GET /medidas/1
  # GET /medidas/1.json
  def show
  end

  # GET /medidas/new
  def new
    @medida = Medida.new
  end

  # GET /medidas/1/edit
  def edit
  end

  # POST /medidas
  # POST /medidas.json
  def create
    @medida = Medida.new(medida_params)

    respond_to do |format|
      if @medida.save
        format.html { redirect_to @medida, notice: 'Medida creado con exito' }
        format.json { render :show, status: :created, location: @medida }
      else
        format.html { render :new }
        format.json { render json: @medida.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /medidas/1
  # PATCH/PUT /medidas/1.json
  def update
    respond_to do |format|
      if @medida.update(medida_params)
        format.html { redirect_to @medida, notice: 'Medida was successfully updated.' }
        format.json { render :show, status: :ok, location: @medida }
      else
        format.html { render :edit }
        format.json { render json: @medida.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /medidas/1
  # DELETE /medidas/1.json
  def destroy
    @medida.destroy
    respond_to do |format|
      format.html { redirect_to medidas_url, notice: 'Medida was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_medida
      @medida = Medida.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def medida_params
      params.require(:medida).permit(:plastificado_especial, :plastificado_especial_zunchos, :plastificado_especial_lados, :plastificado_extra, :plastificado_extra_zunchos, :silo19a, :silo19b, :silo20a, :silo20b, :silo21a, :silo21b, :silo22a, :silo22b, :silo27, :silo28, :especialsacos, :extrsacos, :bigbagextra, :bigbagextra1350, :bigbagextra1, :bigbagespecial, :bigbagsuper, :prodhaver, :prodvento, :tolvacalle5, :silos3000tolva1, :silos3000tolva4, :silos3000tolva5, :silosbigbag1, :silosbigbag2, :silosvento1, :silovento2, :silovento3, :callesilo28, :callesplanta1, :callesilo27, :observaciones, :otros, :ns28, :nbb1, :nbb2, :nvento1, :nvento2, :nvento3, :ns30001, :ns30002, :ns30003, :nivel9, :bigbagplus, :s28c3op, :s28c3cemento, :s28c3nota, :s28c4op, :s28c4cemento, :s28c4nota, :s28c5op, :s28c5cemento, :s28c5nota, :s27c6op, :s27c7cemento, :s27c7nota, :s30c1op, :s30c1cemento, :s30c1nota, :s30c4op, :s30c4cemento, :s30c4nota, :s30c5op, :s30c5cemento, :s30c5nota, :especial_sacos, :especial_bigbag, :especial_granel, :extra_sacos, :extra_bigbag, :extra_granel, :super_3300_granel, :super_4200_granel, :enjuagues_super)
    end
end
