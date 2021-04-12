class InterventionsController < InheritedResources::Base
  skip_before_action :authenticate_user!, only: [:create, :show, :new]
  private

    def intervention_params
      params.require(:intervention).permit(:equipo, :desde, :hasta, :mecanico, :descripcion, :repuestos, :duracion, :truck_id)
    end

end
