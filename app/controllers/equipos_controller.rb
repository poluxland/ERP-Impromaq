class EquiposController < ApplicationController
  skip_before_action :authenticate_user!, only: [:create, :show, :new]
  before_action :set_equipo, only: [:show, :edit, :update, :destroy]

  # GET /equipos
  # GET /equipos.json
  def index
    @equipos = Equipo.all
  end

  def recenteq
  @equipos = Equipo.where('created_at >= ?', 2.months.ago).order(created_at: :desc)
  end

  def observaciones
  condiciones = (1..16).map { |i| "c#{i} IN ('No(leve)', 'No(grave)')" }.join(' OR ')
  @equipos = Equipo.where('created_at >= ?', 1.months.ago)
                   .where("(#{condiciones}) OR (comentarios IS NOT NULL AND comentarios != '')")
                   .order(created_at: :desc)
  end




  def lcacheck
    # @equipos = Equipo.where(planta: "La Calera")
    @equipos = Equipo.where("c17 LIKE (?)", "L%")
  end

  def vtscheck
    @equipos = Equipo.where("c17 LIKE (?)", "V%")
  end

  def ptmcheck
    @equipos = Equipo.where("c17 LIKE (?)", "P.M%")
  end

  def parcheck
    @equipos = Equipo.where("c17 LIKE (?)", "P.A%")
  end



  # :nombre, collection: ["OL03", "HQPTA31", "HQPTA32","HQPTA33", "BRR17", "HQPTA21", "HQPTA22"]
  def brr17check
    @equipo = Equipo.where(nombre: "BRR17").last
  end

  def brr20check
    @equipo = Equipo.where(nombre: "BRR20").last
  end

  def ol03check
    @equipo = Equipo.where(nombre: "OL03").last
  end

  def hqpta31check
    @equipo = Equipo.where(nombre: "HQPTA31").last
  end

  def hqpta32check
    @equipo = Equipo.where(nombre: "HQPTA32").last
  end

  def hqpta33check
    @equipo = Equipo.where(nombre: "HQPTA33").last
  end

  def ex01check
    @equipo = Equipo.where(nombre: "EX01").last
  end

  def ol01check
    @equipo = Equipo.where(nombre: "OL01").last
  end

  def ol02check
    @equipo = Equipo.where(nombre: "OL02").last
  end

  def ol06check
    @equipo = Equipo.where(nombre: "OL06").last
  end

  def ol09check
    @equipo = Equipo.where(nombre: "OL09").last
  end

  def ol11check
    @equipo = Equipo.where(nombre: "OL11").last
  end

  def brr19check
    @equipo = Equipo.where(nombre: "BRR19").last
  end

  def ok03check
    @equipo = Equipo.where(nombre: "OK03").last
  end

  def ok04check
    @equipo = Equipo.where(nombre: "OK04").last
  end

  def ok05check
    @equipo = Equipo.where(nombre: "OK05").last
  end

  def hq13check
    @equipo = Equipo.where(nombre: "HQ13").last
  end

  def hq12check
    @equipo = Equipo.where(nombre: "HQ12").last
  end

  def hq11check
    @equipo = Equipo.where(nombre: "HQ11").last
  end

  def hq10check
    @equipo = Equipo.where(nombre: "HQ10").last
  end

  def hq03check
    @equipo = Equipo.where(nombre: "HQ03").last
  end

  def hq01check
    @equipo = Equipo.where(nombre: "HQ01").last
  end

  def hq21check
    @equipo = Equipo.where(nombre: "HQ21").last
  end

  def hq22check
    @equipo = Equipo.where(nombre: "HQ22").last
  end

  # GET /equipos/1
  # GET /equipos/1.json
  def show
  @test = Equipo
    .where(id: @equipo.id)
    .pluck(:c1, :c2, :c3, :c4, :c5, :c6, :c7, :c8, :c9, :c10, :c11, :c12, :c13, :c14, :c15, :c16)
    .flatten
    .group_by(&:itself)
    .transform_values(&:count)
  end

  # GET /equipos/new
  def new
    @equipo = Equipo.new
  end

  # GET /equipos/1/edit
  def edit
  end

  # POST /equipos
  # POST /equipos.json
  def create
    @equipo = Equipo.new(equipo_params)

    respond_to do |format|
      if @equipo.save
        format.html { redirect_to @equipo, notice: 'Checklist equipo ingresado' }
        format.json { render :show, status: :created, location: @equipo }
      else
        format.html { render :new }
        format.json { render json: @equipo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /equipos/1
  # PATCH/PUT /equipos/1.json
  def update
    respond_to do |format|
      if @equipo.update(equipo_params)
        format.html { redirect_to @equipo, notice: 'Equipo was successfully updated.' }
        format.json { render :show, status: :ok, location: @equipo }
      else
        format.html { render :edit }
        format.json { render json: @equipo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /equipos/1
  # DELETE /equipos/1.json
  def destroy
    @equipo.destroy
    respond_to do |format|
      format.html { redirect_to equipos_url, notice: 'Equipo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_equipo
      @equipo = Equipo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def equipo_params
      params.require(:equipo).permit(:nombre, :operador, :horometro, :c1, :c2, :c3, :c4, :c5, :c6, :c7, :c8, :c9, :c10, :c11, :c12, :c13, :c14, :c15, :c16, :c17, :c18, :c19, :c20, :c21, :c22, :c23, :c24, :c25, :c26, :c27, :c28, :c29, :c30, :comentarios, :truck_id)
    end
end
