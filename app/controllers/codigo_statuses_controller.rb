class CodigoStatusesController < InheritedResources::Base

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

    def codigo_status_params
      params.require(:codigo_status).permit(:codigo_id, :ruidio, :fuga, :estructura, :housekeep, :vibracion, :temp, :estado, :fecha)
    end

end
