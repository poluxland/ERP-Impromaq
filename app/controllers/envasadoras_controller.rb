class EnvasadorasController < ApplicationController
  before_action :set_envasadora, only: [:show, :edit, :update, :destroy]

  # GET /envasadoras
  # GET /envasadoras.json
  def index
    @envasadoras = Envasadora.all
  end

  # GET /envasadoras/1
  # GET /envasadoras/1.json
  def show
  end

  # GET /envasadoras/new
  def new
    @envasadora = Envasadora.new
  end

  # GET /envasadoras/1/edit
  def edit
  end

  # POST /envasadoras
  # POST /envasadoras.json
  def create
    @envasadora = Envasadora.new(envasadora_params)

    respond_to do |format|
      if @envasadora.save
        format.html { redirect_to @envasadora, notice: 'Envasadora creado con exito' }
        format.json { render :show, status: :created, location: @envasadora }
      else
        format.html { render :new }
        format.json { render json: @envasadora.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /envasadoras/1
  # PATCH/PUT /envasadoras/1.json
  def update
    respond_to do |format|
      if @envasadora.update(envasadora_params)
        format.html { redirect_to @envasadora, notice: 'Envasadora was successfully updated.' }
        format.json { render :show, status: :ok, location: @envasadora }
      else
        format.html { render :edit }
        format.json { render json: @envasadora.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /envasadoras/1
  # DELETE /envasadoras/1.json
  def destroy
    @envasadora.destroy
    respond_to do |format|
      format.html { redirect_to envasadoras_url, notice: 'Envasadora was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_envasadora
      @envasadora = Envasadora.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def envasadora_params
      params.require(:envasadora).permit(:stock_sacosespecial, :stock_sacosextra, :stock_bigbagespaecial, :stock_bigbagextra, :stock_bigbagplus, :stock_bigbagsuper, :produccion_haver, :horas_disphaver, :horas_efectivahaver, :produccion_ventomatic, :horas_dispventomatic, :horas_efectivaventomatic, :programa_especialsacos, :programa_extrasacos, :programa_especialbigbag, :programa_extrabigbag, :programa_extrabigbag1t, :programa_plusbigbag, :programa_superbigbag, :despacho_especialsacos, :despacho_extrasacos, :despacho_especialbigbag, :despacho_extrabigbag, :despacho_extrabigbag1t, :despacho_plusbigbag, :despacho_superbigbag, :medida1_silo19, :medida2_silo19, :medida1_silo20, :medida2_silo20, :medida1_silo21, :medida2_silo21, :medida1_silo22, :medida2_silo22, :medida_silo27, :medida_silo28, :medida_tolva5s28, :medida_tolva1vento, :medida_tolva2vento, :medida_tolva3vento, :medida_tolva1bigbag, :medida_tolva2bigbag, :medida_tolva1s3000, :medida_tolva4s3000, :medida_tolva5s3000, :producto_tolva5s28, :producto_tolva1vento, :producto_tolva2vento, :producto_tolva3vento, :producto_tolva1bigbag, :producto_tolva2bigbag, :producto_tolva1s3000, :producto_tolva4s3000, :producto_tolva5s3000, :programa_manthaver, :ejecutado_manthaver, :programa_mantvento, :ejecutado_mantvento, :programa_mantbigbag, :ejecutado_mantbigbag, :programa_mantgranel, :ejecutado_mantgranel, :programa_mantplanta1, :ejecutado_mantplanta1, :programa_mantenv, :ejecutado_mantenv, :adicional_manthaver, :adicional_mantvento, :adicional_mantbigbbag, :adicional_mantgranel, :adicional_mantp1, :adicional_mantenv, :obs_manthaver, :obs_mantvento, :obs_mantbigbag, :obs_mantgranel, :obs_mantp1, :obs_mantenv, :linea_tarearelevante, :ot_tarearelevante, :descripcion_tarearelevante, :tipo_fallarelevante, :hora_fallarelevante, :descripcion_fallarelevante, :descarga_materiaprima, :respaldo_descargamateriaprima, :excavadora, :camion_tolva, :barredora, :bobcat, :horquilla_serv, :horquilla_haver, :horquilla_vento, :horquilla_cargabigbag, :horquilla_llenadobigbag, :horquilla_respaldo7t, :horquilla_respaldo3t, :cargador_descargacaliza, :cargador_descargapuzolana, :cargador_respaldo, :cargador_patio, :observaciones, :fecha, :observacion_prodhaver, :observacion_prodvento, :num_adicional, :num_adicional2, :num_adicional3, :adicional)
    end
end
