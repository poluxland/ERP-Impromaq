class ReportsController < InheritedResources::Base
skip_before_action :authenticate_user!, only: [:create, :show, :new]

  private

    def report_params
      params.require(:report).permit(:especial_sacos, :extra_sacos, :especial_soluble, :extra_soluble, :bb_especial, :bb_extra, :prod_esp_sacos, :prod_extra_sacos, :prod_extra_soluble, :prod_esp_bb, :prod_extra_bb, :envases_esp, :envases_ext, :envases_bb, :pallets_buenos, :muestra_pallets, :humedad_promedio, :bobinas, :observaciones)
    end

end
