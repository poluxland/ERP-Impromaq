class BarcosController < ApplicationController
  skip_before_action :authenticate_user!, only: [:create, :show, :new]
  before_action :set_barco, only: [:show, :edit, :update, :destroy]

  # GET /barcos
  # GET /barcos.json
  def index
    @barcos = Barco.all
  end

  # GET /barcos/1
  # GET /barcos/1.json
  def show
  end

  # GET /barcos/new
  def new
    @barco = Barco.new
  end

  # GET /barcos/1/edit
  def edit
  end

  # POST /barcos
  # POST /barcos.json
  def create
    @barco = Barco.new(barco_params)

    respond_to do |format|
      if @barco.save
        format.html { redirect_to @barco, notice: 'Barco was successfully created.' }
        format.json { render :show, status: :created, location: @barco }
      else
        format.html { render :new }
        format.json { render json: @barco.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /barcos/1
  # PATCH/PUT /barcos/1.json
  def update
    respond_to do |format|
      if @barco.update(barco_params)
        format.html { redirect_to @barco, notice: 'Barco was successfully updated.' }
        format.json { render :show, status: :ok, location: @barco }
      else
        format.html { render :edit }
        format.json { render json: @barco.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /barcos/1
  # DELETE /barcos/1.json
  def destroy
    @barco.destroy
    respond_to do |format|
      format.html { redirect_to barcos_url, notice: 'Barco was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_barco
      @barco = Barco.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def barco_params
      params.require(:barco).permit(:nombre, :nave, :barandas, :colectores, :vtolva1, :vtolva2, :al1, :al2, :compresorm, :cabezalm, :cabezald, :polines, :redaire, :motoresbc03, :techotolva, :greating, :alumbrado, :caseta, :ccmmuelle, :c18, :c19, :numero, :observaciones, :empresa, :varios)
    end
end
