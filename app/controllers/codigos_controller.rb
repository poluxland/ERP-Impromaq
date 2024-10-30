class CodigosController < InheritedResources::Base

  def create
    super do |success, failure|
      success.html { redirect_to codigos_path }
    end
  end

  def update
    super do |success, failure|
      success.html { redirect_to codigos_path }
    end
  end

  private

    def codigo_params
      params.require(:codigo).permit(:tag, :area, :descripcion)
    end

end
