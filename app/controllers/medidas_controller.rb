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
      params.require(:medida).permit(:silo19a, :silo19b, :silo20a, :silo20b, :silo21a, :silo21b, :silo22a, :silo22b, :silo27, :silo28, :especialsacos, :extrsacos, :bigbagextra, :bigbagextra1350, :bigbagextra1, :bigbagespecial, :bigbagsuper, :prodhaver, :prodvento, :tolvacalle5, :silos3000tolva1,
         :silos3000tolva4, :silos3000tolva5, :silosbigbag1, :silosbigbag2, :silosvento1, :silovento2, :silovento3, :callesilo28, :callesplanta1, :callesilo27, :observaciones, :otros, :ns28, :nbb1, :nbb2, :nvento1, :nvento2, :nvento3, :ns30001, :ns30002, :ns30003, :nivel9)
    end
end
